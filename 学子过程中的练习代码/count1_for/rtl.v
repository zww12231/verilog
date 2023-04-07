module count1_for(
    input [7:0] a,
    output reg [3:0] count,
    input clk );
    integer i;
    //reg [7:0] rega;
    always @(posedge clk) begin
        count=0;
        //rega =a;
        for(i=0;i<=7;i=i+1) begin
            if (a[i]==1) count=count+1;
            else  count <=count;
        end
    end
endmodule
