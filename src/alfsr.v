// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Thu Apr 18 15:51:22 2024"

module alfsr(
	clk,		//Digitalization clock
	rst_n,		//LFSR Configurator reset
	lfsr_clk,	//LFSR Configurator clock
	alfsr_rst_n,//ALFSR reset
	lfsr_out,	//LFSR Configuratior output
	rng_out_d,	//ALFSR 'digitalized' output
	rng_out		//ALFSR 'analog' outputs
);


input wire	clk;
input wire	rst_n;
input wire	lfsr_clk;
input wire	alfsr_rst_n;
output wire	lfsr_out;
output wire	rng_out_d;
output wire	[3:0] rng_out;

wire	nx1;
wire	nx10;
wire	nx100;
wire	nx101;
wire	nx102;
wire	nx103;
wire	nx104;
wire	nx105;
wire	nx106;
wire	nx107;
wire	nx108;
wire	nx109;
wire	nx110;
wire	nx111;
wire	nx112;
wire	nx113;
wire	nx114;
wire	nx115;
wire	nx116;
wire	nx117;
wire	nx118;
wire	nx119;
wire	nx120;
wire	nx121;
wire	nx122;
wire	nx123;
wire	nx124;
wire	nx125;
wire	nx126;
wire	nx127;
wire	nx128;
wire	nx129;
wire	nx130;
wire	nx131;
wire	nx132;
wire	nx133;
wire	nx134;
wire	nx135;
wire	nx136;
wire	nx137;
wire	nx138;
wire	nx139;
wire	nx140;
wire	nx141;
wire	nx142;
wire	nx143;
wire	nx144;
wire	nx145;
wire	nx146;
wire	nx147;
wire	nx148;
wire	nx149;
wire	nx150;
wire	nx151;
wire	nx152;
wire	nx153;
wire	nx154;
wire	nx155;
wire	nx156;
wire	nx157;
wire	nx161;
//wire	nx162;
wire	nx163;
wire	nx164;
wire	nx165;
wire	nx20;
wire	nx22;
wire	nx23;
wire	nx24;
wire	nx25;
wire	nx27;
wire	nx28;
wire	nx29;
wire	nx31;
wire	nx32;
wire	nx33;
wire	nx34;
wire	nx6;
wire	nx_clk;
wire	nx_clk_dff;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_3;


buf02	b2v_insta4(
	.A(nx156),
	.Y(nx165));

buf04	b2v_insta5(
	.A(nx165),
	.Y(rng_out[0]));

buf02	b2v_insta2(
	.A(nx142),
	.Y(nx164));

buf04	b2v_insta3(
	.A(nx164),
	.Y(rng_out[1]));

buf02	b2v_insta0(
	.A(nx128),
	.Y(nx163));

buf04	b2v_insta1(
	.A(nx163),
	.Y(rng_out[2]));

	
assign	SYNTHESIZED_WIRE_4 = nx100 & alfsr_rst_n;

buf02	b2v_inst12(
	.A(nx114),
	.Y(nx161));

buf04	b2v_inst5(
	.A(nx161),
	.Y(rng_out[3]));

//buf02	b2v_inst13(
//	.A(SYNTHESIZED_WIRE_4),
//	.Y(nx162));
//
//buf04	b2v_inst6(
//	.A(nx162),
//	.Y(rng_out[4]));


xnor2	b2v_ix0(
	.A0(nx142),
	.A1(nx156),
	.Y(nx100));


xor2	b2v_ix1(
	.A0(nx22),
	.A1(nx20),
	.Y(nx1));


mux21	b2v_ix10(
	.A0(SYNTHESIZED_WIRE_4),
	.A1(nx101),
	.S0(nx20),
	.Y(nx108));


buf02	b2v_ix100(
	.A(SYNTHESIZED_WIRE_4),
	.Y(nx101));


buf02	b2v_ix101(
	.A(nx101),
	.Y(nx102));


buf02	b2v_ix102(
	.A(nx102),
	.Y(nx103));


buf02	b2v_ix103(
	.A(nx103),
	.Y(nx104));


buf02	b2v_ix104(
	.A(nx104),
	.Y(nx105));


