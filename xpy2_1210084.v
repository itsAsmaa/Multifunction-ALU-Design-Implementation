
//Behavioral Verilog Module for X+Y/2
module xpy2_1210084 (x, y, output1);
    parameter size = 3; 
    input [size-1:0] x,y;
    output [size+1:0] output1;
    
    reg [size+1:0] output1;
    
    always@(*) begin
        output1 = (x + y) >> 1;
    end
endmodule