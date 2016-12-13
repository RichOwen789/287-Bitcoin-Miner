module shifter_11(toshift, shifted);

input [31:0]toshift;
output [31:0]shifted;
//reg [31:0]shifted;
assign shifted[21] = toshift[0];                                                                                                                                                                                                                        
assign shifted[22] = toshift[1];                                                                                                                                                                                                                        
assign shifted[23] = toshift[2];                                                                                                                                                                                                                        
assign shifted[24] = toshift[3];                                                                                                                                                                                                                        
assign shifted[25] = toshift[4];                                                                                                                                                                                                                        
assign shifted[26] = toshift[5];                                                                                                                                                                                                                        
assign shifted[27] = toshift[6];                                                                                                                                                                                                                        
assign shifted[28] = toshift[7];                                                                                                                                                                                                                        
assign shifted[29] = toshift[8];                                                                                                                                                                                                                        
assign shifted[30] = toshift[9];                                                                                                                                                                                                                        
assign shifted[31] = toshift[10];                                                                                                                                                                                                                       
assign shifted[0] = toshift[11];                                                                                                                                                                                                                        
assign shifted[1] = toshift[12];                                                                                                                                                                                                                        
assign shifted[2] = toshift[13];                                                                                                                                                                                                                        
assign shifted[3] = toshift[14];                                                                                                                                                                                                                        
assign shifted[4] = toshift[15];                                                                                                                                                                                                                        
assign shifted[5] = toshift[16];                                                                                                                                                                                                                        
assign shifted[6] = toshift[17];                                                                                                                                                                                                                        
assign shifted[7] = toshift[18];                                                                                                                                                                                                                        
assign shifted[8] = toshift[19];                                                                                                                                                                                                                        
assign shifted[9] = toshift[20];                                                                                                                                                                                                                        
assign shifted[10] = toshift[21];                                                                                                                                                                                                                       
assign shifted[11] = toshift[22];                                                                                                                                                                                                                       
assign shifted[12] = toshift[23];                                                                                                                                                                                                                       
assign shifted[13] = toshift[24];                                                                                                                                                                                                                       
assign shifted[14] = toshift[25];                                                                                                                                                                                                                       
assign shifted[15] = toshift[26];                                                                                                                                                                                                                       
assign shifted[16] = toshift[27];                                                                                                                                                                                                                       
assign shifted[17] = toshift[28];                                                                                                                                                                                                                       
assign shifted[18] = toshift[29];                                                                                                                                                                                                                       
assign shifted[19] = toshift[30];                                                                                                                                                                                                                       
assign shifted[20] = toshift[31];

