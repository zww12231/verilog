parameter size=8;
module mult_for 
    (input [size-1:0] a,b,
    input rstn,
    output reg [2*size-1:0] outcome);

    reg [2*size-1:0] outcome_1;
    integer i;

    always @(a or b or negedge rstn) begin
        if(!rstn) begin
            //outcome=0;
            //outcome_1=0;
         end
        outcome=0;
        outcome_1=a*b;
        for (i=0;i<=(size-1);i=i+1) begin
            if(b[i]) outcome=outcome+(a<<(i));
        end
    end
endmodule
