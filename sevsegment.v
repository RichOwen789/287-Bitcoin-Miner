module sevsegment (i0, i1, i2, i3,sevseg);
input i0,i1,i2,i3;
output [6:0]sevseg;

assign sevseg[0] = !((~i1 & ~i3)|(i2 & ~i0)|(i1 & i2)|(i3 & ~i0 & i1)|(i0 & ~i1 & ~i2) | (i0 & ~i3));
assign sevseg[1] = !((~i0 & ~i2 & ~i3)|(i0 & ~i2 & i3)|(~i1 & ~i2)|(~i1 & ~i3)|( ~i0 & i2 & i3));
assign sevseg[2] = !((~i1 & ~i2)|( ~i2 & i3)|(i0 & ~i1)|(~i0 & i1)|(i3 & ~i0));
assign sevseg[3] = !((~i2 & i3 & i1)|(i0 & ~i2)|(i2 & i3 & ~i1)|(i1 & i2 & ~i3)| (~i0 & ~i1 & ~i3));
assign sevseg[4] = !((i0 & i2)|(i0 & i1)|(i2 & ~i3)|(~i1 & ~i3));
assign sevseg[5] = !((~i2 & ~i3)|(i1 & ~i3)|(~i0 & i1)|(i0 & i2)|(i0 & ~i1));
assign sevseg[6] = !(( ~i0 & i1 & ~i2)|(i0 & ~i1)|(i0 & i3)|( ~i1 & i2)|(i2 & ~i3));

endmodule 