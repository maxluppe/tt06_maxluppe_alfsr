// V(obs) counter
module Vobs_counter
  (input clk, rstn, en, output reg [6:0] Vobs);
  
  always @ (posedge(clk) or negedge(rstn))
    begin
      if(!rstn)
        Vobs <= 1;
      else
        if(en)
          Vobs <= Vobs + 1;
    end
	
endmodule

// minimum val
module min_val
  (input [7:0] epsilon, output reg [6:0] minimum_val);
    
  always @(epsilon) begin
    case (epsilon)
		8'b00000000 : minimum_val = 7'b0000000;
		8'b00000001 : minimum_val = 7'b0000001;
		8'b00000010 : minimum_val = 7'b0000011;
		8'b00000011 : minimum_val = 7'b0000100;
		8'b00000100 : minimum_val = 7'b0000101;
		8'b00000101 : minimum_val = 7'b0000111;
		8'b00000110 : minimum_val = 7'b0001000;
		8'b00000111 : minimum_val = 7'b0001010;
		8'b00001000 : minimum_val = 7'b0001011;
		8'b00001001 : minimum_val = 7'b0001100;
		8'b00001010 : minimum_val = 7'b0001110;
		8'b00001011 : minimum_val = 7'b0001111;
		8'b00001100 : minimum_val = 7'b0010000;
		8'b00001101 : minimum_val = 7'b0010010;
		8'b00001110 : minimum_val = 7'b0010011;
		8'b00001111 : minimum_val = 7'b0010100;
		8'b00010000 : minimum_val = 7'b0010101;
		8'b00010001 : minimum_val = 7'b0010110;
		8'b00010010 : minimum_val = 7'b0010111;
		8'b00010011 : minimum_val = 7'b0011000;
		8'b00010100 : minimum_val = 7'b0011010;
		8'b00010101 : minimum_val = 7'b0011011;
		8'b00010110 : minimum_val = 7'b0011100;
		8'b00010111 : minimum_val = 7'b0011101;
		8'b00011000 : minimum_val = 7'b0011110;
		8'b00011001 : minimum_val = 7'b0011111;
		8'b00011010 : minimum_val = 7'b0100000;
		8'b00011011 : minimum_val = 7'b0100000;
		8'b00011100 : minimum_val = 7'b0100001;
		8'b00011101 : minimum_val = 7'b0100010;
		8'b00011110 : minimum_val = 7'b0100011;
		8'b00011111 : minimum_val = 7'b0100100;
		8'b00100000 : minimum_val = 7'b0100101;
		8'b00100001 : minimum_val = 7'b0100101;
		8'b00100010 : minimum_val = 7'b0100110;
		8'b00100011 : minimum_val = 7'b0100111;
		8'b00100100 : minimum_val = 7'b0100111;
		8'b00100101 : minimum_val = 7'b0101000;
		8'b00100110 : minimum_val = 7'b0101001;
		8'b00100111 : minimum_val = 7'b0101001;
		8'b00101000 : minimum_val = 7'b0101010;
		8'b00101001 : minimum_val = 7'b0101011;
		8'b00101010 : minimum_val = 7'b0101011;
		8'b00101011 : minimum_val = 7'b0101100;
		8'b00101100 : minimum_val = 7'b0101100;
		8'b00101101 : minimum_val = 7'b0101101;
		8'b00101110 : minimum_val = 7'b0101101;
		8'b00101111 : minimum_val = 7'b0101101;
		8'b00110000 : minimum_val = 7'b0101110;
		8'b00110001 : minimum_val = 7'b0101110;
		8'b00110010 : minimum_val = 7'b0101111;
		8'b00110011 : minimum_val = 7'b0101111;
		8'b00110100 : minimum_val = 7'b0101111;
		8'b00110101 : minimum_val = 7'b0101111;
		8'b00110110 : minimum_val = 7'b0110000;
		8'b00110111 : minimum_val = 7'b0110000;
		8'b00111000 : minimum_val = 7'b0110000;
		8'b00111001 : minimum_val = 7'b0110000;
		8'b00111010 : minimum_val = 7'b0110000;
		8'b00111011 : minimum_val = 7'b0110001;
		8'b00111100 : minimum_val = 7'b0110001;
		8'b00111101 : minimum_val = 7'b0110001;
		8'b00111110 : minimum_val = 7'b0110001;
		8'b00111111 : minimum_val = 7'b0110001;
		8'b01000000 : minimum_val = 7'b0110001;
		8'b01000001 : minimum_val = 7'b0110001;
		8'b01000010 : minimum_val = 7'b0110001;
		8'b01000011 : minimum_val = 7'b0110001;
		8'b01000100 : minimum_val = 7'b0110001;
		8'b01000101 : minimum_val = 7'b0110001;
		8'b01000110 : minimum_val = 7'b0110000;
		8'b01000111 : minimum_val = 7'b0110000;
		8'b01001000 : minimum_val = 7'b0110000;
		8'b01001001 : minimum_val = 7'b0110000;
		8'b01001010 : minimum_val = 7'b0110000;
		8'b01001011 : minimum_val = 7'b0101111;
		8'b01001100 : minimum_val = 7'b0101111;
		8'b01001101 : minimum_val = 7'b0101111;
		8'b01001110 : minimum_val = 7'b0101111;
		8'b01001111 : minimum_val = 7'b0101110;
		8'b01010000 : minimum_val = 7'b0101110;
		8'b01010001 : minimum_val = 7'b0101101;
		8'b01010010 : minimum_val = 7'b0101101;
		8'b01010011 : minimum_val = 7'b0101101;
		8'b01010100 : minimum_val = 7'b0101100;
		8'b01010101 : minimum_val = 7'b0101100;
		8'b01010110 : minimum_val = 7'b0101011;
		8'b01010111 : minimum_val = 7'b0101011;
		8'b01011000 : minimum_val = 7'b0101010;
		8'b01011001 : minimum_val = 7'b0101001;
		8'b01011010 : minimum_val = 7'b0101001;
		8'b01011011 : minimum_val = 7'b0101000;
		8'b01011100 : minimum_val = 7'b0100111;
		8'b01011101 : minimum_val = 7'b0100111;
		8'b01011110 : minimum_val = 7'b0100110;
		8'b01011111 : minimum_val = 7'b0100101;
		8'b01100000 : minimum_val = 7'b0100101;
		8'b01100001 : minimum_val = 7'b0100100;
		8'b01100010 : minimum_val = 7'b0100011;
		8'b01100011 : minimum_val = 7'b0100010;
		8'b01100100 : minimum_val = 7'b0100001;
		8'b01100101 : minimum_val = 7'b0100000;
		8'b01100110 : minimum_val = 7'b0100000;
		8'b01100111 : minimum_val = 7'b0011111;
		8'b01101000 : minimum_val = 7'b0011110;
		8'b01101001 : minimum_val = 7'b0011101;
		8'b01101010 : minimum_val = 7'b0011100;
		8'b01101011 : minimum_val = 7'b0011011;
		8'b01101100 : minimum_val = 7'b0011010;
		8'b01101101 : minimum_val = 7'b0011000;
		8'b01101110 : minimum_val = 7'b0010111;
		8'b01101111 : minimum_val = 7'b0010110;
		8'b01110000 : minimum_val = 7'b0010101;
		8'b01110001 : minimum_val = 7'b0010100;
		8'b01110010 : minimum_val = 7'b0010011;
		8'b01110011 : minimum_val = 7'b0010010;
		8'b01110100 : minimum_val = 7'b0010000;
		8'b01110101 : minimum_val = 7'b0001111;
		8'b01110110 : minimum_val = 7'b0001110;
		8'b01110111 : minimum_val = 7'b0001100;
		8'b01111000 : minimum_val = 7'b0001011;
		8'b01111001 : minimum_val = 7'b0001010;
		8'b01111010 : minimum_val = 7'b0001000;
		8'b01111011 : minimum_val = 7'b0000111;
		8'b01111100 : minimum_val = 7'b0000101;
		8'b01111101 : minimum_val = 7'b0000100;
		8'b01111110 : minimum_val = 7'b0000011;
		8'b01111111 : minimum_val = 7'b0000001;
		8'b10000000 : minimum_val = 7'b0000000;
		default : minimum_val = 7'b0000000;
	endcase
  end

