module DecDecode(num, seg7Decode);
  input [31:0] num;
  output reg [7:0] seg7Decode;
  always @(num)
  begin
    case(num)
	  0 : seg7Decode = 8'b11000000;
	  1 : seg7Decode = 8'b11111001;
	  2 : seg7Decode = 8'b10100100;
	  3 : seg7Decode = 8'b10110000;
	  4 : seg7Decode = 8'b10011001;
	  5 : seg7Decode = 8'b10010010;
	  6 : seg7Decode = 8'b10000010;
	  7 : seg7Decode = 8'b11011000;
	  8 : seg7Decode = 8'b10000000;
	  9 : seg7Decode = 8'b10010000;
	  default: 
	    seg7Decode = 8'b11111111;
	endcase
	end
endmodule