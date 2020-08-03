//HDL chip design
//combinational Logic Optimization sample code
//p.30

module comb_logic (A,B,C,D,Y1,Y2);
	
	input	wire	A;
	input	wire	B;
	input	wire	C;
	input	wire	D;

	output	reg		Y1;
	output	reg		Y2;

	always @ (*)
		begin
			case ({A,B,C,D})
				4'b0000 : begin Y1 = 1; Y2 = 0; end
				4'b0001 : begin Y1 = 1; Y2 = 0; end
				4'b0010 : begin Y1 = 1; Y2 = 0; end
				4'b0011 : begin Y1 = 1; Y2 = 0; end
				4'b0100 : begin Y1 = 1; Y2 = 0; end
				4'b0101 : begin Y1 = 1; Y2 = 0; end
				4'b0110 : begin Y1 = 1; Y2 = 0; end
				4'b0111 : begin Y1 = 1; Y2 = 0; end
				4'b1000 : begin Y1 = 1; Y2 = 0; end
				4'b1001 : begin Y1 = 0; Y2 = 1; end
				4'b1010 : begin Y1 = 0; Y2 = 1; end
				4'b1011 : begin Y1 = 1; Y2 = 1; end
				4'b1100 : begin Y1 = 1; Y2 = 0; end
				4'b1101 : begin Y1 = 1; Y2 = 0; end
				4'b1110 : begin Y1 = 1; Y2 = 0; end
				4'b1111 : begin Y1 = 1; Y2 = 0; end
				default : begin Y1 = 0; Y2 = 0; end
			endcase
		end
	
endmodule
