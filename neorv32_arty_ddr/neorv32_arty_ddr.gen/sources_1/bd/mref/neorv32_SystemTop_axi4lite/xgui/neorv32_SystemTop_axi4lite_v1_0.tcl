# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AMO_RVS_GRANULARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLOCK_FREQUENCY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_A" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_E" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_M" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_U" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zfinx" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zicntr" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zifencei" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zihpm" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zmmul" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_EXTENSION_RISCV_Zxcfu" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DCACHE_BLOCK_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DCACHE_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DCACHE_NUM_BLOCKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DM_LEGACY_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAST_MUL_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAST_SHIFT_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HART_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HPM_CNT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HPM_NUM_CNTS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ICACHE_ASSOCIATIVITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ICACHE_BLOCK_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ICACHE_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ICACHE_NUM_BLOCKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INT_BOOTLOADER_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_CFS_CONFIG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_CFS_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_CFS_IN_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_CFS_OUT_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_CRC_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_DMA_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_GPIO_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_GPTMR_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_MTIME_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_NEOLED_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_NEOLED_TX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_ONEWIRE_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_PWM_NUM_CH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SDI_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SDI_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SLINK_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SLINK_RX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SLINK_TX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SPI_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_SPI_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_TRNG_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_TRNG_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_TWI_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART0_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART0_RX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART0_TX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART1_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART1_RX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_UART1_TX_FIFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_WDT_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IO_XIP_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_INT_DMEM_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_INT_DMEM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_INT_IMEM_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_INT_IMEM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ON_CHIP_DEBUGGER_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PMP_MIN_GRANULARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PMP_NUM_REGIONS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VENDOR_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "XIRQ_NUM_CH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "XIRQ_TRIGGER_POLARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "XIRQ_TRIGGER_TYPE" -parent ${Page_0}


}

proc update_PARAM_VALUE.AMO_RVS_GRANULARITY { PARAM_VALUE.AMO_RVS_GRANULARITY } {
	# Procedure called to update AMO_RVS_GRANULARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AMO_RVS_GRANULARITY { PARAM_VALUE.AMO_RVS_GRANULARITY } {
	# Procedure called to validate AMO_RVS_GRANULARITY
	return true
}

