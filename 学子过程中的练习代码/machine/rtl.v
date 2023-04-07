/*
clk:时钟输入
reset：系统复位信号
half_dollar:1 代表投入5角硬币
one_dollar:1 代表投入1元硬币
half_out:1 代表售货机找回一枚5角硬币信号
dispense：1 代表机器售出一瓶饮料
collect:1 提示投币者取走饮料信号

   Collect half_out  dispense
       |       |        |
       |       |        |
     +---------------------+
     |                     |
clk  |       machine       |
------>      _______       |
     |                     |
     +---------------------+
       |       |        |
       |       |        |
   reset  one_dollar  half_dollar
	  
*/