buf02	b2v_ix105(
	.A(nx105),
	.Y(nx106));


buf02	b2v_ix106(
	.A(nx106),
	.Y(nx107));


buf02	b2v_ix107(
	.A(nx114),
	.Y(nx115));


buf02	b2v_ix108(
	.A(nx115),
	.Y(nx116));


buf02	b2v_ix109(
	.A(nx116),
	.Y(nx117));


mux21	b2v_ix11(
	.A0(nx102),
	.A1(nx103),
	.S0(nx20),
	.Y(nx109));


buf02	b2v_ix110(
	.A(nx117),
	.Y(nx118));


buf02	b2v_ix111(
	.A(nx118),
	.Y(nx119));


buf02	b2v_ix112(
	.A(nx119),
	.Y(nx120));


buf02	b2v_ix113(
	.A(nx120),
	.Y(nx121));


buf02	b2v_ix114(
	.A(nx128),
	.Y(nx129));


buf02	b2v_ix115(
	.A(nx129),
	.Y(nx130));


buf02	b2v_ix116(
	.A(nx130),
	.Y(nx131));


buf02	b2v_ix117(
	.A(nx131),
	.Y(nx132));


buf02	b2v_ix118(
	.A(nx132),
	.Y(nx133));


buf02	b2v_ix119(
	.A(nx133),
	.Y(nx134));


mux21	b2v_ix12(
	.A0(nx104),
	.A1(nx105),
	.S0(nx20),
	.Y(nx110));


buf02	b2v_ix120(
	.A(nx134),
	.Y(nx135));


buf02	b2v_ix121(
	.A(nx142),
	.Y(nx143));


buf02	b2v_ix122(
	.A(nx143),
	.Y(nx144));


buf02	b2v_ix123(
	.A(nx144),
	.Y(nx145));


buf02	b2v_ix124(
	.A(nx145),
	.Y(nx146));


buf02	b2v_ix125(
	.A(nx146),
	.Y(nx147));


buf02	b2v_ix126(
	.A(nx147),
	.Y(nx148));


buf02	b2v_ix127(
	.A(nx148),
	.Y(nx149));


mux21	b2v_ix13(
	.A0(nx106),
	.A1(nx107),
	.S0(nx20),
	.Y(nx111));


mux21	b2v_ix14(
	.A0(nx108),
	.A1(nx109),
	.S0(nx22),
	.Y(nx112));


mux21	b2v_ix15(
	.A0(nx110),
	.A1(nx111),
	.S0(nx22),
	.Y(nx113));


mux21_ni	b2v_ix16(
	.A0(nx112),
	.A1(nx113),
	.S0(nx23),
	.Y(nx114));


mux21	b2v_ix17(
	.A0(nx114),
	.A1(nx115),
	.S0(nx24),
	.Y(nx122));


mux21	b2v_ix18(
	.A0(nx116),
	.A1(nx117),
	.S0(nx24),
	.Y(nx123));


mux21	b2v_ix19(
	.A0(nx118),
	.A1(nx119),
	.S0(nx24),
	.Y(nx124));


xnor2	b2v_ix2(
	.A0(nx6),
	.A1(nx1),
	.Y(nx10));


mux21	b2v_ix20(
	.A0(nx120),
	.A1(nx121),
	.S0(nx24),
	.Y(nx125));


buf04	b2v_ix200(
	.A(SYNTHESIZED_WIRE_3),
	.Y(rng_out_d));


buf02	b2v_ix203(
	.A(clk),
	.Y(nx_clk_dff));


buf02	b2v_ix204(
	.A(nx157),
	.Y(SYNTHESIZED_WIRE_3));


buf02	b2v_ix205(
	.A(lfsr_clk),
	.Y(nx_clk));


mux21	b2v_ix21(
	.A0(nx122),
	.A1(nx123),
	.S0(nx25),
	.Y(nx126));


mux21	b2v_ix22(
	.A0(nx124),
	.A1(nx125),
	.S0(nx25),
	.Y(nx127));


mux21_ni	b2v_ix23(
	.A0(nx126),
	.A1(nx127),
	.S0(nx27),
	.Y(nx128));