proc update_PARAM_VALUE.CLOCK_FREQUENCY { PARAM_VALUE.CLOCK_FREQUENCY } {
	# Procedure called to update CLOCK_FREQUENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_FREQUENCY { PARAM_VALUE.CLOCK_FREQUENCY } {
	# Procedure called to validate CLOCK_FREQUENCY
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_A { PARAM_VALUE.CPU_EXTENSION_RISCV_A } {
	# Procedure called to update CPU_EXTENSION_RISCV_A when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_A { PARAM_VALUE.CPU_EXTENSION_RISCV_A } {
	# Procedure called to validate CPU_EXTENSION_RISCV_A
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_B { PARAM_VALUE.CPU_EXTENSION_RISCV_B } {
	# Procedure called to update CPU_EXTENSION_RISCV_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_B { PARAM_VALUE.CPU_EXTENSION_RISCV_B } {
	# Procedure called to validate CPU_EXTENSION_RISCV_B
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_C { PARAM_VALUE.CPU_EXTENSION_RISCV_C } {
	# Procedure called to update CPU_EXTENSION_RISCV_C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_C { PARAM_VALUE.CPU_EXTENSION_RISCV_C } {
	# Procedure called to validate CPU_EXTENSION_RISCV_C
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_E { PARAM_VALUE.CPU_EXTENSION_RISCV_E } {
	# Procedure called to update CPU_EXTENSION_RISCV_E when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_E { PARAM_VALUE.CPU_EXTENSION_RISCV_E } {
	# Procedure called to validate CPU_EXTENSION_RISCV_E
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_M { PARAM_VALUE.CPU_EXTENSION_RISCV_M } {
	# Procedure called to update CPU_EXTENSION_RISCV_M when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_M { PARAM_VALUE.CPU_EXTENSION_RISCV_M } {
	# Procedure called to validate CPU_EXTENSION_RISCV_M
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_U { PARAM_VALUE.CPU_EXTENSION_RISCV_U } {
	# Procedure called to update CPU_EXTENSION_RISCV_U when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_U { PARAM_VALUE.CPU_EXTENSION_RISCV_U } {
	# Procedure called to validate CPU_EXTENSION_RISCV_U
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx { PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zfinx when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx { PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zfinx
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr { PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zicntr when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr { PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zicntr
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei { PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zifencei when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei { PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zifencei
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm { PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zihpm when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm { PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zihpm
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul { PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zmmul when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul { PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zmmul
	return true
}

proc update_PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu { PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu } {
	# Procedure called to update CPU_EXTENSION_RISCV_Zxcfu when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu { PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu } {
	# Procedure called to validate CPU_EXTENSION_RISCV_Zxcfu
	return true
}

proc update_PARAM_VALUE.DCACHE_BLOCK_SIZE { PARAM_VALUE.DCACHE_BLOCK_SIZE } {
	# Procedure called to update DCACHE_BLOCK_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DCACHE_BLOCK_SIZE { PARAM_VALUE.DCACHE_BLOCK_SIZE } {
	# Procedure called to validate DCACHE_BLOCK_SIZE
	return true
}

proc update_PARAM_VALUE.DCACHE_EN { PARAM_VALUE.DCACHE_EN } {
	# Procedure called to update DCACHE_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DCACHE_EN { PARAM_VALUE.DCACHE_EN } {
	# Procedure called to validate DCACHE_EN
	return true
}

proc update_PARAM_VALUE.DCACHE_NUM_BLOCKS { PARAM_VALUE.DCACHE_NUM_BLOCKS } {
	# Procedure called to update DCACHE_NUM_BLOCKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DCACHE_NUM_BLOCKS { PARAM_VALUE.DCACHE_NUM_BLOCKS } {
	# Procedure called to validate DCACHE_NUM_BLOCKS
	return true
}

proc update_PARAM_VALUE.DM_LEGACY_MODE { PARAM_VALUE.DM_LEGACY_MODE } {
	# Procedure called to update DM_LEGACY_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DM_LEGACY_MODE { PARAM_VALUE.DM_LEGACY_MODE } {
	# Procedure called to validate DM_LEGACY_MODE
	return true
}

proc update_PARAM_VALUE.FAST_MUL_EN { PARAM_VALUE.FAST_MUL_EN } {
	# Procedure called to update FAST_MUL_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAST_MUL_EN { PARAM_VALUE.FAST_MUL_EN } {
	# Procedure called to validate FAST_MUL_EN
	return true
}

proc update_PARAM_VALUE.FAST_SHIFT_EN { PARAM_VALUE.FAST_SHIFT_EN } {
	# Procedure called to update FAST_SHIFT_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAST_SHIFT_EN { PARAM_VALUE.FAST_SHIFT_EN } {
	# Procedure called to validate FAST_SHIFT_EN
	return true
}

proc update_PARAM_VALUE.HART_ID { PARAM_VALUE.HART_ID } {
	# Procedure called to update HART_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HART_ID { PARAM_VALUE.HART_ID } {
	# Procedure called to validate HART_ID
	return true
}

proc update_PARAM_VALUE.HPM_CNT_WIDTH { PARAM_VALUE.HPM_CNT_WIDTH } {
	# Procedure called to update HPM_CNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HPM_CNT_WIDTH { PARAM_VALUE.HPM_CNT_WIDTH } {
	# Procedure called to validate HPM_CNT_WIDTH
	return true
}

proc update_PARAM_VALUE.HPM_NUM_CNTS { PARAM_VALUE.HPM_NUM_CNTS } {
	# Procedure called to update HPM_NUM_CNTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HPM_NUM_CNTS { PARAM_VALUE.HPM_NUM_CNTS } {
	# Procedure called to validate HPM_NUM_CNTS
	return true
}

proc update_PARAM_VALUE.ICACHE_ASSOCIATIVITY { PARAM_VALUE.ICACHE_ASSOCIATIVITY } {
	# Procedure called to update ICACHE_ASSOCIATIVITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ICACHE_ASSOCIATIVITY { PARAM_VALUE.ICACHE_ASSOCIATIVITY } {
	# Procedure called to validate ICACHE_ASSOCIATIVITY
	return true
}

proc update_PARAM_VALUE.ICACHE_BLOCK_SIZE { PARAM_VALUE.ICACHE_BLOCK_SIZE } {
	# Procedure called to update ICACHE_BLOCK_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ICACHE_BLOCK_SIZE { PARAM_VALUE.ICACHE_BLOCK_SIZE } {
	# Procedure called to validate ICACHE_BLOCK_SIZE
	return true
}

proc update_PARAM_VALUE.ICACHE_EN { PARAM_VALUE.ICACHE_EN } {
	# Procedure called to update ICACHE_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ICACHE_EN { PARAM_VALUE.ICACHE_EN } {
	# Procedure called to validate ICACHE_EN
	return true
}

proc update_PARAM_VALUE.ICACHE_NUM_BLOCKS { PARAM_VALUE.ICACHE_NUM_BLOCKS } {
	# Procedure called to update ICACHE_NUM_BLOCKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ICACHE_NUM_BLOCKS { PARAM_VALUE.ICACHE_NUM_BLOCKS } {
	# Procedure called to validate ICACHE_NUM_BLOCKS
	return true
}

proc update_PARAM_VALUE.INT_BOOTLOADER_EN { PARAM_VALUE.INT_BOOTLOADER_EN } {
	# Procedure called to update INT_BOOTLOADER_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INT_BOOTLOADER_EN { PARAM_VALUE.INT_BOOTLOADER_EN } {
	# Procedure called to validate INT_BOOTLOADER_EN
	return true
}

proc update_PARAM_VALUE.IO_CFS_CONFIG { PARAM_VALUE.IO_CFS_CONFIG } {
	# Procedure called to update IO_CFS_CONFIG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_CFS_CONFIG { PARAM_VALUE.IO_CFS_CONFIG } {
	# Procedure called to validate IO_CFS_CONFIG
	return true
}

proc update_PARAM_VALUE.IO_CFS_EN { PARAM_VALUE.IO_CFS_EN } {
	# Procedure called to update IO_CFS_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_CFS_EN { PARAM_VALUE.IO_CFS_EN } {
	# Procedure called to validate IO_CFS_EN
	return true
}

proc update_PARAM_VALUE.IO_CFS_IN_SIZE { PARAM_VALUE.IO_CFS_IN_SIZE } {
	# Procedure called to update IO_CFS_IN_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_CFS_IN_SIZE { PARAM_VALUE.IO_CFS_IN_SIZE } {
	# Procedure called to validate IO_CFS_IN_SIZE
	return true
}

proc update_PARAM_VALUE.IO_CFS_OUT_SIZE { PARAM_VALUE.IO_CFS_OUT_SIZE } {
	# Procedure called to update IO_CFS_OUT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_CFS_OUT_SIZE { PARAM_VALUE.IO_CFS_OUT_SIZE } {
	# Procedure called to validate IO_CFS_OUT_SIZE
	return true
}

proc update_PARAM_VALUE.IO_CRC_EN { PARAM_VALUE.IO_CRC_EN } {
	# Procedure called to update IO_CRC_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_CRC_EN { PARAM_VALUE.IO_CRC_EN } {
	# Procedure called to validate IO_CRC_EN
	return true
}

proc update_PARAM_VALUE.IO_DMA_EN { PARAM_VALUE.IO_DMA_EN } {
	# Procedure called to update IO_DMA_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_DMA_EN { PARAM_VALUE.IO_DMA_EN } {
	# Procedure called to validate IO_DMA_EN
	return true
}

proc update_PARAM_VALUE.IO_GPIO_NUM { PARAM_VALUE.IO_GPIO_NUM } {
	# Procedure called to update IO_GPIO_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_GPIO_NUM { PARAM_VALUE.IO_GPIO_NUM } {
	# Procedure called to validate IO_GPIO_NUM
	return true
}

proc update_PARAM_VALUE.IO_GPTMR_EN { PARAM_VALUE.IO_GPTMR_EN } {
	# Procedure called to update IO_GPTMR_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_GPTMR_EN { PARAM_VALUE.IO_GPTMR_EN } {
	# Procedure called to validate IO_GPTMR_EN
	return true
}

proc update_PARAM_VALUE.IO_MTIME_EN { PARAM_VALUE.IO_MTIME_EN } {
	# Procedure called to update IO_MTIME_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_MTIME_EN { PARAM_VALUE.IO_MTIME_EN } {
	# Procedure called to validate IO_MTIME_EN
	return true
}

proc update_PARAM_VALUE.IO_NEOLED_EN { PARAM_VALUE.IO_NEOLED_EN } {
	# Procedure called to update IO_NEOLED_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_NEOLED_EN { PARAM_VALUE.IO_NEOLED_EN } {
	# Procedure called to validate IO_NEOLED_EN
	return true
}

proc update_PARAM_VALUE.IO_NEOLED_TX_FIFO { PARAM_VALUE.IO_NEOLED_TX_FIFO } {
	# Procedure called to update IO_NEOLED_TX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_NEOLED_TX_FIFO { PARAM_VALUE.IO_NEOLED_TX_FIFO } {
	# Procedure called to validate IO_NEOLED_TX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_ONEWIRE_EN { PARAM_VALUE.IO_ONEWIRE_EN } {
	# Procedure called to update IO_ONEWIRE_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_ONEWIRE_EN { PARAM_VALUE.IO_ONEWIRE_EN } {
	# Procedure called to validate IO_ONEWIRE_EN
	return true
}

proc update_PARAM_VALUE.IO_PWM_NUM_CH { PARAM_VALUE.IO_PWM_NUM_CH } {
	# Procedure called to update IO_PWM_NUM_CH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_PWM_NUM_CH { PARAM_VALUE.IO_PWM_NUM_CH } {
	# Procedure called to validate IO_PWM_NUM_CH
	return true
}

proc update_PARAM_VALUE.IO_SDI_EN { PARAM_VALUE.IO_SDI_EN } {
	# Procedure called to update IO_SDI_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SDI_EN { PARAM_VALUE.IO_SDI_EN } {
	# Procedure called to validate IO_SDI_EN
	return true
}

proc update_PARAM_VALUE.IO_SDI_FIFO { PARAM_VALUE.IO_SDI_FIFO } {
	# Procedure called to update IO_SDI_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SDI_FIFO { PARAM_VALUE.IO_SDI_FIFO } {
	# Procedure called to validate IO_SDI_FIFO
	return true
}

proc update_PARAM_VALUE.IO_SLINK_EN { PARAM_VALUE.IO_SLINK_EN } {
	# Procedure called to update IO_SLINK_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SLINK_EN { PARAM_VALUE.IO_SLINK_EN } {
	# Procedure called to validate IO_SLINK_EN
	return true
}

proc update_PARAM_VALUE.IO_SLINK_RX_FIFO { PARAM_VALUE.IO_SLINK_RX_FIFO } {
	# Procedure called to update IO_SLINK_RX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SLINK_RX_FIFO { PARAM_VALUE.IO_SLINK_RX_FIFO } {
	# Procedure called to validate IO_SLINK_RX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_SLINK_TX_FIFO { PARAM_VALUE.IO_SLINK_TX_FIFO } {
	# Procedure called to update IO_SLINK_TX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SLINK_TX_FIFO { PARAM_VALUE.IO_SLINK_TX_FIFO } {
	# Procedure called to validate IO_SLINK_TX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_SPI_EN { PARAM_VALUE.IO_SPI_EN } {
	# Procedure called to update IO_SPI_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SPI_EN { PARAM_VALUE.IO_SPI_EN } {
	# Procedure called to validate IO_SPI_EN
	return true
}

proc update_PARAM_VALUE.IO_SPI_FIFO { PARAM_VALUE.IO_SPI_FIFO } {
	# Procedure called to update IO_SPI_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_SPI_FIFO { PARAM_VALUE.IO_SPI_FIFO } {
	# Procedure called to validate IO_SPI_FIFO
	return true
}

proc update_PARAM_VALUE.IO_TRNG_EN { PARAM_VALUE.IO_TRNG_EN } {
	# Procedure called to update IO_TRNG_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_TRNG_EN { PARAM_VALUE.IO_TRNG_EN } {
	# Procedure called to validate IO_TRNG_EN
	return true
}

proc update_PARAM_VALUE.IO_TRNG_FIFO { PARAM_VALUE.IO_TRNG_FIFO } {
	# Procedure called to update IO_TRNG_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_TRNG_FIFO { PARAM_VALUE.IO_TRNG_FIFO } {
	# Procedure called to validate IO_TRNG_FIFO
	return true
}

proc update_PARAM_VALUE.IO_TWI_EN { PARAM_VALUE.IO_TWI_EN } {
	# Procedure called to update IO_TWI_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_TWI_EN { PARAM_VALUE.IO_TWI_EN } {
	# Procedure called to validate IO_TWI_EN
	return true
}

proc update_PARAM_VALUE.IO_UART0_EN { PARAM_VALUE.IO_UART0_EN } {
	# Procedure called to update IO_UART0_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART0_EN { PARAM_VALUE.IO_UART0_EN } {
	# Procedure called to validate IO_UART0_EN
	return true
}

proc update_PARAM_VALUE.IO_UART0_RX_FIFO { PARAM_VALUE.IO_UART0_RX_FIFO } {
	# Procedure called to update IO_UART0_RX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART0_RX_FIFO { PARAM_VALUE.IO_UART0_RX_FIFO } {
	# Procedure called to validate IO_UART0_RX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_UART0_TX_FIFO { PARAM_VALUE.IO_UART0_TX_FIFO } {
	# Procedure called to update IO_UART0_TX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART0_TX_FIFO { PARAM_VALUE.IO_UART0_TX_FIFO } {
	# Procedure called to validate IO_UART0_TX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_UART1_EN { PARAM_VALUE.IO_UART1_EN } {
	# Procedure called to update IO_UART1_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART1_EN { PARAM_VALUE.IO_UART1_EN } {
	# Procedure called to validate IO_UART1_EN
	return true
}

proc update_PARAM_VALUE.IO_UART1_RX_FIFO { PARAM_VALUE.IO_UART1_RX_FIFO } {
	# Procedure called to update IO_UART1_RX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART1_RX_FIFO { PARAM_VALUE.IO_UART1_RX_FIFO } {
	# Procedure called to validate IO_UART1_RX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_UART1_TX_FIFO { PARAM_VALUE.IO_UART1_TX_FIFO } {
	# Procedure called to update IO_UART1_TX_FIFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_UART1_TX_FIFO { PARAM_VALUE.IO_UART1_TX_FIFO } {
	# Procedure called to validate IO_UART1_TX_FIFO
	return true
}

proc update_PARAM_VALUE.IO_WDT_EN { PARAM_VALUE.IO_WDT_EN } {
	# Procedure called to update IO_WDT_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_WDT_EN { PARAM_VALUE.IO_WDT_EN } {
	# Procedure called to validate IO_WDT_EN
	return true
}

proc update_PARAM_VALUE.IO_XIP_EN { PARAM_VALUE.IO_XIP_EN } {
	# Procedure called to update IO_XIP_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_XIP_EN { PARAM_VALUE.IO_XIP_EN } {
	# Procedure called to validate IO_XIP_EN
	return true
}

proc update_PARAM_VALUE.MEM_INT_DMEM_EN { PARAM_VALUE.MEM_INT_DMEM_EN } {
	# Procedure called to update MEM_INT_DMEM_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_INT_DMEM_EN { PARAM_VALUE.MEM_INT_DMEM_EN } {
	# Procedure called to validate MEM_INT_DMEM_EN
	return true
}

proc update_PARAM_VALUE.MEM_INT_DMEM_SIZE { PARAM_VALUE.MEM_INT_DMEM_SIZE } {
	# Procedure called to update MEM_INT_DMEM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_INT_DMEM_SIZE { PARAM_VALUE.MEM_INT_DMEM_SIZE } {
	# Procedure called to validate MEM_INT_DMEM_SIZE
	return true
}

proc update_PARAM_VALUE.MEM_INT_IMEM_EN { PARAM_VALUE.MEM_INT_IMEM_EN } {
	# Procedure called to update MEM_INT_IMEM_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_INT_IMEM_EN { PARAM_VALUE.MEM_INT_IMEM_EN } {
	# Procedure called to validate MEM_INT_IMEM_EN
	return true
}

proc update_PARAM_VALUE.MEM_INT_IMEM_SIZE { PARAM_VALUE.MEM_INT_IMEM_SIZE } {
	# Procedure called to update MEM_INT_IMEM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_INT_IMEM_SIZE { PARAM_VALUE.MEM_INT_IMEM_SIZE } {
	# Procedure called to validate MEM_INT_IMEM_SIZE
	return true
}

proc update_PARAM_VALUE.ON_CHIP_DEBUGGER_EN { PARAM_VALUE.ON_CHIP_DEBUGGER_EN } {
	# Procedure called to update ON_CHIP_DEBUGGER_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ON_CHIP_DEBUGGER_EN { PARAM_VALUE.ON_CHIP_DEBUGGER_EN } {
	# Procedure called to validate ON_CHIP_DEBUGGER_EN
	return true
}

proc update_PARAM_VALUE.PMP_MIN_GRANULARITY { PARAM_VALUE.PMP_MIN_GRANULARITY } {
	# Procedure called to update PMP_MIN_GRANULARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PMP_MIN_GRANULARITY { PARAM_VALUE.PMP_MIN_GRANULARITY } {
	# Procedure called to validate PMP_MIN_GRANULARITY
	return true
}

proc update_PARAM_VALUE.PMP_NUM_REGIONS { PARAM_VALUE.PMP_NUM_REGIONS } {
	# Procedure called to update PMP_NUM_REGIONS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PMP_NUM_REGIONS { PARAM_VALUE.PMP_NUM_REGIONS } {
	# Procedure called to validate PMP_NUM_REGIONS
	return true
}

proc update_PARAM_VALUE.VENDOR_ID { PARAM_VALUE.VENDOR_ID } {
	# Procedure called to update VENDOR_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VENDOR_ID { PARAM_VALUE.VENDOR_ID } {
	# Procedure called to validate VENDOR_ID
	return true
}

proc update_PARAM_VALUE.XIRQ_NUM_CH { PARAM_VALUE.XIRQ_NUM_CH } {
	# Procedure called to update XIRQ_NUM_CH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XIRQ_NUM_CH { PARAM_VALUE.XIRQ_NUM_CH } {
	# Procedure called to validate XIRQ_NUM_CH
	return true
}

proc update_PARAM_VALUE.XIRQ_TRIGGER_POLARITY { PARAM_VALUE.XIRQ_TRIGGER_POLARITY } {
	# Procedure called to update XIRQ_TRIGGER_POLARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XIRQ_TRIGGER_POLARITY { PARAM_VALUE.XIRQ_TRIGGER_POLARITY } {
	# Procedure called to validate XIRQ_TRIGGER_POLARITY
	return true
}

proc update_PARAM_VALUE.XIRQ_TRIGGER_TYPE { PARAM_VALUE.XIRQ_TRIGGER_TYPE } {
	# Procedure called to update XIRQ_TRIGGER_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XIRQ_TRIGGER_TYPE { PARAM_VALUE.XIRQ_TRIGGER_TYPE } {
	# Procedure called to validate XIRQ_TRIGGER_TYPE
	return true
}


proc update_MODELPARAM_VALUE.CLOCK_FREQUENCY { MODELPARAM_VALUE.CLOCK_FREQUENCY PARAM_VALUE.CLOCK_FREQUENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_FREQUENCY}] ${MODELPARAM_VALUE.CLOCK_FREQUENCY}
}

proc update_MODELPARAM_VALUE.HART_ID { MODELPARAM_VALUE.HART_ID PARAM_VALUE.HART_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HART_ID}] ${MODELPARAM_VALUE.HART_ID}
}

proc update_MODELPARAM_VALUE.VENDOR_ID { MODELPARAM_VALUE.VENDOR_ID PARAM_VALUE.VENDOR_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VENDOR_ID}] ${MODELPARAM_VALUE.VENDOR_ID}
}

proc update_MODELPARAM_VALUE.INT_BOOTLOADER_EN { MODELPARAM_VALUE.INT_BOOTLOADER_EN PARAM_VALUE.INT_BOOTLOADER_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INT_BOOTLOADER_EN}] ${MODELPARAM_VALUE.INT_BOOTLOADER_EN}
}

proc update_MODELPARAM_VALUE.ON_CHIP_DEBUGGER_EN { MODELPARAM_VALUE.ON_CHIP_DEBUGGER_EN PARAM_VALUE.ON_CHIP_DEBUGGER_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ON_CHIP_DEBUGGER_EN}] ${MODELPARAM_VALUE.ON_CHIP_DEBUGGER_EN}
}

proc update_MODELPARAM_VALUE.DM_LEGACY_MODE { MODELPARAM_VALUE.DM_LEGACY_MODE PARAM_VALUE.DM_LEGACY_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_LEGACY_MODE}] ${MODELPARAM_VALUE.DM_LEGACY_MODE}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_A { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_A PARAM_VALUE.CPU_EXTENSION_RISCV_A } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_A}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_A}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_B { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_B PARAM_VALUE.CPU_EXTENSION_RISCV_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_B}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_B}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_C { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_C PARAM_VALUE.CPU_EXTENSION_RISCV_C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_C}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_C}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_E { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_E PARAM_VALUE.CPU_EXTENSION_RISCV_E } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_E}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_E}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_M { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_M PARAM_VALUE.CPU_EXTENSION_RISCV_M } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_M}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_M}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_U { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_U PARAM_VALUE.CPU_EXTENSION_RISCV_U } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_U}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_U}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zfinx}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zicntr}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zihpm}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zifencei}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zmmul}
}

