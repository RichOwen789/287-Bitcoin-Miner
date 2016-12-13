module majority(a,b,c,out);
input [31:0]a;
input [31:0]b;
input [31:0]c;
output [31:0]out;
//reg [31:0]out;
assign out[0] = (a[0]&b[0])|(a[0]&c[0])|(c[0]&b[0]);                                                                                                                                                                                                    
assign out[1] = (a[1]&b[1])|(a[1]&c[1])|(c[1]&b[1]);                                                                                                                                                                                                    
assign out[2] = (a[2]&b[2])|(a[2]&c[2])|(c[2]&b[2]);                                                                                                                                                                                                    
assign out[3] = (a[3]&b[3])|(a[3]&c[3])|(c[3]&b[3]);                                                                                                                                                                                                    
assign out[4] = (a[4]&b[4])|(a[4]&c[4])|(c[4]&b[4]);                                                                                                                                                                                                    
assign out[5] = (a[5]&b[5])|(a[5]&c[5])|(c[5]&b[5]);                                                                                                                                                                                                    
assign out[6] = (a[6]&b[6])|(a[6]&c[6])|(c[6]&b[6]);                                                                                                                                                                                                    
assign out[7] = (a[7]&b[7])|(a[7]&c[7])|(c[7]&b[7]);                                                                                                                                                                                                    
assign out[8] = (a[8]&b[8])|(a[8]&c[8])|(c[8]&b[8]);                                                                                                                                                                                                    
assign out[9] = (a[9]&b[9])|(a[9]&c[9])|(c[9]&b[9]);                                                                                                                                                                                                    
assign out[10] = (a[10]&b[10])|(a[10]&c[10])|(c[10]&b[10]);                                                                                                                                                                                             
assign out[11] = (a[11]&b[11])|(a[11]&c[11])|(c[11]&b[11]);                                                                                                                                                                                             
assign out[12] = (a[12]&b[12])|(a[12]&c[12])|(c[12]&b[12]);                                                                                                                                                                                             
assign out[13] = (a[13]&b[13])|(a[13]&c[13])|(c[13]&b[13]);                                                                                                                                                                                             
assign out[14] = (a[14]&b[14])|(a[14]&c[14])|(c[14]&b[14]);                                                                                                                                                                                             
assign out[15] = (a[15]&b[15])|(a[15]&c[15])|(c[15]&b[15]);                                                                                                                                                                                             
assign out[16] = (a[16]&b[16])|(a[16]&c[16])|(c[16]&b[16]);                                                                                                                                                                                             
assign out[17] = (a[17]&b[17])|(a[17]&c[17])|(c[17]&b[17]);                                                                                                                                                                                             
assign out[18] = (a[18]&b[18])|(a[18]&c[18])|(c[18]&b[18]);                                                                                                                                                                                             
assign out[19] = (a[19]&b[19])|(a[19]&c[19])|(c[19]&b[19]);                                                                                                                                                                                             
assign out[20] = (a[20]&b[20])|(a[20]&c[20])|(c[20]&b[20]);                                                                                                                                                                                             
assign out[21] = (a[21]&b[21])|(a[21]&c[21])|(c[21]&b[21]);                                                                                                                                                                                             
assign out[22] = (a[22]&b[22])|(a[22]&c[22])|(c[22]&b[22]);                                                                                                                                                                                             
assign out[23] = (a[23]&b[23])|(a[23]&c[23])|(c[23]&b[23]);                                                                                                                                                                                             
assign out[24] = (a[24]&b[24])|(a[24]&c[24])|(c[24]&b[24]);                                                                                                                                                                                             
assign out[25] = (a[25]&b[25])|(a[25]&c[25])|(c[25]&b[25]);                                                                                                                                                                                             
assign out[26] = (a[26]&b[26])|(a[26]&c[26])|(c[26]&b[26]);                                                                                                                                                                                             
assign out[27] = (a[27]&b[27])|(a[27]&c[27])|(c[27]&b[27]);                                                                                                                                                                                             
assign out[28] = (a[28]&b[28])|(a[28]&c[28])|(c[28]&b[28]);                                                                                                                                                                                             
assign out[29] = (a[29]&b[29])|(a[29]&c[29])|(c[29]&b[29]);                                                                                                                                                                                             
assign out[30] = (a[30]&b[30])|(a[30]&c[30])|(c[30]&b[30]);                                                                                                                                                                                             
assign out[31] = (a[31]&b[31])|(a[31]&c[31])|(c[31]&b[31]);
/*always@(*)
begin
	if({1'b0,a[31]}+b[31]+c[31]>2'd1)
		out[31]=1'b1;
	else
		out[31]=1'b0;
end
always@(*)
begin
	if(a[30]+b[30]+c[30]>2'd1)
		out[30]=1'b1;
	else
		out[30]=1'b0;
end
always@(*)
begin
	if(a[29]+b[29]+c[29]>2'd1)
		out[31]=1'b1;
	else
		out[29]=1'b0;
end
always@(*)
begin
	if(a[28]+b[28]+c[28]>2'd1)
		out[28]=1'b1;
	else
		out[28]=1'b0;
end
always@(*)
begin
	if(a[27]+b[27]+c[27]>2'd1)
		out[27]=1'b1;
	else
		out[27]=1'b0;
end
always@(*)
begin
	if(a[26]+b[26]+c[26]>2'd1)
		out[26]=1'b1;
	else
		out[26]=1'b0;
end
always@(*)
begin
	if(a[25]+b[25]+c[25]>2'd1)
		out[25]=1'b1;
	else
		out[25]=1'b0;
end
always@(*)
begin
	if(a[24]+b[24]+c[24]>2'd1)
		out[24]=1'b1;
	else
		out[24]=1'b0;
end
always@(*)
begin
	if(a[23]+b[23]+c[23]>2'd1)
		out[23]=1'b1;
	else
		out[23]=1'b0;
end
always@(*)
begin
	if(a[22]+b[31]+c[22]>2'd1)
		out[22]=1'b1;
	else
		out[22]=1'b0;
end
always@(*)
begin
	if(a[21]+b[21]+c[21]>2'd1)
		out[21]=1'b1;
	else
		out[21]=1'b0;
end
always@(*)
begin
	if(a[20]+b[20]+c[20]>2'd1)
		out[20]=1'b1;
	else
		out[20]=1'b0;
end
always@(*)
begin
	if(a[19]+b[19]+c[19]>2'd1)
		out[19]=1'b1;
	else
		out[19]=1'b0;
end
always@(*)
begin
	if(a[18]+b[18]+c[18]>2'd1)
		out[18]=1'b1;
	else
		out[18]=1'b0;
end
always@(*)
begin
	if(a[17]+b[17]+c[17]>2'd1)
		out[17]=1'b1;
	else
		out[17]=1'b0;
end
always@(*)
begin
	if(a[16]+b[16]+c[16]>2'd1)
		out[16]=1'b1;
	else
		out[16]=1'b0;
end
always@(*)
begin
	if(a[15]+b[15]+c[15]>2'd1)
		out[15]=1'b1;
	else
		out[15]=1'b0;
end
always@(*)
begin
	if(a[14]+b[14]+c[14]>2'd1)
		out[14]=1'b1;
	else
		out[14]=1'b0;
end
always@(*)
begin
	if(a[13]+b[13]+c[13]>2'd1)
		out[13]=1'b1;
	else
		out[13]=1'b0;
end
always@(*)
begin
	if(a[12]+b[12]+c[12]>2'd1)
		out[12]=1'b1;
	else
		out[12]=1'b0;
end
always@(*)
begin
	if(a[11]+b[11]+c[11]>2'd1)
		out[11]=1'b1;
	else
		out[11]=1'b0;
end
always@(*)
begin
	if(a[10]+b[10]+c[10]>2'd1)
		out[10]=1'b1;
	else
		out[10]=1'b0;
end
always@(*)
begin
	if(a[9]+b[9]+c[9]>2'd1)
		out[9]=1'b1;
	else
		out[9]=1'b0;
end
always@(*)
begin
	if(a[8]+b[8]+c[8]>2'd1)
		out[8]=1'b1;
	else
		out[8]=1'b0;
end
always@(*)
begin
	if(a[7]+b[7]+c[7]>2'd1)
		out[7]=1'b1;
	else
		out[7]=1'b0;
end
always@(*)
begin
	if(a[6]+b[6]+c[6]>2'd1)
		out[6]=1'b1;
	else
		out[6]=1'b0;
end
always@(*)
begin
	if(a[5]+b[5]+c[5]>2'd1)
		out[5]=1'b1;
	else
		out[5]=1'b0;
end
always@(*)
begin
	if(a[4]+b[4]+c[4]>2'd1)
		out[4]=1'b1;
	else
		out[4]=1'b0;
end
always@(*)
begin
	if(a[3]+b[3]+c[3]>2'd1)
		out[3]=1'b1;
	else
		out[3]=1'b0;
end
always@(*)
begin
	if(a[2]+b[2]+c[2]>2'd1)
		out[2]=1'b1;
	else
		out[2]=1'b0;
end
always@(*)
begin
	if(a[1]+b[1]+c[1]>2'd1)
		out[1]=1'b1;
	else
		out[1]=1'b0;
end
always@(*)
begin
	if(a[0]+b[0]+c[0]>2'd1)
		out[0]=1'b1;
	else
		out[0]=1'b0;
end*/
endmodule
