// DSCH 3.5
// 4/22/2026 8:41:03 PM
// D:\4-2\VLSI Lab\Lab 04.sch

module Lab04( in1,out1);
 input in1;
 output out1;
 wire ;
 nmos #(1) nmos_1(out1,vss,in1); // 0.3u 0.05u
 pmos #(1) pmos_2(out1,vdd,in1); // 0.5u 0.05u
endmodule

// Simulation parameters in Verilog Format
always
#200 in1=~in1;

// Simulation parameters
// in1 CLK 1 1
