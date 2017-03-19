module main (
             input clk,
             input SCLK,
             input MOSI,
             input CE0,
             output MISO,
             output SSIG,
             output D1,
             output D2,
             output D3,
             output D4
             );

   wire ssig;
   wire [7:0] data;
   SPI spi (
            .sclk(SCLK),
            .mosi(MOSI),
            .ce0(CE0),
            .miso(MISO),
            .ssig(ssig),
            .data(data)
            );

   assign D1 = data[0];
   assign D2 = data[1];
   assign D3 = data[2];
   assign D4 = data[3];

endmodule
