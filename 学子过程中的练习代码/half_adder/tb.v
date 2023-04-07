module half_adder_tb;
    reg a,b,clk;
    wire sum,C;

    initial begin
        a=0;
        b=0;
        clk=0;
    end

    always #2 clk=~clk;

    always@(posedge clk) begin
        a={$random}%2;
        b={$random}%2;
    end

    half_adder inst(.A(a),.B(b),.sum(Sum),.C(C));

    initial #100 $finish;

endmodule
