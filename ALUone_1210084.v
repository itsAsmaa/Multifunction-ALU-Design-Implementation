module ALUone_1210084 (x, y, operation, z);
  parameter size = 3;
  
  input [size-1:0] x, y;
  input [2:0] operation;
  output [size+1:0] z;
  
  wire [size+1:0] w_notx, w_xpy2, w_xnory, w_xnandy, w_xy2, w_x2y, w_twoxy,w_xxory;
  
  // connect notx_1210084 module
  notx_1210084 u_notx (x, w_notx);
  
  // connect xpy2_1210084 module
  xpy2_1210084 u_xpy2 (x, y, w_xpy2);
  
  // connect xnory_1210084 module
  xnory_1210084 u_xnory (x, y, w_xnory);
  
  // connect xnandy_1210084 module
  xnandy_1210084 u_xnandy (x, y, w_xnandy);
  
  // connect xy2_1210084 module
  xy2_1210084 u_xy2 (x, y, w_xy2);
  
  // connect x2y_1210084 module
  x2y_1210084 u_x2y (x, y, w_x2y);
  
  // connect twoxy_1210084 module
  twoxy_1210084 u_twoxy (x, y, w_twoxy);
  
  // connect twoxy_1210084 module
  xxory_1210084 u_xxory (x, y, w_xxory);
  
  // connect mux8to1_1210084 module
  mux8to1_1210084 u_mux ( w_xpy2, w_twoxy,w_x2y,w_xy2,w_xnandy,w_notx, w_xnory,w_xxory, operation, z);
endmodule

