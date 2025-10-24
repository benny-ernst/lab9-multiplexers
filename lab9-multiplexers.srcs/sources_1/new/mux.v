module mux(
   input [3:0] CEO, [3:0] You, [3:0] Fred, [3:0] Jill,
   input [1:0] Sel,
   input Enable,
   output [3:0] Y
    );
    
    assign Y = Enable ? ((Sel == 0) ? CEO : ((Sel == 1) ? You : ((Sel == 2) ? Fred : ((Sel == 3) ? Jill : 0)))) : 0;
    
endmodule