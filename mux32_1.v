`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 11:18:07
// Design Name: 
// Module Name: mux161
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module mux321(in,sel,out);
input [31:0]in;
input [4:0]sel;
output out;
wire [1:0]t;
mux161 M0(in[15:0],sel[3:0],t[0]);
mux161 M1(in[31:16],sel[3:0],t[1]);
mux21 M3(t,sel[4],out);
endmodule

module mux161(in,sel,out);
input [15:0]in;
input [3:0]sel;
output out;
wire [3:0]t;
mux41 M0(in[3:0],sel[3:2],t[0]);
mux41 M1(in[7:4],sel[3:2],t[1]);
mux41 M2(in[11:8],sel[3:2],t[2]);
mux41 M3(in[15:12],sel[3:2],t[3]);
mux41 M4(t,sel[1:0],out);
endmodule

module mux41(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
wire [1:0]t;
mux21 M0(in[1:0],sel[1],t[0]);
mux21 M1(in[3:2],sel[1],t[1]);
mux21 M2(t,sel[0],out);
endmodule

module mux21(in,sel,out);
input [1:0]in;
input sel;
output out;
assign out = in[sel];
endmodule
