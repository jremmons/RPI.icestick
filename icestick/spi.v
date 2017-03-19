// TODO implement hardqare queue
// TODO write demo app on FPGA (set LEDs)
// TODO write basic c library
// TODO write python bindings

// module FIFO (
//              input  data_in[7:0],
//              input  insert,
//              input  next,
//              output data_out[7:0],
//              output qfull
//              );

//    parameter QSIZE_BYTES = 32;

//    reg queue[8*QSIZE_BYTES-1:0];
   
// endmodule
   
module SPI (
                 input  sclk,  // slave clock
                 input  mosi,  // master out, slave in
                 input  ce0,   // clock enable
                 output miso,  // master in, slave out
                 output ssig   // slave signal 
                 );

   reg [1:0] count = 2'b00;
   reg [7:0] send = 8'b00000000;
   reg [7:0] receive;

   reg latch_data = 0;   
   wire clock = sclk | latch_data;

   // prepare for transmission
   always @(negedge ce0) begin      
      latch_data <= 0;
   end
   
   // end transmission
   always @(posedge ce0) begin
      latch_data <= 1;

      // TODO grab data and put data into registers/FIFO
      
      // case(count)
      //   2'b00: send <= 8'b00000001;
      //   2'b01: send <= 8'b00000010;
      //   2'b10: send <= 8'b00000100;
      //   2'b11: send <= 8'b00001000;
      // endcase
      // count <= count + 1;
      send <= receive;
   end

   // receive and transmit data
   reg [2:0] index = 3'b111;
   always @(posedge clock) begin
      if(latch_data == 0) begin
         receive <= {receive[6:0], mosi};
         index <= index - 1;
      end
      else begin
        index <= 3'b111;
      end
   end

   assign ssig = receive[7];
   assign miso = send[index];

endmodule
