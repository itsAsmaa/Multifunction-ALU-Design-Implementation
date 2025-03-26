module notx_1210084 (x, output1);
    parameter size = 3; 
    input [size-1:0] x;
    output [size+1:0] output1;
    
    reg [size+1:0] output1;
    
    always@(*) begin
        output1 = ~x;
    end
endmodule