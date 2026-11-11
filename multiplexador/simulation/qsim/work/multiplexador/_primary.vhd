library verilog;
use verilog.vl_types.all;
entity multiplexador is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Se0             : in     vl_logic;
        Se1             : in     vl_logic;
        Sc              : out    vl_logic;
        Sp              : out    vl_logic;
        S4              : out    vl_logic
    );
end multiplexador;
