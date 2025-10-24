module demux(
   input [3:0] In,
   input [1:0] Sel,
   input Enable,
   output [3:0] local_lib,
   output [3:0] fire_dept,
   output [3:0] school,
   output [3:0] ribshack
    );
    
    assign local_lib = Enable ? (Sel == 2'b00 ? In : 0): 0;
    assign fire_dept = Enable ? (Sel == 2'b01 ? In : 0): 0;
    assign school = Enable ? (Sel == 2'b10 ? In : 0): 0;
    assign ribshack = Enable ? (Sel == 2'b11 ? In : 0): 0;
endmodule