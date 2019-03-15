module bpsk(
			clk,
			reset_n,
			clk_DA,
			blank_DA_n,
			sync_DA_n,
			dataout,
			dm_out,
			dataoutm,
			clk1,
			address,
			SW,
			DAC_PD,
			ADC_PD,
			ADC_DAT,
			clk_AD
);

	input            clk       ;
	input            reset_n   ;
	input            [2:0] SW  ;
	input            [7:0]ADC_DAT;
	output DAC_PD;
	output           clk1;
	output           clk_DA    ;
	output           clk_AD;
	output           ADC_PD;
	output           blank_DA_n; 
	output           sync_DA_n ; 
	output [ 7 : 0 ] dataout   ;
	output [ 7 : 0 ] dm_out;
	output  dataoutm;
	output [ 6 : 0 ] address   ;
	
	wire   [ 6 : 0 ] address   ;
	wire             dataoutm  ;
	wire             clk1      ;
	wire   [ 7 : 0 ] dataout;
	assign DAC_PD=0;
	assign ADC_PD=0;
	counter   COUNTER(
	      .clk       ( clk ),
			.reset_n   (reset_n),
			.count      (count),
			.clk1      ( clk1 )
	);
   PN_Seq  PN_SEQ(
	      .clk1      ( clk1 ),
			.reset_n   ( reset_n ),
			.dataoutm  ( dataoutm )
	);
	Controller  CONTROLLER(
			.clk       ( clk ),
			.reset_n   ( reset_n ),
			.dataoutm  ( dataoutm),			
			.address   ( address ),
			.clk_DA    ( clk_DA ),
			.blank_DA_n( blank_DA_n ),
			.sync_DA_n ( sync_DA_n ),
			.clk_AD(clk_AD)
	);
	LookUpTable LOOKUPTABLE (
			.clk       ( clk ),
			.reset_n   ( reset_n ),
			.address   ( address ),
			.SW        (SW)		,
			.dataout   ( dataout )
	);
  
  depsk  depsk(
         .clk       (clk),
			.reset_n   (reset_n),
			.data      (ADC_DAT),
			
			.dm_out   (dm_out)
         );

endmodule
