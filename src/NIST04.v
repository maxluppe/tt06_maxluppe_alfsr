// Blk shifter
module Blk_shifter
  (input clk, rstn, din, output reg [7:0] Blk);
  
  always @ (posedge(clk) or negedge(rstn))
    begin
      if(!rstn)
        Blk <= 0;
      else
        Blk <= {Blk[6:0], din};
    end
	
endmodule

// Long run identifier
module long_run
  (input [7:0] Blk, output reg [3:0] vi);
  always @(Blk) begin
    case (Blk)
		8'b00000000 : vi = 4'b0001;
		8'b00000001 : vi = 4'b0001;
		8'b00000010 : vi = 4'b0001;
		8'b00000100 : vi = 4'b0001;
		8'b00000101 : vi = 4'b0001;
		8'b00001000 : vi = 4'b0001;
		8'b00001001 : vi = 4'b0001;
		8'b00001010 : vi = 4'b0001;
		8'b00010000 : vi = 4'b0001;
		8'b00010001 : vi = 4'b0001;
		8'b00010010 : vi = 4'b0001;
		8'b00010100 : vi = 4'b0001;
		8'b00010101 : vi = 4'b0001;
		8'b00100000 : vi = 4'b0001;
		8'b00100001 : vi = 4'b0001;
		8'b00100010 : vi = 4'b0001;
		8'b00100100 : vi = 4'b0001;
		8'b00100101 : vi = 4'b0001;
		8'b00101000 : vi = 4'b0001;
		8'b00101001 : vi = 4'b0001;
		8'b00101010 : vi = 4'b0001;
		8'b01000000 : vi = 4'b0001;
		8'b01000001 : vi = 4'b0001;
		8'b01000010 : vi = 4'b0001;
		8'b01000100 : vi = 4'b0001;
		8'b01000101 : vi = 4'b0001;
		8'b01001000 : vi = 4'b0001;
		8'b01001001 : vi = 4'b0001;
		8'b01001010 : vi = 4'b0001;
		8'b01010000 : vi = 4'b0001;
		8'b01010001 : vi = 4'b0001;
		8'b01010010 : vi = 4'b0001;
		8'b01010100 : vi = 4'b0001;
		8'b01010101 : vi = 4'b0001;
		8'b10000000 : vi = 4'b0001;
		8'b10000001 : vi = 4'b0001;
		8'b10000010 : vi = 4'b0001;
		8'b10000100 : vi = 4'b0001;
		8'b10000101 : vi = 4'b0001;
		8'b10001000 : vi = 4'b0001;
		8'b10001001 : vi = 4'b0001;
		8'b10001010 : vi = 4'b0001;
		8'b10010000 : vi = 4'b0001;
		8'b10010001 : vi = 4'b0001;
		8'b10010010 : vi = 4'b0001;
		8'b10010100 : vi = 4'b0001;
		8'b10010101 : vi = 4'b0001;
		8'b10100000 : vi = 4'b0001;
		8'b10100001 : vi = 4'b0001;
		8'b10100010 : vi = 4'b0001;
		8'b10100100 : vi = 4'b0001;
		8'b10100101 : vi = 4'b0001;
		8'b10101000 : vi = 4'b0001;
		8'b10101001 : vi = 4'b0001;
		8'b10101010 : vi = 4'b0001;
		8'b00000011 : vi = 4'b0010;
		8'b00000110 : vi = 4'b0010;
		8'b00001011 : vi = 4'b0010;
		8'b00001100 : vi = 4'b0010;
		8'b00001101 : vi = 4'b0010;
		8'b00010011 : vi = 4'b0010;
		8'b00010110 : vi = 4'b0010;
		8'b00011000 : vi = 4'b0010;
		8'b00011001 : vi = 4'b0010;
		8'b00011010 : vi = 4'b0010;
		8'b00011011 : vi = 4'b0010;
		8'b00100011 : vi = 4'b0010;
		8'b00100110 : vi = 4'b0010;
		8'b00101011 : vi = 4'b0010;
		8'b00101100 : vi = 4'b0010;
		8'b00101101 : vi = 4'b0010;
		8'b00110000 : vi = 4'b0010;
		8'b00110001 : vi = 4'b0010;
		8'b00110010 : vi = 4'b0010;
		8'b00110011 : vi = 4'b0010;
		8'b00110100 : vi = 4'b0010;
		8'b00110101 : vi = 4'b0010;
		8'b00110110 : vi = 4'b0010;
		8'b01000011 : vi = 4'b0010;
		8'b01000110 : vi = 4'b0010;
		8'b01001011 : vi = 4'b0010;
		8'b01001100 : vi = 4'b0010;
		8'b01001101 : vi = 4'b0010;
		8'b01010011 : vi = 4'b0010;
		8'b01010110 : vi = 4'b0010;
		8'b01011000 : vi = 4'b0010;
		8'b01011001 : vi = 4'b0010;
		8'b01011010 : vi = 4'b0010;
		8'b01011011 : vi = 4'b0010;
		8'b01100000 : vi = 4'b0010;
		8'b01100001 : vi = 4'b0010;
		8'b01100010 : vi = 4'b0010;
		8'b01100011 : vi = 4'b0010;
		8'b01100100 : vi = 4'b0010;
		8'b01100101 : vi = 4'b0010;
		8'b01100110 : vi = 4'b0010;
		8'b01101000 : vi = 4'b0010;
		8'b01101001 : vi = 4'b0010;
		8'b01101010 : vi = 4'b0010;
		8'b01101011 : vi = 4'b0010;
		8'b01101100 : vi = 4'b0010;
		8'b01101101 : vi = 4'b0010;
		8'b10000011 : vi = 4'b0010;
		8'b10000110 : vi = 4'b0010;
		8'b10001011 : vi = 4'b0010;
		8'b10001100 : vi = 4'b0010;
		8'b10001101 : vi = 4'b0010;
		8'b10010011 : vi = 4'b0010;
		8'b10010110 : vi = 4'b0010;
		8'b10011000 : vi = 4'b0010;
		8'b10011001 : vi = 4'b0010;
		8'b10011010 : vi = 4'b0010;
		8'b10011011 : vi = 4'b0010;
		8'b10100011 : vi = 4'b0010;
		8'b10100110 : vi = 4'b0010;
		8'b10101011 : vi = 4'b0010;
		8'b10101100 : vi = 4'b0010;
		8'b10101101 : vi = 4'b0010;
		8'b10110000 : vi = 4'b0010;
		8'b10110001 : vi = 4'b0010;
		8'b10110010 : vi = 4'b0010;
		8'b10110011 : vi = 4'b0010;
		8'b10110100 : vi = 4'b0010;
		8'b10110101 : vi = 4'b0010;
		8'b10110110 : vi = 4'b0010;
		8'b11000000 : vi = 4'b0010;
		8'b11000001 : vi = 4'b0010;
		8'b11000010 : vi = 4'b0010;
		8'b11000011 : vi = 4'b0010;
		8'b11000100 : vi = 4'b0010;
		8'b11000101 : vi = 4'b0010;
		8'b11000110 : vi = 4'b0010;
		8'b11001000 : vi = 4'b0010;
		8'b11001001 : vi = 4'b0010;
		8'b11001010 : vi = 4'b0010;
		8'b11001011 : vi = 4'b0010;
		8'b11001100 : vi = 4'b0010;
		8'b11001101 : vi = 4'b0010;
		8'b11010000 : vi = 4'b0010;
		8'b11010001 : vi = 4'b0010;
		8'b11010010 : vi = 4'b0010;
		8'b11010011 : vi = 4'b0010;
		8'b11010100 : vi = 4'b0010;
		8'b11010101 : vi = 4'b0010;
		8'b11010110 : vi = 4'b0010;
		8'b11011000 : vi = 4'b0010;
		8'b11011001 : vi = 4'b0010;
		8'b11011010 : vi = 4'b0010;
		8'b11011011 : vi = 4'b0010;
		8'b00000111 : vi = 4'b0100;
		8'b00001110 : vi = 4'b0100;
		8'b00010111 : vi = 4'b0100;
		8'b00011100 : vi = 4'b0100;
		8'b00011101 : vi = 4'b0100;
		8'b00100111 : vi = 4'b0100;
		8'b00101110 : vi = 4'b0100;
		8'b00110111 : vi = 4'b0100;
		8'b00111000 : vi = 4'b0100;
		8'b00111001 : vi = 4'b0100;
		8'b00111010 : vi = 4'b0100;
		8'b00111011 : vi = 4'b0100;
		8'b01000111 : vi = 4'b0100;
		8'b01001110 : vi = 4'b0100;
		8'b01010111 : vi = 4'b0100;
		8'b01011100 : vi = 4'b0100;
		8'b01011101 : vi = 4'b0100;
		8'b01100111 : vi = 4'b0100;
		8'b01101110 : vi = 4'b0100;
		8'b01110000 : vi = 4'b0100;
		8'b01110001 : vi = 4'b0100;
		8'b01110010 : vi = 4'b0100;
		8'b01110011 : vi = 4'b0100;
		8'b01110100 : vi = 4'b0100;
		8'b01110101 : vi = 4'b0100;
		8'b01110110 : vi = 4'b0100;
		8'b01110111 : vi = 4'b0100;
		8'b10000111 : vi = 4'b0100;
		8'b10001110 : vi = 4'b0100;
		8'b10010111 : vi = 4'b0100;
		8'b10011100 : vi = 4'b0100;
		8'b10011101 : vi = 4'b0100;
		8'b10100111 : vi = 4'b0100;
		8'b10101110 : vi = 4'b0100;
		8'b10110111 : vi = 4'b0100;
		8'b10111000 : vi = 4'b0100;
		8'b10111001 : vi = 4'b0100;
		8'b10111010 : vi = 4'b0100;
		8'b10111011 : vi = 4'b0100;
		8'b11000111 : vi = 4'b0100;
		8'b11001110 : vi = 4'b0100;
		8'b11010111 : vi = 4'b0100;
		8'b11011100 : vi = 4'b0100;
		8'b11011101 : vi = 4'b0100;
		8'b11100000 : vi = 4'b0100;
		8'b11100001 : vi = 4'b0100;
		8'b11100010 : vi = 4'b0100;
		8'b11100011 : vi = 4'b0100;
		8'b11100100 : vi = 4'b0100;
		8'b11100101 : vi = 4'b0100;
		8'b11100110 : vi = 4'b0100;
		8'b11100111 : vi = 4'b0100;
		8'b11101000 : vi = 4'b0100;
		8'b11101001 : vi = 4'b0100;
		8'b11101010 : vi = 4'b0100;
		8'b11101011 : vi = 4'b0100;
		8'b11101100 : vi = 4'b0100;
		8'b11101101 : vi = 4'b0100;
		8'b11101110 : vi = 4'b0100;
		8'b00001111 : vi = 4'b1000;
		8'b00011110 : vi = 4'b1000;
		8'b00011111 : vi = 4'b1000;
		8'b00101111 : vi = 4'b1000;
		8'b00111100 : vi = 4'b1000;
		8'b00111101 : vi = 4'b1000;
		8'b00111110 : vi = 4'b1000;
		8'b00111111 : vi = 4'b1000;
		8'b01001111 : vi = 4'b1000;
		8'b01011110 : vi = 4'b1000;
		8'b01011111 : vi = 4'b1000;
		8'b01101111 : vi = 4'b1000;
		8'b01111000 : vi = 4'b1000;
		8'b01111001 : vi = 4'b1000;
		8'b01111010 : vi = 4'b1000;
		8'b01111011 : vi = 4'b1000;
		8'b01111100 : vi = 4'b1000;
		8'b01111101 : vi = 4'b1000;
		8'b01111110 : vi = 4'b1000;
		8'b01111111 : vi = 4'b1000;
		8'b10001111 : vi = 4'b1000;
		8'b10011110 : vi = 4'b1000;
		8'b10011111 : vi = 4'b1000;
		8'b10101111 : vi = 4'b1000;
		8'b10111100 : vi = 4'b1000;
		8'b10111101 : vi = 4'b1000;
		8'b10111110 : vi = 4'b1000;
		8'b10111111 : vi = 4'b1000;
		8'b11001111 : vi = 4'b1000;
		8'b11011110 : vi = 4'b1000;
		8'b11011111 : vi = 4'b1000;
		8'b11101111 : vi = 4'b1000;
		8'b11110000 : vi = 4'b1000;
		8'b11110001 : vi = 4'b1000;
		8'b11110010 : vi = 4'b1000;
		8'b11110011 : vi = 4'b1000;
		8'b11110100 : vi = 4'b1000;
		8'b11110101 : vi = 4'b1000;
		8'b11110110 : vi = 4'b1000;
		8'b11110111 : vi = 4'b1000;
		8'b11111000 : vi = 4'b1000;
		8'b11111001 : vi = 4'b1000;
		8'b11111010 : vi = 4'b1000;
		8'b11111011 : vi = 4'b1000;
		8'b11111100 : vi = 4'b1000;
		8'b11111101 : vi = 4'b1000;
		8'b11111110 : vi = 4'b1000;
		8'b11111111 : vi = 4'b1000;
		default : vi = 4'b0000;
	endcase
  end
  
