module adder#(parameter fcw=16'd10000)(  //参数为16位大小 默认参数（10000）
   sum,
       clk,
       rst
       );
      
       output [15:0] sum;   //输出地址
       input         clk;
       input         rst;
   reg [15:0] sum;      //初值  
       always @(posedge clk)//正沿触发
         begin
              if(!rst)            //复位0有效
                 sum<=16'd0;
               else
                 sum<=sum+fcw; //求和
              end
            
endmodule 