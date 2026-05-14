`include "uvm_macros.svh"

import uvm_pkg::*;


`include "dff_if.sv"
`include "config_dff.sv"
`include "transaction.sv"
`include "valid_din.sv"
`include "rst_dff.sv"
`include "rand_din_rst.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "agent.sv"
`include "env.sv"
`include "test.sv"


module tb_top;

dff_if dif();

dff dut (
    .clk(dif.clk),
    .rst(dif.rst),
    .din(dif.din),
    .dout(dif.dout)
);

initial begin
    uvm_config_db #(virtual dff_if)::set(null, "*", "dif", dif);

    run_test("test");
end

initial begin
    dif.clk = 0;
end

always #10 dif.clk = ~dif.clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
end

endmodule
