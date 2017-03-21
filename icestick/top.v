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
   wire [7:0] data_incoming;
   wire [7:0] data_outgoing = 8'b0001111;
   SPI spi (
            .sclk(SCLK),
            .mosi(MOSI),
            .ce0(CE0),
            .miso(MISO),
            .ssig(ssig),
            .data_incoming(data_incoming),
            .data_outgoing(data_outgoing)
            );

   assign D1 = data_incoming[0];
   assign D2 = data_incoming[1];
   assign D3 = data_incoming[2];
   assign D4 = data_incoming[3];

endmodule
