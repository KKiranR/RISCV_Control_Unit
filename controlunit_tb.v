`timescale 1ns/1ps 
module controlunit_tb;
reg [6:0] funct7;
reg  [2:0] funct3;
reg  [6:0] opcode;
wire [3:0]alu_control;
wire regwrite_control;
CONTROL uut(.funct7(funct7),.funct3(funct3),.opcode(opcode),.alu_control(alu_control),.regwrite_control(regwrite_control));
initial begin
        $dumpfile("output_wave.vcd");
        $dumpvars(0,controlunit_tb);
    end
initial
begin

opcode=7'b0110011;
 #10
 funct7=7'b0000000;
 funct3=1;
 #20
 funct7=7'b1111111;
 funct3=2;
 #20
 funct3=4;
 
 $finish;
 end
 endmodule
 
