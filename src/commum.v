// Block counter
module counter #(parameter SIZE=16)
  (input clk, rstn, en, output [SIZE-1:0] q, output cout);
  
  reg [SIZE-1:0] qint;
  
  always @ (posedge(clk) or negedge(rstn))
    begin
      if(!rstn)
        qint <= 0;
      else
        if(en)
          qint <= qint + 1;
    end
  
  assign q = qint;
  assign cout = (&qint) & en;

endmodule

// Invalid Blocks
module GT5
  (input [2:0] Blks, output error);
  
  assign error = Blks > 5 ? 1'b1 : 1'b0;
  
endmodule

// Global reset
module reseter
  (input clk, rstn, cout, error, output reset);
  
  reg q;
  
  always @ (posedge(clk) or posedge(q))
    begin
	  if (q)
	    q <= 1'b0;
	  else
	    q <= cout;
	end
	  
  assign reset = rstn & ~q & ~error;

endmodule