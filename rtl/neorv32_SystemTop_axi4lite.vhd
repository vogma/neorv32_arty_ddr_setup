-- #################################################################################################
-- # << NEORV32 - Processor Top Entity with AXI4-Lite Compatible Master Interface >>               #
-- # ********************************************************************************************* #
-- # (c) "AXI", "AXI4" and "AXI4-Lite" are trademarks of Arm Holdings plc.                         #
-- # ********************************************************************************************* #
-- # BSD 3-Clause License                                                                          #
-- #                                                                                               #
-- # Copyright (c) 2023, Stephan Nolting. All rights reserved.                                     #
-- #                                                                                               #
-- # Redistribution and use in source and binary forms, with or without modification, are          #
-- # permitted provided that the following conditions are met:                                     #
-- #                                                                                               #
-- # 1. Redistributions of source code must retain the above copyright notice, this list of        #
-- #    conditions and the following disclaimer.                                                   #
-- #                                                                                               #
-- # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
-- #    conditions and the following disclaimer in the documentation and/or other materials        #
-- #    provided with the distribution.                                                            #
-- #                                                                                               #
-- # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
-- #    endorse or promote products derived from this software without specific prior written      #
-- #    permission.                                                                                #
-- #                                                                                               #
-- # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
-- # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
-- # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
-- # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
-- # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
-- # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
-- # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
-- # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
-- # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
-- # ********************************************************************************************* #
-- # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
-- #################################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library neorv32;
use neorv32.neorv32_package.all;

