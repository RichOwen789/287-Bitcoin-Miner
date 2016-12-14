#include <stdio.h>


int main()

{

    int i;

    for(i=1;i<64;i++)

    {

           printf("wire [31:0]a%d;\nwire [31:0]b%d;\nwire [31:0]c%d;\nwire [31:0]d%d;\nwire [31:0]e%d;\nwire [31:0]f%d;\nwire [31:0]g%d;\nwire [31:0]h%d;\nSHA256Node node%d(a%d,b%d,c%d,d%d,e%d,f%d,g%d,h%d,a%d,b%d,c%d,d%d,e%d,f%d,g%d,h%d,k%d,w%d);\n",i,i,i,i,i,i,i,i,i,i-1,i-1,i-1,i-1,i-1,i-1,i-1,i-1,i,i,i,i,i,i,i,i,i,i);
 
   }



    return 0;

}

