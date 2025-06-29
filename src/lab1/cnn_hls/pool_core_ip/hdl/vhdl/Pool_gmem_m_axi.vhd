-- ==============================================================
-- File generated on Fri Dec 06 22:28:59 +0800 2019
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi is
    generic (
        CONSERVATIVE              : INTEGER := 0;
        NUM_READ_OUTSTANDING      : INTEGER := 2;
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_READ_BURST_LENGTH     : INTEGER := 16;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 2#000#;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        -- system signal
        ACLK            : in STD_LOGIC;
        ARESET          : in STD_LOGIC;
        ACLK_EN         : in STD_LOGIC;
        -- write address channel
        AWID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        AWADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        AWSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        AWBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        AWLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        AWCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        AWPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        AWQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        AWREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        AWUSER          : out STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        -- write data channel
        WID             : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        WDATA           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        -- write response channel
        BID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        BRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        BUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        -- read address channel
        ARID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        ARADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        ARSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        ARBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        ARLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        ARCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        ARPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        ARQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        ARREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        ARUSER          : out STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        -- read data channel
        RID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        RDATA           : in  STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        RRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;

        -- internal bus ports
        -- write address channel
        I_AWID          : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_AWADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_AWLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_AWSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWUSER        : in  STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        I_AWVALID       : in  STD_LOGIC;
        I_AWREADY       : out STD_LOGIC;
        -- write data channel
        I_WID           : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_WDATA         : in  STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_WSTRB         : in  STD_LOGIC_VECTOR(USER_DW/8-1 downto 0);
        I_WLAST         : in  STD_LOGIC;
        I_WUSER         : in  STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH-1 downto 0);
        I_WVALID        : in  STD_LOGIC;
        I_WREADY        : out STD_LOGIC;
        -- write response channel
        I_BID           : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_BRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_BUSER         : out STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH-1 downto 0);
        I_BVALID        : out STD_LOGIC;
        I_BREADY        : in  STD_LOGIC;
        -- read address channel
        I_ARID          : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_ARADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_ARLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_ARSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARUSER        : in  STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        I_ARVALID       : in  STD_LOGIC;
        I_ARREADY       : out STD_LOGIC;
        -- read data channel
        I_RID           : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_RDATA         : out STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_RRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_RLAST         : out STD_LOGIC;
        I_RUSER         : out STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH-1 downto 0);
        I_RVALID        : out STD_LOGIC;
        I_RREADY        : in  STD_LOGIC);
end entity Pool_gmem_m_axi;

architecture behave of Pool_gmem_m_axi is
    component Pool_gmem_m_axi_write is
        generic (
            NUM_WRITE_OUTSTANDING     : INTEGER := 1;
            MAX_WRITE_BURST_LENGTH    : INTEGER := 1;
            C_M_AXI_ID_WIDTH          : INTEGER := 1;
            C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
            C_TARGET_ADDR             : INTEGER := 16#00000000#;
            C_M_AXI_DATA_WIDTH        : INTEGER := 32;
            C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
            C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
            C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
            C_USER_VALUE              : INTEGER := 0;
            C_PROT_VALUE              : INTEGER := 0;
            C_CACHE_VALUE             : INTEGER := 2#0011#;
            USER_DW                   : INTEGER := 16;
            USER_AW                   : INTEGER := 32;
            USER_MAXREQS              : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESET          : in  STD_LOGIC;
            ACLK_EN         : in  STD_LOGIC;
            AWID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            AWADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
            AWLEN           : out UNSIGNED(7 downto 0);
            AWSIZE          : out UNSIGNED(2 downto 0);
            AWBURST         : out UNSIGNED(1 downto 0);
            AWLOCK          : out UNSIGNED(1 downto 0);
            AWCACHE         : out UNSIGNED(3 downto 0);
            AWPROT          : out UNSIGNED(2 downto 0);
            AWQOS           : out UNSIGNED(3 downto 0);
            AWREGION        : out UNSIGNED(3 downto 0);
            AWUSER          : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
            AWVALID         : out STD_LOGIC;
            AWREADY         : in  STD_LOGIC;
            WID             : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            WDATA           : out UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
            WSTRB           : out UNSIGNED(C_M_AXI_DATA_WIDTH/8-1 downto 0);
            WLAST           : out STD_LOGIC;
            WUSER           : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
            WVALID          : out STD_LOGIC;
            WREADY          : in  STD_LOGIC;
            BID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            BRESP           : in  UNSIGNED(1 downto 0);
            BUSER           : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
            BVALID          : in  STD_LOGIC;
            BREADY          : out STD_LOGIC;
            wreq_valid      : in  STD_LOGIC;
            wreq_ack        : out STD_LOGIC;
            wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            wreq_length     : in  UNSIGNED(31 downto 0);
            wreq_cache      : in  UNSIGNED(3 downto 0);
            wreq_prot       : in  UNSIGNED(2 downto 0);
            wreq_qos        : in  UNSIGNED(3 downto 0);
            wreq_region     : in  UNSIGNED(3 downto 0);
            wreq_user       : in  UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
            wdata_valid     : in  STD_LOGIC;
            wdata_ack       : out STD_LOGIC;
            wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
            wdata_user      : in  UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
            wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
            wrsp_valid      : out STD_LOGIC;
            wrsp_ack        : in  STD_LOGIC;
            wrsp            : out UNSIGNED(1 downto 0));
    end component Pool_gmem_m_axi_write;

    component Pool_gmem_m_axi_read is
        generic (
            NUM_READ_OUTSTANDING      : INTEGER := 1;
            MAX_READ_BURST_LENGTH     : INTEGER := 1;
            C_M_AXI_ID_WIDTH          : INTEGER := 1;
            C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
            C_TARGET_ADDR             : INTEGER := 16#00000000#;
            C_M_AXI_DATA_WIDTH        : INTEGER := 32;
            C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
            C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
            C_USER_VALUE              : INTEGER := 0;
            C_PROT_VALUE              : INTEGER := 0;
            C_CACHE_VALUE             : INTEGER := 2#0011#;
            USER_DW                   : INTEGER := 16;
            USER_AW                   : INTEGER := 32;
            USER_MAXREQS              : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESET          : in  STD_LOGIC;
            ACLK_EN         : in  STD_LOGIC;
            ARID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            ARADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
            ARLEN           : out UNSIGNED(7 downto 0);
            ARSIZE          : out UNSIGNED(2 downto 0);
            ARBURST         : out UNSIGNED(1 downto 0);
            ARLOCK          : out UNSIGNED(1 downto 0);
            ARCACHE         : out UNSIGNED(3 downto 0);
            ARPROT          : out UNSIGNED(2 downto 0);
            ARQOS           : out UNSIGNED(3 downto 0);
            ARREGION        : out UNSIGNED(3 downto 0);
            ARUSER          : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
            ARVALID         : out STD_LOGIC;
            ARREADY         : in  STD_LOGIC;
            RID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            RDATA           : in  UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
            RRESP           : in  UNSIGNED(1 downto 0);
            RLAST           : in  STD_LOGIC;
            RUSER           : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
            RVALID          : in  STD_LOGIC;
            RREADY          : out STD_LOGIC;
            rreq_valid      : in  STD_LOGIC;
            rreq_ack        : out STD_LOGIC;
            rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            rreq_length     : in  UNSIGNED(31 downto 0);
            rreq_cache      : in  UNSIGNED(3 downto 0);
            rreq_prot       : in  UNSIGNED(2 downto 0);
            rreq_qos        : in  UNSIGNED(3 downto 0);
            rreq_region     : in  UNSIGNED(3 downto 0);
            rreq_user       : in  UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
            rdata_valid     : out STD_LOGIC;
            rdata_ack       : in  STD_LOGIC;
            rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
            rrsp            : out UNSIGNED(1 downto 0));
    end component Pool_gmem_m_axi_read;

    component Pool_gmem_m_axi_throttl is
        generic (
            USED_FIX      : BOOLEAN := true;
            FIX_VALUE     : INTEGER := 4;
            ADDR_WIDTH    : INTEGER := 32;
            DATA_WIDTH    : INTEGER := 32;
            DEPTH         : INTEGER := 16;
            USER_MAXREQS  : INTEGER := 16;
            CONSERVATIVE  : INTEGER := 0;
            AVERAGE_MODE  : BOOLEAN := false);
        port (
            clk             : in  STD_LOGIC;
            reset           : in  STD_LOGIC;
            ce              : in  STD_LOGIC;
            in_addr         : in  STD_LOGIC_VECTOR;
            in_len          : in  STD_LOGIC_VECTOR;
            in_req_valid    : in  STD_LOGIC;
            out_req_ready   : out STD_LOGIC;
            out_addr        : out STD_LOGIC_VECTOR;
            out_len         : out STD_LOGIC_VECTOR;
            out_req_valid   : out STD_LOGIC;
            in_req_ready    : in  STD_LOGIC;
            in_data         : in  STD_LOGIC_VECTOR;
            in_strb         : in  STD_LOGIC_VECTOR;
            in_last         : in  STD_LOGIC;
            in_data_valid   : in  STD_LOGIC;
            out_data_ready  : out STD_LOGIC;
            out_data        : out STD_LOGIC_VECTOR;
            out_strb        : out STD_LOGIC_VECTOR;
            out_last        : out STD_LOGIC;
            out_data_valid  : out STD_LOGIC;
            in_data_ready   : in  STD_LOGIC);
    end component Pool_gmem_m_axi_throttl;

    signal      AWADDR_Dummy    : STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal      AWLEN_Dummy     : STD_LOGIC_VECTOR(7 downto 0);
    signal      AWVALID_Dummy   : STD_LOGIC;
    signal      AWREADY_Dummy   : STD_LOGIC;
    signal      WDATA_Dummy     : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
    signal      WSTRB_Dummy     : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    signal      WLAST_Dummy     : STD_LOGIC;
    signal      WVALID_Dummy    : STD_LOGIC;
    signal      WREADY_Dummy    : STD_LOGIC;

