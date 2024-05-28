`timescale 1 ns / 100 ps

module NIST_SP_800_22
	(input clk, rstn, RND_in, output error1, error2, error3, error4	);

	NIST01 uut1 (
		.clk(clk),
		.rstn(rstn),// & ~error2),
		.RND_in(RND_in),
		.error1(error1)
	);

	NIST02 uut2 (
		.clk(clk),
		.rstn(rstn),// & ~error1),
		.RND_in(RND_in),
		.error2(error2)
	);

	NIST03 uut3 (
		.clk(clk),
		.rstn(rstn),// & ~error2),
		.RND_in(RND_in),
		.error3(error3)
	);

	NIST04 uut4 (
		.clk(clk),
		.rstn(rstn),// & ~error1),
		.RND_in(RND_in),
		.error4(error4)
	);

endmodule

//(* keep = "true" *)
