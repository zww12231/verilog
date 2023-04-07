module half_adder(
	input wire A,
	input wire B,
	output wire C,
	output wire sum
);

//assign sum = (A == B) ? 0 : 1;  //这两种方式都可以实现
assign sum = A^B;
assign C= A&B;

endmodule 