proc update_MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu { MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu}] ${MODELPARAM_VALUE.CPU_EXTENSION_RISCV_Zxcfu}
}

proc update_MODELPARAM_VALUE.FAST_MUL_EN { MODELPARAM_VALUE.FAST_MUL_EN PARAM_VALUE.FAST_MUL_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAST_MUL_EN}] ${MODELPARAM_VALUE.FAST_MUL_EN}
}

proc update_MODELPARAM_VALUE.FAST_SHIFT_EN { MODELPARAM_VALUE.FAST_SHIFT_EN PARAM_VALUE.FAST_SHIFT_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAST_SHIFT_EN}] ${MODELPARAM_VALUE.FAST_SHIFT_EN}
}

proc update_MODELPARAM_VALUE.PMP_NUM_REGIONS { MODELPARAM_VALUE.PMP_NUM_REGIONS PARAM_VALUE.PMP_NUM_REGIONS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PMP_NUM_REGIONS}] ${MODELPARAM_VALUE.PMP_NUM_REGIONS}
}

proc update_MODELPARAM_VALUE.PMP_MIN_GRANULARITY { MODELPARAM_VALUE.PMP_MIN_GRANULARITY PARAM_VALUE.PMP_MIN_GRANULARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PMP_MIN_GRANULARITY}] ${MODELPARAM_VALUE.PMP_MIN_GRANULARITY}
}

