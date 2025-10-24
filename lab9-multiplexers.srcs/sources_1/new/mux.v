module mux(
   input [3:0] CEO, [3:0] You, [3:0] Fred, [3:0] Jill,
   input [1:0] Sel,
   input Enable,
   output [3:0] Y
    );
    
    assign Y =(Sel == 2'b00 && Enable) ? CEO :
              (Sel == 2'b01 && Enable) ? You :
              (Sel == 2'b10 && Enable) ? Fred :Jill;
    
endmodule