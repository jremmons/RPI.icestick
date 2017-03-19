`define N 8

module main (
             input clk,
             input SCLK,
             input MOSI,
             input CE0,
             output MISO,
             output SSIG,
             output D5
             );

   reg buffer;
   reg count;

   always @(posedge SCLK) begin
      buffer = MOSI;
      D5 = buffer;
   end 
endmodule

// wire ucSEL_;
// wire ucSCLK;
// wire ucMOSI;
// wire ucMISO;

// assign ucSEL_ = PMOD0;
// assign ucMOSI = PMOD1;
// assign PMOD2 = ucMISO;
// assign ucSCLK = PMOD3;

// //wire clk100;
// //pll U1 ( .clkin(clk), .clkout(clk100));

// wire [`N-1:0] spiin;
// wire [`N-1:0] spiout;

// assign spiin = J1;

// SPISlave #(.WIDTH(`N)) spi (
//     .clk(clk),
//     //.clk(clk100),
//     .ucSCLK(ucSCLK),
//     .ucMOSI(ucMOSI),
//     .ucMISO(ucMISO),
//     .ucSEL_(ucSEL_),
//     .data_in(spiin),
//     .data_out(spiout)
// );

// assign J3 = spiout;

// endmodule
