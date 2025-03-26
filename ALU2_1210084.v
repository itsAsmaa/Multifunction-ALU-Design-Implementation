module ALU2_1210084 #(parameter n=3)(input signed [n-1:0] X, Y,
            input [2:0] C,
            output reg signed [n+1:0] O);

// Define intermediate signals
wire [n-1:0] sum, difference;
wire [n:0] product;

// Compute intermediate signals
assign sum = X + Y;
assign difference = X - Y;
assign product = 2 * sum;

// Select operation based on C
always @(*)
  case (C)
    3'b000: O = sum >> 1;
    3'b001: O = product;
    3'b010: O = X + (Y >> 1);
    3'b011: O = difference >> 1;
    3'b100: O = ~(X & Y);
    3'b101: O = ~X;
    3'b110: O = ~(X | Y);
    3'b111: O = X ^ Y;
    default: O = 0;
  endcase
endmodule
