#include "stdio.h"
#include "math.h"
#include "stdlib.h"

/*#define MEX_COMPILE 0*/

#ifdef MATLAB_MEX_FILE
#include "mex.h"
#endif

int trace_sample = -1;
const double pi = 3.14159265358979;

double dblmod(double,double);
double round_sym(double);

class NCO {
public:
    NCO(double mpr, double dpri_d, double apri, double aprid, double apr, double aprp,
        double wantFmod, double wantPmod, int N, double* phase_mod_i) :
        mpr((int) mpr), dpri((int) dpri_d), apri((int) apri), aprid((int) aprid),
        apr((int) apr), aprp((int) aprp),
        wantFmod((int) wantFmod), wantPmod((int) wantPmod), N(N), phase_mod_i(phase_mod_i),
        ditherSequence(new int[N+10]), phi_acc(0)
    {
        int reg[16] = {1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1};
        int old_lsb = 0;

        if (dpri > 0) {
            for (int i = 0; i < N+10; i++) {
                ditherSequence[i] = 0;
                for (int k = 0; k <= dpri-1; k++) {
                    ditherSequence[i] += reg[15-(dpri-1)+k] * (1<<k);
                }

                if (reg[15] == 1) {
                    ditherSequence[i] -= (1<<dpri) - 1;
                }
                old_lsb = reg[0];
                reg[0] = reg[15]^reg[14]^reg[12]^reg[3];
                for (int j = 15; j > 1; j--) {
                    reg[j] = reg[j-1];
                }
                reg[1] = old_lsb;
            }
        }
    }


protected:
    int mpr;
    int dpri;
    int apri;
    int aprid;
    int apr;
    int aprp;
    int wantFmod;
    int wantPmod;
    int N;
    double* phase_mod_i;
    int* ditherSequence;
    long long phi_acc;
};

class SerialCordic : public NCO {
private:
        long long* rom_cordic;
        long long max_addr;
        long long max_acc;
        bool trace;

public:
    SerialCordic(double mpr, double dpri, double apri, double aprid, double apr, double aprp,
              double wantFmod, double wantPmod, int N, double* phase_mod_i) :
        NCO(mpr, dpri, apri, aprid, apr, aprp, wantFmod, wantPmod, N, phase_mod_i),
        rom_cordic(new long long[this->mpr]), max_addr(1ll << this->apri),
        max_acc(1ll << this->apr), trace(false)
    {
        for (int i = 0; i < this->mpr; i++) {
            double da = atan(pow(2, -i)) / (2 * pi);
            double scaled = floor(pow(2, apri + 1) * da);
            rom_cordic[i] = scaled;
        }
    }

    ~SerialCordic()
    {
        delete[] rom_cordic;
    }

    void accumulate(long long phi_inc, long long freq_mod) {
        phi_acc += phi_inc + freq_mod;
        phi_acc = phi_acc % max_acc;
    }

    long long calculate_address(int i) {
        double truncatePostDither = floor(pow(2.0,aprid-apri-1.0));

        long long addr;
        if (dpri > 0) {
            double scale_addr_phase = (pow(2.0,(double)(aprp-apri-1.0)));
            double truncatePreDither = floor(pow(2.0,apr-aprid));
            if (aprid > apr) {
                addr = floor(phi_acc * (1ll << (aprid-apr)));
            } else {
                addr = floor(phi_acc/truncatePreDither);		
            }
            if (wantFmod == 2.0) {
                addr = floor(addr+ditherSequence[i+2]);
            } else if (wantFmod == 1.0) {
                addr = floor(addr+ditherSequence[i+1]);
            } else {
                addr = floor(addr+ditherSequence[i]);
            }
            if (addr < 0) {
                long long negate_addr = 1ll << aprid;
                addr += negate_addr;
            }
            if (wantPmod == 1.0) {
                if (aprp > aprid) {
                    addr = addr * pow(2.0,aprp-aprid);
                } else {
                    addr = floor(addr/pow(2.0,aprid-aprp));
                }
                addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                addr = dblmod(addr,2.0*max_addr);
            } else {
                addr = dblmod(floor(addr/truncatePostDither),2.0*max_addr);
            }
        } else {
            if (apr == apri) {
                addr = phi_acc << 1;
            } else {
                addr = phi_acc >> (apr - apri - 1);
            }
            if (wantPmod == 1) {
                int shift = aprp - apri - 1;
                if (shift >= 0) {
                    addr = addr << shift;
                    addr = (addr + (long long) phase_mod_i[i]) >> shift;
                } else {
                    addr = addr >> -shift;
                    addr = (addr + (long long) phase_mod_i[i]) << -shift;
                }
            }					
            addr = addr % (2 * max_addr);
        }
        return addr;
    }

