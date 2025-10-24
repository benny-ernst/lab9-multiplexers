module top(
    input [15:0] sw,
    input btnL,
    input btnR,
    input btnU,
    input btnD,
    input btnC,
    output [15:0] led
    );
    
    mux mux(
    .CEO(sw[3:0]),
    .You(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .Sel({btnU, btnL}),
    .Enable(btnC)
    );
    
    demux demux(
    .local_lib(led[3:0]),
    .fire_dept(led[7:4]),
    .school(led[11:8]),
    .ribshack(led[15:12]),
    .Sel({btnR, btnD}),
    .Enable(btnC)
    );
endmodule