endmodule

// vi^2/PI0
module multiply_invPI0
  (input [5:0] vi_cnt, output reg [10:0] vi_square_PI0);
  
  always @(vi_cnt) begin
    case (vi_cnt)
		5'b00000 : vi_square_PI0 = 11'b00000000000;
		5'b00001 : vi_square_PI0 = 11'b00000000101;
		5'b00010 : vi_square_PI0 = 11'b00000010011;
		5'b00011 : vi_square_PI0 = 11'b00000101010;
		5'b00100 : vi_square_PI0 = 11'b00001001011;
		5'b00101 : vi_square_PI0 = 11'b00001110101;
		5'b00110 : vi_square_PI0 = 11'b00010101000;
		5'b00111 : vi_square_PI0 = 11'b00011100101;
		5'b01000 : vi_square_PI0 = 11'b00100101010;
		5'b01001 : vi_square_PI0 = 11'b00101111010;
		5'b01010 : vi_square_PI0 = 11'b00111010010;
		5'b01011 : vi_square_PI0 = 11'b01000110100;
		5'b01100 : vi_square_PI0 = 11'b01010011111;
		5'b01101 : vi_square_PI0 = 11'b01100010011;
		5'b01110 : vi_square_PI0 = 11'b01110010001;
		5'b01111 : vi_square_PI0 = 11'b10000011000;
		5'b10000 : vi_square_PI0 = 11'b10010101000;
		default  : vi_square_PI0 = 11'b00000000000;
    endcase
  end

