# 8-Bit ALU

## Brief

Implementation of an 8-bit Arithmetic Logic Unit in VHDL.

## Instructions

### Steps to build

```shell
mkdir build
ghdl -a --workdir=build src/*.vhd
ghdl -e --workdir=build testbench
```

### Steps to run
ghdl -r --workdir=build testbench --vcd=alu.vcd
gtkwave alu.vcd
```
