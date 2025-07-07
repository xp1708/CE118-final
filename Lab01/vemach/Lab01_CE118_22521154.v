// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Mar 24 08:09:44 2025"

module Lab01_CE118_22521154(
	KEY,
	SW,
	LEDG,
	LEGG
);


input wire	[1:0] KEY;
input wire	[2:0] SW;
output reg	[2:1] LEDG;
output wire	[0:0] LEGG;

reg	SYNTHESIZED_WIRE_27;
reg	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
reg	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;

assign	LEGG[0] = SYNTHESIZED_WIRE_27;



assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_27 ~^ SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_25 = SW[2] | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_27 ^ SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_28 ^ SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_27 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_29 =  ~KEY[1];

assign	SYNTHESIZED_WIRE_10 =  ~SW[2];

assign	SYNTHESIZED_WIRE_13 =  ~SW[1];

assign	SYNTHESIZED_WIRE_16 =  ~SW[0];

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_22 = SW[1] | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_19 = SW[0] | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_29;


always@(posedge KEY[0] or negedge SYNTHESIZED_WIRE_19 or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_19)
	begin
	SYNTHESIZED_WIRE_27 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_18)
	begin
	SYNTHESIZED_WIRE_27 <= 1;
	end
else
	SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_27 ^ SYNTHESIZED_WIRE_20;
end


always@(posedge KEY[0] or negedge SYNTHESIZED_WIRE_22 or negedge SYNTHESIZED_WIRE_21)
begin
if (!SYNTHESIZED_WIRE_22)
	begin
	SYNTHESIZED_WIRE_30 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_21)
	begin
	SYNTHESIZED_WIRE_30 <= 1;
	end
else
	SYNTHESIZED_WIRE_30 <= SYNTHESIZED_WIRE_30 ^ SYNTHESIZED_WIRE_23;
end


always@(posedge KEY[0] or negedge SYNTHESIZED_WIRE_25 or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_25)
	begin
	SYNTHESIZED_WIRE_28 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_24)
	begin
	SYNTHESIZED_WIRE_28 <= 1;
	end
else
	SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_28 ^ SYNTHESIZED_WIRE_26;
end


endmodule