entity neorv32_SystemTop_axi4lite is
  generic (
    -- ------------------------------------------------------------
    -- Configuration Generics --
    -- ------------------------------------------------------------
    -- General --81247969
    CLOCK_FREQUENCY              : natural := 81247969;--100000000;      -- clock frequency of clk_i in Hz
    HART_ID                      : std_ulogic_vector(31 downto 0) := x"00000000"; -- hardware thread ID
    VENDOR_ID                    : std_ulogic_vector(31 downto 0) := x"00000000"; -- vendor's JEDEC ID
    INT_BOOTLOADER_EN            : boolean := true;   -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    -- On-Chip Debugger (OCD) --
    ON_CHIP_DEBUGGER_EN          : boolean := true;  -- implement on-chip debugger
    DM_LEGACY_MODE               : boolean := false;  -- debug module spec version: false = v1.0, true = v0.13
    -- RISC-V CPU Extensions --
    CPU_EXTENSION_RISCV_A        : boolean := false;  -- implement atomic memory operations extension?
    CPU_EXTENSION_RISCV_B        : boolean := false;  -- implement bit-manipulation extension?
    CPU_EXTENSION_RISCV_C        : boolean := true;  -- implement compressed extension?
    CPU_EXTENSION_RISCV_E        : boolean := true;  -- implement embedded RF extension?
    CPU_EXTENSION_RISCV_M        : boolean := false;  -- implement muld/div extension?
    CPU_EXTENSION_RISCV_U        : boolean := false;  -- implement user mode extension?
    CPU_EXTENSION_RISCV_Zfinx    : boolean := true;  -- implement 32-bit floating-point extension (using INT reg!)
    CPU_EXTENSION_RISCV_Zicntr   : boolean := true;   -- implement base counters?
    CPU_EXTENSION_RISCV_Zihpm    : boolean := false;  -- implement hardware performance monitors?
    CPU_EXTENSION_RISCV_Zifencei : boolean := false;  -- implement instruction stream sync.?
    CPU_EXTENSION_RISCV_Zmmul    : boolean := false;  -- implement multiply-only M sub-extension?
    CPU_EXTENSION_RISCV_Zxcfu    : boolean := false;  -- implement custom (instr.) functions unit?
    -- Extension Options --
    FAST_MUL_EN                  : boolean := true;  -- use DSPs for M extension's multiplier
    FAST_SHIFT_EN                : boolean := true;  -- use barrel shifter for shift operations
    -- Physical Memory Protection (PMP) --
    PMP_NUM_REGIONS              : natural := 0;      -- number of regions (0..16)
    PMP_MIN_GRANULARITY          : natural := 4;      -- minimal region granularity in bytes, has to be a power of 2, min 4 bytes
    -- Hardware Performance Monitors (HPM) --
    HPM_NUM_CNTS                 : natural := 0;      -- number of implemented HPM counters (0..29)
    HPM_CNT_WIDTH                : natural := 40;     -- total size of HPM counters (0..64)
    -- Atomic Memory Access - Reservation Set Granularity --
    AMO_RVS_GRANULARITY          : natural := 4;      -- size in bytes, has to be a power of 2, min 4
    -- Internal Instruction memory --
    MEM_INT_IMEM_EN              : boolean := true;   -- implement processor-internal instruction memory
    MEM_INT_IMEM_SIZE            : natural := 64*1024; -- size of processor-internal instruction memory in bytes
    -- Internal Data memory --
    MEM_INT_DMEM_EN              : boolean := true;   -- implement processor-internal data memory
    MEM_INT_DMEM_SIZE            : natural := 64*1024; -- size of processor-internal data memory in bytes
    -- Internal Cache memory --
    ICACHE_EN                    : boolean := false;  -- implement instruction cache
    ICACHE_NUM_BLOCKS            : natural := 4;      -- i-cache: number of blocks (min 1), has to be a power of 2
    ICACHE_BLOCK_SIZE            : natural := 64;     -- i-cache: block size in bytes (min 4), has to be a power of 2
    ICACHE_ASSOCIATIVITY         : natural := 1;      -- i-cache: associativity / number of sets (1=direct_mapped), has to be a power of 2
    -- Internal Data Cache (dCACHE) --
    DCACHE_EN                    : boolean := false;  -- implement data cache
    DCACHE_NUM_BLOCKS            : natural := 4;      -- d-cache: number of blocks (min 1), has to be a power of 2
    DCACHE_BLOCK_SIZE            : natural := 64;     -- d-cache: block size in bytes (min 4), has to be a power of 2
    -- External Interrupts Controller (XIRQ) --
    XIRQ_NUM_CH                  : natural := 0;      -- number of external IRQ channels (0..32)
    XIRQ_TRIGGER_TYPE            : std_logic_vector(31 downto 0) := x"FFFFFFFF"; -- trigger type: 0=level, 1=edge
    XIRQ_TRIGGER_POLARITY        : std_logic_vector(31 downto 0) := x"FFFFFFFF"; -- trigger polarity: 0=low-level/falling-edge, 1=high-level/rising-edge
    -- Processor peripherals --
    IO_GPIO_NUM                  : natural := 0;      -- number of GPIO input/output pairs (0..64)
    IO_MTIME_EN                  : boolean := true;   -- implement machine system timer (MTIME)?
    IO_UART0_EN                  : boolean := true;   -- implement primary universal asynchronous receiver/transmitter (UART0)?
    IO_UART0_RX_FIFO             : natural := 1;      -- RX fifo depth, has to be a power of two, min 1
    IO_UART0_TX_FIFO             : natural := 1;      -- TX fifo depth, has to be a power of two, min 1
    IO_UART1_EN                  : boolean := true;   -- implement secondary universal asynchronous receiver/transmitter (UART1)?
    IO_UART1_RX_FIFO             : natural := 1;      -- RX fifo depth, has to be a power of two, min 1
    IO_UART1_TX_FIFO             : natural := 1;      -- TX fifo depth, has to be a power of two, min 1
    IO_SPI_EN                    : boolean := true;   -- implement serial peripheral interface (SPI)?
    IO_SPI_FIFO                  : natural := 1;      -- SPI RTX fifo depth, has to be a power of two, min 1
    IO_SDI_EN                    : boolean := false;  -- implement serial data interface (SDI)?
    IO_SDI_FIFO                  : natural := 1;      -- RTX fifo depth, has to be zero or a power of two, min 1
    IO_TWI_EN                    : boolean := true;   -- implement two-wire interface (TWI)?
    IO_PWM_NUM_CH                : natural := 0;      -- number of PWM channels to implement (0..12); 0 = disabled
    IO_WDT_EN                    : boolean := true;   -- implement watch dog timer (WDT)?
    IO_TRNG_EN                   : boolean := true;   -- implement true random number generator (TRNG)?
    IO_TRNG_FIFO                 : natural := 1;      -- TRNG fifo depth, has to be a power of two, min 1
    IO_CFS_EN                    : boolean := false;  -- implement custom functions subsystem (CFS)?
    IO_CFS_CONFIG                : std_logic_vector(31 downto 0) := x"00000000"; -- custom CFS configuration generic
    IO_CFS_IN_SIZE               : positive := 32;    -- size of CFS input conduit in bits
    IO_CFS_OUT_SIZE              : positive := 32;    -- size of CFS output conduit in bits
    IO_NEOLED_EN                 : boolean := true;   -- implement NeoPixel-compatible smart LED interface (NEOLED)?
    IO_NEOLED_TX_FIFO            : natural := 1;      -- NEOLED TX FIFO depth, 1..32k, has to be a power of two
    IO_GPTMR_EN                  : boolean := false;  -- implement general purpose timer (GPTMR)?
    IO_XIP_EN                    : boolean := false;  -- implement execute in place module (XIP)?
    IO_ONEWIRE_EN                : boolean := false;  -- implement 1-wire interface (ONEWIRE)?
    IO_DMA_EN                    : boolean := false;  -- implement direct memory access controller (DMA)?
    IO_SLINK_EN                  : boolean := false;  -- implement stream link interface (SLINK)?
    IO_SLINK_RX_FIFO             : natural := 1;      -- RX fifo depth, has to be a power of two, min 1
    IO_SLINK_TX_FIFO             : natural := 1;      -- TX fifo depth, has to be a power of two, min 1
    IO_CRC_EN                    : boolean := false   -- implement cyclic redundancy check unit (CRC)?
  );
  port (
    -- ------------------------------------------------------------
    -- AXI4-Lite-Compatible Master Interface --
    -- ------------------------------------------------------------
    -- Clock and Reset --
    m_axi_aclk     : in  std_logic;
    m_axi_aresetn  : in  std_logic;
    -- Write Address Channel --
    m_axi_awaddr   : out std_logic_vector(31 downto 0);
    m_axi_awprot   : out std_logic_vector(2 downto 0);
    m_axi_awvalid  : out std_logic;
    m_axi_awready  : in  std_logic;
    -- Write Data Channel --
    m_axi_wdata    : out std_logic_vector(31 downto 0);
    m_axi_wstrb    : out std_logic_vector(3 downto 0);
    m_axi_wvalid   : out std_logic;
    m_axi_wready   : in  std_logic;
    -- Read Address Channel --
    m_axi_araddr   : out std_logic_vector(31 downto 0);
    m_axi_arprot   : out std_logic_vector(2 downto 0);
    m_axi_arvalid  : out std_logic;
    m_axi_arready  : in  std_logic;
    -- Read Data Channel --
    m_axi_rdata    : in  std_logic_vector(31 downto 0);
    m_axi_rresp    : in  std_logic_vector(1 downto 0);
    m_axi_rvalid   : in  std_logic;
    m_axi_rready   : out std_logic;
    -- Write Response Channel --
    m_axi_bresp    : in  std_logic_vector(1 downto 0);
    m_axi_bvalid   : in  std_logic;
    m_axi_bready   : out std_logic;
    -- ------------------------------------------------------------
    -- Processor IO --
    -- ------------------------------------------------------------
    -- GPIO (available if IO_GPIO_EN = true) --
    gpio_o         : out std_logic_vector(7 downto 0); -- parallel output
    -- primary UART0 (available if IO_UART0_EN = true) --
    uart0_txd_o    : out std_logic; -- UART0 send data
    uart0_rxd_i    : in  std_logic -- UART0 receive data
  );
