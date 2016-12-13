module choosing(e,f,g,out);
input [31:0]e;
input [31:0]f;
input [31:0]g;
output [31:0]out;
//reg [31:0]out;
assign out=(~e&f)|(e&g);
endmodule
