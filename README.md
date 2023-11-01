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
![image](https://github.com/KKiranR/RISCV_Control_Unit/assets/89727621/785e84c6-e591-47a4-88c1-7559dbc11ca8)

# Physical Design
![Screenshot from 2023-11-01 19-10-39](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/e0e041c2-f989-46e1-8ce9-e1caa92e0515)
![Screenshot from 2023-11-01 19-10-54](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/ca61ce3c-a363-46d4-8056-f566e627b56e)

## Reports

### Synthesis Stage:
- Area
 ![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/aec22222-dd70-442e-9d67-9e1ea322e50c)
- Statistics
  ![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/1b9932b7-6986-4f34-bdd4-a8d9dc90d07c)
### Floorplan :
Command Used:
 * Must be run in their respective directories of results
``` bash=
magic -T /home/kiran/.volare/sky130A/libs.tech/magic/sky130A.tech lef ../../tmp/merged.nom.lef def CONTROL.def
```
![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/476af820-9b52-46fa-b422-8ba5d3adffb9)

### Placement:
``` bash=
magic -T /home/kiran/.volare/sky130A/libs.tech/magic/sky130A.tech lef ../../tmp/merged.nom.lef def CONTROL.def
```
![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/9c016880-f717-4fc4-99f4-ddb714faf9eb)

### CTS:
* CTS log is added with the designs files
![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/eb316185-c0f7-439f-b45e-9223a207aa1f)

### Routing:
``` bash=
magic -T /home/kiran/.volare/sky130A/libs.tech/magic/sky130A.tech lef ../../tmp/merged.nom.lef def CONTROL.def
```
![image](https://github.com/KKiranR/pes_RISCV_Control_Unit/assets/89727621/a47f5424-8414-494c-bac1-8a0bf1540edc)

### magic antenna check

All the log files are added with the design files




