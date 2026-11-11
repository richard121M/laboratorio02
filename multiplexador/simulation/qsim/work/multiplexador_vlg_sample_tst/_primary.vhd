library verilog;
use verilog.vl_types.all;
entity multiplexador_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Se0             : in     vl_logic;
        Se1             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multiplexador_vlg_sample_tst;
