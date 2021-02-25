module Timer(
		input sys_clk, // 50MHz clock, PIN_Y2
		input fart,
		output reg toggle); // LED, PIN_F19
		// output sys_clks,
		// output reg reset);

		reg [50:0] counter = 0;
always @(posedge sys_clk) begin
		if (counter == 49_999_999 ) begin
				counter <= 0;
				// reset <= 1;
				toggle <= ~toggle;
		end
		else begin
				counter <= counter + 1;
				// reset <= 0;
		end

end

DoubleTimer DoubleTimerInst(sys_clk);

endmodule

module DoubleTimer(
		input sys_clk, // 50MHz clock, PIN_Y2
		// input fart,
		output reg something
		); // LED, PIN_F19
		// output sys_clks,
		// output reg reset);

		// shit <= ~shit;
reg shit = 1;
something <= shit;
//         reg [50:0] doublecounter = 0;
// always @(posedge sys_clk) begin
//         if (doublecounter == 24_999_999 ) begin
//                 doublecounter <= 0;
//                 // reset <= 1;
//                 shit <= ~shit;
//         end
//         else begin
//                 doublecounter <= doublecounter + 1;
//                 // reset <= 0;
//         end
// end
endmodule

// module Timer(
//         input sys_clk,
//         input rad_events,
// );


// wire[15:0] counts_out;

// BinaryCounter BinaryCounterInst(rad)eve
// wire[15:0] counts_out;

// BinaryCounter BinaryCounterInst(rad_events, counts_out)


// reg[6:0] LED_out;
// // Cathode patterns of the 7-segment LED display 
// always @(*)
// begin
//  case(LED_BCD)
//  4'b0000: LED_out = 7'b0000001; // "0"  
//  4'b0001: LED_out = 7'b1001111; // "1" 
//  4'b0010: LED_out = 7'b0010010; // "2" 
//  4'b0011: LED_out = 7'b0000110; // "3" 
//  4'b0100: LED_out = 7'b1001100; // "4" 
//  4'b0101: LED_out = 7'b0100100; // "5" 
//  4'b0110: LED_out = 7'b0100000; // "6" 
//  4'b0111: LED_out = 7'b0001111; // "7" 
//  4'b1000: LED_out = 7'b0000000; // "8"  
//  4'b1001: LED_out = 7'b0000100; // "9" 
//  default: LED_out = 7'b0000001; // "0"
//  endcase
// end
