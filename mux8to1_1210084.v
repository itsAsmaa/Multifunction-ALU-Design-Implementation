module mux8to1_1210084 #(parameter size = 3)(in0,in1,in2,in3,in4,in5,in6,in7, sel, out);

  input [size-1:0]in0,in1,in2,in3,in4,in5,in6,in7;
  input [3:0] sel;
  output reg [size+1:0] out;
  
  always @(*)
    case (sel)
      4'b0000: out = in0;
      4'b0001: out = in1;
      4'b0010: out = in2;
      4'b0011: out = in3;
      4'b0100: out = in4;
      4'b0101: out = in5;
      4'b0110: out = in6;
      4'b0111: out = in7;
      default: out = 0;
    endcase
endmodule