/*always @(*)
begin
	if (5'd31>11)
		shifted[31-11] = toshift[31];	
	else if(5'd31<11)
		shifted[31+31-11] = toshift[31];
	else
		shifted[0] = toshift[31];
end
always @(*)
begin
	if (5'd30>11)
		shifted[30-11] = toshift[30];	
	else if(5'd30<11)
		shifted[30+31-11] = toshift[30];
	else
		shifted[0] = toshift[30];
end
always @(*)
begin
	if (5'd29>11)
		shifted[29-11] = toshift[29];	
	else if(5'd29<11)
		shifted[29+31-11] = toshift[29];
	else
		shifted[0] = toshift[29];
end
always @(*)
begin
	if (5'd28>11)
		shifted[28-11] = toshift[28];	
	else if(5'd28<11)
		shifted[28+31-11] = toshift[28];
	else
		shifted[0] = toshift[28];
end
always @(*)
begin
	if (5'd27>11)
		shifted[27-11] = toshift[27];	
	else if(5'd27<11)
		shifted[27+31-11] = toshift[27];
	else
		shifted[0] = toshift[27];
end
always @(*)
begin
	if (5'd26>11)
		shifted[26-11] = toshift[26];	
	else if(5'd26<11)
		shifted[26+31-11] = toshift[26];
	else
		shifted[0] = toshift[26];
end
always @(*)
begin
	if (5'd25>11)
		shifted[25-11] = toshift[25];	
	else if(5'd25<11)
		shifted[25+31-11] = toshift[25];
	else
		shifted[0] = toshift[25];
end
always @(*)
begin
	if (5'd24>11)
		shifted[24-11] = toshift[24];	
	else if(5'd24<11)
		shifted[24+31-11] = toshift[24];
	else
		shifted[0] = toshift[24];
end
always @(*)
begin
	if (5'd23>11)
		shifted[23-11] = toshift[23];	
	else if(5'd23<11)
		shifted[23+31-11] = toshift[23];
	else
		shifted[0] = toshift[23];
end
always @(*)
begin
	if (5'd22>11)
		shifted[22-11] = toshift[22];	
	else if(5'd22<11)
		shifted[22+31-11] = toshift[22];
	else
		shifted[0] = toshift[22];
end
always @(*)
begin
	if (5'd21>11)
		shifted[21-11] = toshift[21];	
	else if(5'd21<11)
		shifted[21+31-11] = toshift[21];
	else
		shifted[0] = toshift[21];
end
always @(*)
begin
	if (5'd20>11)
		shifted[20-11] = toshift[20];	
	else if(5'd20<11)
		shifted[20+31-11] = toshift[20];
	else
		shifted[0] = toshift[20];
end
always @(*)
begin
	if (5'd19>11)
		shifted[19-11] = toshift[19];	
	else if(5'd19<11)
		shifted[19+31-11] = toshift[19];
	else
		shifted[0] = toshift[19];
end
always @(*)
begin
	if (5'd18>11)
		shifted[18-11] = toshift[18];	
	else if(5'd18<11)
		shifted[18+31-11] = toshift[18];
	else
		shifted[0] = toshift[18];
end
always @(*)
begin
	if (5'd17>11)
		shifted[17-11] = toshift[17];	
	else if(5'd17<11)
		shifted[17+31-11] = toshift[17];
	else
		shifted[0] = toshift[17];
end
always @(*)
begin
	if (5'd16>11)
		shifted[16-11] = toshift[16];	
	else if(5'd16<11)
		shifted[16+31-11] = toshift[16];
	else
		shifted[0] = toshift[16];
end
always @(*)
begin
	if (5'd15>11)
		shifted[15-11] = toshift[15];	
	else if(5'd15<11)
		shifted[15+31-11] = toshift[15];
	else
		shifted[0] = toshift[15];
end
always @(*)
begin
	if (5'd14>11)
		shifted[14-11] = toshift[14];	
	else if(5'd14<11)
		shifted[14+31-11] = toshift[14];
	else
		shifted[0] = toshift[14];
end
always @(*)
begin
	if (5'd13>11)
		shifted[13-11] = toshift[13];	
	else if(5'd13<11)
		shifted[13+31-11] = toshift[13];
	else
		shifted[0] = toshift[13];
end
always @(*)
begin
	if (5'd12>11)
		shifted[12-11] = toshift[12];	
	else if(5'd12<11)
		shifted[12+31-11] = toshift[12];
	else
		shifted[0] = toshift[12];
end
always @(*)
begin
	if (5'd11>11)
		shifted[11-11] = toshift[11];	
	else if(5'd11<11)
		shifted[11+31-11] = toshift[11];
	else
		shifted[0] = toshift[11];
end
always @(*)
begin
	if (5'd10>11)
		shifted[10-11] = toshift[10];	
	else if(5'd10<11)
		shifted[10+31-11] = toshift[10];
	else
		shifted[0] = toshift[10];
end
always @(*)
begin
	if (5'd9>11)
		shifted[9-11] = toshift[9];	
	else if(5'd9<11)
		shifted[9+31-11] = toshift[9];
	else
		shifted[0] = toshift[9];
end
always @(*)
begin
	if (5'd8>11)
		shifted[8-11] = toshift[8];	
	else if(5'd8<11)
		shifted[8+31-11] = toshift[8];
	else
		shifted[0] = toshift[8];
end
always @(*)
begin
	if (5'd7>11)
		shifted[7-11] = toshift[7];	
	else if(5'd7<11)
		shifted[7+31-11] = toshift[7];
	else
		shifted[0] = toshift[7];
end
always @(*)
begin
	if (5'd6>11)
		shifted[6-11] = toshift[6];	
	else if(5'd6<11)
		shifted[6+31-11] = toshift[6];
	else
		shifted[0] = toshift[6];
end
always @(*)
begin
	if (5'd5>11)
		shifted[5-11] = toshift[5];	
	else if(5'd5<11)
		shifted[5+31-11] = toshift[5];
	else
		shifted[0] = toshift[5];
end
always @(*)
begin
	if (5'd4>11)
		shifted[4-11] = toshift[4];	
	else if(5'd4<11)
		shifted[4+31-11] = toshift[4];
	else
		shifted[0] = toshift[4];
end
always @(*)
begin
	if (5'd3>11)
		shifted[3-11] = toshift[3];	
	else if(5'd3<11)
		shifted[3+31-11] = toshift[3];
	else
		shifted[0] = toshift[3];
end
always @(*)
begin
	if (5'd2>11)
		shifted[2-11] = toshift[2];	
	else if(5'd2<11)
		shifted[2+31-11] = toshift[2];
	else
		shifted[0] = toshift[2];
end
always @(*)
begin
	if (5'd1>11)
		shifted[1-11] = toshift[1];	
	else if(5'd1<11)
		shifted[1+31-11] = toshift[1];
	else
		shifted[0] = toshift[1];
end
always @(*)
begin
	if (5'd0>11)
		shifted[0-11] = toshift[0];	
	else if(5'd0<11)
		shifted[0+31-11] = toshift[0];
	else
		shifted[0] = toshift[0];
end*/

endmodule
