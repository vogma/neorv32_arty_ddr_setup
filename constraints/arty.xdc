## This file is a general .xdc for the Arty A7-35 Rev. D

## For default neorv32_test_setup.vhd top entity

## Clock signal
set_property -dict { PACKAGE_PIN E3   IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { sys_clk }];

## RGB LEDs
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L18N_T2_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L19N_T3_VREF_35 Sch=led0_g
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { led_cpu[0] }]; #IO_L19P_T3_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L21P_T3_DQS_35 Sch=led1_g
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { led_cpu[1] }]; #IO_L20N_T3_35 Sch=led1_r
#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { led2_b }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { led2_g }]; #IO_L22N_T3_35 Sch=led2_g
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { led_cpu[2] }]; #IO_L22P_T3_35 Sch=led2_r
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { led3_b }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { led3_g }]; #IO_L24P_T3_35 Sch=led3_g
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { led_cpu[3] }]; #IO_L23N_T3_35 Sch=led3_r

## LEDs
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { init_calib_complete }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

## Pmod Header JA (unused GPIO outputs)
#set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { gpio_o[4] }]; #IO_0_15 Sch=ja[1]
#set_property -dict { PACKAGE_PIN B11  IOSTANDARD LVCMOS33 } [get_ports { gpio_o[5] }]; #IO_L4P_T0_15 Sch=ja[2]
#set_property -dict { PACKAGE_PIN A11  IOSTANDARD LVCMOS33 } [get_ports { gpio_o[6] }]; #IO_L4N_T0_15 Sch=ja[3]
#set_property -dict { PACKAGE_PIN D12  IOSTANDARD LVCMOS33 } [get_ports { gpio_o[7] }]; #IO_L6P_T0_15 Sch=ja[4]

## USB-UART Interface
set_property -dict { PACKAGE_PIN D10  IOSTANDARD LVCMOS33 } [get_ports { uart0_txd_o }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9   IOSTANDARD LVCMOS33 } [get_ports { uart0_rxd_i }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

## Misc.
set_property -dict { PACKAGE_PIN C2   IOSTANDARD LVCMOS33 } [get_ports { resetn }]; #IO_L16P_T2_35 Sch=ck_rst
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets test_bd_design_i/neorv32_SystemTop_axi4lite/inst/neorv32_top_inst/io_system.neorv32_trng_inst_true.neorv32_trng_inst/neoTRNG_inst/neoTRNG_cell_inst[0].neoTRNG_cell_inst_i/enable_sreg_l_reg[0]_0]


set_property CLOCK_DEDICATED_ROUTE TRUE [get_nets test_bd_design_i/clk_wiz_0/inst/clk_out1]

#set_property LOC R2 [get_ports {ddr3_sdram_addr[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[0]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[0]}]

## ddram:0.a
#set_property LOC M6 [get_ports {ddr3_sdram_addr[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[1]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[1]}]

## ddram:0.a
#set_property LOC N4 [get_ports {ddr3_sdram_addr[2]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[2]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[2]}]

## ddram:0.a
#set_property LOC T1 [get_ports {ddr3_sdram_addr[3]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[3]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[3]}]

## ddram:0.a
#set_property LOC N6 [get_ports {ddr3_sdram_addr[4]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[4]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[4]}]

## ddram:0.a
#set_property LOC R7 [get_ports {ddr3_sdram_addr[5]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[5]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[5]}]

## ddram:0.a
#set_property LOC V6 [get_ports {ddr3_sdram_addr[6]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[6]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[6]}]

## ddram:0.a
#set_property LOC U7 [get_ports {ddr3_sdram_addr[7]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[7]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[7]}]

## ddram:0.a
#set_property LOC R8 [get_ports {ddr3_sdram_addr[8]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[8]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[8]}]

## ddram:0.a
#set_property LOC V7 [get_ports {ddr3_sdram_addr[9]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[9]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[9]}]

## ddram:0.a
#set_property LOC R6 [get_ports {ddr3_sdram_addr[10]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[10]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[10]}]

## ddram:0.a
#set_property LOC U6 [get_ports {ddr3_sdram_addr[11]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[11]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[11]}]

## ddram:0.a
#set_property LOC T6 [get_ports {ddr3_sdram_addr[12]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[12]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[12]}]

## ddram:0.a
#set_property LOC T8 [get_ports {ddr3_sdram_addr[13]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_addr[13]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_addr[13]}]

## ddram:0.ba
#set_property LOC R1 [get_ports {ddr3_sdram_ba[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ba[0]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_ba[0]}]

## ddram:0.ba
#set_property LOC P4 [get_ports {ddr3_sdram_ba[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ba[1]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_ba[1]}]

## ddram:0.ba
#set_property LOC P2 [get_ports {ddr3_sdram_ba[2]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ba[2]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_ba[2]}]

