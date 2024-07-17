`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 11:19:28
// Design Name: 
// Module Name: tb
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


module tb();
reg [31:0]in;
reg [4:0]sel;
wire out;
mux321 DUT (in,sel,out);
initial 
begin
in = 32'h333ac321;
sel = 5'b00110;
#5 sel =5'b11110;
#5 in = 32'hc3201; sel = 5'b10101;
#5 sel = 5'b11101;
#5 sel = 5'b00000;
#5 $finish;
end
endmodule
