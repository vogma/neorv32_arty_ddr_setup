# DDR3 Memory integration into NEORV32 Softcore Processor

The [NEORV32](https://github.com/stnolting/neorv32) is a Softcore Processor written entirely in VHDL an is very well documented. In its default configuration only on-chip FPGA RAM is used for IMEM (Instruction Memory) and DMEM (Data Memory).
This is a very reasonable choice, because using off-chip memory, like DDR, requieres proprietary IP from the FPGA Vendor. By using only on-chip Memory of the FPGA (BRAM), which is inferred by the platform independant VHDL Code, NEORV32 can be used on a wide variety of FPGA Platforms.

The goal of this project is to connect the NEORV32 to the external DDR3 Memory of the [Arty A7-100T](https://digilent.com/reference/programmable-logic/arty-a7/start) FPGA Board. The NEORV32 Softcore can address 32 bits of Memory Space (4GB), which makes more than capable to integrate the 256MB of DDR3 Memory into its memory space. The following images depicts the [address space](https://stnolting.github.io/neorv32/#_address_space) of the NEROV32 Processor




<img src="https://stnolting.github.io/neorv32/img/address_space.png" width="800" >



  ![Blockdesign of the neorv32 setup with the ddr3 memory connected to the external memory bus](/pictures/blockdesign.png)

## Setup

Vivado v2020.2 is used in this project. To create the project files, execute following command:

`vivado -mode batch -source neorv32_v.tcl -nojournal -nolog`