proc update_MODELPARAM_VALUE.HPM_NUM_CNTS { MODELPARAM_VALUE.HPM_NUM_CNTS PARAM_VALUE.HPM_NUM_CNTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HPM_NUM_CNTS}] ${MODELPARAM_VALUE.HPM_NUM_CNTS}
}

proc update_MODELPARAM_VALUE.HPM_CNT_WIDTH { MODELPARAM_VALUE.HPM_CNT_WIDTH PARAM_VALUE.HPM_CNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HPM_CNT_WIDTH}] ${MODELPARAM_VALUE.HPM_CNT_WIDTH}
}

proc update_MODELPARAM_VALUE.AMO_RVS_GRANULARITY { MODELPARAM_VALUE.AMO_RVS_GRANULARITY PARAM_VALUE.AMO_RVS_GRANULARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AMO_RVS_GRANULARITY}] ${MODELPARAM_VALUE.AMO_RVS_GRANULARITY}
}

proc update_MODELPARAM_VALUE.MEM_INT_IMEM_EN { MODELPARAM_VALUE.MEM_INT_IMEM_EN PARAM_VALUE.MEM_INT_IMEM_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_INT_IMEM_EN}] ${MODELPARAM_VALUE.MEM_INT_IMEM_EN}
}

proc update_MODELPARAM_VALUE.MEM_INT_IMEM_SIZE { MODELPARAM_VALUE.MEM_INT_IMEM_SIZE PARAM_VALUE.MEM_INT_IMEM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_INT_IMEM_SIZE}] ${MODELPARAM_VALUE.MEM_INT_IMEM_SIZE}
}

