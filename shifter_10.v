module shifter_10(toshift, shifted);

input [31:0]toshift;
output [31:0]shifted;
//reg [31:0]shifted;
assign shifted[22] = toshift[0];                                                                                                                                                                                                                        
assign shifted[23] = toshift[1];                                                                                                                                                                                                                        
assign shifted[24] = toshift[2];                                                                                                                                                                                                                        
assign shifted[25] = toshift[3];                                                                                                                                                                                                                        
assign shifted[26] = toshift[4];                                                                                                                                                                                                                        
assign shifted[27] = toshift[5];                                                                                                                                                                                                                        
assign shifted[28] = toshift[6];                                                                                                                                                                                                                        
assign shifted[29] = toshift[7];                                                                                                                                                                                                                        
assign shifted[30] = toshift[8];                                                                                                                                                                                                                        
assign shifted[31] = toshift[9];                                                                                                                                                                                                                        
assign shifted[0] = toshift[10];                                                                                                                                                                                                                        
assign shifted[1] = toshift[11];                                                                                                                                                                                                                        
assign shifted[2] = toshift[12];                                                                                                                                                                                                                        
assign shifted[3] = toshift[13];                                                                                                                                                                                                                        
assign shifted[4] = toshift[14];                                                                                                                                                                                                                        
assign shifted[5] = toshift[15];                                                                                                                                                                                                                        
assign shifted[6] = toshift[16];                                                                                                                                                                                                                        
assign shifted[7] = toshift[17];                                                                                                                                                                                                                        
assign shifted[8] = toshift[18];                                                                                                                                                                                                                        
assign shifted[9] = toshift[19];                                                                                                                                                                                                                        
assign shifted[10] = toshift[20];                                                                                                                                                                                                                       
assign shifted[11] = toshift[21];                                                                                                                                                                                                                       
assign shifted[12] = toshift[22];                                                                                                                                                                                                                       
assign shifted[13] = toshift[23];                                                                                                                                                                                                                       
assign shifted[14] = toshift[24];                                                                                                                                                                                                                       
assign shifted[15] = toshift[25];                                                                                                                                                                                                                       
assign shifted[16] = toshift[26];                                                                                                                                                                                                                       
assign shifted[17] = toshift[27];                                                                                                                                                                                                                       
assign shifted[18] = toshift[28];                                                                                                                                                                                                                       
assign shifted[19] = toshift[29];                                                                                                                                                                                                                       
assign shifted[20] = toshift[30];                                                                                                                                                                                                                       
assign shifted[21] = toshift[31];