begin

    wreq_throttl : Pool_gmem_m_axi_throttl
        generic map (
            USED_FIX        => false,
            ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
            DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
            DEPTH           => MAX_WRITE_BURST_LENGTH,
            USER_MAXREQS    => NUM_WRITE_OUTSTANDING,
            CONSERVATIVE    => CONSERVATIVE,
            AVERAGE_MODE    => false)
        port map (
            clk             => ACLK,
            reset           => ARESET,
            ce              => ACLK_EN,
            in_addr         => AWADDR_Dummy,
            in_len          => AWLEN_Dummy,
            in_req_valid    => AWVALID_Dummy,
            out_req_ready   => AWREADY_Dummy,
            out_addr        => AWADDR,
            out_len         => AWLEN,
            out_req_valid   => AWVALID,
            in_req_ready    => AWREADY,
            in_data         => WDATA_Dummy,
            in_strb         => WSTRB_Dummy,
            in_last         => WLAST_Dummy,
            in_data_valid   => WVALID_Dummy,
            out_data_ready  => WREADY_Dummy,
            out_data        => WDATA,
            out_strb        => WSTRB,
            out_last        => WLAST,
            out_data_valid  => WVALID,
            in_data_ready   => WREADY);

    I_BID   <= (others => '0');
    I_BUSER <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_USER_VALUE, I_BUSER'length));
    I_RID   <= (others => '0');
    I_RLAST <= '0';
    I_RUSER <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_USER_VALUE, I_RUSER'length));

    -- Instantiation
    bus_write : Pool_gmem_m_axi_write
        generic map (
            NUM_WRITE_OUTSTANDING     => NUM_WRITE_OUTSTANDING,
            MAX_WRITE_BURST_LENGTH    => MAX_WRITE_BURST_LENGTH,
            C_M_AXI_ID_WIDTH          => C_M_AXI_ID_WIDTH,
            C_M_AXI_ADDR_WIDTH        => C_M_AXI_ADDR_WIDTH,
            C_TARGET_ADDR             => C_TARGET_ADDR,
            C_M_AXI_DATA_WIDTH        => C_M_AXI_DATA_WIDTH,
            C_M_AXI_AWUSER_WIDTH      => C_M_AXI_AWUSER_WIDTH,
            C_M_AXI_WUSER_WIDTH       => C_M_AXI_WUSER_WIDTH,
            C_M_AXI_BUSER_WIDTH       => C_M_AXI_BUSER_WIDTH,
            C_USER_VALUE              => C_USER_VALUE,
            C_PROT_VALUE              => C_PROT_VALUE,
            C_CACHE_VALUE             => C_CACHE_VALUE,
            USER_DW                   => USER_DW,
            USER_AW                   => USER_AW,
            USER_MAXREQS              => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESET                      => ARESET,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(AWID)      => AWID,
            STD_LOGIC_VECTOR(AWADDR)    => AWADDR_Dummy,
            STD_LOGIC_VECTOR(AWLEN)     => AWLEN_Dummy,
            STD_LOGIC_VECTOR(AWSIZE)    => AWSIZE,
            STD_LOGIC_VECTOR(AWBURST)   => AWBURST,
            STD_LOGIC_VECTOR(AWLOCK)    => AWLOCK,
            STD_LOGIC_VECTOR(AWCACHE)   => AWCACHE,
            STD_LOGIC_VECTOR(AWPROT)    => AWPROT,
            STD_LOGIC_VECTOR(AWQOS)     => AWQOS,
            STD_LOGIC_VECTOR(AWREGION)  => AWREGION,
            STD_LOGIC_VECTOR(AWUSER)    => AWUSER,
            AWVALID                     => AWVALID_Dummy,
            AWREADY                     => AWREADY_Dummy,
            STD_LOGIC_VECTOR(WID)       => WID,
            STD_LOGIC_VECTOR(WDATA)     => WDATA_Dummy,
            STD_LOGIC_VECTOR(WSTRB)     => WSTRB_Dummy,
            WLAST                       => WLAST_Dummy,
            STD_LOGIC_VECTOR(WUSER)     => WUSER,
            WVALID                      => WVALID_Dummy,
            WREADY                      => WREADY_Dummy,
            BID                         => UNSIGNED(BID),
            BRESP                       => UNSIGNED(BRESP),
            BUSER                       => UNSIGNED(BUSER),
            BVALID                      => BVALID,
            BREADY                      => BREADY,
            wreq_valid                  => I_AWVALID,
            wreq_ack                    => I_AWREADY,
            wreq_addr                   => UNSIGNED(I_AWADDR),
            wreq_length                 => UNSIGNED(I_AWLEN),
            wreq_cache                  => UNSIGNED(I_AWCACHE),
            wreq_prot                   => UNSIGNED(I_AWPROT),
            wreq_qos                    => UNSIGNED(I_AWQOS),
            wreq_region                 => UNSIGNED(I_AWREGION),
            wreq_user                   => UNSIGNED(I_AWUSER),
            wdata_valid                 => I_WVALID,
            wdata_ack                   => I_WREADY,
            wdata_strb                  => UNSIGNED(I_WSTRB),
            wdata_user                  => UNSIGNED(I_WUSER),
            wdata_data                  => UNSIGNED(I_WDATA),
            wrsp_valid                  => I_BVALID,
            wrsp_ack                    => I_BREADY,
            STD_LOGIC_VECTOR(wrsp)      => I_BRESP);

    bus_read : Pool_gmem_m_axi_read
        generic map (
            NUM_READ_OUTSTANDING      => NUM_READ_OUTSTANDING,
            MAX_READ_BURST_LENGTH     => MAX_READ_BURST_LENGTH,
            C_M_AXI_ID_WIDTH          => C_M_AXI_ID_WIDTH,
            C_M_AXI_ADDR_WIDTH        => C_M_AXI_ADDR_WIDTH,
            C_TARGET_ADDR             => C_TARGET_ADDR,
            C_M_AXI_DATA_WIDTH        => C_M_AXI_DATA_WIDTH,
            C_M_AXI_ARUSER_WIDTH      => C_M_AXI_ARUSER_WIDTH,
            C_M_AXI_RUSER_WIDTH       => C_M_AXI_RUSER_WIDTH,
            C_USER_VALUE              => C_USER_VALUE,
            C_PROT_VALUE              => C_PROT_VALUE,
            C_CACHE_VALUE             => C_CACHE_VALUE,
            USER_DW                   => USER_DW,
            USER_AW                   => USER_AW,
            USER_MAXREQS              => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESET                      => ARESET,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(ARID)      => ARID,
            STD_LOGIC_VECTOR(ARADDR)    => ARADDR,
            STD_LOGIC_VECTOR(ARLEN)     => ARLEN,
            STD_LOGIC_VECTOR(ARSIZE)    => ARSIZE,
            STD_LOGIC_VECTOR(ARBURST)   => ARBURST,
            STD_LOGIC_VECTOR(ARLOCK)    => ARLOCK,
            STD_LOGIC_VECTOR(ARCACHE)   => ARCACHE,
            STD_LOGIC_VECTOR(ARPROT)    => ARPROT,
            STD_LOGIC_VECTOR(ARQOS)     => ARQOS,
            STD_LOGIC_VECTOR(ARREGION)  => ARREGION,
            STD_LOGIC_VECTOR(ARUSER)    => ARUSER,
            ARVALID                     => ARVALID,
            ARREADY                     => ARREADY,
            RID                         => UNSIGNED(RID),
            RDATA                       => UNSIGNED(RDATA),
            RRESP                       => UNSIGNED(RRESP),
            RLAST                       => RLAST,
            RUSER                       => UNSIGNED(RUSER),
            RVALID                      => RVALID,
            RREADY                      => RREADY,
            rreq_valid                  => I_ARVALID,
            rreq_ack                    => I_ARREADY,
            rreq_addr                   => UNSIGNED(I_ARADDR),
            rreq_length                 => UNSIGNED(I_ARLEN),
            rreq_cache                  => UNSIGNED(I_ARCACHE),
            rreq_prot                   => UNSIGNED(I_ARPROT),
            rreq_qos                    => UNSIGNED(I_ARQOS),
            rreq_region                 => UNSIGNED(I_ARREGION),
            rreq_user                   => UNSIGNED(I_ARUSER),
            rdata_valid                 => I_RVALID,
            rdata_ack                   => I_RREADY,
            STD_LOGIC_VECTOR(rdata_data)=> I_RDATA,
            STD_LOGIC_VECTOR(rrsp)      => I_RRESP);

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_reg_slice is
    generic (
        N           : INTEGER := 8);
    port (
        -- system signals
        sclk        : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        -- slave side
        s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
        s_valid     : in  STD_LOGIC;
        s_ready     : out STD_LOGIC;
        -- master side
        m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
        m_valid     : out STD_LOGIC;
        m_ready     : in  STD_LOGIC);
end entity Pool_gmem_m_axi_reg_slice;