endmodule

// vi^2/PI0
module multiply_invPI1
  (input [5:0] vi_cnt, output reg [10:0] vi_square_PI1);
  
  always @(vi_cnt) begin
    case (vi_cnt)
		5'b00000 : vi_square_PI1 = 11'b00000000000;
		5'b00001 : vi_square_PI1 = 11'b00000000011;
		5'b00010 : vi_square_PI1 = 11'b00000001011;
		5'b00011 : vi_square_PI1 = 11'b00000011001;
		5'b00100 : vi_square_PI1 = 11'b00000101100;
		5'b00101 : vi_square_PI1 = 11'b00001000101;
		5'b00110 : vi_square_PI1 = 11'b00001100011;
		5'b00111 : vi_square_PI1 = 11'b00010000110;
		5'b01000 : vi_square_PI1 = 11'b00010101111;
		5'b01001 : vi_square_PI1 = 11'b00011011101;
		5'b01010 : vi_square_PI1 = 11'b00100010001;
		5'b01011 : vi_square_PI1 = 11'b00101001010;
		5'b01100 : vi_square_PI1 = 11'b00110001001;
		5'b01101 : vi_square_PI1 = 11'b00111001101;
		5'b01110 : vi_square_PI1 = 11'b01000010110;
		5'b01111 : vi_square_PI1 = 11'b01001100101;
		5'b10000 : vi_square_PI1 = 11'b01010111010;
		default  : vi_square_PI1 = 11'b00000000000;
    endcase
  end