/*always @(*)
begin
	if (5'd31>10)
		shifted[31-10] = toshift[31];	
	else if(5'd31<10)
		shifted[31+31-10] = toshift[31];
	else
		shifted[0] = toshift[31];
end
always @(*)
begin
	if (5'd30>10)
		shifted[30-10] = toshift[30];	
	else if(5'd30<10)
		shifted[30+31-10] = toshift[30];
	else
		shifted[0] = toshift[30];
end
always @(*)
begin
	if (5'd29>10)
		shifted[29-10] = toshift[29];	
	else if(5'd29<10)
		shifted[29+31-10] = toshift[29];
	else
		shifted[0] = toshift[29];
end
always @(*)
begin
	if (5'd28>10)
		shifted[28-10] = toshift[28];	
	else if(5'd28<10)
		shifted[28+31-10] = toshift[28];
	else
		shifted[0] = toshift[28];
end
always @(*)
begin
	if (5'd27>10)
		shifted[27-10] = toshift[27];	
	else if(5'd27<10)
		shifted[27+31-10] = toshift[27];
	else
		shifted[0] = toshift[27];
end
always @(*)
begin
	if (5'd26>10)
		shifted[26-10] = toshift[26];	
	else if(5'd26<10)
		shifted[26+31-10] = toshift[26];
	else
		shifted[0] = toshift[26];
end
always @(*)
begin
	if (5'd25>10)
		shifted[25-10] = toshift[25];	
	else if(5'd25<10)
		shifted[25+31-10] = toshift[25];
	else
		shifted[0] = toshift[25];
end
always @(*)
begin
	if (5'd24>10)
		shifted[24-10] = toshift[24];	
	else if(5'd24<10)
		shifted[24+31-10] = toshift[24];
	else
		shifted[0] = toshift[24];
end
always @(*)
begin
	if (5'd23>10)
		shifted[23-10] = toshift[23];	
	else if(5'd23<10)
		shifted[23+31-10] = toshift[23];
	else
		shifted[0] = toshift[23];
end
always @(*)
begin
	if (5'd22>10)
		shifted[22-10] = toshift[22];	
	else if(5'd22<10)
		shifted[22+31-10] = toshift[22];
	else
		shifted[0] = toshift[22];
end
always @(*)
begin
	if (5'd21>10)
		shifted[21-10] = toshift[21];	
	else if(5'd21<10)
		shifted[21+31-10] = toshift[21];
	else
		shifted[0] = toshift[21];
end
always @(*)
begin
	if (5'd20>10)
		shifted[20-10] = toshift[20];	
	else if(5'd20<10)
		shifted[20+31-10] = toshift[20];
	else
		shifted[0] = toshift[20];
end
always @(*)
begin
	if (5'd19>10)
		shifted[19-10] = toshift[19];	
	else if(5'd19<10)
		shifted[19+31-10] = toshift[19];
	else
		shifted[0] = toshift[19];
end
always @(*)
begin
	if (5'd18>10)
		shifted[18-10] = toshift[18];	
	else if(5'd18<10)
		shifted[18+31-10] = toshift[18];
	else
		shifted[0] = toshift[18];
end
always @(*)
begin
	if (5'd17>10)
		shifted[17-10] = toshift[17];	
	else if(5'd17<10)
		shifted[17+31-10] = toshift[17];
	else
		shifted[0] = toshift[17];
end
always @(*)
begin
	if (5'd16>10)
		shifted[16-10] = toshift[16];	
	else if(5'd16<10)
		shifted[16+31-10] = toshift[16];
	else
		shifted[0] = toshift[16];
end
always @(*)
begin
	if (5'd15>10)
		shifted[15-10] = toshift[15];	
	else if(5'd15<10)
		shifted[15+31-10] = toshift[15];
	else
		shifted[0] = toshift[15];
end
always @(*)
begin
	if (5'd14>10)
		shifted[14-10] = toshift[14];	
	else if(5'd14<10)
		shifted[14+31-10] = toshift[14];
	else
		shifted[0] = toshift[14];
end
always @(*)
begin
	if (5'd13>10)
		shifted[13-10] = toshift[13];	
	else if(5'd13<10)
		shifted[13+31-10] = toshift[13];
	else
		shifted[0] = toshift[13];
end
always @(*)
begin
	if (5'd12>10)
		shifted[12-10] = toshift[110];	
	else if(5'd12<10)
		shifted[12+31-10] = toshift[12];
	else
		shifted[0] = toshift[12];
end
always @(*)
begin
	if (5'd11>10)
		shifted[11-10] = toshift[11];	
	else if(5'd11<10)
		shifted[11+31-10] = toshift[11];
	else
		shifted[0] = toshift[11];
end
always @(*)
begin
	if (5'd10>10)
		shifted[10-10] = toshift[10];	
	else if(5'd10<10)
		shifted[10+31-10] = toshift[10];
	else
		shifted[0] = toshift[10];
end
always @(*)
begin
	if (5'd9>10)
		shifted[9-10] = toshift[9];	
	else if(5'd9<10)
		shifted[9+31-10] = toshift[9];
	else
		shifted[0] = toshift[9];
end
always @(*)
begin
	if (5'd8>10)
		shifted[8-10] = toshift[8];	
	else if(5'd8<10)
		shifted[8+31-10] = toshift[8];
	else
		shifted[0] = toshift[8];
end
always @(*)
begin
	if (5'd7>10)
		shifted[7-10] = toshift[7];	
	else if(5'd7<10)
		shifted[7+31-10] = toshift[7];
	else
		shifted[0] = toshift[7];
end
always @(*)
begin
	if (5'd6>10)
		shifted[6-10] = toshift[6];	
	else if(5'd6<10)
		shifted[6+31-10] = toshift[6];
	else
		shifted[0] = toshift[6];
end
always @(*)
begin
	if (5'd5>10)
		shifted[5-10] = toshift[5];	
	else if(5'd5<10)
		shifted[5+31-10] = toshift[5];
	else
		shifted[0] = toshift[5];
end
always @(*)
begin
	if (5'd4>10)
		shifted[4-10] = toshift[4];	
	else if(5'd4<10)
		shifted[4+31-10] = toshift[4];
	else
		shifted[0] = toshift[4];
end
always @(*)
begin
	if (5'd3>10)
		shifted[3-10] = toshift[3];	
	else if(5'd3<10)
		shifted[3+31-10] = toshift[3];
	else
		shifted[0] = toshift[3];
end
always @(*)
begin
	if (5'd2>10)
		shifted[2-10] = toshift[10];	
	else if(5'd2<10)
		shifted[2+31-10] = toshift[2];
	else
		shifted[0] = toshift[2];
end
always @(*)
begin
	if (5'd1>10)
		shifted[1-10] = toshift[1];	
	else if(5'd1<10)
		shifted[1+31-10] = toshift[1];
	else
		shifted[0] = toshift[1];
end
always @(*)
begin
	if (5'd0>10)
		shifted[0-10] = toshift[0];	
	else if(5'd0<10)
		shifted[0+31-10] = toshift[0];
	else
		shifted[0] = toshift[0];
end*/

endmodule