endmodule

// maximum val
module max_val
  (input [7:0] epsilon, output reg [6:0] maximum_val);

  always @(epsilon) begin
    case (epsilon)
		8'b00000000 : maximum_val = 7'b0000000;
		8'b00000001 : maximum_val = 7'b0000011;
		8'b00000010 : maximum_val = 7'b0000101;
		8'b00000011 : maximum_val = 7'b0001000;
		8'b00000100 : maximum_val = 7'b0001010;
		8'b00000101 : maximum_val = 7'b0001100;
		8'b00000110 : maximum_val = 7'b0001111;
		8'b00000111 : maximum_val = 7'b0010001;
		8'b00001000 : maximum_val = 7'b0010011;
		8'b00001001 : maximum_val = 7'b0010101;
		8'b00001010 : maximum_val = 7'b0010111;
		8'b00001011 : maximum_val = 7'b0011001;
		8'b00001100 : maximum_val = 7'b0011011;
		8'b00001101 : maximum_val = 7'b0011101;
		8'b00001110 : maximum_val = 7'b0011111;
		8'b00001111 : maximum_val = 7'b0100001;
		8'b00010000 : maximum_val = 7'b0100011;
		8'b00010001 : maximum_val = 7'b0100101;
		8'b00010010 : maximum_val = 7'b0100110;
		8'b00010011 : maximum_val = 7'b0101000;
		8'b00010100 : maximum_val = 7'b0101010;
		8'b00010101 : maximum_val = 7'b0101100;
		8'b00010110 : maximum_val = 7'b0101101;
		8'b00010111 : maximum_val = 7'b0101111;
		8'b00011000 : maximum_val = 7'b0110000;
		8'b00011001 : maximum_val = 7'b0110010;
		8'b00011010 : maximum_val = 7'b0110011;
		8'b00011011 : maximum_val = 7'b0110101;
		8'b00011100 : maximum_val = 7'b0110110;
		8'b00011101 : maximum_val = 7'b0111000;
		8'b00011110 : maximum_val = 7'b0111001;
		8'b00011111 : maximum_val = 7'b0111010;
		8'b00100000 : maximum_val = 7'b0111011;
		8'b00100001 : maximum_val = 7'b0111101;
		8'b00100010 : maximum_val = 7'b0111110;
		8'b00100011 : maximum_val = 7'b0111111;
		8'b00100100 : maximum_val = 7'b1000000;
		8'b00100101 : maximum_val = 7'b1000001;
		8'b00100110 : maximum_val = 7'b1000010;
		8'b00100111 : maximum_val = 7'b1000011;
		8'b00101000 : maximum_val = 7'b1000100;
		8'b00101001 : maximum_val = 7'b1000101;
		8'b00101010 : maximum_val = 7'b1000110;
		8'b00101011 : maximum_val = 7'b1000111;
		8'b00101100 : maximum_val = 7'b1000111;
		8'b00101101 : maximum_val = 7'b1001000;
		8'b00101110 : maximum_val = 7'b1001001;
		8'b00101111 : maximum_val = 7'b1001010;
		8'b00110000 : maximum_val = 7'b1001010;
		8'b00110001 : maximum_val = 7'b1001011;
		8'b00110010 : maximum_val = 7'b1001011;
		8'b00110011 : maximum_val = 7'b1001100;
		8'b00110100 : maximum_val = 7'b1001100;
		8'b00110101 : maximum_val = 7'b1001101;
		8'b00110110 : maximum_val = 7'b1001101;
		8'b00110111 : maximum_val = 7'b1001110;
		8'b00111000 : maximum_val = 7'b1001110;
		8'b00111001 : maximum_val = 7'b1001110;
		8'b00111010 : maximum_val = 7'b1001110;
		8'b00111011 : maximum_val = 7'b1001111;
		8'b00111100 : maximum_val = 7'b1001111;
		8'b00111101 : maximum_val = 7'b1001111;
		8'b00111110 : maximum_val = 7'b1001111;
		8'b00111111 : maximum_val = 7'b1001111;
		8'b01000000 : maximum_val = 7'b1001111;
		8'b01000001 : maximum_val = 7'b1001111;
		8'b01000010 : maximum_val = 7'b1001111;
		8'b01000011 : maximum_val = 7'b1001111;
		8'b01000100 : maximum_val = 7'b1001111;
		8'b01000101 : maximum_val = 7'b1001111;
		8'b01000110 : maximum_val = 7'b1001110;
		8'b01000111 : maximum_val = 7'b1001110;
		8'b01001000 : maximum_val = 7'b1001110;
		8'b01001001 : maximum_val = 7'b1001110;
		8'b01001010 : maximum_val = 7'b1001101;
		8'b01001011 : maximum_val = 7'b1001101;
		8'b01001100 : maximum_val = 7'b1001100;
		8'b01001101 : maximum_val = 7'b1001100;
		8'b01001110 : maximum_val = 7'b1001011;
		8'b01001111 : maximum_val = 7'b1001011;
		8'b01010000 : maximum_val = 7'b1001010;
		8'b01010001 : maximum_val = 7'b1001010;
		8'b01010010 : maximum_val = 7'b1001001;
		8'b01010011 : maximum_val = 7'b1001000;
		8'b01010100 : maximum_val = 7'b1000111;
		8'b01010101 : maximum_val = 7'b1000111;
		8'b01010110 : maximum_val = 7'b1000110;
		8'b01010111 : maximum_val = 7'b1000101;
		8'b01011000 : maximum_val = 7'b1000100;
		8'b01011001 : maximum_val = 7'b1000011;
		8'b01011010 : maximum_val = 7'b1000010;
		8'b01011011 : maximum_val = 7'b1000001;
		8'b01011100 : maximum_val = 7'b1000000;
		8'b01011101 : maximum_val = 7'b0111111;
		8'b01011110 : maximum_val = 7'b0111110;
		8'b01011111 : maximum_val = 7'b0111101;
		8'b01100000 : maximum_val = 7'b0111011;
		8'b01100001 : maximum_val = 7'b0111010;
		8'b01100010 : maximum_val = 7'b0111001;
		8'b01100011 : maximum_val = 7'b0111000;
		8'b01100100 : maximum_val = 7'b0110110;
		8'b01100101 : maximum_val = 7'b0110101;
		8'b01100110 : maximum_val = 7'b0110011;
		8'b01100111 : maximum_val = 7'b0110010;
		8'b01101000 : maximum_val = 7'b0110000;
		8'b01101001 : maximum_val = 7'b0101111;
		8'b01101010 : maximum_val = 7'b0101101;
		8'b01101011 : maximum_val = 7'b0101100;
		8'b01101100 : maximum_val = 7'b0101010;
		8'b01101101 : maximum_val = 7'b0101000;
		8'b01101110 : maximum_val = 7'b0100110;
		8'b01101111 : maximum_val = 7'b0100101;
		8'b01110000 : maximum_val = 7'b0100011;
		8'b01110001 : maximum_val = 7'b0100001;
		8'b01110010 : maximum_val = 7'b0011111;
		8'b01110011 : maximum_val = 7'b0011101;
		8'b01110100 : maximum_val = 7'b0011011;
		8'b01110101 : maximum_val = 7'b0011001;
		8'b01110110 : maximum_val = 7'b0010111;
		8'b01110111 : maximum_val = 7'b0010101;
		8'b01111000 : maximum_val = 7'b0010011;
		8'b01111001 : maximum_val = 7'b0010001;
		8'b01111010 : maximum_val = 7'b0001111;
		8'b01111011 : maximum_val = 7'b0001100;
		8'b01111100 : maximum_val = 7'b0001010;
		8'b01111101 : maximum_val = 7'b0001000;
		8'b01111110 : maximum_val = 7'b0000101;
		8'b01111111 : maximum_val = 7'b0000011;
		8'b10000000 : maximum_val = 7'b0000000;
		default : maximum_val = 7'b0000000;
	endcase
  end
  