architecture behave of Pool_gmem_m_axi_reg_slice is
    constant ZERO                     : STD_LOGIC_VECTOR(1 downto 0) := "10";
    constant ONE                      : STD_LOGIC_VECTOR(1 downto 0) := "11";
    constant TWO                      : STD_LOGIC_VECTOR(1 downto 0) := "01";
    signal   data_p1                  : STD_LOGIC_VECTOR(N-1 downto 0);
    signal   data_p2                  : STD_LOGIC_VECTOR(N-1 downto 0);
    signal   load_p1                  : STD_LOGIC;
    signal   load_p2                  : STD_LOGIC;
    signal   load_p1_from_p2          : STD_LOGIC;
    signal   s_ready_t                : STD_LOGIC;
    signal   state                    : STD_LOGIC_VECTOR(1 downto 0);
    signal   next_st                     : STD_LOGIC_VECTOR(1 downto 0);
begin
    s_ready <= s_ready_t;
    m_data  <= data_p1;
    m_valid <= state(0);

    load_p1 <= '1' when (state = ZERO and s_valid = '1') or
                        (state = ONE  and s_valid = '1' and m_ready = '1') or
                        (state = TWO  and m_ready = '1')
               else '0';

    load_p2         <= s_valid and s_ready_t;
    load_p1_from_p2 <= '1' when state = TWO else '0';

    data_p1_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (load_p1 = '1') then
                if (load_p1_from_p2 = '1') then
                    data_p1 <= data_p2;
                else
                    data_p1 <= s_data;
                end if;
            end if;
        end if;
    end process;

    data_p2_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (load_p2 = '1') then
                data_p2 <= s_data;
            end if;
        end if;
    end process;

    s_ready_t_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (reset = '1') then
                s_ready_t <= '0';
            elsif (state = ZERO) then
                s_ready_t <= '1';
            elsif (state = ONE and next_st = TWO) then
                s_ready_t <= '0';
            elsif (state = TWO and next_st = ONE) then
                s_ready_t <= '1';
            end if;
        end if;
    end process;

    state_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (reset = '1') then
                state <= ZERO;
            else
                state <= next_st;
            end if;
        end if;
    end process;

    next_st_proc : process (state, s_valid, s_ready_t, m_ready)
    begin
        case state is
            when ZERO =>
                if (s_valid = '1' and s_ready_t = '1') then
                    next_st <= ONE;
                else
                    next_st <= ZERO;
                end if;
            when ONE =>
                if (s_valid = '0' and m_ready = '1') then
                    next_st <= ZERO;
                elsif (s_valid = '1' and m_ready = '0') then
                    next_st <= TWO;
                else
                    next_st <= ONE;
                end if;
            when TWO =>
                if (m_ready = '1') then
                    next_st <= ONE;
                else
                    next_st <= TWO;
                end if;
            when others =>
                next_st <= ZERO;
        end case;
    end process;

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_fifo is
    generic (
        DATA_BITS   : INTEGER := 8;
        DEPTH       : INTEGER := 16;
        DEPTH_BITS  : INTEGER := 4);
    port (
        sclk        : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        sclk_en     : in  STD_LOGIC;
        empty_n     : out STD_LOGIC;
        full_n      : out STD_LOGIC;
        rdreq       : in  STD_LOGIC;
        wrreq       : in  STD_LOGIC;
        q           : out UNSIGNED(DATA_BITS-1 downto 0);
        data        : in  UNSIGNED(DATA_BITS-1 downto 0));
end entity Pool_gmem_m_axi_fifo;

architecture behave of Pool_gmem_m_axi_fifo is
    signal push, pop, data_vld, full_cond     : STD_LOGIC;
    signal empty_n_tmp, full_n_tmp            : STD_LOGIC;
    signal pout                               : INTEGER range 0 to DEPTH -1;
    subtype word is UNSIGNED(DATA_BITS-1 downto 0);
    type regFileType is array(0 to DEPTH-1) of word;
    signal mem                                : regFileType;
begin
    full_n <= full_n_tmp;
    empty_n <= empty_n_tmp;

    depth_nlt2 : if DEPTH >= 2 generate
        full_cond <= '1' when push = '1' and pop = '0' and pout = DEPTH - 2 and data_vld = '1' else '0';
    end generate;

    depth_lt2 : if DEPTH < 2 generate
        full_cond <= '1' when push = '1' and pop = '0' else '0';
    end generate;

    push <= full_n_tmp and wrreq;
    pop <= data_vld and (not (empty_n_tmp and (not rdreq)));

    q_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                q <= (others => '0');
            elsif sclk_en = '1' then
                if not (empty_n_tmp = '1' and rdreq = '0') then
                    q <= mem(pout);
                end if;
            end if;
        end if;
    end process q_proc;

    empty_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                empty_n_tmp <= '0';
            elsif sclk_en = '1' then
                if not (empty_n_tmp = '1' and rdreq = '0') then
                    empty_n_tmp <= data_vld;
                end if;
            end if;
        end if;
    end process empty_n_proc;

    data_vld_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                data_vld <= '0';
            elsif sclk_en = '1' then
                if push = '1' then
                    data_vld <= '1';
                elsif push = '0' and pop = '1' and pout = 0 then
                    data_vld <= '0';
                end if;
            end if;
        end if;
    end process data_vld_proc;

    full_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                full_n_tmp <= '1';
            elsif sclk_en = '1' then
                if pop = '1' then
                    full_n_tmp <= '1';
                elsif full_cond = '1' then
                    full_n_tmp <= '0';
                end if;
            end if;
        end if;
    end process full_n_proc;

    pout_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                pout <= 0;
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' and data_vld = '1' then
                    pout <= TO_INTEGER(TO_UNSIGNED(pout + 1, DEPTH_BITS));
                elsif push = '0' and pop = '1' and pout /= 0 then
                    pout <= pout - 1;
                end if;
            end if;
        end  if;
    end process pout_proc;

    process (sclk)
    begin
        if (sclk'event and sclk = '1') and sclk_en = '1' then
            if push = '1' then
                for i in 0 to DEPTH - 2 loop
                    mem(i+1) <= mem(i);
                end loop;
                mem(0) <= data;
            end if;
        end  if;
    end process;
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_buffer is
    generic (
        MEM_STYLE  : STRING  := "block";
        DATA_WIDTH : NATURAL := 32;
        ADDR_WIDTH : NATURAL := 5;
        DEPTH      : NATURAL := 32
    );
    port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        sclk_en     : in  STD_LOGIC;
        if_full_n   : out STD_LOGIC;
        if_write_ce : in  STD_LOGIC;
        if_write    : in  STD_LOGIC;
        if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        if_empty_n  : out STD_LOGIC;
        if_read_ce  : in  STD_LOGIC;
        if_read     : in  STD_LOGIC;
        if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)
    );
end entity;