end entity;

architecture neorv32_SystemTop_axi4lite_rtl of neorv32_SystemTop_axi4lite is

  -- type conversion --
  constant IO_CFS_CONFIG_INT         : std_ulogic_vector(31 downto 0) := std_ulogic_vector(IO_CFS_CONFIG);
  constant XIRQ_TRIGGER_TYPE_INT     : std_ulogic_vector(31 downto 0) := std_ulogic_vector(XIRQ_TRIGGER_TYPE);
  constant XIRQ_TRIGGER_POLARITY_INT : std_ulogic_vector(31 downto 0) := std_ulogic_vector(XIRQ_TRIGGER_POLARITY);
  --
  signal clk_i_int          : std_ulogic;
  signal rstn_i_int         : std_ulogic;

  --
  signal gpio_o_int         : std_ulogic_vector(63 downto 0);
  --
  signal uart0_txd_o_int    : std_ulogic;
  signal uart0_rxd_i_int    : std_ulogic;

  --
  signal mtime_irq_i_int    : std_ulogic;
  signal msw_irq_i_int      : std_ulogic;
  signal mext_irq_i_int     : std_ulogic;

  -- internal wishbone bus --
  type wb_bus_t is record
    adr : std_ulogic_vector(31 downto 0); -- address
    di  : std_ulogic_vector(31 downto 0); -- processor input data
    do  : std_ulogic_vector(31 downto 0); -- processor output data
    we  : std_ulogic; -- write enable
    sel : std_ulogic_vector(03 downto 0); -- byte enable
    stb : std_ulogic; -- strobe
    cyc : std_ulogic; -- valid cycle
    ack : std_ulogic; -- transfer acknowledge
    err : std_ulogic; -- transfer error
    tag : std_ulogic_vector(02 downto 0); -- tag
  end record;
  signal wb_core : wb_bus_t;

  -- AXI bridge control --
  type ctrl_t is record
    radr_received : std_ulogic;
    wadr_received : std_ulogic;
    wdat_received : std_ulogic;
  end record;
  signal ctrl : ctrl_t;

  signal ack_read, ack_write : std_ulogic; -- normal transfer termination
  signal err_read, err_write : std_ulogic; -- error transfer termination