mux21	b2v_ix24(
	.A0(nx128),
	.A1(nx129),
	.S0(nx28),
	.Y(nx136));


mux21	b2v_ix25(
	.A0(nx130),
	.A1(nx131),
	.S0(nx28),
	.Y(nx137));


mux21	b2v_ix26(
	.A0(nx132),
	.A1(nx133),
	.S0(nx28),
	.Y(nx138));


mux21	b2v_ix27(
	.A0(nx134),
	.A1(nx135),
	.S0(nx28),
	.Y(nx139));


mux21	b2v_ix28(
	.A0(nx136),
	.A1(nx137),
	.S0(nx29),
	.Y(nx140));


mux21	b2v_ix29(
	.A0(nx138),
	.A1(nx139),
	.S0(nx29),
	.Y(nx141));


mux21_ni	b2v_ix30(
	.A0(nx140),
	.A1(nx141),
	.S0(nx31),
	.Y(nx142));


mux21	b2v_ix31(
	.A0(nx142),
	.A1(nx143),
	.S0(nx32),
	.Y(nx150));


mux21	b2v_ix32(
	.A0(nx144),
	.A1(nx145),
	.S0(nx32),
	.Y(nx151));


mux21	b2v_ix33(
	.A0(nx146),
	.A1(nx147),
	.S0(nx32),
	.Y(nx152));


mux21	b2v_ix34(
	.A0(nx148),
	.A1(nx149),
	.S0(nx32),
	.Y(nx153));


mux21	b2v_ix35(
	.A0(nx150),
	.A1(nx151),
	.S0(nx33),
	.Y(nx154));


mux21	b2v_ix36(
	.A0(nx152),
	.A1(nx153),
	.S0(nx33),
	.Y(nx155));


mux21_ni	b2v_ix37(
	.A0(nx154),
	.A1(nx155),
	.S0(nx34),
	.Y(nx156));


xor2	b2v_ix5(
	.A0(nx29),
	.A1(nx33),
	.Y(nx6));


dffs_ni	b2v_reg_lfsr_0(
	.CLK(nx_clk),
	.D(nx10),
	.S(rst_n),
	.Q(nx20)
	);


dffr	b2v_reg_lfsr_1(
	.CLK(nx_clk),
	.D(nx20),
	.R(rst_n),
	.Q(nx24)
	);


dffr	b2v_reg_lfsr_10(
	.CLK(nx_clk),
	.D(nx27),
	.R(rst_n),
	.Q(nx23)
	);


dffr	b2v_reg_lfsr_11(
	.CLK(nx_clk),
	.D(nx23),
	.R(rst_n),
	.Q(nx22)
	);


dffr	b2v_reg_lfsr_2(
	.CLK(nx_clk),
	.D(nx24),
	.R(rst_n),
	.Q(nx28)
	);


dffr	b2v_reg_lfsr_3(
	.CLK(nx_clk),
	.D(nx28),
	.R(rst_n),
	.Q(nx32)
	);


dffr	b2v_reg_lfsr_4(
	.CLK(nx_clk),
	.D(nx32),
	.R(rst_n),
	.Q(nx33)
	);


dffr	b2v_reg_lfsr_5(
	.CLK(nx_clk),
	.D(nx33),
	.R(rst_n),
	.Q(nx34)
	);


dffr	b2v_reg_lfsr_6(
	.CLK(nx_clk),
	.D(nx34),
	.R(rst_n),
	.Q(nx31)
	);


dffr	b2v_reg_lfsr_7(
	.CLK(nx_clk),
	.D(nx31),
	.R(rst_n),
	.Q(nx29)
	);


dffr	b2v_reg_lfsr_8(
	.CLK(nx_clk),
	.D(nx29),
	.R(rst_n),
	.Q(nx25)
	);


dffr	b2v_reg_lfsr_9(
	.CLK(nx_clk),
	.D(nx25),
	.R(rst_n),
	.Q(nx27)
	);


dff1	b2v_reg_rng_ff(
	.CLK(nx_clk_dff),
	.D(nx161),
	.Q(nx157)
	);

assign	lfsr_out = nx22;

endmodule
