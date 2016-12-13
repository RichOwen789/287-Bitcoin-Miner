module Miner(difficulty,place,sevseg,st, val,clk,rst);
input clk,rst,st;
input [9:0]place;
input [2:0]difficulty;
//output[255:0]out;
output [6:0]sevseg;
output val;
parameter ST = 4'b0000;
parameter MR1 = 4'b1000;
parameter MR2 = 4'b1001;
parameter MR3 = 4'b1010;
parameter AS = 4'b0001;
parameter CM = 4'b0010;
parameter IN = 4'b0011;
parameter HO = 4'b0100;
parameter MI1 = 4'b0101;
parameter MI2 = 4'b0110;
reg [3:0]sevout;
//parameter MI3 = 4'b0111;
reg val;
reg [3:0]S;
reg [3:0]NS;
reg [255:0]prevblock;
wire [255:0]merkelroot;
wire [6:0]sevseg;
wire pulse;
reg [255:0]trans1;
reg [255:0]trans2;
reg [255:0]trans3;
reg [255:0]trans4;
reg [255:0]trans5;
reg [255:0]trans6;
reg [255:0]trans7;
reg [255:0]trans8;
reg [31:0]version;
reg [31:0]timestamp;
reg [31:0]nonce;
reg [31:0]diff;
reg [255:0]difflong;
reg [255:0]out;
wire [255:0]mrk12;
wire [255:0]mrk34;
wire [255:0]mrk56;
wire [255:0]mrk78;
wire [255:0]mrk1234;
wire [255:0]mrk5678;
reg [1023:0]longform;
reg [511:0]sha1in;
reg [511:0]sha2in;
reg [511:0]sha3in;
reg [511:0]sha4in;
reg [511:0]sha5in;
reg [511:0]sha6in;
reg [511:0]sha7in;
reg [511:0]sha8in;
reg [511:0]sha9in;
wire [255:0]finalsha1;
wire [255:0]finalsha2;
reg [255:0]finalsha1b;
reg [255:0]finalsha2b;
wire [255:0]prerev;
wire [255:0]possmined;
//reg [127:0]lcd0;
//reg [127:0]lcd1;
//reg LCD_RS,LCD_E,LCD_RW;
//reg [7:0}DATA_BUS;\
//reg [511:0]lcdlong;
//reg [255:0]possminedb;
//wire [255:0]hold;
SHA256 sha1(sha1in,mrk12);
SHA256 sha2(sha2in,mrk34);
SHA256 sha3(sha3in,mrk56);
SHA256 sha4(sha4in,mrk78);
SHA256 sha5(sha5in,mrk1234);
SHA256 sha6(sha6in,mrk5678);
SHA256 sha7(sha7in,merkelroot);
SHA256 sha8(sha8in,finalsha1);
SHA256 sha9(sha9in,finalsha2);
SHA256 sha10({finalsha1b,finalsha2b},prerev);
rev256 rev(prerev,possmined);
sevsegment display(sevout[3], sevout[2], sevout[1], sevout[0],sevseg);
Pulser pulsy(clk,pulse);
//LCD_Display lcdd(clk, rst, lcd1, lcd0, 
//    LCD_RS,LCD_E,LCD_RW,DATA_BUS);
always@(posedge pulse or negedge rst)
begin
	if(rst == 1'b0)
	begin
		S<=ST;
	end
	else
	begin
		S<=NS;
	end
end
always@(*)
begin
	case(S)
		ST:
		begin
			if (st==1'b0)
			begin
				NS=MR1;
			end
			else
			NS=ST;
		end
		MR1:
		begin
			NS=MR2;
		end
		MR2:
		begin
			NS=MR3;
		end
		MR3:
		begin
			NS=AS;
		end
		AS:
		begin
			NS=MI1;
		end
		MI1:
		begin
			NS = MI2;
		end
		MI2:
		begin
			NS = CM;
		end
		/*MI3:
		begin
			NS = CM;
		end*/
		CM:
		begin
			if(possmined<difflong)
			begin
				NS=HO;
			end
			else
			begin
				NS=IN;
			end
		end
		IN:
		begin
			NS=AS;
		end
		HO:
		begin
			NS=HO;
		end
		endcase
end
always@(posedge pulse or negedge rst)
begin
	case(S)
		ST:
		begin
			prevblock <= 256'h000000000000000000fc6ee494a6cc0b9c6a72ad53ad1ffccbd352536efd00af;
			version <= 32'h02000000;
			timestamp <= 32'h5840905C;
			nonce <= 32'h00000000;
			diff <= 32'h1b0404cb;
			case (difficulty)
				3'b000: difflong <= 256'h00000000000404CB000000000000000000000000000000000000000000000000;
				3'b001: difflong <= 256'h0000000000404CB0000000000000000000000000000000000000000000000000;
				3'b010: difflong <= 256'h000000000404CB00000000000000000000000000000000000000000000000000;
				3'b011: difflong <= 256'h00000000404CB000000000000000000000000000000000000000000000000000;
				3'b100: difflong <= 256'h0000000404CB0000000000000000000000000000000000000000000000000000;
				3'b101: difflong <= 256'h000000404CB00000000000000000000000000000000000000000000000000000;
				3'b110: difflong <= 256'h00000404CB000000000000000000000000000000000000000000000000000000;
				3'b111: difflong <= 256'h0404CB0000000000000000000000000000000000000000000000000000000000;
			endcase
			trans1 <= 256'h9d2f2443a5e77aca4814f5f23280dc3c470d8c503ee719a8ff671bd5a12346f5;
			trans2 <= 256'h8126ab1e370c54303c02581ce815d8d5a201b688e8d96dc5db4bfbacf16c2b80;
			trans3 <= 256'hc5f383710f4e6d4ad29ac7bece8dcb0ba98486c6f2fd7fe75bd9ad8531849b03;
			trans4 <= 256'h6803997897a78d431e03a85e6fda641e1715880499738f0d217837aabd0d274b;
			trans5 <= 256'h5d4d7f5bb6ab45164f422406e71e9081b139b0f7170a1a3304cce90efa925134;
			trans6 <= 256'h849989c50246d4e4aa0d92c4149acca956d6e2a3f9845867706c8cab78c6fd6a;
			trans7 <= 256'h4a53ab1551fff749f884342730ba42c6df1a065f357539ef1010666e39303f59;
			trans8 <= 256'h399948576a180cfa52965374b40028724fd763fd6d23f653c1668016c96c79d4;
			out<= 256'b0;
			val<=1'b0;
			sevout <= 4'hA;
			
		end
		MR1:
		begin
			sha1in<={trans1,trans2};
			sha2in<={trans3,trans4};
			sha3in<={trans5,trans6};
			sha1in<={trans7,trans8};
			sevout <= 1'hB;
			
		end
		MR2:
		begin
			sha5in<={mrk12,mrk34};
			sha6in<={mrk56,mrk78};
		end
		MR3:
		begin
			sha7in<={mrk1234,mrk5678};
		end
		AS:
		begin
			longform <={version,prevblock,merkelroot,timestamp,diff,nonce,1'b1,319'd0,64'd80};
			sevout<=4'hC;
		end
		MI1:
		begin
			sha8in<=longform[1023:512];
			sha9in<=longform[511:0];
		end
		MI2:
		begin
			finalsha1b<=finalsha1;
			finalsha2b<=finalsha2;
			
		end
		IN:
		begin
			if(nonce==32'hffffffff)
			begin
				timestamp<=timestamp+1'b1;
				nonce<=32'd0;
			end
			else
			begin
				nonce<=nonce+1'b1;
			end
		end
		HO:
		begin
			out<=possmined;
			val<=1'b1;
			case(place)
				32'd0: sevout<=possmined[255:252]; 
				32'd1: sevout<=possmined[251:248];                                                                                                                                                                                                                      
				32'd2: sevout<=possmined[247:244];                                                                                                                                                                                                                      
				32'd3: sevout<=possmined[243:240];                                                                                                                                                                                                                      
				32'd4: sevout<=possmined[239:236];                                                                                                                                                                                                                      
				32'd5: sevout<=possmined[235:232];                                                                                                                                                                                                                      
				32'd6: sevout<=possmined[231:228];                                                                                                                                                                                                                      
				32'd7: sevout<=possmined[227:224];                                                                                                                                                                                                                      
				32'd8: sevout<=possmined[223:220];                                                                                                                                                                                                                      
				32'd9: sevout<=possmined[219:216];                                                                                                                                                                                                                      
				32'd10: sevout<=possmined[215:212];                                                                                                                                                                                                                     
				32'd11: sevout<=possmined[211:208];                                                                                                                                                                                                                     
				32'd12: sevout<=possmined[207:204];                                                                                                                                                                                                                     
				32'd13: sevout<=possmined[203:200];                                                                                                                                                                                                                     
				32'd14: sevout<=possmined[199:196];                                                                                                                                                                                                                     
				32'd15: sevout<=possmined[195:192];                                                                                                                                                                                                                     
				32'd16: sevout<=possmined[191:188];                                                                                                                                                                                                                     
				32'd17: sevout<=possmined[187:184];                                                                                                                                                                                                                     
				32'd18: sevout<=possmined[183:180];                                                                                                                                                                                                                     
				32'd19: sevout<=possmined[179:176];
				32'd20: sevout<=possmined[175:172];                                                                                                                                                                                                                     
				32'd21: sevout<=possmined[171:168];                                                                                                                                                                                                                     
				32'd22: sevout<=possmined[167:164];                                                                                                                                                                                                                     
				32'd23: sevout<=possmined[163:160];                                                                                                                                                                                                                     
				32'd24: sevout<=possmined[159:156];                                                                                                                                                                                                                     
				32'd25: sevout<=possmined[155:152];                                                                                                                                                                                                                     
				32'd26: sevout<=possmined[151:148];                                                                                                                                                                                                                     
				32'd27: sevout<=possmined[147:144];                                                                                                                                                                                                                     
				32'd28: sevout<=possmined[143:140];                                                                                                                                                                                                                     
				32'd29: sevout<=possmined[139:136];                                                                                                                                                                                                                     
				32'd30: sevout<=possmined[135:132];                                                                                                                                                                                                                     
				32'd31: sevout<=possmined[131:128];                                                                                                                                                                                                                     
				32'd32: sevout<=possmined[127:124];                                                                                                                                                                                                                     
				32'd33: sevout<=possmined[123:120];                                                                                                                                                                                                                     
				32'd34: sevout<=possmined[119:116];                                                                                                                                                                                                                     
				32'd35: sevout<=possmined[115:112];                                                                                                                                                                                                                     
				32'd36: sevout<=possmined[111:108];                                                                                                                                                                                                                     
				32'd37: sevout<=possmined[107:104];                                                                                                                                                                                                                     
				32'd38: sevout<=possmined[103:100];                                                                                                                                                                                                                     
				32'd39: sevout<=possmined[99:96];                                                                                                                                                                                                                       
				32'd40: sevout<=possmined[95:92];                                                                                                                                                                                                                       
				32'd41: sevout<=possmined[91:88];                                                                                                                                                                                                                       
				32'd42: sevout<=possmined[87:84];                                                                                                                                                                                                                       
				32'd43: sevout<=possmined[83:80];                                                                                                                                                                                                                       
				32'd44: sevout<=possmined[79:76];                                                                                                                                                                                                                       
				32'd45: sevout<=possmined[75:72];                                                                                                                                                                                                                       
				32'd46: sevout<=possmined[71:68];                                                                                                                                                                                                                       
				32'd47: sevout<=possmined[67:64];                                                                                                                                                                                                                       
				32'd48: sevout<=possmined[63:60];                                                                                                                                                                                                                       
				32'd49: sevout<=possmined[59:56];                                                                                                                                                                                                                       
				32'd50: sevout<=possmined[55:52];                                                                                                                                                                                                                       
				32'd51: sevout<=possmined[51:48];                                                                                                                                                                                                                       
				32'd52: sevout<=possmined[47:44];                                                                                                                                                                                                                       
				32'd53: sevout<=possmined[43:40];                                                                                                                                                                                                                       
				32'd54: sevout<=possmined[39:36];                                                                                                                                                                                                                       
				32'd55: sevout<=possmined[35:32];                                                                                                                                                                                                                       
				32'd56: sevout<=possmined[31:28];                                                                                                                                                                                                                       
				32'd57: sevout<=possmined[27:24];                                                                                                                                                                                                                       
				32'd58: sevout<=possmined[23:20];                                                                                                                                                                                                                       
				32'd59: sevout<=possmined[19:16];                                                                                                                                                                                                                       
				32'd60: sevout<=possmined[15:12];                                                                                                                                                                                                                       
				32'd61: sevout<=possmined[11:8];                                                                                                                                                                                                                        
				32'd62: sevout<=possmined[7:4];                                                                                                                                                                                                                         
				32'd63: sevout<=possmined[3:0];
				default: sevout<=4'h0;
				endcase
		end
		endcase
end
endmodule