    void set_trace(bool trace) {
        this->trace = trace;
    }

    void calculate(double& sin_o, double& cos_o, long long addr)
    {
        double const x0_c = 0.6072529;
        /* new scaling to prevent saturation */
        // x0 = floor( (pow(2.0,mpr-1.0)-mpr/2.0)*x0_c);
        long long x0 = (long long) (((double) (1ll << (mpr - 1)) - (double)mpr/2) * x0_c);
        long long half_max_addr = max_addr / 2;

        /*Cordic Engine*/
        long long x = x0;
        long long y = 0;
        long long dx = 0;
        long long dy = 0;
        long long a = addr % half_max_addr;
        for (int k = 0; k < mpr; k++) {
            dx = x >> k;
            dy = y >> k;
            if (trace) {
                printf("%2d: x = %lld y = %lld a = %lld, rom_value = %lld\n", k, x, y, a, rom_cordic[k]);
                printf("dx = %lld dy = %lld\n", dx, dy);
            }
            if (a >= 0) {
                x -= dy; y += dx; a -= rom_cordic[k];			
            } else {
                x += dy; y -= dx; a += rom_cordic[k];		
            }
            if (trace) {
            //    printf("after: x = %lld y = %lld a = %lld\n", x, y, a);
            }
        }

        long long  data_sin_temp, data_cos_temp;

        if (addr <= half_max_addr-1) {
            data_sin_temp = y;
            data_cos_temp = x;
        } else if ((addr <= max_addr-1) && (addr > half_max_addr-1)) {
            data_sin_temp = x;
            data_cos_temp = -y;
        } else if ((addr <= 3*half_max_addr-1) && (addr > max_addr-1)) {
            data_sin_temp = -y;
            data_cos_temp = -x;
        } else {
            data_sin_temp = -x;
            data_cos_temp = y;
        }
        sin_o = data_sin_temp;
        cos_o = data_cos_temp;
    }
};