## ddram:0.ras_n
#set_property LOC P3 [get_ports {ddr3_sdram_ras_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ras_n}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_ras_n}]

## ddram:0.cas_n
#set_property LOC M4 [get_ports {ddr3_sdram_cas_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_cas_n}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_cas_n}]

## ddram:0.we_n
#set_property LOC P5 [get_ports {ddr3_sdram_we_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_we_n}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_we_n}]

## ddram:0.cs_n
#set_property LOC U8 [get_ports {ddr3_sdram_cs_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_cs_n}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_cs_n}]

## ddram:0.dm
#set_property LOC L1 [get_ports {ddr3_sdram_dm[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dm[0]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dm[0]}]

## ddram:0.dm
#set_property LOC U1 [get_ports {ddr3_sdram_dm[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dm[1]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dm[1]}]

## ddram:0.dq
#set_property LOC K5 [get_ports {ddr3_sdram_dq[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[0]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[0]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[0]}]

## ddram:0.dq
#set_property LOC L3 [get_ports {ddr3_sdram_dq[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[1]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[1]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[1]}]

## ddram:0.dq
#set_property LOC K3 [get_ports {ddr3_sdram_dq[2]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[2]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[2]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[2]}]

## ddram:0.dq
#set_property LOC L6 [get_ports {ddr3_sdram_dq[3]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[3]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[3]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[3]}]

## ddram:0.dq
#set_property LOC M3 [get_ports {ddr3_sdram_dq[4]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[4]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[4]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[4]}]

## ddram:0.dq
#set_property LOC M1 [get_ports {ddr3_sdram_dq[5]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[5]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[5]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[5]}]

## ddram:0.dq
#set_property LOC L4 [get_ports {ddr3_sdram_dq[6]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[6]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[6]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[6]}]

## ddram:0.dq
#set_property LOC M2 [get_ports {ddr3_sdram_dq[7]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[7]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[7]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[7]}]

## ddram:0.dq
#set_property LOC V4 [get_ports {ddr3_sdram_dq[8]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[8]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[8]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[8]}]

## ddram:0.dq
#set_property LOC T5 [get_ports {ddr3_sdram_dq[9]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[9]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[9]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[9]}]

## ddram:0.dq
#set_property LOC U4 [get_ports {ddr3_sdram_dq[10]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[10]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[10]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[10]}]

## ddram:0.dq
#set_property LOC V5 [get_ports {ddr3_sdram_dq[11]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[11]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[11]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[11]}]

## ddram:0.dq
#set_property LOC V1 [get_ports {ddr3_sdram_dq[12]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[12]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[12]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[12]}]

## ddram:0.dq
#set_property LOC T3 [get_ports {ddr3_sdram_dq[13]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[13]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[13]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[13]}]

## ddram:0.dq
#set_property LOC U3 [get_ports {ddr3_sdram_dq[14]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[14]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[14]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[14]}]

## ddram:0.dq
#set_property LOC R3 [get_ports {ddr3_sdram_dq[15]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dq[15]}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_dq[15]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dq[15]}]

## ddram:0.dqs_p
#set_property LOC N2 [get_ports {ddr3_sdram_dqs_p[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dqs_p[0]}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_dqs_p[0]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dqs_p[0]}]

## ddram:0.dqs_p
#set_property LOC U2 [get_ports {ddr3_sdram_dqs_p[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dqs_p[1]}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_dqs_p[1]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dqs_p[1]}]

## ddram:0.dqs_n
#set_property LOC N1 [get_ports {ddr3_sdram_dqs_n[0]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dqs_n[0]}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_dqs_n[0]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dqs_n[0]}]

## ddram:0.dqs_n
#set_property LOC V2 [get_ports {ddr3_sdram_dqs_n[1]}]
#set_property SLEW FAST [get_ports {ddr3_sdram_dqs_n[1]}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_dqs_n[1]}]
#set_property IN_TERM UNTUNED_SPLIT_40 [get_ports {ddr3_sdram_dqs_n[1]}]

## ddram:0.clk_p
#set_property LOC U9 [get_ports {ddr3_sdram_ck_p}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ck_p}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_ck_p}]

## ddram:0.clk_n
#set_property LOC V9 [get_ports {ddr3_sdram_ck_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_ck_n}]
#set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_sdram_ck_n}]

## ddram:0.cke
#set_property LOC N5 [get_ports {ddr3_sdram_cke}]
#set_property SLEW FAST [get_ports {ddr3_sdram_cke}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_cke}]

## ddram:0.odt
#set_property LOC R5 [get_ports {ddr3_sdram_odt}]
#set_property SLEW FAST [get_ports {ddr3_sdram_odt}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_odt}]

## ddram:0.reset_n
#set_property LOC K6 [get_ports {ddr3_sdram_reset_n}]
#set_property SLEW FAST [get_ports {ddr3_sdram_reset_n}]
#set_property IOSTANDARD SSTL135 [get_ports {ddr3_sdram_reset_n}]