architecture arch of Pool_gmem_m_axi_buffer is
    type memtype is array (0 to DEPTH - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal mem        : memtype;
    signal q_buf      : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal waddr      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal raddr      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal wnext      : unsigned(ADDR_WIDTH - 1 downto 0);
    signal rnext      : unsigned(ADDR_WIDTH - 1 downto 0);
    signal push       : std_logic;
    signal pop        : std_logic;
    signal usedw      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal full_n     : std_logic := '1';
    signal empty_n    : std_logic := '0';
    signal q_tmp      : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal show_ahead : std_logic := '0';
    signal dout_buf   : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal dout_valid : std_logic := '0';
    attribute ram_style: string;
    attribute ram_style of mem: signal is MEM_STYLE;
begin
    if_full_n  <= full_n;
    if_empty_n <= dout_valid;
    if_dout    <= dout_buf;
    push       <= full_n and if_write_ce and if_write;
    pop        <= empty_n and if_read_ce and (not dout_valid or if_read);
    wnext      <= waddr when push = '0' else
                  (others => '0') when waddr = DEPTH - 1 else
                  waddr + 1;
    rnext      <= raddr when pop = '0' else
                  (others => '0') when raddr = DEPTH - 1 else
                  raddr + 1;

    -- waddr
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                waddr <= (others => '0');
            elsif sclk_en = '1' then
                waddr <= wnext;
            end if;
        end if;
    end process;

    -- raddr
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                raddr <= (others => '0');
            elsif sclk_en = '1' then
                raddr <= rnext;
            end if;
        end if;
    end process;

    -- usedw
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                usedw <= (others => '0');
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    usedw <= usedw + 1;
                elsif push = '0' and pop = '1' then
                    usedw <= usedw - 1;
                end if;
            end if;
        end if;
    end process;

    -- full_n
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                full_n <= '1';
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    if usedw = DEPTH - 1 then
                        full_n <= '0';
                    else
                        full_n <= '1';
                    end if;
                elsif push = '0' and pop = '1' then
                    full_n <= '1';
                end if;
            end if;
        end if;
    end process;

    -- empty_n
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                empty_n <= '0';
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    empty_n <= '1';
                elsif push = '0' and pop = '1' then
                    if usedw = 1 then
                        empty_n <= '0';
                    else
                        empty_n <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- mem
    process (clk) begin
        if clk'event and clk = '1' then
            if push = '1' then
                mem(to_integer(waddr)) <= if_din;
            end if;
        end if;
    end process;

    -- q_buf
    process (clk) begin
        if clk'event and clk = '1' then
            q_buf <= mem(to_integer(rnext));
        end if;
    end process;

    -- q_tmp
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                q_tmp <= (others => '0');
            elsif sclk_en = '1' then
                if push = '1' then
                    q_tmp <= if_din;
                end if;
            end if;
        end if;
    end process;

    -- show_ahead
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                show_ahead <= '0';
            elsif sclk_en = '1' then
                if push = '1' and (usedw = 0 or (usedw = 1 and pop = '1')) then
                    show_ahead <= '1';
                else
                    show_ahead <= '0';
                end if;
            end if;
        end if;
    end process;

    -- dout_buf
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_buf <= (others => '0');
            elsif sclk_en = '1' then
                if pop = '1' then
                    if show_ahead = '1' then
                        dout_buf <= q_tmp;
                    else
                        dout_buf <= q_buf;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- dout_valid
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_valid <= '0';
            elsif sclk_en = '1' then
                if pop = '1' then
                    dout_valid <= '1';
                elsif if_read_ce = '1' and if_read = '1' then
                    dout_valid <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_decoder is
    generic (
        DIN_WIDTH : integer := 3);
    port (
        din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
        dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
end entity Pool_gmem_m_axi_decoder;

architecture behav of Pool_gmem_m_axi_decoder is
begin
    process (din)
    begin
        dout <= (others => '0');
        if (not(din = 0)) then
            dout(TO_INTEGER(din) - 1 downto 0) <= (others => '1');
        end if;
    end process;
end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_throttl is
    generic (
        USED_FIX      : BOOLEAN := false;
        FIX_VALUE     : INTEGER := 4;
        ADDR_WIDTH    : INTEGER := 32;
        DATA_WIDTH    : INTEGER := 32;
        DEPTH         : INTEGER := 16;
        USER_MAXREQS  : INTEGER := 16;
        CONSERVATIVE  : INTEGER := 0;
        AVERAGE_MODE  : BOOLEAN := false);
    port (
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        ce              : in  STD_LOGIC;
        in_addr         : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        in_len          : in  STD_LOGIC_VECTOR(7 downto 0);
        in_req_valid    : in  STD_LOGIC;
        out_req_ready   : out STD_LOGIC;
        out_addr        : out STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        out_len         : out STD_LOGIC_VECTOR(7 downto 0);
        out_req_valid   : out STD_LOGIC;
        in_req_ready    : in  STD_LOGIC;
        in_data         : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        in_strb         : in  STD_LOGIC_VECTOR(DATA_WIDTH/8-1 downto 0);
        in_last         : in  STD_LOGIC;
        in_data_valid   : in  STD_LOGIC;
        out_data_ready  : out STD_LOGIC;
        out_data        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        out_strb        : out STD_LOGIC_VECTOR(DATA_WIDTH/8-1 downto 0);
        out_last        : out STD_LOGIC;
        out_data_valid  : out STD_LOGIC;
        in_data_ready   : in  STD_LOGIC);

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function gt_4 (x : INTEGER) return INTEGER is
        variable n : INTEGER;
    begin
        n := 4;
        if x > 4 then
            n := x;
        end if;
        return n;
    end function gt_4;

end entity Pool_gmem_m_axi_throttl;

architecture behav of Pool_gmem_m_axi_throttl is
begin

    conservative_gen : if (CONSERVATIVE = 0) generate
        type     switch_t   is array(boolean) of integer;
        constant switch         : switch_t  := (true => FIX_VALUE-1, false => 0);
        constant threshold      : INTEGER   := switch(USED_FIX);
        signal   req_en         : STD_LOGIC;
        signal   handshake      : STD_LOGIC;
        signal   load_init      : UNSIGNED(7 downto 0);
        signal   throttl_cnt    : UNSIGNED(7 downto 0);
    begin
        -- AW Channel
        out_addr  <= in_addr;
        out_len   <= in_len;

        -- W Channel
        out_data        <= in_data;
        out_strb        <= in_strb;
        out_last        <= in_last;
        out_data_valid  <= in_data_valid;
        out_data_ready  <= in_data_ready;

        fix_gen : if USED_FIX generate
            load_init <= TO_UNSIGNED(FIX_VALUE-1, 8);
            handshake <= '1';
        end generate;

        average_gen : if not USED_FIX and AVERAGE_MODE generate
            load_init <= UNSIGNED(in_len); 
            handshake <= '1';
        end generate;

        no_fix_gen : if not USED_FIX and not AVERAGE_MODE generate
            load_init <= UNSIGNED(in_len);
            handshake <= in_data_valid and in_data_ready;
        end generate;

        out_req_valid <= in_req_valid and req_en;
        out_req_ready <= in_req_ready and req_en;
        req_en        <= '1' when throttl_cnt = 0 else
                         '0';

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    throttl_cnt <= (others => '0');
                elsif ce = '1' then
                    if UNSIGNED(in_len) > threshold and throttl_cnt = 0 and in_req_valid = '1' and in_req_ready = '1' then
                        throttl_cnt <= load_init; --load
                    elsif throttl_cnt > 0 and handshake = '1' then
                        throttl_cnt <= throttl_cnt - 1;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    aggressive_gen : if (CONSERVATIVE /= 0) generate
        constant CNT_WIDTH      : INTEGER   := log2(gt_4(DEPTH));
        signal   data_in        : STD_LOGIC_VECTOR(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   data_out       : STD_LOGIC_VECTOR(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   req_in         : STD_LOGIC_VECTOR(ADDR_WIDTH + 7 downto 0);
        signal   req_out        : STD_LOGIC_VECTOR(ADDR_WIDTH + 7 downto 0);
        signal   req_en         : STD_LOGIC;
        signal   data_en        : STD_LOGIC;
        signal   fifo_valid     : STD_LOGIC;
        signal   read_fifo      : STD_LOGIC;
        signal   req_fifo_valid : STD_LOGIC;
        signal   read_req       : STD_LOGIC;
        signal   data_push      : STD_LOGIC;
        signal   data_pop       : STD_LOGIC;
        signal   flying_req     : STD_LOGIC;
        signal   last_cnt       : UNSIGNED(CNT_WIDTH-1 downto 0);

        signal   out_data_ready_tmp : STD_LOGIC;

        component Pool_gmem_m_axi_fifo is
            generic (
                DATA_BITS   : INTEGER := 8;
                DEPTH       : INTEGER := 16;
                DEPTH_BITS  : INTEGER := 4);
            port (
                sclk        : in  STD_LOGIC;
                reset       : in  STD_LOGIC;
                sclk_en     : in  STD_LOGIC;
                empty_n     : out STD_LOGIC;
                full_n      : out STD_LOGIC;
                rdreq       : in  STD_LOGIC;
                wrreq       : in  STD_LOGIC;
                q           : out UNSIGNED(DATA_BITS-1 downto 0);
                data        : in  UNSIGNED(DATA_BITS-1 downto 0));
        end component Pool_gmem_m_axi_fifo;
    begin
        --AW Channel
        req_in          <= in_len & in_addr;
        out_addr        <= req_out(ADDR_WIDTH-1 downto 0);
        out_len         <= req_out(ADDR_WIDTH+7 downto ADDR_WIDTH);
        out_req_valid   <= req_fifo_valid and req_en;

        req_en          <= '1' when ((flying_req = '0' and data_en = '1') or (flying_req = '1' and (data_out(DATA_WIDTH+DATA_WIDTH/8) = '1' and data_pop = '1') and (last_cnt(CNT_WIDTH-1 downto 1) /= "0"))) else
                         '0';
        read_req        <= in_req_ready and req_en;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    flying_req <= '0';
                elsif ce = '1' then
                    if (req_fifo_valid and req_en) = '1' and in_req_ready = '1' then
                        flying_req <= '1';
                    elsif data_out(DATA_WIDTH+DATA_WIDTH/8) = '1' and data_pop = '1' then
                        flying_req <= '0';
                    end if;
                end if;
            end if;
        end process;

        req_fifo : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS           => ADDR_WIDTH + 8,
            DEPTH               => USER_MAXREQS,
            DEPTH_BITS          => log2(USER_MAXREQS))
        port map (
            sclk                => clk,
            reset               => reset,
            sclk_en             => ce,
            empty_n             => req_fifo_valid,
            full_n              => out_req_ready,
            rdreq               => read_req,
            wrreq               => in_req_valid,
            STD_LOGIC_VECTOR(q) => req_out,
            data                => UNSIGNED(req_in));

        --W Channel
        data_in         <= in_last & in_strb & in_data;
        out_data        <= data_out(DATA_WIDTH-1 downto 0);
        out_strb        <= data_out(DATA_WIDTH+DATA_WIDTH/8-1 downto DATA_WIDTH);
        out_last        <= data_out(DATA_WIDTH+DATA_WIDTH/8);
        out_data_valid  <= fifo_valid and data_en and flying_req;
        out_data_ready   <= out_data_ready_tmp;

        data_en         <= '1' when last_cnt /= "0" else '0';
        data_push       <= in_data_valid and out_data_ready_tmp;
        data_pop        <= fifo_valid and read_fifo;
        read_fifo       <= in_data_ready and data_en and flying_req;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    last_cnt <= (others => '0');
                elsif ce = '1' then
                    if (in_last and data_push) = '1' and (data_out(DATA_WIDTH+DATA_WIDTH/8) and data_pop) = '0' then
                        last_cnt <= last_cnt + 1;
                    elsif (in_last and data_push) = '0' and (data_out(DATA_WIDTH+DATA_WIDTH/8) and data_pop) = '1' then
                        last_cnt <= last_cnt - 1;
                    end if;
                end if;
            end if;
        end process;

        data_fifo : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS           => DATA_WIDTH + DATA_WIDTH/8 + 1,
            DEPTH               => DEPTH,
            DEPTH_BITS          => log2(DEPTH))
        port map (
            sclk                => clk,
            reset               => reset,
            sclk_en             => ce,
            empty_n             => fifo_valid,
            full_n              => out_data_ready_tmp,
            rdreq               => read_fifo,
            wrreq               => in_data_valid,
            STD_LOGIC_VECTOR(q) => data_out,
            data                => UNSIGNED(data_in));

    end generate;

end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_read is
    generic (
        NUM_READ_OUTSTANDING      : INTEGER := 2;
        MAX_READ_BURST_LENGTH     : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 0;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESET          : in  STD_LOGIC;
        ACLK_EN         : in  STD_LOGIC;
        ARID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        ARADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARLEN           : out UNSIGNED(7 downto 0);
        ARSIZE          : out UNSIGNED(2 downto 0);
        ARBURST         : out UNSIGNED(1 downto 0);
        ARLOCK          : out UNSIGNED(1 downto 0);
        ARCACHE         : out UNSIGNED(3 downto 0);
        ARPROT          : out UNSIGNED(2 downto 0);
        ARQOS           : out UNSIGNED(3 downto 0);
        ARREGION        : out UNSIGNED(3 downto 0);
        ARUSER          : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        RID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        RDATA           : in  UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
        RRESP           : in  UNSIGNED(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;
        rreq_valid      : in  STD_LOGIC;
        rreq_ack        : out STD_LOGIC;
        rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        rreq_length     : in  UNSIGNED(31 downto 0);
        rreq_cache      : in  UNSIGNED(3 downto 0);
        rreq_prot       : in  UNSIGNED(2 downto 0);
        rreq_qos        : in  UNSIGNED(3 downto 0);
        rreq_region     : in  UNSIGNED(3 downto 0);
        rreq_user       : in  UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        rdata_valid     : out STD_LOGIC;
        rdata_ack       : in  STD_LOGIC;
        rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
        rrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity Pool_gmem_m_axi_read;

architecture behave of Pool_gmem_m_axi_read is
    --common
    constant USER_DATA_WIDTH      : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES      : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN      : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH       : INTEGER := C_M_AXI_DATA_WIDTH;
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant NUM_READ_WIDTH       : INTEGER := log2(MAX_READ_BURST_LENGTH);
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    --AR channel
    constant TARGET_ADDR          : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  rreq_data             : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_rreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_rreq_valid       : STD_LOGIC;
    signal  rs2f_rreq_ack         : STD_LOGIC;
    signal  fifo_rreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr              : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  align_len             : UNSIGNED(31 downto 0);
    signal  arlen_tmp             : UNSIGNED(7 downto 0);
    signal  araddr_tmp            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf        : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf          : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr             : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_end              : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf          : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end             : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_cnt              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 13 downto 0);
    signal  ar2r_ardata           : UNSIGNED(1 downto 0);
    signal  fifo_rctl_r           : STD_LOGIC;
    signal  zero_len_event        : STD_LOGIC;
    signal  negative_len_event    : STD_LOGIC;
    signal  invalid_len_event     : STD_LOGIC;
    signal  invalid_len_event_1   : STD_LOGIC;
    signal  invalid_len_event_2   : STD_LOGIC;
    signal  fifo_rreq_valid       : STD_LOGIC;
    signal  fifo_rreq_valid_buf   : STD_LOGIC;
    signal  fifo_rreq_read        : STD_LOGIC;
    signal  fifo_burst_w          : STD_LOGIC;
    signal  fifo_resp_w           : STD_LOGIC;
    signal  ARVALID_Dummy         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  next_rreq             : BOOLEAN;
    signal  ready_for_rreq        : BOOLEAN;
    signal  rreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --R channel
    signal  fifo_rresp_rdata      : UNSIGNED(BUS_DATA_WIDTH + 2 downto 0);
    signal  data_pack             : UNSIGNED(BUS_DATA_WIDTH + 2 downto 0);
    signal  tmp_data              : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
    signal  rs_rrsp_rdata         : UNSIGNED(USER_DW + 1 downto 0);
    signal  rdata_data_pack       : UNSIGNED(USER_DW + 1 downto 0);
    signal  len_cnt               : UNSIGNED(7 downto 0);
    signal  ar2r_rdata            : UNSIGNED(1 downto 0);
    signal  tmp_resp              : UNSIGNED(1 downto 0);
    signal  resp_buf              : UNSIGNED(1 downto 0);
    signal  tmp_last              : STD_LOGIC;
    signal  tmp_last_2            : STD_LOGIC;
    signal  need_rlast            : STD_LOGIC;
    signal  fifo_rctl_ready       : STD_LOGIC;
    signal  beat_valid            : STD_LOGIC;
    signal  next_beat             : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  fifo_burst_ready      : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  rdata_ack_t           : STD_LOGIC;
    signal  rdata_valid_t         : STD_LOGIC;

    component Pool_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component Pool_gmem_m_axi_fifo;

    component Pool_gmem_m_axi_reg_slice is
        generic (
            N           : INTEGER := 8);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component Pool_gmem_m_axi_reg_slice;

    component Pool_gmem_m_axi_buffer is
        generic (
                    MEM_STYLE  : STRING  := "block";
            DATA_WIDTH : NATURAL := 32;
            ADDR_WIDTH : NATURAL := 5;
            DEPTH      : NATURAL := 32
        );
        port (
             clk         : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             sclk_en     : in  STD_LOGIC;
             if_full_n   : out STD_LOGIC;
             if_write_ce : in  STD_LOGIC;
             if_write    : in  STD_LOGIC;
             if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
             if_empty_n  : out STD_LOGIC;
             if_read_ce  : in  STD_LOGIC;
             if_read     : in  STD_LOGIC;
             if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0));
    end component Pool_gmem_m_axi_buffer;

begin
    --------------------------- AR channel begin -----------------------------------
    -- Instantiation
    rs_rreq : Pool_gmem_m_axi_reg_slice
        generic map (
            N               =>  USER_AW+ 32)
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  STD_LOGIC_VECTOR(rreq_data),
            s_valid         =>  rreq_valid,
            s_ready         =>  rreq_ack,
            UNSIGNED(m_data)=>  rs2f_rreq_data,
            m_valid         =>  rs2f_rreq_valid,
            m_ready         =>  rs2f_rreq_ack);

    fifo_rreq : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            full_n          =>  rs2f_rreq_ack,
            wrreq           =>  rs2f_rreq_valid,
            data            =>  rs2f_rreq_data,
            empty_n         =>  fifo_rreq_valid,
            rdreq           =>  fifo_rreq_read,
            q               =>  fifo_rreq_data);

    rreq_data   <= (rreq_length & rreq_addr);
    tmp_addr    <= fifo_rreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_rreq_data(USER_AW + 31 downto USER_AW);
    end_addr    <= start_addr + align_len;

    zero_len_event        <= '1' when fifo_rreq_valid = '1' and tmp_len = 0 else '0';
    negative_len_event    <= tmp_len(31) when fifo_rreq_valid = '1' else '0';

    next_rreq      <= invalid_len_event = '0' and (fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq;
    ready_for_rreq <= not(rreq_handling and not(last_sect and next_sect));
    fifo_rreq_read <= '1' when invalid_len_event = '1' or next_rreq else '0';

    align_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                align_len <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_rreq_valid = '1' and ready_for_rreq) then
                    align_len <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
                end if;
            end if;
        end if;
    end process align_len_proc;

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_rreq_valid = '1' and ready_for_rreq) then
                    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_M_AXI_ADDR_WIDTH), USER_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    fifo_rreq_valid_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                fifo_rreq_valid_buf <= '0';
            elsif ACLK_EN = '1' then
                if ((fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq) then
                    fifo_rreq_valid_buf <= fifo_rreq_valid;
                end if;
            end if;
        end if;
    end process fifo_rreq_valid_buf_proc;

    invalid_len_event_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event <= '0';
            elsif ACLK_EN = '1' then
                if ((fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq) then
                    invalid_len_event <= zero_len_event or negative_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_proc;

    rreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rreq_handling <= false;
            elsif ACLK_EN = '1' then
                if fifo_rreq_valid_buf = '1' and not rreq_handling and invalid_len_event = '0' then
                    rreq_handling <= true;
                elsif (fifo_rreq_valid_buf = '0' or invalid_len_event = '1') and last_sect and next_sect then
                    rreq_handling <= false;
                end if;
            end if;
        end if;
    end process rreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    start_addr_buf <= start_addr;
                end if;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                end_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    end_addr_buf <= end_addr;
                end if;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                beat_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    sect_cnt <= start_addr(C_M_AXI_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    -- event registers
    invalid_len_event_1_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_1 <= '0';
            elsif ACLK_EN = '1' then
                if next_rreq then
                    invalid_len_event_1 <= invalid_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_1_proc;
    -- end event registers

    first_sect <= (sect_cnt = start_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 12));
    next_sect  <= rreq_handling and ready_for_sect = '1';

    sect_addr  <= start_addr_buf when first_sect else
                  sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_addr_buf <= sect_addr;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS;

    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_len_buf <= sect_len;
                end if;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_end_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_end_buf <= sect_end;
                end if;
            end if;
        end if;
    end process sect_end_proc;

    -- event registers
    invalid_len_event_2_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_2 <= '0';
            elsif ACLK_EN = '1' then
                if next_sect then
                    invalid_len_event_2 <= invalid_len_event_1;
                end if;
            end if;
        end if;
    end process invalid_len_event_2_proc;
    -- end event registers

    ARID      <= (others => '0');
    ARSIZE    <= TO_UNSIGNED(BUS_ADDR_ALIGN, ARSIZE'length);
    ARBURST   <= "01";
    ARLOCK    <= "00";
    ARCACHE   <= TO_UNSIGNED(C_CACHE_VALUE, ARCACHE'length);
    ARPROT    <= TO_UNSIGNED(C_PROT_VALUE, ARPROT'length);
    ARUSER    <= TO_UNSIGNED(C_USER_VALUE, ARUSER'length);
    ARQOS     <= rreq_qos;
    ARREGION  <= rreq_region;

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) generate
    begin
        ARADDR  <= sect_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        ARLEN   <= RESIZE(sect_len_buf, 8);
        ARVALID <= ARVALID_Dummy;

        ready_for_sect <= '1' when not (ARVALID_Dummy = '1' and ARREADY = '0') and fifo_burst_ready = '1' and fifo_rctl_ready = '1' else '0';

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect then
                        ARVALID_Dummy <= '1';
                    elsif not next_sect and ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_sect else '0';
        ar2r_ardata  <= "10" when last_sect else "00";

        fifo_burst_w <= '1' when next_sect else '0';
        araddr_tmp   <= sect_addr(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        arlen_tmp    <= RESIZE(sect_len, 8);
        burst_end    <= sect_end;
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_READ_BURST_LENGTH) generate
        signal  araddr_buf      : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        signal  arlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        ARADDR  <= araddr_buf;
        ARLEN   <= arlen_buf;
        ARVALID <= ARVALID_Dummy;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_READ_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (ARVALID_Dummy = '1' and ARREADY = '0') and fifo_burst_ready = '1' and fifo_rctl_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if rreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not rreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        araddr_tmp <= sect_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      araddr_buf + SHIFT_LEFT(RESIZE(arlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        araddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    araddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        araddr_buf <= araddr_tmp(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process araddr_buf_proc;

        arlen_tmp  <= RESIZE(sect_len_buf(NUM_READ_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(MAX_READ_BURST_LENGTH-1, 8);
        arlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    arlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        arlen_buf <= arlen_tmp;
                    end if;
                end if;
            end if;
        end process arlen_buf_proc;

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_loop then
                        ARVALID_Dummy <= '1';
                    elsif not next_loop and ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_loop else '0';
        ar2r_ardata  <= "10" when last_loop else "00";

        fifo_burst_w <= '1' when next_loop else '0';
        burst_end    <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AR channel end -------------------------------------

    --------------------------- R channel begin ------------------------------------
    -- Instantiation
    fifo_rdata : Pool_gmem_m_axi_buffer
        generic map (
            DATA_WIDTH        =>  BUS_DATA_WIDTH + 3,
            DEPTH             =>  NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH,
            ADDR_WIDTH        =>  log2(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            sclk_en           => ACLK_EN,
            if_full_n         => RREADY,
            if_write_ce       => '1',
            if_write          => RVALID,
            if_din            => STD_LOGIC_VECTOR(fifo_rresp_rdata),
            if_empty_n        => beat_valid,
            if_read_ce        => '1',
            if_read           => next_beat,
            UNSIGNED(if_dout) => data_pack);

    rs_rdata : Pool_gmem_m_axi_reg_slice
        generic map (
            N                 => USER_DW + 2)
        port map (
            sclk              => ACLK,
            reset             => ARESET,
            s_data            => STD_LOGIC_VECTOR(rs_rrsp_rdata),
            s_valid           => rdata_valid_t,
            s_ready           => rdata_ack_t,
            UNSIGNED(m_data)  => rdata_data_pack,
            m_valid           => rdata_valid,
            m_ready           => rdata_ack);

    fifo_rctl : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS       => 2,
            DEPTH           => NUM_READ_OUTSTANDING-1,
            DEPTH_BITS      => log2(NUM_READ_OUTSTANDING-1))
        port map (
            sclk            => ACLK,
            reset           => ARESET,
            sclk_en         => ACLK_EN,
            empty_n         => need_rlast,
            full_n          => fifo_rctl_ready,
            rdreq           => tmp_last_2,
            wrreq           => fifo_rctl_r,
            q               => ar2r_rdata,
            data            => ar2r_ardata);

    fifo_rresp_rdata <= (RLAST & RRESP & RDATA);
    tmp_data         <= data_pack(BUS_DATA_WIDTH - 1 downto 0);
    tmp_resp         <= data_pack(BUS_DATA_WIDTH + 1 downto BUS_DATA_WIDTH);
    tmp_last         <= data_pack(BUS_DATA_WIDTH + 2) and beat_valid;
    tmp_last_2       <= tmp_last and next_beat;

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf    : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  ready_for_data   : BOOLEAN;
    begin
        rs_rrsp_rdata <= resp_buf & data_buf(USER_DW - 1 downto 0);
        rrsp          <= rdata_data_pack(USER_DW + 1 downto USER_DW);
        rdata_data    <= rdata_data_pack(USER_DW - 1 downto 0);

        fifo_burst_ready <= '1';
        next_beat        <= '1' when beat_valid = '1' and ready_for_data else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_beat = '1' then
                        data_buf <= tmp_data;
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif ACLK_EN = '1' then
                    if next_beat = '1' then
                        resp_buf <= tmp_resp;
                    end if;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat = '1' then
                        rdata_valid_t <= '1';
                    elsif ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_equal_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  tmp_burst_info  : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  burst_pack      : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  split_cnt_buf   : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  head_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tail_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  burst_len       : UNSIGNED(7 downto 0);
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : Pool_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  2*SPLIT_ALIGN + 8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        rs_rrsp_rdata <= resp_buf & data_buf(USER_DW - 1 downto 0);
        rrsp          <= rdata_data_pack(USER_DW + 1 downto USER_DW);
        rdata_data    <= rdata_data_pack(USER_DW - 1 downto 0);

        tmp_burst_info <= araddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(arlen_tmp, 8);
        head_split     <= burst_pack(2*SPLIT_ALIGN + 7 downto 8 + SPLIT_ALIGN);
        tail_split     <= burst_pack(SPLIT_ALIGN + 7 downto 8);
        burst_len      <= burst_pack(7 downto 0);

        next_beat        <= '1' when last_split else '0';
        next_burst       <= '1' when last_beat and last_split else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1' and beat_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1' and beat_valid = '1';

        first_split <= (split_cnt = 0 and beat_valid = '1' and ready_for_data) when not first_beat else
                       (split_cnt = head_split and ready_for_data);
        last_split  <= (split_cnt = (TOTAL_SPLIT - 1) and ready_for_data) when not last_beat else
                       (split_cnt = tail_split and ready_for_data);
        next_split  <= (split_cnt /= 0 and ready_for_data) when not first_beat else
                       (split_cnt /= head_split and ready_for_data);

        split_cnt <= head_split when first_beat and (split_cnt_buf = 0) else
                     split_cnt_buf;
        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt_buf <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt_buf <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_beat and last_split then
                        len_cnt <= (others => '0');
                    elsif last_split then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if first_split and first_beat then
                        data_buf <= SHIFT_RIGHT(tmp_data, to_integer(head_split)*USER_DATA_WIDTH);
                    elsif first_split then
                        data_buf <= tmp_data;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, USER_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif ACLK_EN = '1' then
                    if first_split then
                        resp_buf <= tmp_resp;
                    end if;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if first_split then
                        rdata_valid_t <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;

    end generate bus_wide_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  next_data       : BOOLEAN;
    begin
        rrsp        <= resp_buf;
        rdata_data  <= data_buf(USER_DW - 1 downto 0);
        rdata_valid <= rdata_valid_t;

        fifo_burst_ready <= '1';
        next_beat        <= '1' when next_pad else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        next_pad  <= beat_valid = '1' and ready_for_data;
        last_pad  <= pad_oh(TOTAL_PADS - 1) = '1';
        next_data <= last_pad and ready_for_data;

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0') when beat_valid = '0' else
                  TO_UNSIGNED(1, TOTAL_PADS) when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_gen : for i in 1 to TOTAL_PADS generate
        begin
            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if ACLK_EN = '1' then
                        if pad_oh(i-1) = '1' and ready_for_data then
                            data_buf(i*BUS_DATA_WIDTH - 1 downto (i-1)*BUS_DATA_WIDTH) <= tmp_data;
                        end if;
                    end if;
                end if;
            end process;
        end generate data_gen;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif next_beat = '1' and resp_buf(0) = '0' then
                    resp_buf <= tmp_resp;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if next_data then
                        rdata_valid_t <= '1';
                    elsif ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_narrow_gen;
--------------------------- R channel end --------------------------------------
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Pool_gmem_m_axi_write is
    generic (
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 0;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESET          : in  STD_LOGIC;
        ACLK_EN         : in  STD_LOGIC;
        AWID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        AWADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWLEN           : out UNSIGNED(7 downto 0);
        AWSIZE          : out UNSIGNED(2 downto 0);
        AWBURST         : out UNSIGNED(1 downto 0);
        AWLOCK          : out UNSIGNED(1 downto 0);
        AWCACHE         : out UNSIGNED(3 downto 0);
        AWPROT          : out UNSIGNED(2 downto 0);
        AWQOS           : out UNSIGNED(3 downto 0);
        AWREGION        : out UNSIGNED(3 downto 0);
        AWUSER          : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        WID             : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        WDATA           : out UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB           : out UNSIGNED(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        BID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        BRESP           : in  UNSIGNED(1 downto 0);
        BUSER           : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        wreq_valid      : in  STD_LOGIC;
        wreq_ack        : out STD_LOGIC;
        wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        wreq_length     : in  UNSIGNED(31 downto 0);
        wreq_cache      : in  UNSIGNED(3 downto 0);
        wreq_prot       : in  UNSIGNED(2 downto 0);
        wreq_qos        : in  UNSIGNED(3 downto 0);
        wreq_region     : in  UNSIGNED(3 downto 0);
        wreq_user       : in  UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        wdata_valid     : in  STD_LOGIC;
        wdata_ack       : out STD_LOGIC;
        wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
        wdata_user      : in  UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
        wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
        wrsp_valid      : out STD_LOGIC;
        wrsp_ack        : in  STD_LOGIC;
        wrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity Pool_gmem_m_axi_write;

architecture behave of Pool_gmem_m_axi_write is
    --common
    constant USER_DATA_WIDTH      : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES      : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN      : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH       : INTEGER := C_M_AXI_DATA_WIDTH;
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    constant NUM_WRITE_WIDTH      : INTEGER := log2(MAX_WRITE_BURST_LENGTH);
    --AW channel
    constant TARGET_ADDR          : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  wreq_data             : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_wreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_wreq_valid       : STD_LOGIC;
    signal  rs2f_wreq_ack         : STD_LOGIC;
    signal  fifo_wreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr              : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  align_len             : UNSIGNED(31 downto 0);
    signal  awlen_tmp             : UNSIGNED(7 downto 0);
    signal  start_addr            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf        : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf          : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  awaddr_tmp            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr             : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_end              : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf          : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end             : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  aw2b_awdata           : UNSIGNED(1 downto 0);
    signal  sect_cnt              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 13 downto 0);
    signal  zero_len_event        : STD_LOGIC;
    signal  negative_len_event    : STD_LOGIC;
    signal  invalid_len_event     : STD_LOGIC;
    signal  invalid_len_event_1   : STD_LOGIC;
    signal  invalid_len_event_2   : STD_LOGIC;
    signal  fifo_wreq_valid       : STD_LOGIC;
    signal  fifo_wreq_valid_buf   : STD_LOGIC;
    signal  fifo_wreq_read        : STD_LOGIC;
    signal  fifo_burst_w          : STD_LOGIC;
    signal  fifo_resp_w           : STD_LOGIC;
    signal  last_sect_buf         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  AWVALID_Dummy         : STD_LOGIC;
    signal  next_wreq             : BOOLEAN;
    signal  ready_for_wreq        : BOOLEAN;
    signal  wreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --W channel
    signal  fifo_wdata_wstrb      : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  data_pack             : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  tmp_data              : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
    signal  tmp_strb              : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
    signal  len_cnt               : UNSIGNED(7 downto 0);
    signal  burst_len             : UNSIGNED(7 downto 0);
    signal  data_valid            : STD_LOGIC;
    signal  next_data             : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  fifo_burst_ready      : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  WVALID_Dummy              : STD_LOGIC;
    signal  WLAST_Dummy               : STD_LOGIC;
    --B channel
    signal  aw2b_bdata            : UNSIGNED(1 downto 0);
    signal  bresp_tmp             : UNSIGNED(1 downto 0);
    signal  next_resp             : STD_LOGIC;
    signal  last_resp             : STD_LOGIC;
    signal  invalid_event         : STD_LOGIC;
    signal  fifo_resp_ready       : STD_LOGIC;
    signal  need_wrsp             : STD_LOGIC;
    signal  resp_match            : STD_LOGIC;
    signal  resp_ready            : STD_LOGIC;

    component Pool_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component Pool_gmem_m_axi_fifo;

    component Pool_gmem_m_axi_reg_slice is
        generic (
            N           : INTEGER := 8);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component Pool_gmem_m_axi_reg_slice;

    component Pool_gmem_m_axi_buffer is
        generic (
                    MEM_STYLE  : STRING  := "block";
            DATA_WIDTH : NATURAL := 32;
            ADDR_WIDTH : NATURAL := 5;
            DEPTH      : NATURAL := 32
        );
        port (
             clk         : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             sclk_en     : in  STD_LOGIC;
             if_full_n   : out STD_LOGIC;
             if_write_ce : in  STD_LOGIC;
             if_write    : in  STD_LOGIC;
             if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
             if_empty_n  : out STD_LOGIC;
             if_read_ce  : in  STD_LOGIC;
             if_read     : in  STD_LOGIC;
             if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0));
    end component Pool_gmem_m_axi_buffer;

begin
    --------------------------- AW channel begin -----------------------------------
    -- Instantiation
    rs_wreq : Pool_gmem_m_axi_reg_slice
        generic map (
            N => USER_AW + 32)
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  STD_LOGIC_VECTOR(wreq_data),
            s_valid         =>  wreq_valid,
            s_ready         =>  wreq_ack,
            UNSIGNED(m_data)=>  rs2f_wreq_data,
            m_valid         =>  rs2f_wreq_valid,
            m_ready         =>  rs2f_wreq_ack);

    fifo_wreq : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            full_n          =>  rs2f_wreq_ack,
            wrreq           =>  rs2f_wreq_valid,
            data            =>  rs2f_wreq_data,
            empty_n         =>  fifo_wreq_valid,
            rdreq           =>  fifo_wreq_read,
            q               =>  fifo_wreq_data);

    wreq_data   <= (wreq_length & wreq_addr);
    tmp_addr    <= fifo_wreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_wreq_data(USER_AW + 31 downto USER_AW);
    end_addr    <= start_addr + align_len;

    zero_len_event        <= '1' when fifo_wreq_valid = '1' and tmp_len = 0 else '0';
    negative_len_event    <= tmp_len(31) when fifo_wreq_valid = '1' else '0';

    next_wreq      <= (fifo_wreq_valid = '1' or fifo_wreq_valid_buf = '1') and ready_for_wreq;
    ready_for_wreq <= not(wreq_handling and not(last_sect and next_sect));
    fifo_wreq_read <= '1' when next_wreq else '0';

    align_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                align_len <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_wreq_valid = '1' and ready_for_wreq) then
                    if (zero_len_event = '1' or negative_len_event = '1') then
                        align_len <= (others => '0');
                    else
                        align_len <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
                    end if;
                end if;
            end if;
        end if;
    end process align_len_proc;

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_wreq_valid = '1' and ready_for_wreq) then
                    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_M_AXI_ADDR_WIDTH), USER_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    fifo_wreq_valid_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                fifo_wreq_valid_buf <= '0';
            elsif ACLK_EN = '1' then
                if (next_wreq) then
                    fifo_wreq_valid_buf <= fifo_wreq_valid;
                end if;
            end if;
        end if;
    end process fifo_wreq_valid_buf_proc;

    invalid_len_event_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event <= '0';
            elsif ACLK_EN = '1' then
                if (next_wreq) then
                    invalid_len_event <= zero_len_event or negative_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_proc;

    wreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wreq_handling <= false;
            elsif ACLK_EN = '1' then
                if fifo_wreq_valid_buf = '1' and not wreq_handling then
                    wreq_handling <= true;
                elsif fifo_wreq_valid_buf = '0' and last_sect and next_sect then
                    wreq_handling <= false;
                end if;
            end if;
        end if;
    end process wreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    start_addr_buf <= start_addr;
                end if;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                end_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    end_addr_buf <= end_addr;
                end if;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                beat_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    sect_cnt <= start_addr(C_M_AXI_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    -- event registers
    invalid_len_event_1_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_1 <= '0';
            elsif ACLK_EN = '1' then
                if next_wreq then
                    invalid_len_event_1 <= invalid_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_1_proc;
    -- end event registers

    first_sect <= (sect_cnt = start_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 12));
    next_sect  <= wreq_handling and ready_for_sect = '1';

    sect_addr <= start_addr_buf when first_sect else
                 sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_addr_buf <= sect_addr;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS;

    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_len_buf <= sect_len;
                end if;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_end_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_end_buf <= sect_end;
                end if;
            end if;
        end if;
    end process sect_end_proc;

    -- event registers
    invalid_len_event_2_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_2 <= '0';
            elsif ACLK_EN = '1' then
                if next_sect then
                    invalid_len_event_2 <= invalid_len_event_1;
                end if;
            end if;
        end if;
    end process invalid_len_event_2_proc;
    -- end event registers

    AWID     <= (others => '0');
    AWSIZE   <= TO_UNSIGNED(BUS_ADDR_ALIGN, AWSIZE'length);
    AWBURST  <= "01";
    AWLOCK   <= "00";
    AWCACHE  <= TO_UNSIGNED(C_CACHE_VALUE, AWCACHE'length);
    AWPROT   <= TO_UNSIGNED(C_PROT_VALUE, AWPROT'length);
    AWUSER   <= TO_UNSIGNED(C_USER_VALUE, AWUSER'length);
    AWQOS    <= wreq_qos;
    AWREGION <= wreq_region;

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) generate
    begin
        AWADDR  <= sect_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        AWLEN   <= RESIZE(sect_len_buf, 8);
        AWVALID <= AWVALID_Dummy;

        ready_for_sect <= '1' when not (AWVALID_Dummy = '1' and AWREADY = '0') and fifo_burst_ready = '1' and fifo_resp_ready = '1' else '0';

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if invalid_len_event = '1' then
                        AWVALID_Dummy <= '0';
                    elsif next_sect then
                        AWVALID_Dummy <= '1';
                    elsif not next_sect and AWREADY = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when next_sect else '0';
        aw2b_awdata <= '1' & invalid_len_event when last_sect else '0' & invalid_len_event;

        fifo_burst_w <= '1' when invalid_len_event = '0' and next_sect else '0';
        awaddr_tmp   <= sect_addr(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        awlen_tmp    <= RESIZE(sect_len, 8);
        burst_end    <= sect_end;
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_WRITE_BURST_LENGTH) generate
        signal  awaddr_buf      : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        signal  awlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        AWADDR  <= awaddr_buf;
        AWLEN   <= awlen_buf;
        AWVALID <= AWVALID_Dummy;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_WRITE_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (AWVALID_Dummy = '1' and AWREADY = '0') and fifo_resp_ready = '1' and fifo_burst_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if wreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not wreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        awaddr_tmp <= sect_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      awaddr_buf + SHIFT_LEFT(RESIZE(awlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        awaddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awaddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awaddr_buf <= awaddr_tmp(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process awaddr_buf_proc;

        awlen_tmp  <= RESIZE(sect_len_buf(NUM_WRITE_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(MAX_WRITE_BURST_LENGTH-1, 8);
        awlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awlen_buf <= awlen_tmp;
                    end if;
                end if;
            end if;
        end process awlen_buf_proc;

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if invalid_len_event_2 = '1' then
                        AWVALID_Dummy <= '0';
                    elsif next_loop then
                        AWVALID_Dummy <= '1';
                    elsif not next_loop and AWREADY = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when next_loop else '0';
        aw2b_awdata <= '1' & invalid_len_event_2 when last_loop and last_sect_buf = '1' else '0' & invalid_len_event_2;
        last_sect_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    last_sect_buf <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect and last_sect then
                        last_sect_buf <= '1';
                    elsif next_sect then
                        last_sect_buf <= '0';
                    end if;
                end if;
            end if;
        end process last_sect_buf_proc;

        fifo_burst_w <= '1' when invalid_len_event_2 = '0' and next_loop else '0';
        burst_end <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AW channel end -------------------------------------

    --------------------------- W channel begin ------------------------------------
    -- Instantiation
    buff_wdata : Pool_gmem_m_axi_buffer
        generic map (
            DATA_WIDTH      => USER_DW + USER_DW/8,
            DEPTH           => NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH,
            ADDR_WIDTH      => log2(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            sclk_en           => ACLK_EN,
            if_full_n         => wdata_ack,
            if_write_ce       => '1',
            if_write          => wdata_valid,
            if_din            => STD_LOGIC_VECTOR(fifo_wdata_wstrb),
            if_empty_n        => data_valid,
            if_read_ce        => '1',
            if_read           => next_data,
            UNSIGNED(if_dout) => data_pack);

    fifo_wdata_wstrb <= (wdata_strb & wdata_data);
    tmp_data         <= RESIZE(data_pack(USER_DW - 1 downto 0), USER_DATA_WIDTH);
    tmp_strb         <= RESIZE(data_pack(USER_DW + USER_DW/8 - 1 downto USER_DW), USER_DATA_BYTES);

    WID     <= (others => '0');
    WUSER   <= TO_UNSIGNED(C_USER_VALUE, WUSER'length);

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  ready_for_data  : BOOLEAN;
    begin
        -- Instantiation
        fifo_burst : Pool_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');
        next_data      <= '1' when burst_valid = '1' and data_valid = '1' and ready_for_data else '0';
        next_burst     <= '1' when len_cnt = burst_len and next_data = '1' else '0';

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_data = '1' then
                        data_buf <= tmp_data;
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    strb_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        strb_buf <= tmp_strb;
                    end if;
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        WVALID_Dummy <= '1';
                    elsif ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        WLAST_Dummy <= '1';
                    elsif ready_for_data then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_data = '1' then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

    end generate bus_equal_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : Pool_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf(BUS_DATA_WIDTH - 1 downto 0);
        WSTRB   <= strb_buf(BUS_DATA_BYTES - 1 downto 0);
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        next_data      <= '1' when first_split else '0';
        next_burst     <= '1' when len_cnt = burst_len and burst_valid = '1' and last_split else '0';
        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');

        first_split <= split_cnt = 0 and data_valid = '1' and burst_valid ='1' and ready_for_data;
        next_split  <= split_cnt /= 0 and ready_for_data;
        last_split  <= split_cnt = (TOTAL_SPLIT - 1) and ready_for_data;

        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_data = '1' or next_split then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_data = '1' then
                        data_buf <= tmp_data;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, BUS_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    strb_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        strb_buf <= tmp_strb;
                    elsif next_split then
                        strb_buf <= SHIFT_RIGHT(strb_buf, BUS_DATA_BYTES);
                    end if;
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        WVALID_Dummy <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' and last_split then
                        WLAST_Dummy <= '1';
                    elsif ready_for_data then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;
    end generate bus_narrow_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  burst_pack      : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  tmp_burst_info  : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  head_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  tail_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  add_head        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  add_tail        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  head_pad_sel    : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  tail_pad_sel    : UNSIGNED(0 to TOTAL_PADS - 1);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  next_beat       : BOOLEAN;

        component Pool_gmem_m_axi_decoder is
            generic (
                DIN_WIDTH : integer := 3);
            port (
                din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
                dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
        end component Pool_gmem_m_axi_decoder;

    begin
        -- Instantiation
        fifo_burst : Pool_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8 + 2*PAD_ALIGN,
                DEPTH           =>  user_maxreqs,
                DEPTH_BITS      =>  log2(user_maxreqs))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= awaddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(awlen_tmp, 8);

        head_pad_decoder : Pool_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  head_pads,
                dout            =>  head_pad_sel);

        tail_pad_decoder : Pool_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  tail_pads,
                dout            =>  tail_pad_sel);

        head_pads <= burst_pack(2*PAD_ALIGN + 7 downto 8 + PAD_ALIGN);
        tail_pads <= not burst_pack(PAD_ALIGN + 7 downto 8);
        burst_len <= burst_pack(7 downto 0);

        next_data      <= '1' when next_pad else '0';
        next_burst     <= '1' when last_beat and next_beat else '0';
        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1';
        next_beat  <= burst_valid = '1' and last_pad and ready_for_data;

        next_pad <= burst_valid = '1' and data_valid = '1' and ready_for_data;
        last_pad <= pad_oh(TOTAL_PADS - to_integer(tail_pads) - 1) = '1' when last_beat else
                    pad_oh(TOTAL_PADS - 1) = '1';

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0')                                               when data_valid = '0' else
                  SHIFT_LEFT(TO_UNSIGNED(1, TOTAL_PADS), TO_INTEGER(head_pads)) when first_beat and first_pad else
                  TO_UNSIGNED(1, TOTAL_PADS)                                    when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_strb_gen : for i in 1 to TOTAL_PADS generate
        begin
            add_head(i-1) <= '1' when head_pad_sel(i-1) = '1' and first_beat else
                             '0';
            add_tail(i-1) <= '1' when tail_pad_sel(i-1) = '1' and last_beat else
                             '0';

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if ACLK_EN = '1' then
                        if (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                            data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= (others => '0');
                        elsif pad_oh(i-1) = '1' and ready_for_data then
                            data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= tmp_data;
                        end if;
                    end if;
                end if;
            end process;

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESET = '1') then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif pad_oh(i-1) = '1' and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= tmp_strb;
                    end if;
                end if;
            end process;
        end generate data_strb_gen;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat then
                        WVALID_Dummy <= '1';
                    elsif ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        WLAST_Dummy <= '1';
                    elsif next_data = '1' then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_beat then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;
    end generate bus_wide_gen;
    --------------------------- W channel end --------------------------------------

    --------------------------- B channel begin ------------------------------------
    -- Instantiation
    fifo_resp : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  NUM_WRITE_OUTSTANDING-1,
            DEPTH_BITS      =>  log2(NUM_WRITE_OUTSTANDING-1))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  need_wrsp,
            full_n          =>  fifo_resp_ready,
            rdreq           =>  next_resp,
            wrreq           =>  fifo_resp_w,
            q               =>  aw2b_bdata,
            data            =>  aw2b_awdata);

    fifo_resp_to_user : Pool_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  wrsp_valid,
            full_n          =>  resp_ready,
            rdreq           =>  wrsp_ack,
            wrreq           =>  resp_match,
            q               =>  wrsp,
            data            =>  bresp_tmp);

    BREADY        <= resp_ready;
    last_resp     <= aw2b_bdata(1);
    invalid_event <= aw2b_bdata(0);
    resp_match    <= '1' when (next_resp = '1' and (last_resp = '1' or invalid_event = '1')) and need_wrsp = '1' else '0';

    next_resp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                next_resp <= '0';
            elsif ACLK_EN = '1' then
                next_resp <= (BVALID and resp_ready) or (invalid_event and need_wrsp and (not next_resp));
            end if;
        end if;
    end process next_resp_proc;

    bresp_tmp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bresp_tmp <= "00";
            elsif ACLK_EN = '1' then
                if (resp_match = '1' and next_resp = '0') then
                    bresp_tmp <= "00";
                elsif (resp_match = '1' and next_resp = '1') then
                    bresp_tmp <= BRESP;
                elsif (next_resp = '1' and bresp_tmp(1) = '0') then
                    bresp_tmp <= BRESP;
                end if;
            end if;
        end if;
    end process bresp_tmp_proc;
--------------------------- B channel end --------------------------------------
end architecture behave;
