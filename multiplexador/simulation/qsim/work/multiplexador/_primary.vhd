library verilog;
use verilog.vl_types.all;
entity multiplexador is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Sel             : in     vl_logic;
        Sc              : out    vl_logic;
        Sp              : out    vl_logic
    );
end multiplexador;