endmodule

// Valid block
module min_max
  (input [6:0] Vobs, minimum_val, maximum_val, output valid);
  
  wire valid_min, valid_max;
  
  assign valid_max = (Vobs < maximum_val) ? 1'b1: 1'b0;
  assign valid_min = (Vobs > minimum_val) ? 1'b1: 1'b0;
  assign valid = valid_min & valid_max;
  
endmodule

//
// NIST Random Number Generation Tests implementation
// 03-Runs Test
//

module NIST03
  (input clk, rstn, RND_in, output error3);
  
  wire cout1, cout2, reset1, reset2, valid;
  wire [6:0] Vobs, minimum_val, maximum_val;
  wire [7:0] epsilon;
  wire [2:0] invalid_blks;

  reg rk;

  always @(posedge(clk) or negedge(reset1))
    begin
	  if (~reset1)
	    rk <= 0;
	  else
	    rk <= RND_in;
    end
  
  Vobs_counter u0 (
	.clk(clk),
    .rstn(reset1),
	.en(rk ^ RND_in),
	.Vobs(Vobs)
  );

  counter #(8) epsilon_counter (
	.clk(clk),
    .rstn(reset1),
	.en(RND_in),
	.q(epsilon),
	.cout()
  );
  
// minimum val
  min_val u2 (
    .epsilon(epsilon),
	.minimum_val(minimum_val)
  );

// maximum val
  max_val u3 (
    .epsilon(epsilon),
	.maximum_val(maximum_val)
  );

// Valid block
  min_max u4 (
    .Vobs(Vobs),
    .minimum_val(minimum_val),
	.maximum_val(maximum_val),
	.valid(valid)
  );

  // Block (M*N) counter
  counter #(7) u5 (
    .clk(clk),
	.rstn(reset1),
	.en(1'b1),
	.q(),
	.cout(cout1)
  );
  // Block reset
  reseter u6 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1),
	.error(error3),
	.reset(reset1)
  );
  
  //Confidence Interval Test
  counter #(3) u7 (
    .clk(clk),
	.rstn(reset2),
	.en(~valid & cout1),
	.q(invalid_blks),
	.cout()
  );
  GT5 u11(
    .Blks(invalid_blks),
	.error(error3)
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
	.error(error3),
	.reset(reset2)
  );
  
endmodule
