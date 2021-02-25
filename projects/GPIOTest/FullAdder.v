module FullAdder (a, b, c, x, y);

input a;
input b;
input c;
output x;
output y;


// input a, b;
// output c;
//

assign x = (a^b)^c;
assign y = (a&b)|(a&c)|(b&c);

// and inst1 (c, a, b);

endmodule

