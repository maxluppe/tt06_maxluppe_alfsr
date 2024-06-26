/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_maxluppe_alfsr (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    reg RND_in;
    wire RND_out;
    
    // All output pins must be assigned. If not used, assign to 0.
    assign uio_out[7:2] = 0;
    assign uio_oe  = 8'b00000011;

    alfsr alfsr0 (.clk(clk),				//Digitalization clock
                  .rst_n(rst_n),			//LFSR Configurator reset
                  .lfsr_clk(ui_in[0]),		//LFSR Configurator clock
                  .alfsr_rst_n(ui_in[1]),	//ALFSR reset
                  .lfsr_out(uo_out[5]),		//LFSR Configuratior output
                  .rng_out_d(RND_out),	//ALFSR 'digitalized' output
                  .rng_out(uo_out[3:0])	//ALFSR 'analog' outputs
    );

    assign uo_out[4] = RND_out;
    
    always @(negedge(clk)) begin
        RND_in <= uo_out[4];
    end
    
    NIST_SP_800_22 NIST0123 (.clk(clk),
                             .rstn(rst_n),
                             .RND_in(RND_in),
                             .error1(uo_out[6]),
                             .error2(uo_out[7]),
                             .error3(uio_out[0]),
                             .error4(uio_out[1])
    );

endmodule
