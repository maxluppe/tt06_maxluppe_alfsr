// Sn counter
module Sn_counter
  (input clk, rstn, en, output reg [7:0] Sn);
  
  always @ (posedge(clk) or negedge(rstn))
    begin
      if(!rstn)
        Sn <= 8'h3F;
      else
        if(en)
          Sn <= Sn - 1;
    end
	
endmodule

// Modulus Sn
module Sn_modulus
  (input [7:0] Sn, output [7:0] Sn_modulus);

  assign Sn_modulus = Sn[7] ? {~Sn[6:0],1'b0} : {Sn[6:0],1'b1};
  
endmodule

// Valid block
module LT30
  (input [7:0] Sn_modulus, output valid);
  
  assign valid = Sn_modulus < 29 ? 1'b1 : 1'b0;
  
endmodule

//
// NIST Random Number Generation Tests implementation
// 01-Frequency (Monobit) Test
//

module NIST01
  (input clk, rstn, RND_in, output error1);
  
  wire cout1, cout2, reset1, reset2, valid;
  wire [2:0] invalid_blks;
  wire [7:0] Sn, Sn_modulus;
  
  Sn_counter u0 (
	.clk(clk),
    .rstn(reset1),
	.en(RND_in),
	.Sn(Sn)
  );

  Sn_modulus u1 (
    .Sn(Sn),
	.Sn_modulus(Sn_modulus)
  );

  LT30 u2 (
    .Sn_modulus(Sn_modulus),
	.valid(valid)
  );
  
  // Block (M*N) counter
  counter #(7) u3 (
    .clk(clk),
	.rstn(reset1),
	.en(1'b1),
	.q(),
	.cout(cout1)
  );
  // Block reset
  reseter u4 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1),
	.error(error1),
	.reset(reset1)
  );

  //Confidence Interval Test
  counter #(3) u5 (
    .clk(clk),
	.rstn(reset2),
	.en(~valid & cout1),
	.q(invalid_blks),
	.cout()
  );
  GT5 u6(
    .Blks(invalid_blks),
	.error(error1)
  );
  //Confidence Interval Test - m counter
  counter #(7) u7 (
    .clk(clk),
	.rstn(reset2),
	.en(cout1),
	.q(),
	.cout(cout2)
  );
  reseter u8 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout2),
	.error(error1),
	.reset(reset2)
  );
  
endmodule
