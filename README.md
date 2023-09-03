# pes_Control_Unit
## Simulation
```bash=
iverilog controlunit.v controlunit_tb.v
./a.out
gtkwave output.vcd
```
![Screenshot from 2023-09-03 16-51-20](https://github.com/KKiranR/RISCV_Control_Unit/assets/89727621/db3f25c8-c048-4021-9372-0df325116286)

### Output:
![Screenshot from 2023-09-03 16-50-58](https://github.com/KKiranR/RISCV_Control_Unit/assets/89727621/aef7d141-66fb-4e7c-a3e0-759b71707950)

## Synthesis:
### commands:
```bash=
yosys
read_liberty -lib <liberty file>
read_verilog <design file>
synth -top CONTROL
abc -liberty <liberty file>
show
write_verilog control_netlist.v
```
## Schematic:
![Screenshot from 2023-09-03 16-54-20](https://github.com/KKiranR/RISCV_Control_Unit/assets/89727621/bcac52ba-1cf0-4f7f-991c-90e28366b905)
## Gate level simulation
### Commands:
```bash=
iverilog <primitive.v file ><verilog of the library used for synthesis><designfile><test_bench>
./a.out
gtkwave output.vcd
```
### Output:
![Screenshot from 2023-09-03 16-59-23](https://github.com/KKiranR/RISCV_Control_Unit/assets/89727621/6abf6360-ff49-4c33-b132-bbdecb671693)