void Sncomodel(double *fsin_o,
        double *fcos_o,
        double *phi_inc_i,
        double *phase_mod_i,
        double *freq_mod_i,
        double wantFmod,
        double wantPmod,
        int numch,
        double numba,
        double apr,
        double mpr,
        double apri,
        double aprp,
        double aprf,
        double dpri,
        double arch,
        double dual,
        int simLength
        )
{
    double phi_acc = 0;
    double *phi_acc_held = {'\0'};
    double addr = 0;
    int i,j,k = 0;
    double max_acc = pow(2.0,apr);
    double aprid = apri+5;
    int N = simLength;
    int dpri_i = (int) dpri;
    int ditherOffset = 0;
    double truncatePreDither = floor(pow(2.0,apr-aprid));
    double truncate = floor(pow(2.0,(double)apr-apri));
    double negate_addr = floor(pow(2.0,aprid));
    double truncatePostDither = floor(pow(2.0,aprid-apri));
    double max_addr = floor(pow(2.0,apri-3.0));
    double half_max_addr = floor(pow(2.0,apri-1.0));
    double max_addr_full = floor(pow(2.0,apri));
    int max_val = (int)(floor(pow(2.0,mpr-1.0))-1.0);
    int segment = 0;
    int select = 0;
    /* Phase modulation variables*/
    double scale_addr_phase = (pow(2.0,(double)(aprp-apri)));
    double scale_addr_phase_ext = (pow(2.0,(double)(aprp-apri)));
    /*TRIG EXP ARCH SPECIFIC VARIABLES */
    int addr_lsb = 0;
    int addr_msb = 0;
    int max_addr_lsb = (int)pow(2.0,ceil(apri/2.0));
    int max_addr_msb = (int)pow(2.0,floor(apri/2.0));

    /*CORDIC SPECIFIC VARIABLES*/
    double x0 = floor( 0.60725*(pow(2.0,mpr-1.0)-1.0));

    double x = 0.0;
    double y = 0.0;
    double dx = 0.0;
    double dy = 0.0;
    double a = 0.0;
    double da = 0.0;
    double scaled = 0.0;
    /*int scaled_int = 0;*/

    /*Arrays*/
    int *rom_sin_c = {'\0'};
    int *rom_cos_c = {'\0'};
    int *rom_sin_f = {'\0'};
    int *rom_cos_f = {'\0'};
    long long data_temp_a = 0;
    long long data_temp_b = 0;
    long long data_temp_res = 0;
    /*Output temporary arrays*/
    double data_sin_temp;
    double data_cos_temp;

    phi_acc_held = new double[numch];

    /***********************************************************************
     * Generate Dither Sequence for a width dpri
     *
     * DitherSequence Generator
     *
     ************************************************************************/

    /*Dither generation variables*/
    int *ditherSequence = new int[N+10];
    double reg[16] = {1.0,0.0,1.0,1.0,1.0,0.0,1.0,1.0,0.0,1.0,0.0,1.0,1.0,0.0,0.0,1.0};
    double old_lsb = 0.0;

    if (dpri > 0.0) {
        for (i = 0; i < (N+10); i++) {
            ditherSequence[i] = 0;
            for (k = 0; k <= dpri_i-1; k++) {
                ditherSequence[i] = ditherSequence[i]+(int)floor(reg[15-(dpri_i-1)+k]*pow(2.0,(double)(k)));
            }

            if (reg[15] == 1) {
                ditherSequence[i] = ditherSequence[i]-(int)pow(2.0,dpri_i)+1;
            }
            old_lsb = reg[0];
            reg[0] = ( ( (int)reg[15]^(int)reg[14])^( (int)reg[12]^(int)reg[3] ) );
            for (j = 15; j > 1; j--) {
                reg[j] = reg[j-1];
            }
            reg[1] = old_lsb;
        }
    }
    /*************************************************************************/
    /*Architecture Selection
      0 Small Rom
      1 Large Rom
      2 Trig Expansion
      3 Parallel CORDIC
      4 Serial CORDIC
     */

    /***************************************************************************
     * SMALL ROM ARCHITECTURE
     **************************************************************************/
    if (arch == 0.0) {
        /*variable initialization*/
        aprid = apri+5;
        truncate = floor(pow(2.0,(double)apr-apri));
        negate_addr = floor(pow(2.0,aprid));
        truncatePostDither = floor(pow(2.0,aprid-apri));
        max_addr = floor(pow(2.0,apri-3.0));
        max_addr_full = floor(pow(2.0,apri));
        max_val = (int)(floor(pow(2.0,mpr-1.0))-1.0);
        segment = 0;
        select = 0;
        phi_acc = 0.0;
        for (k = 0; k < numch; k++) {
            phi_acc_held[k] = 0;
        }

        for (i = 0; i < N; i++) {
            if (dpri > 0.0) {
                if (aprid > apr) {
                    addr = floor((double)phi_acc*floor(pow(2.0,aprid-apr)));
                } else {
                    addr = floor((double)phi_acc/truncatePreDither);		
                }
                /*Offset dither accordingly*/
                if (wantFmod == 2.0) {
                    ditherOffset = 2;
                } else if (wantFmod == 1.0) {
                    ditherOffset = 1;
                } else {
                    ditherOffset = 0;
                }
                /*if (numch > 1) {
                  ditherOffset++;
                  }*/
                addr = floor(addr+ditherSequence[i+ditherOffset]);
                if (addr < 0) {
                    addr += negate_addr;
                }
                if (wantPmod == 1.0) {
                    if (aprp > aprid) {
                        addr = addr * pow(2.0,aprp-aprid);
                    } else {
                        addr = floor(addr/pow(2.0,aprid-aprp));
                    }
                    addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                    addr = dblmod(addr,max_addr_full);
                } else {
                    addr = dblmod(floor(addr/truncatePostDither),max_addr_full);
                }
            } else {
                addr = floor(phi_acc/truncate);
                if (wantPmod == 1.0) {
                    if (aprp > apri) {
                        addr = addr * scale_addr_phase;
                        addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                        addr = dblmod(addr,max_addr_full);
                    } else {
                        addr = addr+phase_mod_i[i];
                        addr = dblmod(addr,max_addr_full);
                    }
                }
            }

            segment = (int)(floor(addr/max_addr)) % 8;
            select = (int)segment%2;
            if (select == 0) {
                addr = dblmod(addr,max_addr);
            } else {
                addr = max_addr-(dblmod(addr,max_addr))-1.0;
            }
            /*fprintf(fid,"addr =%f segment =%d select =%d\n",addr,segment,select);
            //Accumulate phase */
            if (numch == 1) {
                phi_acc = phi_acc+phi_inc_i[i]+freq_mod_i[i];
            } else {
                for (k = numch-1; k > 0; k--) {
                    phi_acc_held[k] = phi_acc_held[k-1];
                }
                phi_acc_held[0] = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                phi_acc = phi_acc_held[numch-1];
            }

            if (phi_acc >= max_acc) {
                phi_acc = phi_acc-max_acc;
            }

            /*fprintf(fid,"phi_acc =%f\n",phi_acc);*/
            switch(segment) {
                case 0:
                    data_sin_temp = (int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = (int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 1:
                    data_sin_temp = (int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = (int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 2:
                    data_sin_temp = (int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = -1.0*(int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 3:
                    data_sin_temp = (int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = -1.0*(int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 4:
                    data_sin_temp = -1.0*(int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = -1.0*(int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 5:
                    data_sin_temp = -1.0*(int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = -1.0*(int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    break;

                case 6:
                    data_sin_temp = -1.0*(int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = (int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    break;
                case 7:
                    data_sin_temp = -1.0*(int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = (int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    break;
                default :
                    data_sin_temp = -1.0*(int)floor(max_val*(sin(pi*addr/(4*max_addr)))+0.5);
                    data_cos_temp = (int)floor(max_val*(cos(pi*addr/(4*max_addr)))+0.5);
                    break;
            }
            fsin_o[i] = data_sin_temp;
            fcos_o[i] = data_cos_temp;
        }
    }
    /****************************************************************************
     * LARGE ROM ARCHITECTURE
     ***************************************************************************/
    else if (arch == 1.0) {
        /*variable initialization*/
        aprid = apri+5;
        truncate = floor(pow(2.0,(double)apr-apri));
        truncatePostDither = floor(pow(2.0,aprid-apri));
        max_addr = floor(pow(2.0,apri));
        max_val = (int)(floor(pow(2.0,mpr-1.0))-1.0);
        phi_acc = 0.0;
        for (k = 0; k < numch; k++) {
            phi_acc_held[k] = 0;
        }
        for (i = 0; i < N; i++) {
            if (dpri > 0.0) {
                if (aprid > apr) {
                    addr = floor((double)phi_acc*floor(pow(2.0,aprid-apr)));
                } else {
                    addr = floor((double)phi_acc/truncatePreDither);		
                }
                /*Offset dither accordingly*/
                if (wantFmod == 2.0) {
                    ditherOffset = 2;
                } else if (wantFmod == 1.0) {
                    ditherOffset = 1;
                } else {
                    ditherOffset = 0;
                }
                /*if (numch > 1) {
                  ditherOffset++;
                  }*/
                addr = floor(addr+ditherSequence[i+ditherOffset]);

                if (addr < 0) {
                    addr += negate_addr;
                }
                if (wantPmod == 1.0) {
                    if (aprp > aprid) {
                        addr = addr * pow(2.0,aprp-aprid);
                    } else {
                        addr = floor(addr/pow(2.0,aprid-aprp));
                    }
                    addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                    addr = dblmod(addr,max_addr);
                } else {
                    addr = dblmod(floor(addr/truncatePostDither),max_addr);
                }
            } else {
                addr = floor(phi_acc/truncate);
                if (wantPmod == 1.0) {
                    if (aprp > apri) {
                        addr = addr * scale_addr_phase;
                        addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                        addr = dblmod(addr,max_addr);
                    } else {
                        addr = addr+phase_mod_i[i];
                        addr = dblmod(addr,max_addr);
                    }
                }
            }
            if (addr >= max_addr) {
                addr = addr - max_addr;
            }

            /*Accumulate phase */
            if (numch == 1) {
                phi_acc = phi_acc+phi_inc_i[i]+freq_mod_i[i];
            } else {
                for (k = numch-1; k > 0; k--) {
                    phi_acc_held[k] = phi_acc_held[k-1];
                }
                phi_acc_held[0] = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                phi_acc = phi_acc_held[numch-1];
            }
            if (phi_acc >= max_acc) {
                phi_acc = phi_acc-max_acc;
            }
            fsin_o[i] = floor(max_val*(sin(2*pi*addr/((double)max_addr)))+0.5);
            fcos_o[i] = floor(max_val*(cos(2*pi*addr/((double)max_addr)))+0.5);
        }
    }
    /***************************************************************************
     * TRIG EXPANSION ARCHITECTURE
     **************************************************************************/
    else if ((arch == 2.0) || (arch == 2.5)) {
        /*initialize*/
        aprid = apri+5;
        truncate = floor(pow(2.0,apr-apri));
        truncatePostDither = floor(pow(2.0,aprid-apri));
        max_addr = floor(pow(2.0,apri));
        max_addr_lsb = (int) floor(pow(2.0,ceil(apri/2.0)));
        max_addr_msb = (int) floor(pow(2.0,floor(apri/2.0)));
        max_val = (int)floor((pow(2.0,mpr-1.0))-1.0);
        /*Allocate memory for ROMs*/
        rom_sin_c = new int[max_addr_msb];
        rom_cos_c = new int[max_addr_msb];
        rom_sin_f = new int[max_addr_lsb];
        rom_cos_f = new int[max_addr_lsb];
        /*Create Coarse Grain Arrays*/
        for (i = 0; i < max_addr_msb; i++) {
            rom_sin_c[i] = (int)floor( (max_val*(sin(2.0*pi*i/(double)max_addr_msb))) +0.5);
            rom_cos_c[i] = (int)floor( (max_val*(cos(2.0*pi*i/(double)max_addr_msb))) +0.5);
        }
        /*Create Fine Grain Arrays*/
        for (i = 0; i < max_addr_lsb; i++) {
            rom_sin_f[i] = (int)floor( (max_val*(sin(2.0*pi*(double)i/((double)max_addr_msb*(double)max_addr_lsb)))) +0.5);
            rom_cos_f[i] = (int)floor( (max_val*(cos(2.0*pi*(double)i/((double)max_addr_msb*(double)max_addr_lsb)))) +0.5);
        }
        phi_acc = 0.0;
        for (k = 0; k < numch; k++) {
            phi_acc_held[k] = 0;
        }
        for (i = 0; i < N; i++) {
            if (arch == 2.0) {
                if (dpri > 0.0) {
                    if (aprid > apr) {
                        addr = floor((double)phi_acc*floor(pow(2.0,aprid-apr)));
                    } else {
                        addr = floor((double)phi_acc/truncatePreDither);		
                    }
                    /*Offset dither accordingly*/
                    if (wantFmod == 2.0) {
                        ditherOffset = 2;
                    } else if (wantFmod == 1.0) {
                        ditherOffset = 1;
                    } else {
                        ditherOffset = 0;
                    }
                    addr = floor(addr+ditherSequence[i+ditherOffset]);
                    if (addr < 0) {
                        addr += negate_addr;
                    }
                    if (wantPmod == 1.0) {
                        if (aprp > aprid) {
                            addr = addr * pow(2.0,aprp-aprid);
                        } else {
                            addr = floor(addr/pow(2.0,aprid-aprp));
                        }
                        addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                        addr = dblmod(addr,max_addr);
                    } else {
                        addr = dblmod(floor(addr/truncatePostDither),max_addr_full);
                    }
                } else {
                    addr = floor(phi_acc/truncate);
                    if (wantPmod == 1.0) {
                        if (aprp > apri) {
                            addr = addr * scale_addr_phase;
                            addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                            addr = dblmod(addr,max_addr);
                        } else {
                            addr = addr+phase_mod_i[i];
                            addr = dblmod(addr,max_addr);
                        }
                    }
                }
                /*Accumulate phase */
                if (numch == 1) {
                    phi_acc = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                } else {
                    for (k = numch-1; k > 0; k--) {
                        phi_acc_held[k] = phi_acc_held[k-1];
                    }
                    phi_acc_held[0] = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                    phi_acc = phi_acc_held[numch-1];
                }
                if (phi_acc >= max_acc) {
                    phi_acc = phi_acc-max_acc;
                }
                /*fprintf(fid,"phi_acc = %f dither =%f \n",phi_acc, ditherSequence[i]);*/

                addr_lsb = (int)(dblmod(addr,pow(2.0,ceil(apri/2.0))));
                addr_msb = (int)floor(addr/pow(2.0,ceil(apri/2.0))) %max_addr_msb;
                data_temp_a = (long long)((long long)rom_sin_c[addr_msb]*(long long)rom_cos_f[addr_lsb]);
                data_temp_b = (long long)((long long)rom_cos_c[addr_msb]*(long long)rom_sin_f[addr_lsb]);
                data_temp_res = data_temp_a+data_temp_b;
                fsin_o[i] = (double)(data_temp_res >> ((int)mpr-1));
                if (fsin_o[i] > 0) {
                    fsin_o[i] = fsin_o[i]+1.0;
                }

                data_temp_a = (long long)((long long)rom_cos_c[addr_msb]*(long long)rom_cos_f[addr_lsb]);
                data_temp_b = (long long)((long long)rom_sin_c[addr_msb]*(long long)rom_sin_f[addr_lsb]);
                data_temp_res = data_temp_a-data_temp_b;
                fcos_o[i] = (double)(data_temp_res >> ((int)mpr-1));
                if (fcos_o[i] > 0) {
                    fcos_o[i] = fcos_o[i]+1.0;
                }
            } else {
                /*if (i%2 == 0) {*/
                if (dpri > 0.0) {
                    if (aprid > apr) {
                        addr = floor((double)phi_acc*floor(pow(2.0,aprid-apr)));
                    } else {
                        addr = floor((double)phi_acc/truncatePreDither);		
                    }
                    /*Offset dither accordingly*/
                    if (wantFmod == 2.0) {
                        ditherOffset = 2;
                    } else if (wantFmod == 1.0) {
                        ditherOffset = 1;
                    } else {
                        ditherOffset = 0;
                    }
                    /*if (numch > 1) {
                      ditherOffset++;
                      }*/
                    addr = floor(addr+ditherSequence[i+ditherOffset]);
                    if (addr < 0) {
                        addr += negate_addr;
                    }
                    if (wantPmod == 1.0) {
                        if (aprp > aprid) {
                            addr = addr * pow(2.0,aprp-aprid);
                        } else {
                            addr = floor(addr/pow(2.0,aprid-aprp));
                        }
                        addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                        addr = dblmod(addr,max_addr);
                    } else {
                        addr = dblmod(floor(addr/truncatePostDither),max_addr);
                    }
                } else {
                    addr = floor(phi_acc/truncate);
                    if (wantPmod == 1.0) {
                        if (aprp > apri) {
                            addr = addr * scale_addr_phase;
                            addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                            addr = dblmod(addr,max_addr);
                        } else {
                            addr = addr+phase_mod_i[i];
                            addr = dblmod(addr,max_addr);
                        }
                    }
                }

                phi_acc = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                phi_acc = dblmod(phi_acc,max_acc);
                addr_lsb = (int)(dblmod(addr,pow(2.0,ceil(apri/2.0))));
                addr_msb = (int)floor(addr/pow(2.0,ceil(apri/2.0))) %max_addr_msb;
                data_temp_a = (long long)((long long)rom_sin_c[addr_msb]*(long long)rom_cos_f[addr_lsb]);
                data_temp_b = (long long)((long long)rom_cos_c[addr_msb]*(long long)rom_sin_f[addr_lsb]);
                data_temp_res = data_temp_a+data_temp_b;
                fsin_o[i] = (double)(data_temp_res >> ((int)mpr-1));
                /*		if (sin_held > 0) {
                        sin_held++;
                        }*/
                data_temp_a = (long long)((long long)rom_cos_c[addr_msb]*(long long)rom_cos_f[addr_lsb]);
                data_temp_b = (long long)((long long)rom_sin_c[addr_msb]*(long long)rom_sin_f[addr_lsb]);
                data_temp_res = data_temp_a-data_temp_b;
                fcos_o[i] = (double)(data_temp_res >> ((int)mpr-1));
            }
        }	
        delete[] rom_sin_c;
        delete[] rom_sin_f;
        delete[] rom_cos_c;
        delete[] rom_cos_f;
    }
    /***************************************************************************
     * CORDIC ARCHITECTURE
     **************************************************************************/
    else if (arch >= 3.0) {
        /*Initialize*/
        if (apr == apri) {
            truncate = 0.5;
        } else {
            truncate = floor(pow(2.0,(double)apr-apri-1.0));
        }
        truncatePostDither = floor(pow(2.0,aprid-apri-1.0));
        max_addr = floor(pow(2.0,apri));
        half_max_addr = floor(pow(2.0,(double)apri-1.0));
        max_val = (int)(floor(pow(2.0,(double)mpr-1.0)));
        scale_addr_phase = (pow(2.0,(double)(aprp-apri-1.0)));
        scale_addr_phase_ext = (pow(2.0,(double)(aprp-apri-1.0)));
        /*Initialize arctan values*/
        double rom_cordic[32];
        /* CORDIC Scaling factor
        // This value should be initialized according to a power series
        // of length mpr. However, overflows can potentially be introduced in the CORDIC
        // if the resulting unscaled value exceeds 0.6072529*/
        /*x0 = 1.0;
          for (i = 0; i <= mpr; i++) {
          x0 = x0*((1.0)/(sqrt((double)1.0 + pow(2.0,-2.0*(double)i))));
          }*/
        x0 = 0.6072529;
        /* new scaling to prevent saturation */
        x0 = floor( (pow(2.0,mpr-1.0)-mpr/2.0)*x0);
        /*fprintf(cordic_file,"x0 = %lf\n",x0);*/
        for (i = 0; i <= mpr-1; i++) {
            da = (atan(1.0/pow(2.0,i))) * (1.0/(2.0*pi));
            /* scaled = (pow(2.0,apri+1.0)-1.0) * da; */
            scaled = (pow(2.0,apri+1.0)) * da;
            scaled = floor(scaled);
            rom_cordic[i] = scaled;
            /*fprintf(cordic_file,"rom_cordic[%d] = %lf\n",i,rom_cordic[i]);*/
        }
        phi_acc = 0.0;
        for (k = 0; k < numch; k++) {
            phi_acc_held[k] = 0;
        }
        /***********************************************************************
          Parallel Cordic
         **********************************************************************/
        if (arch == 3.0) {
            for (i = 0; i < N; i++) {
                if (dpri > 0.0) {
                    if (aprid > apr) {
                        addr = floor((double)phi_acc*floor(pow(2.0,aprid-apr)));
                    } else {
                        addr = floor((double)phi_acc/truncatePreDither);		
                    }
                    /*Offset dither accordingly*/
                    if (wantFmod == 2.0) {
                        ditherOffset = 2;
                    } else if (wantFmod == 1.0) {
                        ditherOffset = 1;
                    } else {
                        ditherOffset = 0;
                    }
                    /*if (numch > 1) {
                      ditherOffset++;
                      }*/

                    addr = floor(addr+ditherSequence[i+ditherOffset]);
                    if (addr < 0) {
                        addr += negate_addr;
                    }
                    if (wantPmod == 1.0) {
                        if (aprp > aprid) {
                            addr = addr * pow(2.0,aprp-aprid);
                        } else {
                            addr = floor(addr/pow(2.0,aprid-aprp));
                        }
                        addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                        addr = dblmod(addr,2.0*max_addr);
                    } else {
                        addr = dblmod(floor(addr/truncatePostDither),2.0*max_addr);
                    }

                } else {
                    addr = floor(phi_acc/truncate);
                    if (wantPmod == 1.0) {
                        if (aprp > apri) {
                            addr = floor(addr * scale_addr_phase);
                            addr = floor((addr+phase_mod_i[i])/scale_addr_phase);
                            addr = dblmod(addr,(2.0*max_addr));
                        } else {
                            /*addr = addr+phase_mod_i[i];*/
                            addr = floor(addr * scale_addr_phase_ext);
                            addr = floor((addr+phase_mod_i[i])/scale_addr_phase_ext);
                            addr = dblmod(addr,(2.0*max_addr));
                        }
                    }
                    addr = dblmod(addr,2.0*max_addr);
                }
                /*Accumulate phase */
                if (numch == 1) {
                    phi_acc = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                } else {
                    for (k = numch-1; k > 0; k--) {
                        phi_acc_held[k] = phi_acc_held[k-1];
                    }
                    phi_acc_held[0] = phi_acc+phi_inc_i[i]+freq_mod_i[i];
                    phi_acc = phi_acc_held[numch-1];
                }
                phi_acc = dblmod(phi_acc,max_acc);
                /*Cordic Engine*/
                x = x0;
                y = 0.0;
                dx = 0.0;
                dy = 0.0;
                a = dblmod(addr,half_max_addr);
                for (k = 0; k < mpr; k++) {
                    dx = floor((double)x/(pow(2.0,k)));
                    dy = floor((double)y/(pow(2.0,k)));
                    if (a >= 0.0) {
                        x = x-dy; y = y+dx; a = a-rom_cordic[k];	
                    } else {
                        x = x+dy; y = y-dx; a = a+rom_cordic[k];			
                    }
                }
                if (addr <= half_max_addr-1) {
                    data_sin_temp = y;
                    data_cos_temp = x;
                } else if ((addr <= max_addr-1) && (addr > half_max_addr-1)) {
                    data_sin_temp = x;
                    data_cos_temp = -1.0*y;
                } else if ((addr <= 3*half_max_addr-1) && (addr > max_addr-1)) {
                    data_sin_temp = -1.0*y;
                    data_cos_temp = -1.0*x;
                } else {
                    data_sin_temp = -1.0*x;
                    data_cos_temp = y;
                }
                fsin_o[i] = data_sin_temp;
                fcos_o[i] = data_cos_temp;
            }
        }
        /***********************************************************************
          Serial Cordic
         **********************************************************************/
        else {
            SerialCordic nco(mpr, dpri, apri, aprid, apr, aprp, wantFmod, wantPmod, N, phase_mod_i);

            for (i = 0; i < N; i++) {
                long long addr = nco.calculate_address(i);
                nco.accumulate((long long) phi_inc_i[i], (long long) freq_mod_i[i]);
                if (i == trace_sample) {
                    nco.set_trace(true);
                }
                nco.calculate(fsin_o[i], fcos_o[i], addr);
                nco.set_trace(false);
            }
        }
    }
    delete[] ditherSequence;

    delete[] phi_acc_held;
}	
////////////////////////////////////////////////////////////////////////////////
// Symmetrical Rounding
////////////////////////////////////////////////////////////////////////////////
double round_sym(double a) {
    if (a > 0.0)
        return floor(a + 0.5);
    else
        return ceil(a - 0.5);
}

/*******************************************************************************
// Method : dblmod
// Compute a%b where a and b are integral but double values
*******************************************************************************/
double dblmod(double a,double b) {
    double b_tmp = 0.0;
    b_tmp = 0.0;
    if (b == 0.0 || a == 0) {
        b_tmp = a;
    } else if (a < b) {
        b_tmp = a;
    } else if (a == b) {
        b_tmp = 0.0;
    } else {
        while(a >= b) {
            a = a-b;
        }
        b_tmp = a;
    }
    return b_tmp;	
}

#ifdef MATLAB_MEX_FILE

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{
    double *phi_inc_i;
    double *phase_mod_i;
    double *freq_mod_i;
    double *fsin_o;
    double *fcos_o;
    double wantFmod;
    double wantPmod;
    double numch;
    double numba;
    double apr;
    double mpr;
    double apri;
    double aprp;
    double aprf;
    double dpri;
    double arch;
    double dual;
    int N;
    int mrows,ncols ;

    mrows = mxGetM(prhs[0]);
    ncols = mxGetN(prhs[0]);

    plhs[0] = mxCreateDoubleMatrix(mrows,ncols, mxREAL);
    plhs[1] = mxCreateDoubleMatrix(mrows,ncols, mxREAL);

    /*Inputs */
    phi_inc_i = mxGetPr(prhs[0]);
    phase_mod_i = mxGetPr(prhs[1]);
    freq_mod_i = mxGetPr(prhs[2]);
    wantFmod = mxGetScalar(prhs[3]);
    wantPmod  = mxGetScalar(prhs[4]);
    numch = mxGetScalar(prhs[5]);
    apr  = mxGetScalar(prhs[6]);
    mpr  = mxGetScalar(prhs[7]);
    apri = mxGetScalar(prhs[8]);
    aprp = mxGetScalar(prhs[9]);
    aprf = mxGetScalar(prhs[10]);
    dpri = mxGetScalar(prhs[11]);
    arch = mxGetScalar(prhs[12]);
    dual = mxGetScalar(prhs[13]);
    N    = (int) mxGetScalar(prhs[14]);
    /*Outputs */
    fsin_o = mxGetPr(plhs[0]);
    fcos_o = mxGetPr(plhs[1]);

    Sncomodel(fsin_o,
            fcos_o,
            phi_inc_i,
            phase_mod_i,
            freq_mod_i,
            wantFmod,
            wantPmod,
            numch,
            numba,
            apr,
            mpr,
            apri,
            aprp,
            aprf,
            dpri,
            arch,
            dual,
            N);
}

#endif