endmodule

// vi^2/PI0
module multiply_invPI2
  (input [5:0] vi_cnt, output reg [10:0] vi_square_PI2);
  
  always @(vi_cnt) begin
    case (vi_cnt)
		5'b00000 : vi_square_PI2 = 11'b00000000000;
		5'b00001 : vi_square_PI2 = 11'b00000000101;
		5'b00010 : vi_square_PI2 = 11'b00000010010;
		5'b00011 : vi_square_PI2 = 11'b00000101000;
		5'b00100 : vi_square_PI2 = 11'b00001000110;
		5'b00101 : vi_square_PI2 = 11'b00001101101;
		5'b00110 : vi_square_PI2 = 11'b00010011101;
		5'b00111 : vi_square_PI2 = 11'b00011010101;
		5'b01000 : vi_square_PI2 = 11'b00100010110;
		5'b01001 : vi_square_PI2 = 11'b00101100000;
		5'b01010 : vi_square_PI2 = 11'b00110110010;
		5'b01011 : vi_square_PI2 = 11'b01000001110;
		5'b01100 : vi_square_PI2 = 11'b01001110001;
		5'b01101 : vi_square_PI2 = 11'b01011011110;
		5'b01110 : vi_square_PI2 = 11'b01101010011;
		5'b01111 : vi_square_PI2 = 11'b01111010001;
		5'b10000 : vi_square_PI2 = 11'b10001010111;
		default  : vi_square_PI2 = 11'b00000000000;
    endcase
  end

