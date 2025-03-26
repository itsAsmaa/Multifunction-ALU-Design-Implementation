module xnory_1210084 #( parameter size = 3)(x, y, output1);
    
    input [size-1:0] x,y;
    output [size+1:0] output1;
    
    reg [size+1:0] output1;
    
    always@(*) begin
        output1 = ~(x | y);
    end
endmodule