proc update_MODELPARAM_VALUE.MEM_INT_DMEM_EN { MODELPARAM_VALUE.MEM_INT_DMEM_EN PARAM_VALUE.MEM_INT_DMEM_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_INT_DMEM_EN}] ${MODELPARAM_VALUE.MEM_INT_DMEM_EN}
}

proc update_MODELPARAM_VALUE.MEM_INT_DMEM_SIZE { MODELPARAM_VALUE.MEM_INT_DMEM_SIZE PARAM_VALUE.MEM_INT_DMEM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_INT_DMEM_SIZE}] ${MODELPARAM_VALUE.MEM_INT_DMEM_SIZE}
}

proc update_MODELPARAM_VALUE.ICACHE_EN { MODELPARAM_VALUE.ICACHE_EN PARAM_VALUE.ICACHE_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ICACHE_EN}] ${MODELPARAM_VALUE.ICACHE_EN}
}

proc update_MODELPARAM_VALUE.ICACHE_NUM_BLOCKS { MODELPARAM_VALUE.ICACHE_NUM_BLOCKS PARAM_VALUE.ICACHE_NUM_BLOCKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ICACHE_NUM_BLOCKS}] ${MODELPARAM_VALUE.ICACHE_NUM_BLOCKS}
}

proc update_MODELPARAM_VALUE.ICACHE_BLOCK_SIZE { MODELPARAM_VALUE.ICACHE_BLOCK_SIZE PARAM_VALUE.ICACHE_BLOCK_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ICACHE_BLOCK_SIZE}] ${MODELPARAM_VALUE.ICACHE_BLOCK_SIZE}
}