endmodule

// vi^2/PI0
module multiply_invPI3
  (input [5:0] vi_cnt, output reg [10:0] vi_square_PI3);
  
  always @(vi_cnt) begin
    case (vi_cnt)
		5'b00000 : vi_square_PI3 = 11'b00000000000;
		5'b00001 : vi_square_PI3 = 11'b00000000110;
		5'b00010 : vi_square_PI3 = 11'b00000010110;
		5'b00011 : vi_square_PI3 = 11'b00000110000;
		5'b00100 : vi_square_PI3 = 11'b00001010110;
		5'b00101 : vi_square_PI3 = 11'b00010000110;
		5'b00110 : vi_square_PI3 = 11'b00011000000;
		5'b00111 : vi_square_PI3 = 11'b00100000110;
		5'b01000 : vi_square_PI3 = 11'b00101010110;
		5'b01001 : vi_square_PI3 = 11'b00110110000;
		5'b01010 : vi_square_PI3 = 11'b01000010110;
		5'b01011 : vi_square_PI3 = 11'b01010000110;
		5'b01100 : vi_square_PI3 = 11'b01100000000;
		5'b01101 : vi_square_PI3 = 11'b01110000110;
		5'b01110 : vi_square_PI3 = 11'b10000010110;
		5'b01111 : vi_square_PI3 = 11'b10010110000;
		5'b10000 : vi_square_PI3 = 11'b10101010110;
		default  : vi_square_PI3 = 11'b00000000000;
    endcase
  end

endmodule