begin
  -- The Core Of The Problem ----------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  neorv32_top_inst: neorv32_top
  generic map (
    -- General --
    CLOCK_FREQUENCY              => CLOCK_FREQUENCY,   -- clock frequency of clk_i in Hz
    INT_BOOTLOADER_EN            => true,              -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    -- RISC-V CPU Extensions --
    CPU_EXTENSION_RISCV_C        => true,              -- implement compressed extension?
    CPU_EXTENSION_RISCV_M        => true,              -- implement mul/div extension?
    CPU_EXTENSION_RISCV_Zicntr   => true,              -- implement base counters?
    -- Internal Instruction memory --
    MEM_INT_IMEM_EN              => true,              -- implement processor-internal instruction memory
    MEM_INT_IMEM_SIZE            => MEM_INT_IMEM_SIZE, -- size of processor-internal instruction memory in bytes
    -- Internal Data memory --
    MEM_INT_DMEM_EN              => true,              -- implement processor-internal data memory
    MEM_INT_DMEM_SIZE            => MEM_INT_DMEM_SIZE, -- size of processor-internal data memory in bytes
    -- External memory interface --
    MEM_EXT_EN                   => true,               -- implement external memory bus interface?
    MEM_EXT_TIMEOUT              => 0,                  -- cycles after a pending bus access auto-terminates (0 = disabled)
    MEM_EXT_PIPE_MODE            => false,              -- protocol: false=classic/standard wishbone mode, true=pipelined wishbone mode
    MEM_EXT_BIG_ENDIAN           => false,              -- byte order: true=big-endian, false=little-endian
    MEM_EXT_ASYNC_RX             => false,              -- use register buffer for RX data when false
    MEM_EXT_ASYNC_TX             => false,              -- use register buffer for TX data when false
    -- Processor peripherals --
    IO_GPIO_NUM                  => 8,                 -- number of GPIO input/output pairs (0..64)
    IO_MTIME_EN                  => true,              -- implement machine system timer (MTIME)?
    IO_UART0_EN                  => true               -- implement primary universal asynchronous receiver/transmitter (UART0)?
  )
  port map (
    -- Global control --
    clk_i       => clk_i_int,       -- global clock, rising edge
    rstn_i      => rstn_i_int,      -- global reset, low-active, async
    -- GPIO (available if IO_GPIO_EN = true) --
    gpio_o      => gpio_o_int,  -- parallel output
    -- primary UART0 (available if IO_GPIO_NUM > 0) --
    uart0_txd_o => uart0_txd_o, -- UART0 send data
    uart0_rxd_i => uart0_rxd_i, -- UART0 receive data
        -- Wishbone bus interface (available if MEM_EXT_EN = true) --
    wb_tag_o       => wb_core.tag,     -- tag
    wb_adr_o       => wb_core.adr,     -- address
    wb_dat_i       => wb_core.di,      -- read data
    wb_dat_o       => wb_core.do,      -- write data
    wb_we_o        => wb_core.we,      -- read/write
    wb_sel_o       => wb_core.sel,     -- byte enable
    wb_stb_o       => wb_core.stb,     -- strobe
    wb_cyc_o       => wb_core.cyc,     -- valid cycle
    wb_ack_i       => wb_core.ack,     -- transfer acknowledge
    wb_err_i       => wb_core.err    -- transfer error
  );
  
  
 


  gpio_o             <= std_logic_vector(gpio_o_int(7 downto 0));
 
  uart0_txd_o        <= std_logic(uart0_txd_o_int);
  uart0_rxd_i_int    <= std_ulogic(uart0_rxd_i);
  


  -- Wishbone to AXI4-Lite Bridge -----------------------------------------------------------
  -- -------------------------------------------------------------------------------------------

  -- access arbiter --
  axi_access_arbiter: process(rstn_i_int, clk_i_int)
  begin
    if (rstn_i_int = '0') then
      ctrl.radr_received <= '0';
      ctrl.wadr_received <= '0';
      ctrl.wdat_received <= '0';
    elsif rising_edge(clk_i_int) then
      if (wb_core.cyc = '0') then -- idle
        ctrl.radr_received <= '0';
        ctrl.wadr_received <= '0';
        ctrl.wdat_received <= '0';
      else -- busy
        -- "read address received" flag --
        if (wb_core.we = '0') then -- pending READ
          if (m_axi_arready = '1') then -- read address received by interconnect?
            ctrl.radr_received <= '1';
          end if;
        end if;
        -- "write address received" flag --
        if (wb_core.we = '1') then -- pending WRITE
          if (m_axi_awready = '1') then -- write address received by interconnect?
            ctrl.wadr_received <= '1';
          end if;
        end if;
        -- "write data received" flag --
        if (wb_core.we = '1') then -- pending WRITE
          if (m_axi_wready = '1') then -- write data received by interconnect?
            ctrl.wdat_received <= '1';
          end if;
        end if;
      end if;
    end if;
  end process axi_access_arbiter;


  -- AXI4-Lite Global Signals --
  clk_i_int    <= std_ulogic(m_axi_aclk);
  rstn_i_int   <= std_ulogic(m_axi_aresetn);

  -- AXI4-Lite Read Address Channel --
  m_axi_araddr  <= std_logic_vector(wb_core.adr);
  m_axi_arvalid <= std_logic((wb_core.cyc and (not wb_core.we)) and (not ctrl.radr_received));