proc update_MODELPARAM_VALUE.ICACHE_ASSOCIATIVITY { MODELPARAM_VALUE.ICACHE_ASSOCIATIVITY PARAM_VALUE.ICACHE_ASSOCIATIVITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ICACHE_ASSOCIATIVITY}] ${MODELPARAM_VALUE.ICACHE_ASSOCIATIVITY}
}

proc update_MODELPARAM_VALUE.DCACHE_EN { MODELPARAM_VALUE.DCACHE_EN PARAM_VALUE.DCACHE_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DCACHE_EN}] ${MODELPARAM_VALUE.DCACHE_EN}
}

proc update_MODELPARAM_VALUE.DCACHE_NUM_BLOCKS { MODELPARAM_VALUE.DCACHE_NUM_BLOCKS PARAM_VALUE.DCACHE_NUM_BLOCKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DCACHE_NUM_BLOCKS}] ${MODELPARAM_VALUE.DCACHE_NUM_BLOCKS}
}

proc update_MODELPARAM_VALUE.DCACHE_BLOCK_SIZE { MODELPARAM_VALUE.DCACHE_BLOCK_SIZE PARAM_VALUE.DCACHE_BLOCK_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DCACHE_BLOCK_SIZE}] ${MODELPARAM_VALUE.DCACHE_BLOCK_SIZE}
}

