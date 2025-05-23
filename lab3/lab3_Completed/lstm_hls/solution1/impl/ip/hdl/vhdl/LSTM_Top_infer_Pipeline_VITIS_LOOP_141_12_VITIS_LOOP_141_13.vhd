-- ==============================================================
-- Generated by Vitis HLS v2024.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    h_t_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    h_t_ce0 : OUT STD_LOGIC;
    h_t_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    res_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce0 : OUT STD_LOGIC;
    res_we0 : OUT STD_LOGIC;
    res_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    res_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce1 : OUT STD_LOGIC;
    res_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_173_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_173_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_173_p_opcode : OUT STD_LOGIC_VECTOR (1 downto 0);
    grp_fu_173_p_dout0 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_173_p_ce : OUT STD_LOGIC;
    grp_fu_169_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_169_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_169_p_dout0 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_169_p_ce : OUT STD_LOGIC );
end;


architecture behav of LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp0_stage4 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_pp0_stage5 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_500 : STD_LOGIC_VECTOR (10 downto 0) := "10100000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage5 : signal is "none";
    signal ap_block_pp0_stage5_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal icmp_ln141_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage5 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal Weight_lc_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal Weight_lc_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln141_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln141_fu_161_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln141_reg_282 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln141_1_fu_169_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln141_1_reg_289 : STD_LOGIC_VECTOR (3 downto 0);
    signal first_iter_4_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal first_iter_4_reg_295 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_addr_reg_299 : STD_LOGIC_VECTOR (3 downto 0);
    signal res_addr_reg_299_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal res_load_reg_305 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln141_2_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln141_2_reg_320 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln141_2_reg_320_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal Weight_lc_load_reg_324 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal h_t_load_reg_329 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_reg_334 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_reg_344 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage5_11001 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln141_fu_183_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln141_3_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln141_1_fu_200_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_fu_46 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal add_ln141_1_fu_218_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_c_load : STD_LOGIC_VECTOR (7 downto 0);
    signal r_fu_50 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal ap_sig_allocacmp_r_load : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten32_fu_54 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    signal add_ln141_3_fu_137_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_indvar_flatten32_load : STD_LOGIC_VECTOR (10 downto 0);
    signal add18229_fu_58 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal res_ce1_local : STD_LOGIC;
    signal res_we0_local : STD_LOGIC;
    signal res_ce0_local : STD_LOGIC;
    signal Weight_lc_ce0_local : STD_LOGIC;
    signal h_t_ce0_local : STD_LOGIC;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal icmp_ln141_1_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln141_fu_149_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_fu_193_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln141_2_fu_204_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln141_2_fu_207_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_idle_pp0_1to2 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_block_pp0_stage4_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_block_pp0_stage1_00001 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component LSTM_Top_fadd_32ns_32ns_32_5_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component LSTM_Top_fmul_32ns_32ns_32_4_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_Weight_lc_ROM_AUTO_1R IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component LSTM_Top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    Weight_lc_U : component LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_Weight_lc_ROM_AUTO_1R
    generic map (
        DataWidth => 32,
        AddressRange => 1280,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => Weight_lc_address0,
        ce0 => Weight_lc_ce0_local,
        q0 => Weight_lc_q0);

    flow_control_loop_pipe_sequential_init_U : component LSTM_Top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage5,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage5)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage5_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage5_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    add18229_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((first_iter_4_reg_295 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    add18229_fu_58 <= res_load_reg_305;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    add18229_fu_58 <= add_reg_344;
                end if;
            end if; 
        end if;
    end process;

    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage5_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    c_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                c_fu_46 <= ap_const_lv8_0;
            elsif (((icmp_ln141_reg_278 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                c_fu_46 <= add_ln141_1_fu_218_p2;
            end if; 
        end if;
    end process;

    indvar_flatten32_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln141_fu_131_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten32_fu_54 <= add_ln141_3_fu_137_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten32_fu_54 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;

    r_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                r_fu_50 <= ap_const_lv4_0;
            elsif (((icmp_ln141_reg_278 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                r_fu_50 <= select_ln141_1_reg_289;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                Weight_lc_load_reg_324 <= Weight_lc_q0;
                h_t_load_reg_329 <= h_t_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage5_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then
                add_reg_344 <= grp_fu_173_p_dout0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                first_iter_4_reg_295 <= first_iter_4_fu_177_p2;
                icmp_ln141_reg_278 <= icmp_ln141_fu_131_p2;
                mul_reg_334 <= grp_fu_169_p_dout0;
                res_addr_reg_299 <= zext_ln141_fu_183_p1(4 - 1 downto 0);
                res_addr_reg_299_pp0_iter1_reg <= res_addr_reg_299;
                select_ln141_1_reg_289 <= select_ln141_1_fu_169_p3;
                select_ln141_reg_282 <= select_ln141_fu_161_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                icmp_ln141_2_reg_320 <= icmp_ln141_2_fu_223_p2;
                icmp_ln141_2_reg_320_pp0_iter1_reg <= icmp_ln141_2_reg_320;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                res_load_reg_305 <= res_q1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage5_subdone, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter1_stage0, ap_idle_pp0_0to0, ap_idle_pp0_1to2, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_block_pp0_stage3_subdone, ap_block_pp0_stage4_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to2 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_pp0_stage4 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage4_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                end if;
            when ap_ST_fsm_pp0_stage5 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage5_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    Weight_lc_address0 <= zext_ln141_3_fu_213_p1(11 - 1 downto 0);

    Weight_lc_ce0_local_assign_proc : process(ap_enable_reg_pp0_iter0_reg, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            Weight_lc_ce0_local <= ap_const_logic_1;
        else 
            Weight_lc_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    add_ln141_1_fu_218_p2 <= std_logic_vector(unsigned(select_ln141_reg_282) + unsigned(ap_const_lv8_1));
    add_ln141_2_fu_207_p2 <= std_logic_vector(unsigned(tmp_5_fu_193_p3) + unsigned(zext_ln141_2_fu_204_p1));
    add_ln141_3_fu_137_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten32_load) + unsigned(ap_const_lv11_1));
    add_ln141_fu_149_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_r_load) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage5 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage5_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage5_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage5_assign_proc : process(ap_CS_fsm_pp0_stage5, ap_block_pp0_stage5_subdone, ap_enable_reg_pp0_iter0_reg, icmp_ln141_reg_278)
    begin
        if (((icmp_ln141_reg_278 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage5_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then 
            ap_condition_exit_pp0_iter0_stage5 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln141_reg_278, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln141_reg_278 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to2_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to2 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage5;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage5, ap_block_pp0_stage5_subdone, ap_enable_reg_pp0_iter0_reg)
    begin
        if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage5_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage5))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_c_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, c_fu_46, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_c_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_c_load <= c_fu_46;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten32_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten32_fu_54)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten32_load <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_indvar_flatten32_load <= indvar_flatten32_fu_54;
        end if; 
    end process;


    ap_sig_allocacmp_r_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, r_fu_50)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_r_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_r_load <= r_fu_50;
        end if; 
    end process;

    first_iter_4_fu_177_p2 <= "1" when (select_ln141_fu_161_p3 = ap_const_lv8_0) else "0";
    grp_fu_169_p_ce <= ap_const_logic_1;
    grp_fu_169_p_din0 <= Weight_lc_load_reg_324;
    grp_fu_169_p_din1 <= h_t_load_reg_329;
    grp_fu_173_p_ce <= ap_const_logic_1;
    grp_fu_173_p_din0 <= add18229_fu_58;
    grp_fu_173_p_din1 <= mul_reg_334;
    grp_fu_173_p_opcode <= ap_const_lv2_0;
    h_t_address0 <= zext_ln141_1_fu_200_p1(7 - 1 downto 0);
    h_t_ce0 <= h_t_ce0_local;

    h_t_ce0_local_assign_proc : process(ap_enable_reg_pp0_iter0_reg, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            h_t_ce0_local <= ap_const_logic_1;
        else 
            h_t_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln141_1_fu_155_p2 <= "1" when (ap_sig_allocacmp_c_load = ap_const_lv8_80) else "0";
    icmp_ln141_2_fu_223_p2 <= "1" when (add_ln141_1_fu_218_p2 = ap_const_lv8_80) else "0";
    icmp_ln141_fu_131_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten32_load = ap_const_lv11_500) else "0";
    res_address0 <= res_addr_reg_299_pp0_iter1_reg;
    res_address1 <= zext_ln141_fu_183_p1(4 - 1 downto 0);
    res_ce0 <= res_ce0_local;

    res_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            res_ce0_local <= ap_const_logic_1;
        else 
            res_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    res_ce1 <= res_ce1_local;

    res_ce1_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            res_ce1_local <= ap_const_logic_1;
        else 
            res_ce1_local <= ap_const_logic_0;
        end if; 
    end process;

    res_d0 <= add_reg_344;
    res_we0 <= res_we0_local;

    res_we0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, icmp_ln141_2_reg_320_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln141_2_reg_320_pp0_iter1_reg = ap_const_lv1_1))) then 
            res_we0_local <= ap_const_logic_1;
        else 
            res_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    select_ln141_1_fu_169_p3 <= 
        add_ln141_fu_149_p2 when (icmp_ln141_1_fu_155_p2(0) = '1') else 
        ap_sig_allocacmp_r_load;
    select_ln141_fu_161_p3 <= 
        ap_const_lv8_0 when (icmp_ln141_1_fu_155_p2(0) = '1') else 
        ap_sig_allocacmp_c_load;
    tmp_5_fu_193_p3 <= (select_ln141_1_reg_289 & ap_const_lv7_0);
    zext_ln141_1_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln141_reg_282),64));
    zext_ln141_2_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln141_reg_282),11));
    zext_ln141_3_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln141_2_fu_207_p2),64));
    zext_ln141_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln141_1_fu_169_p3),64));
end behav;
