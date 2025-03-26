
module xnandy_1210084 (x, y, output1);
    parameter size = 3; 
    input [size-1:0] x,y;
    output [size+1:0] output1;
    
    reg [size+1:0] output1;
    
    always@(*) begin
        output1 = ~(x & y);
    end
endmodule