module count1_for_tb;
    reg [7:0]   a;
    wire [3:0]  count;
    reg clk;
    integer i;
    initial begin
        clk=0;
        a=8'b0;
    end

    always #2 clk=~clk;

    always@(posedge clk) begin
        for(i=0;i<=7;i=i+1) begin
            a[i]={$random}%2;
        end
    end
    
    count1_for inst(.a(a),.clk(clk),.count(count));
    initial #100 $finish;
    
endmodule
    