--m_axi_arprot  <= "000"; -- recommended by Xilinx
  m_axi_arprot(0) <= wb_core.tag(0); -- 0:unprivileged access, 1:privileged access
  m_axi_arprot(1) <= wb_core.tag(1); -- 0:secure access, 1:non-secure access
  m_axi_arprot(2) <= wb_core.tag(2); -- 0:data access, 1:instruction access

  -- AXI4-Lite Read Data Channel --
  m_axi_rready <= std_logic(wb_core.cyc and (not wb_core.we));
  wb_core.di   <= std_ulogic_vector(m_axi_rdata);
  ack_read     <= std_ulogic(m_axi_rvalid);
  err_read     <= '0' when (m_axi_rresp = "00") else '1'; -- read response = ok? check this signal only when m_axi_rvalid = '1'

  -- AXI4-Lite Write Address Channel --
  m_axi_awaddr  <= std_logic_vector(wb_core.adr);
  m_axi_awvalid <= std_logic((wb_core.cyc and wb_core.we) and (not ctrl.wadr_received));
--m_axi_awprot  <= "000"; -- recommended by Xilinx
  m_axi_awprot(0) <= wb_core.tag(0); -- 0:unprivileged access, 1:privileged access
  m_axi_awprot(1) <= wb_core.tag(1); -- 0:secure access, 1:non-secure access
  m_axi_awprot(2) <= wb_core.tag(2); -- 0:data access, 1:instruction access

  -- AXI4-Lite Write Data Channel --
  m_axi_wdata  <= std_logic_vector(wb_core.do);
  m_axi_wvalid <= std_logic((wb_core.cyc and wb_core.we) and (not ctrl.wdat_received));
  m_axi_wstrb  <= std_logic_vector(wb_core.sel); -- byte-enable

  -- AXI4-Lite Write Response Channel --
  m_axi_bready <= std_logic(wb_core.cyc and wb_core.we);
  ack_write    <= std_ulogic(m_axi_bvalid);
  err_write    <= '0' when (m_axi_bresp = "00") else '1'; -- write response = ok? check this signal only when m_axi_bvalid = '1'

  -- Wishbone transfer termination --
  wb_core.ack <= ack_read or ack_write;
  wb_core.err <= (ack_read and err_read) or (ack_write and err_write);


end architecture;
