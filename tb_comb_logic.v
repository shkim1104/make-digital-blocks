//tb for module  comb_logic

`timescale 1ns/100ps

module tb_comb_logic;

	reg		A;
	reg		B;
	reg		C;
	reg		D;
                      
	wire	Y1;
	wire	Y2;


comb_logic dut (
		.A	(A),
		.B	(B),
		.C	(C),
		.D	(D),

		.Y1	(Y1),
		.Y2	(Y2)
);


initial
begin
	$dumpfile("comb_logic.vcd");
	$dumpvars(0,tb_comb_logic);
end

initial
begin
	#10;
	A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
	#10;
	A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
	#10;
	A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
	#10;
	A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
	
	#10;	
	$finish;
end

endmodule
