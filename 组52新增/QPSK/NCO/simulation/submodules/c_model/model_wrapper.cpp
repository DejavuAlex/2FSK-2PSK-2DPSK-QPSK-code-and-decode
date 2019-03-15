#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "nco_model.h"

void usage()
{
    printf("Usage: c_model [-q] [-t sample_num] [-o num_sin] numch_t apr_t apri_t mpr_t aprp_t aprf_t dpri_t arch_t wantPmod_t wantFmod_t dual_t numba_t testcase\n");
    exit(1);
}

extern int trace_sample;

int main(int argc, const char** argv)
{

    // declare variable
    FILE *fsin,*fcos;
    const int N = 2048;
    double* phi_inc_i_t;
    double* phase_mod_i_t;
    double* freq_mod_i_t;
    double* fsin_o_t;
    double* fcos_o_t;
    //double dither_t = 0.0;
    int simLength_t = N;
    int i,j,k;

    double fo = 1.0;
    double fck = 100.0; //unit: MHz
    double phi_inc;
    double phase_inc;
    double freq_inc;

    char test_dir_sin[1000];
    char test_dir_cos[1000];

    bool quiet = false;
    int output_sin = 0;
    while(true) {
        if (argc == 1) {
            usage();
        }
        if (strcmp(argv[1], "-q") == 0) {
            quiet = true;
            argv = &argv[1];
            argc -= 1;
        } else if (strcmp(argv[1], "-o") == 0) {
            if (argc == 2) {
                printf("-o requires an option\n");
                usage();
            }
            output_sin = atoi(argv[2]);
            argv = &argv[2];
            argc -= 2;
        } else if (strcmp(argv[1], "-t") == 0) {
            if (argc == 2) {
                printf("-t requires an option\n");
                usage();
            }
            trace_sample = atoi(argv[2]);
            argv = &argv[2];
            argc -= 2;
        } else {
            break;
        }
    }

    if (argc != 14) {
        usage();
    }

    double numch_t    = atof(argv[1]);
    double apr_t      = atof(argv[2]);
    double apri_t     = atof(argv[3]);
    double mpr_t      = atof(argv[4]);
    double aprp_t     = atof(argv[5]);
    double aprf_t     = atof(argv[6]);
    double dpri_t     = atof(argv[7]);
    double arch_t     = atof(argv[8]);
    double wantFmod_t = atof(argv[9]);
    double wantPmod_t = atof(argv[10]);
    double dual_t     = atof(argv[11]);
    double numba_t    = atof(argv[12]);

    if (!quiet) {
        printf ("Argument #1 numch_t     : %f\n", numch_t);
        printf ("Argument #2 apr_t       : %f\n", apr_t);
        printf ("Argument #3 apri_t      : %f\n", apri_t);
        printf ("Argument #4 mpr_t       : %f\n", mpr_t);
        printf ("Argument #5 aprp_t      : %f\n", aprp_t);
        printf ("Argument #6 aprf_t      : %f\n", aprf_t);
        printf ("Argument #7 dpri_t      : %f\n", dpri_t);
        printf ("Argument #8 arch_t      : %f\n", arch_t);
        printf ("Argument #9 wantPmod_t  : %f\n", wantPmod_t);
        printf ("Argument #10 wantFmod_t : %f\n", wantFmod_t);
        printf ("Argument #11 dual_t     : %f\n", dual_t);
        printf ("Argument #12 numba_t    : %f\n", numba_t);
        printf ("Argument #13 test_dir   : %s\n", argv[13]);
    }

    if (arch_t == 4.0) //serial cordic
        simLength_t = (int) N*mpr_t;
    else if (arch_t == 2.5) //trig_arch with through_put=2
            simLength_t = N*2;
    else simLength_t = (int) N*numch_t*numba_t;

    //supply storage space for blow variable
    phi_inc_i_t = new double[simLength_t];
    phase_mod_i_t = new double[simLength_t];
    freq_mod_i_t = new double[simLength_t];
    fsin_o_t = new double[simLength_t];
    fcos_o_t = new double[simLength_t];

    //give value for variable
    if (arch_t == 4.0) {
        phi_inc = ((((fo/fck)*pow(2.0,apr_t)*mpr_t) - (floor((fo/fck)*pow(2.0,apr_t)*mpr_t)))>= 0.5) ? ceil(((fo/fck)*(pow(2.0,apr_t))*mpr_t)) : floor((fo/fck)*(pow(2.0,apr_t))*mpr_t);
    } else if (arch_t == 2.5) {
        phi_inc = ((((fo/fck)*pow(2.0,apr_t)*2) - (floor((fo/fck)*pow(2.0,apr_t)*2)))>= 0.5) ? ceil(((fo/fck)*(pow(2.0,apr_t))*2)) : floor((fo/fck)*(pow(2.0,apr_t))*2);
    } else {
        phi_inc = (((fo/fck)*(pow(2.0,apr_t)) - floor((fo/fck)*(pow(2.0,apr_t))))>0.5) ? ceil((fo/fck)*(pow(2.0,apr_t))) : floor((fo/fck)*(pow(2.0,apr_t)));
    }

    phase_inc = floor(pow(2.0,aprp_t-4.0));
    freq_inc = floor(pow(2.0,aprf_t-4.0));

    if (arch_t == 4.0) {
        for (i = 0; i<simLength_t; i++) {
            phi_inc_i_t[i]= phi_inc;

            if (wantPmod_t) {
                phase_mod_i_t[i] = phase_inc;
            } else {
                phase_mod_i_t[i] = 0.0;
            }

            if (wantFmod_t) {
                freq_mod_i_t[i] = freq_inc;
            } else {
                freq_mod_i_t[i] = 0.0;
            }
        }
    } else if (numba_t>1.0) {
        for (i = 0; i<simLength_t; i++) {

            if (wantPmod_t) {
                phase_mod_i_t[i] = phase_inc;
            } else {
                phase_mod_i_t[i] = 0.0;
            }

            if (wantFmod_t) {
                freq_mod_i_t[i] = freq_inc;
            } else {
                freq_mod_i_t[i] = 0.0;
            }
        }
        for (j = 0; j<numba_t; j++) {
            for (k = 0; k<N; k++) {
                phi_inc_i_t[j*N+k] = floor(phi_inc/(2*j+1));
            }
        }
    } else {
        for (i = 0; i<simLength_t; i+=(int)numch_t) {
            //phi increment
            for (j = 0; j<numch_t; j++){
                phi_inc_i_t[i+j]= floor(phi_inc/(j+1));
            }

            //phase modulation
            if (wantPmod_t) {
                if (numch_t == 1.0) {
                    phase_mod_i_t[i] = phase_inc;
                } else {
                    for (j = 0; j<(int)numch_t; j++) {
                        phase_mod_i_t[i+j] = (double)(j*phase_inc);
                    }
                }
            } else  {
                for (j = 0; j<(int)numch_t; j++) {
                    phase_mod_i_t[i+j] = 0.0;
                }
            }

            //freq modulation
            if (wantFmod_t) {
                if (numch_t == 1.0) {
                    freq_mod_i_t[i] = freq_inc;
                } else {
                    for (j = 0; j<(int)numch_t; j++) {
                        freq_mod_i_t[i+j] = (double)(j*freq_inc);
                    }
                }
            } else {
                for (j = 0; j<(int)numch_t; j++) {
                    freq_mod_i_t[i+j] = 0.0;
                }
            }
        }
    }

    FILE *input_test;
    // strcpy(test_dir_sin,argv[12]);
    sprintf(test_dir_sin, "%s/input_test.txt", argv[13]);
    input_test = fopen(test_dir_sin, "w");
    if (input_test == NULL) {
        fprintf(stderr, "Can't open %s for write: %s\n", test_dir_sin, strerror(errno));
        exit(1);
    }

    fprintf (input_test, "---------------------------------------------------\n");
    fprintf (input_test, "Arguments value\n");
    fprintf (input_test, "Argument #1 numch_t: %f\n", numch_t);
    fprintf (input_test, "Argument #2 apr_t: %f\n", apr_t);
    fprintf (input_test, "Argument #3 apri_t: %f\n", apri_t);
    fprintf (input_test, "Argument #4 mpr_t: %f\n", mpr_t);
    fprintf (input_test, "Argument #5 aprp_t: %f\n", aprp_t);
    fprintf (input_test, "Argument #6 aprf_t: %f\n", aprf_t);
    fprintf (input_test, "Argument #7 dpri_t: %f\n", dpri_t);
    fprintf (input_test, "Argument #8 arch_t: %f\n", arch_t);
    fprintf (input_test, "Argument #9 wantPmod_t: %f\n", wantPmod_t);
    fprintf (input_test, "Argument #10 wantFmod_t: %f\n", wantFmod_t);
    fprintf (input_test, "Argument #11 dual_t: %f\n", dual_t);
    fprintf (input_test, "Argument #12 numba_t: %f\n", numba_t);
    fprintf (input_test, "---------------------------------------------------\n");

    for (j = 0; j<simLength_t; j++) {
        fprintf (input_test, "%f\n", phi_inc_i_t[j]);
        fprintf (input_test, "%f\n", phase_mod_i_t[j]);
        fprintf (input_test, "%f\n\n", freq_mod_i_t[j]);
    }
    fclose(input_test);

    Sncomodel(fsin_o_t,
              fcos_o_t,
              phi_inc_i_t,
              phase_mod_i_t,
              freq_mod_i_t,
              wantFmod_t,
              wantPmod_t,
              (int) numch_t,
              numba_t,
              apr_t,
              mpr_t,
              apri_t,
              aprp_t,
              aprf_t,
              dpri_t,
              arch_t,
              dual_t,
              simLength_t
             );

    sprintf(test_dir_sin, "%s/fsin_o_test_c.txt", argv[13]);
    sprintf(test_dir_cos, "%s/fcos_o_test_c.txt", argv[13]);

    fsin = fopen(test_dir_sin, "w");
    fcos = fopen(test_dir_cos, "w");

    if (fsin == NULL) {
        fprintf(stderr, "Cannot open %s\n", "fsin_o_test_c.txt");
        return 1;
    }

    if (fcos == NULL) {
        fprintf(stderr, "Cannot open %s\n", "fcos_o_test_c.txt");
        return 1;
    }

    if ((fsin != NULL) && (fcos != NULL)) {
        for (j = 0; j<simLength_t; j++) {
            if (j < output_sin) {
                printf ("%.0f\n", fsin_o_t[j]);
            }
            fprintf (fsin, "%.0f\n", fsin_o_t[j]);
            fprintf (fcos, "%.0f\n", fcos_o_t[j]);
        }
    }

    fclose(fsin);
    fclose(fcos);

    return 0;
}