proc update_MODELPARAM_VALUE.XIRQ_NUM_CH { MODELPARAM_VALUE.XIRQ_NUM_CH PARAM_VALUE.XIRQ_NUM_CH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.XIRQ_NUM_CH}] ${MODELPARAM_VALUE.XIRQ_NUM_CH}
}

proc update_MODELPARAM_VALUE.XIRQ_TRIGGER_TYPE { MODELPARAM_VALUE.XIRQ_TRIGGER_TYPE PARAM_VALUE.XIRQ_TRIGGER_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.XIRQ_TRIGGER_TYPE}] ${MODELPARAM_VALUE.XIRQ_TRIGGER_TYPE}
}

proc update_MODELPARAM_VALUE.XIRQ_TRIGGER_POLARITY { MODELPARAM_VALUE.XIRQ_TRIGGER_POLARITY PARAM_VALUE.XIRQ_TRIGGER_POLARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.XIRQ_TRIGGER_POLARITY}] ${MODELPARAM_VALUE.XIRQ_TRIGGER_POLARITY}
}

proc update_MODELPARAM_VALUE.IO_GPIO_NUM { MODELPARAM_VALUE.IO_GPIO_NUM PARAM_VALUE.IO_GPIO_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_GPIO_NUM}] ${MODELPARAM_VALUE.IO_GPIO_NUM}
}

proc update_MODELPARAM_VALUE.IO_MTIME_EN { MODELPARAM_VALUE.IO_MTIME_EN PARAM_VALUE.IO_MTIME_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_MTIME_EN}] ${MODELPARAM_VALUE.IO_MTIME_EN}
}

proc update_MODELPARAM_VALUE.IO_UART0_EN { MODELPARAM_VALUE.IO_UART0_EN PARAM_VALUE.IO_UART0_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART0_EN}] ${MODELPARAM_VALUE.IO_UART0_EN}
}

proc update_MODELPARAM_VALUE.IO_UART0_RX_FIFO { MODELPARAM_VALUE.IO_UART0_RX_FIFO PARAM_VALUE.IO_UART0_RX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART0_RX_FIFO}] ${MODELPARAM_VALUE.IO_UART0_RX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_UART0_TX_FIFO { MODELPARAM_VALUE.IO_UART0_TX_FIFO PARAM_VALUE.IO_UART0_TX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART0_TX_FIFO}] ${MODELPARAM_VALUE.IO_UART0_TX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_UART1_EN { MODELPARAM_VALUE.IO_UART1_EN PARAM_VALUE.IO_UART1_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART1_EN}] ${MODELPARAM_VALUE.IO_UART1_EN}
}

proc update_MODELPARAM_VALUE.IO_UART1_RX_FIFO { MODELPARAM_VALUE.IO_UART1_RX_FIFO PARAM_VALUE.IO_UART1_RX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART1_RX_FIFO}] ${MODELPARAM_VALUE.IO_UART1_RX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_UART1_TX_FIFO { MODELPARAM_VALUE.IO_UART1_TX_FIFO PARAM_VALUE.IO_UART1_TX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_UART1_TX_FIFO}] ${MODELPARAM_VALUE.IO_UART1_TX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_SPI_EN { MODELPARAM_VALUE.IO_SPI_EN PARAM_VALUE.IO_SPI_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SPI_EN}] ${MODELPARAM_VALUE.IO_SPI_EN}
}

proc update_MODELPARAM_VALUE.IO_SPI_FIFO { MODELPARAM_VALUE.IO_SPI_FIFO PARAM_VALUE.IO_SPI_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SPI_FIFO}] ${MODELPARAM_VALUE.IO_SPI_FIFO}
}

proc update_MODELPARAM_VALUE.IO_SDI_EN { MODELPARAM_VALUE.IO_SDI_EN PARAM_VALUE.IO_SDI_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SDI_EN}] ${MODELPARAM_VALUE.IO_SDI_EN}
}

proc update_MODELPARAM_VALUE.IO_SDI_FIFO { MODELPARAM_VALUE.IO_SDI_FIFO PARAM_VALUE.IO_SDI_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SDI_FIFO}] ${MODELPARAM_VALUE.IO_SDI_FIFO}
}

proc update_MODELPARAM_VALUE.IO_TWI_EN { MODELPARAM_VALUE.IO_TWI_EN PARAM_VALUE.IO_TWI_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_TWI_EN}] ${MODELPARAM_VALUE.IO_TWI_EN}
}

