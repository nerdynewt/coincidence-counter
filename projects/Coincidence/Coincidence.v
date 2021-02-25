// Template Verilog file. You can delete these.
// Run quartus-cli -a to configure pin assignments, once you are done.

module Coincidence (
		input clk,
		input rst,
		input send,
		output reg out,
		output reg busy
);


reg [7:0] mychar = 0;
reg [63:0] counter = 0;

assign out = 0;
assign busy = 0;


always @(posedge clk) begin
		if (counter == 49_999_999 ) begin
				counter <= 0;
				mychar <= mychar + 1;
				out <= ~out;
				
		end
		else begin
				counter <= counter + 1;
		end
end

SerialOut SerialOutInst1 (clk, rst, mychar, send, out, busy);

endmodule

module SerialOut (
		input clk,
		input rst,
		input [7:0] char,
		input send,
		output reg out,
		output reg busy
);

reg [63:0] counter = 0;
always @(posedge clk) begin
		if (counter == 24_999_999 ) begin
				counter <= 0;
				busy <= ~busy;
		end
		else begin
				counter <= counter + 1;
		end
end

// and inst1 (out, send, rst);

endmodule