// Sum of vi^2/PIi
module sum_vi_square_PIi
  (input [10:0] vi_square_PI3, vi_square_PI2, vi_square_PI1, vi_square_PI0, output [10:0] sum);
  
  wire [10:0] sum32, sum10, sum3210;
  
  assign sum32 = vi_square_PI3 + vi_square_PI2;
  assign sum10 = vi_square_PI1 + vi_square_PI0;
  assign sum3210 = sum32 + sum10;
  assign sum = sum3210;
  
endmodule

// Valid block
module valid_sum
  (input [10:0] sum, output valid);
  
  assign valid = sum < 437 ? 1'b1 : 1'b0;
  
endmodule

//
// NIST Random Number Generation Tests implementation
// 04-Test of the Longest Run of Ones in a Block
//

module NIST04
  (input clk, rstn, RND_in, output error4);
    
  parameter Size_M = 3;	//M=8

  wire cout1, cout1a, cout2, reset1, reset1a, reset2, valid;
  wire [2:0] invalid_blks;
  wire [3:0] vi;
  wire [7:0] Blk;
  wire [10:0] sum;
  wire [5:0] vi_cnt [3:0];
  wire [10:0] vi_square_PI [3:0];	//can be [16:0]

  Blk_shifter u0 (
	.clk(clk),
    .rstn(reset1a),
	.din(RND_in),
	.Blk(Blk)
  );

  long_run u1 (
    .Blk(Blk),
	.vi(vi)
  );
  
  genvar i;
  generate
    for (i=0; i<4 ; i = i + 1) begin: squared
      counter #(6) vi_counter (
	    .clk(clk),
		.rstn(reset1),
		.en(vi[i] & cout1a),
		.q(vi_cnt[i]),
		.cout()
	  );
    end
  endgenerate

  multiply_invPI0 u3a (
    .vi_cnt(vi_cnt[0]),
    .vi_square_PI0(vi_square_PI[0])
  );

  multiply_invPI1 u3b (
    .vi_cnt(vi_cnt[1]),
    .vi_square_PI1(vi_square_PI[1])
  );

  multiply_invPI2 u3c (
    .vi_cnt(vi_cnt[2]),
    .vi_square_PI2(vi_square_PI[2])
  );

  multiply_invPI3 u3d (
    .vi_cnt(vi_cnt[3]),
    .vi_square_PI3(vi_square_PI[3])
  );

  sum_vi_square_PIi u4 (
    .vi_square_PI3(vi_square_PI[3]),
	.vi_square_PI2(vi_square_PI[2]),
	.vi_square_PI1(vi_square_PI[1]),
	.vi_square_PI0(vi_square_PI[0]),
	.sum(sum)  
  );

// Valid block
  valid_sum u5 (
    .sum(sum),
	.valid(valid)
  );

  // Block counter (M=8)
  counter #(Size_M) u6a (
    .clk(clk),
	.rstn(reset1),
	.en(1'b1),
	.q(),
	.cout(cout1a)
  );
  // Block reset
  reseter u7a (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1a),
	.error(error4),
	.reset(reset1a)
  );
  // Block counter (N=16)
  counter #(7-Size_M) u6b (
    .clk(clk),
	.rstn(reset1),
	.en(cout1a),
	.q(),
	.cout(cout1)
  );
  // Block reset
  reseter u7b (
    .clk(clk),
    .rstn(rstn),
	.cout(cout1),
	.error(error4),
	.reset(reset1)
  );
  
  //Confidence Interval Test
  counter #(3) u8 (
    .clk(clk),
	.rstn(reset2),
	.en(~valid & cout1),
	.q(invalid_blks),
	.cout()
  );
  GT5 u9 (
    .Blks(invalid_blks),
	.error(error4)
  );
  //Confidence Interval Test - m counter
  counter #(7) u10 (
    .clk(clk),
	.rstn(reset2),
	.en(cout1),
	.q(),
	.cout(cout2)
  );
  reseter u11 (
    .clk(clk),
    .rstn(rstn),
	.cout(cout2),
	.error(error4),
	.reset(reset2)
  );
  
endmodule