proc update_MODELPARAM_VALUE.IO_PWM_NUM_CH { MODELPARAM_VALUE.IO_PWM_NUM_CH PARAM_VALUE.IO_PWM_NUM_CH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_PWM_NUM_CH}] ${MODELPARAM_VALUE.IO_PWM_NUM_CH}
}

proc update_MODELPARAM_VALUE.IO_WDT_EN { MODELPARAM_VALUE.IO_WDT_EN PARAM_VALUE.IO_WDT_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_WDT_EN}] ${MODELPARAM_VALUE.IO_WDT_EN}
}

proc update_MODELPARAM_VALUE.IO_TRNG_EN { MODELPARAM_VALUE.IO_TRNG_EN PARAM_VALUE.IO_TRNG_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_TRNG_EN}] ${MODELPARAM_VALUE.IO_TRNG_EN}
}

proc update_MODELPARAM_VALUE.IO_TRNG_FIFO { MODELPARAM_VALUE.IO_TRNG_FIFO PARAM_VALUE.IO_TRNG_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_TRNG_FIFO}] ${MODELPARAM_VALUE.IO_TRNG_FIFO}
}

proc update_MODELPARAM_VALUE.IO_CFS_EN { MODELPARAM_VALUE.IO_CFS_EN PARAM_VALUE.IO_CFS_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_CFS_EN}] ${MODELPARAM_VALUE.IO_CFS_EN}
}

proc update_MODELPARAM_VALUE.IO_CFS_CONFIG { MODELPARAM_VALUE.IO_CFS_CONFIG PARAM_VALUE.IO_CFS_CONFIG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_CFS_CONFIG}] ${MODELPARAM_VALUE.IO_CFS_CONFIG}
}

proc update_MODELPARAM_VALUE.IO_CFS_IN_SIZE { MODELPARAM_VALUE.IO_CFS_IN_SIZE PARAM_VALUE.IO_CFS_IN_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_CFS_IN_SIZE}] ${MODELPARAM_VALUE.IO_CFS_IN_SIZE}
}

proc update_MODELPARAM_VALUE.IO_CFS_OUT_SIZE { MODELPARAM_VALUE.IO_CFS_OUT_SIZE PARAM_VALUE.IO_CFS_OUT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_CFS_OUT_SIZE}] ${MODELPARAM_VALUE.IO_CFS_OUT_SIZE}
}

proc update_MODELPARAM_VALUE.IO_NEOLED_EN { MODELPARAM_VALUE.IO_NEOLED_EN PARAM_VALUE.IO_NEOLED_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_NEOLED_EN}] ${MODELPARAM_VALUE.IO_NEOLED_EN}
}

proc update_MODELPARAM_VALUE.IO_NEOLED_TX_FIFO { MODELPARAM_VALUE.IO_NEOLED_TX_FIFO PARAM_VALUE.IO_NEOLED_TX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_NEOLED_TX_FIFO}] ${MODELPARAM_VALUE.IO_NEOLED_TX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_GPTMR_EN { MODELPARAM_VALUE.IO_GPTMR_EN PARAM_VALUE.IO_GPTMR_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_GPTMR_EN}] ${MODELPARAM_VALUE.IO_GPTMR_EN}
}

proc update_MODELPARAM_VALUE.IO_XIP_EN { MODELPARAM_VALUE.IO_XIP_EN PARAM_VALUE.IO_XIP_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_XIP_EN}] ${MODELPARAM_VALUE.IO_XIP_EN}
}

proc update_MODELPARAM_VALUE.IO_ONEWIRE_EN { MODELPARAM_VALUE.IO_ONEWIRE_EN PARAM_VALUE.IO_ONEWIRE_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_ONEWIRE_EN}] ${MODELPARAM_VALUE.IO_ONEWIRE_EN}
}

proc update_MODELPARAM_VALUE.IO_DMA_EN { MODELPARAM_VALUE.IO_DMA_EN PARAM_VALUE.IO_DMA_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_DMA_EN}] ${MODELPARAM_VALUE.IO_DMA_EN}
}

proc update_MODELPARAM_VALUE.IO_SLINK_EN { MODELPARAM_VALUE.IO_SLINK_EN PARAM_VALUE.IO_SLINK_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SLINK_EN}] ${MODELPARAM_VALUE.IO_SLINK_EN}
}

proc update_MODELPARAM_VALUE.IO_SLINK_RX_FIFO { MODELPARAM_VALUE.IO_SLINK_RX_FIFO PARAM_VALUE.IO_SLINK_RX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SLINK_RX_FIFO}] ${MODELPARAM_VALUE.IO_SLINK_RX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_SLINK_TX_FIFO { MODELPARAM_VALUE.IO_SLINK_TX_FIFO PARAM_VALUE.IO_SLINK_TX_FIFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_SLINK_TX_FIFO}] ${MODELPARAM_VALUE.IO_SLINK_TX_FIFO}
}

proc update_MODELPARAM_VALUE.IO_CRC_EN { MODELPARAM_VALUE.IO_CRC_EN PARAM_VALUE.IO_CRC_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_CRC_EN}] ${MODELPARAM_VALUE.IO_CRC_EN}
}

