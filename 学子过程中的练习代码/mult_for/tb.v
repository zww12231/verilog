//parameter  size = 8 ;
module mult_for_tb;
    reg [size-1:0] a,b;
    wire [2*size-1:0] outcome;
    reg clk;
    reg rstn;
    
    integer  i;
   
    initial begin
        clk=0;
        a=0;
        b=0;
        rstn=0;
        #0.5 rstn=1;
    end

    always #2 clk=~clk;

    always @(posedge clk) begin
        for (i=0;i<=size-1;i=i+1) begin
            a[i]={$random}%2;
            b[i]={$random}%2;
        end
    end

    mult_for inst(.a(a),.b(b),.outcome (outcome),.rstn(rstn));

    initial #100 $finish;
endmodule


