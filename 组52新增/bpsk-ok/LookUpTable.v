module LookUpTable(
clk,
reset_n,
address,
dataout,
SW
);
input clk;
input reset_n;
input [ 6 : 0 ] address;
input [2:0] SW;
output [ 7 : 0 ] dataout;

reg [ 7 : 0 ] LUT [ 0 : 127 ];
always @( posedge clk or negedge reset_n )
begin
 if( !reset_n)
 begin
 if(SW[0]==1)
begin 
LUT[ 0 ] <=0;
LUT[ 1 ] <= 1;
LUT[ 2 ] <= 1;
LUT[ 3 ] <= 2;
LUT[ 4 ] <= 3;
LUT[ 5 ] <= 4;
LUT[ 6 ] <= 6;
LUT[ 7 ] <= 8;
LUT[ 8 ] <= 10;
LUT[ 9 ] <= 13;
LUT[ 10 ] <= 15;
LUT[ 11 ] <= 19;
LUT[ 12 ] <= 22;
LUT[ 13 ] <= 25;
LUT[ 14 ] <= 29;
LUT[ 15 ] <= 33;
LUT[ 16 ] <= 38;
LUT[ 17 ] <= 42;
LUT[ 18 ] <= 47;
LUT[ 19 ] <= 52;
LUT[ 20 ] <= 57;
LUT[ 21 ] <= 62;
LUT[ 22 ] <= 68;
LUT[ 23 ] <= 73;
LUT[ 24 ] <= 79;
LUT[ 25 ] <= 85;
LUT[ 26 ] <= 91;
LUT[ 27 ] <= 97;
LUT[ 28 ] <= 103;
LUT[ 29 ] <= 109;
LUT[ 30 ] <= 115;
LUT[ 31 ] <= 121;
LUT[ 32 ] <=127;
LUT[ 33 ] <= 133;
LUT[ 34 ] <= 139;
LUT[ 35 ] <= 145;
LUT[ 36 ] <= 151;
LUT[ 37 ] <= 157;
LUT[ 38 ] <= 163;
LUT[ 39 ] <= 169;
LUT[ 40 ] <= 175;
LUT[ 41 ] <= 181;
LUT[ 42 ] <= 186;
LUT[ 43 ] <= 192;
LUT[ 44 ] <= 197;
LUT[ 45 ] <= 202;
LUT[ 46 ] <= 207;
LUT[ 47 ] <= 212;
LUT[ 48 ] <= 216;
LUT[ 49 ] <=221;
LUT[ 50 ] <= 225;
LUT[ 51 ] <= 229;
LUT[ 52 ] <= 232;
LUT[ 53 ] <= 235;
LUT[ 54 ] <= 239;
LUT[ 55 ] <= 241;
LUT[ 56 ] <= 244;
LUT[ 57 ] <= 246;
LUT[ 58 ] <= 248;
LUT[ 59 ] <= 250;
LUT[ 60 ] <= 251;
LUT[ 61 ] <=252;
LUT[ 62 ] <=253;
LUT[ 63 ] <= 255;
LUT[ 64 ] <= 255;
LUT[ 65 ] <= 254;
LUT[ 66 ] <= 253;
LUT[ 67 ] <= 252;
LUT[ 68 ] <= 251;
LUT[ 69 ] <= 250;
LUT[ 70 ] <= 248;
LUT[ 71 ] <= 246;
LUT[ 72 ] <= 244;
LUT[ 73] <= 241;
LUT[ 74 ] <= 239;
LUT[ 75 ] <= 235;
LUT[ 76 ] <= 232;
LUT[ 77 ] <= 229;
LUT[ 78 ] <= 225;
LUT[ 79 ] <= 221;
LUT[ 80 ] <= 216;
LUT[ 81 ] <= 212;
LUT[ 82 ] <= 207;
LUT[ 83 ] <= 202;
LUT[ 84 ] <= 197;
LUT[ 85 ] <= 192;
LUT[ 86 ] <= 186;
LUT[ 87 ] <= 181;
LUT[ 88 ] <= 175;
LUT[ 89 ] <= 169;
LUT[ 90 ] <= 163;
LUT[ 91 ] <= 157;
LUT[ 92 ] <= 151;
LUT[ 93 ] <= 145;
LUT[ 94 ] <= 139;
LUT[ 95 ] <= 133;
LUT[ 96 ] <= 127;
LUT[ 97 ] <= 121;
LUT[ 98 ] <= 115;
LUT[ 99 ] <= 109;
LUT[ 100 ] <= 103;
LUT[ 101 ] <= 97;
LUT[ 102 ] <= 91;
LUT[ 103 ] <= 85;
LUT[ 104 ] <= 79;
LUT[ 105 ] <= 73;
LUT[ 106 ] <= 68;
LUT[ 107 ] <= 62;
LUT[ 108 ] <= 57;
LUT[ 109 ] <= 52;
LUT[ 110 ] <= 47;
LUT[ 111 ] <= 42;
LUT[ 112 ] <= 38;
LUT[ 113 ] <= 33;
LUT[ 114 ] <= 29;
LUT[ 115 ] <= 25;
LUT[ 116 ] <= 22;
LUT[ 117 ] <= 19;
LUT[ 118 ] <= 15;
LUT[ 119 ] <= 13;
LUT[ 120 ] <= 10;
LUT[ 121 ] <= 8;
LUT[ 122 ] <= 6;
LUT[ 123 ] <= 4;
LUT[ 124 ] <= 3;
LUT[ 125 ] <= 2;
LUT[ 126 ] <= 1;
LUT[ 127 ] <= 1;
end
end
end
assign dataout = LUT[ address ];
endmodule
