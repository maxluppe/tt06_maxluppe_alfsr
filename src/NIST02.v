// (C-8)^2
module C_8_squared
  (input [3:0] ci, output reg [6:0] S);

  always @(ci) begin
	case (ci)
		4'b0000 : S = 7'b1000000;
		4'b0001 : S = 7'b0110001;
		4'b0010 : S = 7'b0100100;
		4'b0011 : S = 7'b0011001;
		4'b0100 : S = 7'b0010000;
		4'b0101 : S = 7'b0001001;
		4'b0110 : S = 7'b0000100;
		4'b0111 : S = 7'b0000001;
		4'b1000 : S = 7'b0000000;
		4'b1001 : S = 7'b0000001;
		4'b1010 : S = 7'b0000100;
		4'b1011 : S = 7'b0001001;
		4'b1100 : S = 7'b0010000;
		4'b1101 : S = 7'b0011001;
		4'b1110 : S = 7'b0100100;
		4'b1111 : S = 7'b0110001;
		default : S = 7'b0000000;
	endcase
  end
  
endmodule

module Accumulator
  //M16
  (input clk, rstn, en, input [6:0] S, output reg [8:0] Sigma);
  //M32
  //(input clk, rstn, en, input [8:0] S, output reg [9:0] Sigma);
  
  always @ (posedge(clk) or negedge(rstn))
    begin
      if(!rstn)
        Sigma <= 0;
      else
        if(en)
          Sigma <= Sigma + S;
    end
endmodule

// Valid block M=16 Sigma<81
// Valid block M=20 Sigma<85
// Valid block M=32 Sigma<107
module LT81
  (input [8:0] Sigma, output valid);
  
  assign valid = Sigma < 81 ? 1'b1 : 1'b0;
  
endmodule

//
// NIST Random Number Generation Tests implementation
// 02-Frequency Test within a Block
//

module NIST02
  (input clk, rstn, RND_in, output error2);
  
  parameter Size_M = 4;	//M=16

  wire cout1a, cout1, cout2, reset1, reset1a, reset2, valid;

  wire [Size_M-1:0] ci;

  //M=16
  wire [6:0] S;
  wire [8:0] Sigma;

  wire [2:0] invalid_blks;
  
  //C_counter #(4) u0 (
  counter #(Size_M) C_counter (
	.clk(clk),
    .rstn(reset1a),
	.en(RND_in),
	.q(ci),
	.cout()
  );

  //M=16
  C_8_squared u1 (
    .ci(ci),
	.S(S)
  );
  
  Accumulator u2 (
    .clk(clk),
	.rstn(reset1),
	.en(cout1a),
	.S(S),
	.Sigma(Sigma)
  );
  
  //M=16
  LT81 u3 (
    .Sigma(Sigma),
	.valid(valid)
  );
  
  // Block counter (M=16)
  counter #(Size_M) u4a (
    .clk(clk),
	.rstn(reset1),
	.en(1'b1),
	.q(),
	.cout(cout1a)
  );
  reseter u5a (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1a),
	.error(error2),
	.reset(reset1a)
  );
  // Block counter (N=8)
  counter #(7-Size_M) u4 (
    .clk(clk),
	.rstn(reset1),
	.en(cout1a),
	.q(),
	.cout(cout1)
  );
  reseter u5 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1),
	.error(error2),
	.reset(reset1)
  );
  
  //Confidence Interval Test
  counter #(3) u6 (
    	.clk(clk),
	.rstn(reset2),
	.en(~valid & cout1),
	.q(invalid_blks),
	.cout()
  );
  GT5 u7(
    .Blks(invalid_blks),
	.error(error2)
  );
  //Confidence Interval Test - m counter
  counter #(7) u8 (
    .clk(clk),
	.rstn(reset2),
	.en(cout1),
	.q(),
	.cout(cout2)
  );
  reseter u9 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout2),
	.error(error2),
	.reset(reset2)
  );
  
endmodule


