//Behavioral Verilog Module for (X/2)+Y
module x2y_1210084 (x, y, output1);
    parameter size = 3; 
    input [size-1:0] x,y;
    output [size+1:0] output1;
    
    reg [size+1:0] output1;
    
    always@(*) begin
        output1 = (x >> 1) + y;
    end
endmodule