-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Jan  4 22:20:55 2023
-- Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Xilinx/Progetti_Xilinx/11_Robertson/11_Robertson.sim/sim_1/synth/func/xsim/simulation_func_synth.vhd
-- Design      : Multiplier_on_board
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer is
  port (
    start_clear : out STD_LOGIC;
    reset00_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_IBUF : in STD_LOGIC;
    sig_div : in STD_LOGIC
  );
end ButtonDebouncer;

architecture STRUCTURE of ButtonDebouncer is
  signal CLEARED_BTN_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_btn_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_btn_state[1]_i_8_n_0\ : STD_LOGIC;
  signal btn_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cont_0 : STD_LOGIC;
  signal \debouncer.cont_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \debouncer.cont_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \debouncer.cont_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \debouncer.cont_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[0]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[10]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[11]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[12]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[13]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[14]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[15]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[16]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[17]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[18]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[19]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[1]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[20]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[21]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[22]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[23]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[24]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[25]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[26]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[27]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[28]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[29]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[2]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[30]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[31]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[3]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[4]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[5]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[6]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[7]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[8]\ : STD_LOGIC;
  signal \debouncer.cont_reg_n_0_[9]\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^start_clear\ : STD_LOGIC;
  signal \NLW_debouncer.cont_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_debouncer.cont_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_btn_state[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_btn_state[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_btn_state_reg[0]\ : label is "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_btn_state_reg[1]\ : label is "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00";
  attribute SOFT_HLUTNM of \debouncer.cont[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \debouncer.cont[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \debouncer.cont[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \debouncer.cont[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \debouncer.cont[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \debouncer.cont[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \debouncer.cont[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \debouncer.cont[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \debouncer.cont[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \debouncer.cont[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \debouncer.cont[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \debouncer.cont[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \debouncer.cont[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \debouncer.cont[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \debouncer.cont[22]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debouncer.cont[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \debouncer.cont[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \debouncer.cont[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debouncer.cont[26]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debouncer.cont[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debouncer.cont[28]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debouncer.cont[29]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debouncer.cont[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \debouncer.cont[30]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debouncer.cont[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debouncer.cont[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \debouncer.cont[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \debouncer.cont[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \debouncer.cont[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \debouncer.cont[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \debouncer.cont[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \debouncer.cont[9]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \debouncer.cont_reg[8]_i_2\ : label is 35;
begin
  start_clear <= \^start_clear\;
CLEARED_BTN_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F25200500000"
    )
        port map (
      I0 => btn_state(1),
      I1 => sig_div,
      I2 => btn_state(0),
      I3 => \FSM_sequential_btn_state[1]_i_2_n_0\,
      I4 => start_IBUF,
      I5 => \^start_clear\,
      O => CLEARED_BTN_i_1_n_0
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CLEARED_BTN_i_1_n_0,
      Q => \^start_clear\,
      R => '0'
    );
\FSM_sequential_btn_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8DD8"
    )
        port map (
      I0 => btn_state(0),
      I1 => \FSM_sequential_btn_state[1]_i_2_n_0\,
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => \FSM_sequential_btn_state[0]_i_1_n_0\
    );
\FSM_sequential_btn_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => btn_state(0),
      I1 => \FSM_sequential_btn_state[1]_i_2_n_0\,
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => \FSM_sequential_btn_state[1]_i_1_n_0\
    );
\FSM_sequential_btn_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_btn_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_btn_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_btn_state[1]_i_5_n_0\,
      I3 => \FSM_sequential_btn_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_btn_state[1]_i_7_n_0\,
      I5 => \FSM_sequential_btn_state[1]_i_8_n_0\,
      O => \FSM_sequential_btn_state[1]_i_2_n_0\
    );
\FSM_sequential_btn_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[25]\,
      I1 => \debouncer.cont_reg_n_0_[26]\,
      I2 => \debouncer.cont_reg_n_0_[24]\,
      I3 => \debouncer.cont_reg_n_0_[28]\,
      I4 => \debouncer.cont_reg_n_0_[29]\,
      I5 => \debouncer.cont_reg_n_0_[27]\,
      O => \FSM_sequential_btn_state[1]_i_3_n_0\
    );
\FSM_sequential_btn_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[7]\,
      I1 => \debouncer.cont_reg_n_0_[8]\,
      I2 => \debouncer.cont_reg_n_0_[6]\,
      I3 => \debouncer.cont_reg_n_0_[10]\,
      I4 => \debouncer.cont_reg_n_0_[11]\,
      I5 => \debouncer.cont_reg_n_0_[9]\,
      O => \FSM_sequential_btn_state[1]_i_4_n_0\
    );
\FSM_sequential_btn_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[19]\,
      I1 => \debouncer.cont_reg_n_0_[20]\,
      I2 => \debouncer.cont_reg_n_0_[18]\,
      I3 => \debouncer.cont_reg_n_0_[22]\,
      I4 => \debouncer.cont_reg_n_0_[23]\,
      I5 => \debouncer.cont_reg_n_0_[21]\,
      O => \FSM_sequential_btn_state[1]_i_5_n_0\
    );
\FSM_sequential_btn_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[13]\,
      I1 => \debouncer.cont_reg_n_0_[14]\,
      I2 => \debouncer.cont_reg_n_0_[12]\,
      I3 => \debouncer.cont_reg_n_0_[16]\,
      I4 => \debouncer.cont_reg_n_0_[17]\,
      I5 => \debouncer.cont_reg_n_0_[15]\,
      O => \FSM_sequential_btn_state[1]_i_6_n_0\
    );
\FSM_sequential_btn_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[30]\,
      I1 => \debouncer.cont_reg_n_0_[31]\,
      O => \FSM_sequential_btn_state[1]_i_7_n_0\
    );
\FSM_sequential_btn_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[0]\,
      I1 => \debouncer.cont_reg_n_0_[1]\,
      I2 => \debouncer.cont_reg_n_0_[2]\,
      I3 => \debouncer.cont_reg_n_0_[4]\,
      I4 => \debouncer.cont_reg_n_0_[5]\,
      I5 => \debouncer.cont_reg_n_0_[3]\,
      O => \FSM_sequential_btn_state[1]_i_8_n_0\
    );
\FSM_sequential_btn_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_btn_state[0]_i_1_n_0\,
      Q => btn_state(0),
      R => '0'
    );
\FSM_sequential_btn_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_btn_state[1]_i_1_n_0\,
      Q => btn_state(1),
      R => '0'
    );
\debouncer.cont[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => \debouncer.cont_reg_n_0_[0]\,
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(0)
    );
\debouncer.cont[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(10),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(10)
    );
\debouncer.cont[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(11),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(11)
    );
\debouncer.cont[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(12),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(12)
    );
\debouncer.cont[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(13),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(13)
    );
\debouncer.cont[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(14),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(14)
    );
\debouncer.cont[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(15),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(15)
    );
\debouncer.cont[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(16),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(16)
    );
\debouncer.cont[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(17),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(17)
    );
\debouncer.cont[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(18),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(18)
    );
\debouncer.cont[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(19),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(19)
    );
\debouncer.cont[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(1),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(1)
    );
\debouncer.cont[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(20),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(20)
    );
\debouncer.cont[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(21),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(21)
    );
\debouncer.cont[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(22),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(22)
    );
\debouncer.cont[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(23),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(23)
    );
\debouncer.cont[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(24),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(24)
    );
\debouncer.cont[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(25),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(25)
    );
\debouncer.cont[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(26),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(26)
    );
\debouncer.cont[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(27),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(27)
    );
\debouncer.cont[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(28),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(28)
    );
\debouncer.cont[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(29),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(29)
    );
\debouncer.cont[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(2),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(2)
    );
\debouncer.cont[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(30),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(30)
    );
\debouncer.cont[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BBB"
    )
        port map (
      I0 => \FSM_sequential_btn_state[1]_i_2_n_0\,
      I1 => btn_state(0),
      I2 => btn_state(1),
      I3 => start_IBUF,
      O => cont_0
    );
\debouncer.cont[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(31),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(31)
    );
\debouncer.cont[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(3),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(3)
    );
\debouncer.cont[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(4),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(4)
    );
\debouncer.cont[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(5),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(5)
    );
\debouncer.cont[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(6),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(6)
    );
\debouncer.cont[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(7),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(7)
    );
\debouncer.cont[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(8),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(8)
    );
\debouncer.cont[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => in5(9),
      I1 => btn_state(0),
      I2 => start_IBUF,
      I3 => btn_state(1),
      O => cont(9)
    );
\debouncer.cont_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(0),
      Q => \debouncer.cont_reg_n_0_[0]\,
      R => '0'
    );
\debouncer.cont_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(10),
      Q => \debouncer.cont_reg_n_0_[10]\,
      R => '0'
    );
\debouncer.cont_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(11),
      Q => \debouncer.cont_reg_n_0_[11]\,
      R => '0'
    );
\debouncer.cont_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(12),
      Q => \debouncer.cont_reg_n_0_[12]\,
      R => '0'
    );
\debouncer.cont_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[8]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[12]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[12]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[12]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(12 downto 9),
      S(3) => \debouncer.cont_reg_n_0_[12]\,
      S(2) => \debouncer.cont_reg_n_0_[11]\,
      S(1) => \debouncer.cont_reg_n_0_[10]\,
      S(0) => \debouncer.cont_reg_n_0_[9]\
    );
\debouncer.cont_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(13),
      Q => \debouncer.cont_reg_n_0_[13]\,
      R => '0'
    );
\debouncer.cont_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(14),
      Q => \debouncer.cont_reg_n_0_[14]\,
      R => '0'
    );
\debouncer.cont_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(15),
      Q => \debouncer.cont_reg_n_0_[15]\,
      R => '0'
    );
\debouncer.cont_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(16),
      Q => \debouncer.cont_reg_n_0_[16]\,
      R => '0'
    );
\debouncer.cont_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[12]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[16]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[16]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[16]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(16 downto 13),
      S(3) => \debouncer.cont_reg_n_0_[16]\,
      S(2) => \debouncer.cont_reg_n_0_[15]\,
      S(1) => \debouncer.cont_reg_n_0_[14]\,
      S(0) => \debouncer.cont_reg_n_0_[13]\
    );
\debouncer.cont_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(17),
      Q => \debouncer.cont_reg_n_0_[17]\,
      R => '0'
    );
\debouncer.cont_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(18),
      Q => \debouncer.cont_reg_n_0_[18]\,
      R => '0'
    );
\debouncer.cont_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(19),
      Q => \debouncer.cont_reg_n_0_[19]\,
      R => '0'
    );
\debouncer.cont_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(1),
      Q => \debouncer.cont_reg_n_0_[1]\,
      R => '0'
    );
\debouncer.cont_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(20),
      Q => \debouncer.cont_reg_n_0_[20]\,
      R => '0'
    );
\debouncer.cont_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[16]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[20]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[20]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[20]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(20 downto 17),
      S(3) => \debouncer.cont_reg_n_0_[20]\,
      S(2) => \debouncer.cont_reg_n_0_[19]\,
      S(1) => \debouncer.cont_reg_n_0_[18]\,
      S(0) => \debouncer.cont_reg_n_0_[17]\
    );
\debouncer.cont_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(21),
      Q => \debouncer.cont_reg_n_0_[21]\,
      R => '0'
    );
\debouncer.cont_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(22),
      Q => \debouncer.cont_reg_n_0_[22]\,
      R => '0'
    );
\debouncer.cont_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(23),
      Q => \debouncer.cont_reg_n_0_[23]\,
      R => '0'
    );
\debouncer.cont_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(24),
      Q => \debouncer.cont_reg_n_0_[24]\,
      R => '0'
    );
\debouncer.cont_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[20]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[24]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[24]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[24]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(24 downto 21),
      S(3) => \debouncer.cont_reg_n_0_[24]\,
      S(2) => \debouncer.cont_reg_n_0_[23]\,
      S(1) => \debouncer.cont_reg_n_0_[22]\,
      S(0) => \debouncer.cont_reg_n_0_[21]\
    );
\debouncer.cont_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(25),
      Q => \debouncer.cont_reg_n_0_[25]\,
      R => '0'
    );
\debouncer.cont_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(26),
      Q => \debouncer.cont_reg_n_0_[26]\,
      R => '0'
    );
\debouncer.cont_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(27),
      Q => \debouncer.cont_reg_n_0_[27]\,
      R => '0'
    );
\debouncer.cont_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(28),
      Q => \debouncer.cont_reg_n_0_[28]\,
      R => '0'
    );
\debouncer.cont_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[24]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[28]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[28]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[28]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(28 downto 25),
      S(3) => \debouncer.cont_reg_n_0_[28]\,
      S(2) => \debouncer.cont_reg_n_0_[27]\,
      S(1) => \debouncer.cont_reg_n_0_[26]\,
      S(0) => \debouncer.cont_reg_n_0_[25]\
    );
\debouncer.cont_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(29),
      Q => \debouncer.cont_reg_n_0_[29]\,
      R => '0'
    );
\debouncer.cont_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(2),
      Q => \debouncer.cont_reg_n_0_[2]\,
      R => '0'
    );
\debouncer.cont_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(30),
      Q => \debouncer.cont_reg_n_0_[30]\,
      R => '0'
    );
\debouncer.cont_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(31),
      Q => \debouncer.cont_reg_n_0_[31]\,
      R => '0'
    );
\debouncer.cont_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_debouncer.cont_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \debouncer.cont_reg[31]_i_3_n_2\,
      CO(0) => \debouncer.cont_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_debouncer.cont_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in5(31 downto 29),
      S(3) => '0',
      S(2) => \debouncer.cont_reg_n_0_[31]\,
      S(1) => \debouncer.cont_reg_n_0_[30]\,
      S(0) => \debouncer.cont_reg_n_0_[29]\
    );
\debouncer.cont_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(3),
      Q => \debouncer.cont_reg_n_0_[3]\,
      R => '0'
    );
\debouncer.cont_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(4),
      Q => \debouncer.cont_reg_n_0_[4]\,
      R => '0'
    );
\debouncer.cont_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \debouncer.cont_reg[4]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[4]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[4]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[4]_i_2_n_3\,
      CYINIT => \debouncer.cont_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(4 downto 1),
      S(3) => \debouncer.cont_reg_n_0_[4]\,
      S(2) => \debouncer.cont_reg_n_0_[3]\,
      S(1) => \debouncer.cont_reg_n_0_[2]\,
      S(0) => \debouncer.cont_reg_n_0_[1]\
    );
\debouncer.cont_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(5),
      Q => \debouncer.cont_reg_n_0_[5]\,
      R => '0'
    );
\debouncer.cont_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(6),
      Q => \debouncer.cont_reg_n_0_[6]\,
      R => '0'
    );
\debouncer.cont_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(7),
      Q => \debouncer.cont_reg_n_0_[7]\,
      R => '0'
    );
\debouncer.cont_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(8),
      Q => \debouncer.cont_reg_n_0_[8]\,
      R => '0'
    );
\debouncer.cont_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debouncer.cont_reg[4]_i_2_n_0\,
      CO(3) => \debouncer.cont_reg[8]_i_2_n_0\,
      CO(2) => \debouncer.cont_reg[8]_i_2_n_1\,
      CO(1) => \debouncer.cont_reg[8]_i_2_n_2\,
      CO(0) => \debouncer.cont_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(8 downto 5),
      S(3) => \debouncer.cont_reg_n_0_[8]\,
      S(2) => \debouncer.cont_reg_n_0_[7]\,
      S(1) => \debouncer.cont_reg_n_0_[6]\,
      S(0) => \debouncer.cont_reg_n_0_[5]\
    );
\debouncer.cont_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cont_0,
      D => cont(9),
      Q => \debouncer.cont_reg_n_0_[9]\,
      R => '0'
    );
\tmp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^start_clear\,
      I1 => Q(0),
      I2 => SS(0),
      O => reset00_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divisore_freq is
  port (
    sig_div : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end Divisore_freq;

architecture STRUCTURE of Divisore_freq is
  signal conteggio : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \conteggio[0]_i_1_n_0\ : STD_LOGIC;
  signal div_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conteggio[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of div : label is "soft_lutpair18";
begin
\conteggio[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => conteggio(0),
      O => \conteggio[0]_i_1_n_0\
    );
\conteggio[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C34"
    )
        port map (
      I0 => conteggio(3),
      I1 => conteggio(0),
      I2 => conteggio(1),
      I3 => conteggio(2),
      O => p_0_in(1)
    );
\conteggio[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => conteggio(0),
      I1 => conteggio(1),
      I2 => conteggio(2),
      O => p_0_in(2)
    );
\conteggio[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA2"
    )
        port map (
      I0 => conteggio(3),
      I1 => conteggio(0),
      I2 => conteggio(1),
      I3 => conteggio(2),
      O => p_0_in(3)
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \conteggio[0]_i_1_n_0\,
      Q => conteggio(0),
      R => SS(0)
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(1),
      Q => conteggio(1),
      R => SS(0)
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(2),
      Q => conteggio(2),
      R => SS(0)
    );
\conteggio_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(3),
      Q => conteggio(3),
      R => SS(0)
    );
div: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => conteggio(2),
      I1 => conteggio(1),
      I2 => conteggio(3),
      I3 => conteggio(0),
      O => div_n_0
    );
div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => div_n_0,
      Q => sig_div,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_unit is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_sub : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_curr_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_curr_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_clear : in STD_LOGIC;
    sig_q_meno1 : in STD_LOGIC;
    \tmp_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_div : in STD_LOGIC;
    input2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \FSM_onehot_curr_state_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end control_unit;

architecture STRUCTURE of control_unit is
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tmp[1]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tmp[2]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tmp[3]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tmp[4]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tmp[5]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tmp[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tmp[6]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tmp[7]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tmp[7]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tmp[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tmp[7]_i_2__0\ : label is "soft_lutpair23";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => start_clear,
      O => \FSM_onehot_curr_state[1]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => sig_div,
      D => \FSM_onehot_curr_state_reg[2]_0\(0),
      Q => \^q\(0),
      S => SS(0)
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sig_div,
      D => \FSM_onehot_curr_state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => SS(0)
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sig_div,
      D => \FSM_onehot_curr_state_reg[2]_0\(1),
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => SS(0)
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sig_div,
      D => \FSM_onehot_curr_state_reg_n_0_[2]\,
      Q => \^q\(2),
      R => SS(0)
    );
\FSM_onehot_curr_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sig_div,
      D => \^q\(2),
      Q => \^q\(3),
      R => SS(0)
    );
\tmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(0),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(1),
      O => D(0)
    );
\tmp[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(1),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(2),
      O => D(1)
    );
\tmp[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(2),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(3),
      O => D(2)
    );
\tmp[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(3),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(4),
      O => D(3)
    );
\tmp[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(4),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(5),
      O => D(4)
    );
\tmp[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(5),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(6),
      O => D(5)
    );
\tmp[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^q\(2),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]\(0),
      O => sig_sub
    );
\tmp[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(6),
      I1 => \^q\(1),
      I2 => \tmp_reg[6]\(7),
      O => D(6)
    );
\tmp[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_div,
      I2 => \^q\(3),
      O => \FSM_onehot_curr_state_reg[1]_0\(0)
    );
\tmp[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_div,
      O => \FSM_onehot_curr_state_reg[1]_1\(0)
    );
\tmp[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF002800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \tmp_reg[6]\(0),
      I2 => sig_q_meno1,
      I3 => sig_div,
      I4 => \^q\(3),
      O => E(0)
    );
\tmp[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(7),
      I1 => \^q\(1),
      I2 => output_OBUF(0),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod8 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_clear : in STD_LOGIC;
    sig_div : in STD_LOGIC;
    reset00_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end counter_mod8;

architecture STRUCTURE of counter_mod8 is
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\FSM_onehot_curr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => start_clear,
      I1 => Q(0),
      I2 => sig_counter(1),
      I3 => sig_counter(0),
      I4 => sig_counter(2),
      I5 => Q(2),
      O => D(0)
    );
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => sig_counter(1),
      I2 => sig_counter(0),
      I3 => sig_counter(2),
      I4 => Q(2),
      O => D(1)
    );
\c[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5AAAAAA"
    )
        port map (
      I0 => sig_counter(0),
      I1 => sig_counter(1),
      I2 => sig_counter(2),
      I3 => Q(2),
      I4 => sig_div,
      I5 => reset00_out,
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF8800"
    )
        port map (
      I0 => sig_div,
      I1 => Q(2),
      I2 => sig_counter(2),
      I3 => sig_counter(0),
      I4 => sig_counter(1),
      I5 => reset00_out,
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8F0F0F0"
    )
        port map (
      I0 => sig_div,
      I1 => Q(2),
      I2 => sig_counter(2),
      I3 => sig_counter(0),
      I4 => sig_counter(1),
      I5 => reset00_out,
      O => \c[2]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => sig_counter(0),
      R => '0'
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[1]_i_1_n_0\,
      Q => sig_counter(1),
      R => '0'
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[2]_i_1_n_0\,
      Q => sig_counter(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_1 is
  port (
    sig_q_meno1 : out STD_LOGIC;
    enable00_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_div : in STD_LOGIC;
    reset00_out : in STD_LOGIC
  );
end register_1;

architecture STRUCTURE of register_1 is
  signal \^sig_q_meno1\ : STD_LOGIC;
  signal tmp_i_1_n_0 : STD_LOGIC;
begin
  sig_q_meno1 <= \^sig_q_meno1\;
\tmp[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => Q(0),
      I2 => tmp_reg_0(0),
      I3 => sig_div,
      O => enable00_out
    );
tmp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => sig_div,
      I2 => tmp_reg_0(1),
      I3 => Q(0),
      I4 => reset00_out,
      O => tmp_i_1_n_0
    );
tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tmp_i_1_n_0,
      Q => \^sig_q_meno1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    complementoy : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cout1__0\ : in STD_LOGIC;
    enable00_out : in STD_LOGIC;
    \cout0__2\ : in STD_LOGIC;
    \tmp[7]_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp[7]_i_4_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_q_meno1 : in STD_LOGIC;
    \tmp[7]_i_4_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_sub : in STD_LOGIC;
    \cout1__0_0\ : in STD_LOGIC;
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end register_8;

architecture STRUCTURE of register_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \adder/RA/temp_5\ : STD_LOGIC;
  signal \cout00_out__2\ : STD_LOGIC;
  signal \tmp[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmp[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[7]_i_3_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\tmp[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp[7]_i_4_0\(0),
      I2 => \^q\(1),
      I3 => enable00_out,
      O => \tmp[0]_i_1__0_n_0\
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53AC53ACFFFF0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_sub,
      I2 => \tmp[7]_i_4_0\(0),
      I3 => \cout1__0_0\,
      I4 => \^q\(2),
      I5 => enable00_out,
      O => \tmp[1]_i_1_n_0\
    );
\tmp[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E817E8FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_5\,
      I1 => \^q\(6),
      I2 => complementoy(2),
      I3 => \cout1__0\,
      I4 => \^q\(7),
      I5 => enable00_out,
      O => \tmp[7]_i_3_n_0\
    );
\tmp[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => complementoy(1),
      I1 => \^q\(5),
      I2 => complementoy(0),
      I3 => \^q\(4),
      I4 => \cout00_out__2\,
      I5 => \cout0__2\,
      O => \adder/RA/temp_5\
    );
\tmp[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88288888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \tmp[7]_i_4_0\(1),
      I2 => \tmp[7]_i_4_1\(0),
      I3 => sig_q_meno1,
      I4 => \tmp[7]_i_4_2\(0),
      O => \cout00_out__2\
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => reset00_out
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp[1]_i_1_n_0\,
      Q => \^q\(1),
      R => reset00_out
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \^q\(2),
      R => reset00_out
    );
\tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \^q\(3),
      R => reset00_out
    );
\tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \^q\(4),
      R => reset00_out
    );
\tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \^q\(5),
      R => reset00_out
    );
\tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => \^q\(6),
      R => reset00_out
    );
\tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp[7]_i_3_n_0\,
      Q => \^q\(7),
      R => reset00_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_8_0 is
  port (
    \cout1__0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cout0__2\ : out STD_LOGIC;
    \cout1__0_0\ : out STD_LOGIC;
    \tmp_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_q_meno1 : in STD_LOGIC;
    \tmp_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    output_OBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    complementoy : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enable00_out : in STD_LOGIC;
    sig_sub : in STD_LOGIC;
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_8_0 : entity is "register_8";
end register_8_0;

architecture STRUCTURE of register_8_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \adder/RA/RA1to6[3].RA/cout1__0\ : STD_LOGIC;
  signal \adder/RA/RA1to6[6].RA/cout1__0\ : STD_LOGIC;
  signal \adder/RA/temp_0\ : STD_LOGIC;
  signal \adder/RA/temp_1\ : STD_LOGIC;
  signal \adder/RA/temp_2\ : STD_LOGIC;
  signal \adder/RA/temp_3\ : STD_LOGIC;
  signal \adder/RA/temp_4\ : STD_LOGIC;
  signal sig_M : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\tmp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \tmp_reg[7]_0\(0),
      I2 => sig_q_meno1,
      I3 => \tmp_reg[6]_0\(0),
      I4 => output_OBUF(1),
      O => \cout1__0_0\
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69966996FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_1\,
      I1 => output_OBUF(2),
      I2 => sig_sub,
      I3 => \^q\(2),
      I4 => output_OBUF(3),
      I5 => enable00_out,
      O => D(0)
    );
\tmp[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6E460E4"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_sub,
      I2 => output_OBUF(1),
      I3 => \^q\(0),
      I4 => output_OBUF(0),
      O => \adder/RA/temp_1\
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69966996FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_2\,
      I1 => output_OBUF(3),
      I2 => sig_sub,
      I3 => \^q\(3),
      I4 => output_OBUF(4),
      I5 => enable00_out,
      O => D(1)
    );
\tmp[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => \^q\(2),
      I1 => sig_sub,
      I2 => output_OBUF(2),
      I3 => \^q\(1),
      I4 => output_OBUF(1),
      I5 => \adder/RA/temp_0\,
      O => \adder/RA/temp_2\
    );
\tmp[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAA0400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp_reg[7]_0\(0),
      I2 => sig_q_meno1,
      I3 => \tmp_reg[6]_0\(0),
      I4 => output_OBUF(0),
      O => \adder/RA/temp_0\
    );
\tmp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69966996FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_3\,
      I1 => output_OBUF(4),
      I2 => sig_sub,
      I3 => \^q\(4),
      I4 => output_OBUF(5),
      I5 => enable00_out,
      O => D(2)
    );
\tmp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => \^q\(3),
      I1 => sig_sub,
      I2 => output_OBUF(3),
      I3 => \^q\(2),
      I4 => output_OBUF(2),
      I5 => \adder/RA/temp_1\,
      O => \adder/RA/temp_3\
    );
\tmp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69966996FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_4\,
      I1 => output_OBUF(5),
      I2 => sig_sub,
      I3 => \^q\(5),
      I4 => output_OBUF(6),
      I5 => enable00_out,
      O => D(3)
    );
\tmp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E817E8FFFF0000"
    )
        port map (
      I0 => \adder/RA/temp_4\,
      I1 => output_OBUF(5),
      I2 => complementoy(2),
      I3 => \adder/RA/RA1to6[6].RA/cout1__0\,
      I4 => output_OBUF(7),
      I5 => enable00_out,
      O => D(4)
    );
\tmp[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => \^q\(4),
      I1 => sig_sub,
      I2 => output_OBUF(4),
      I3 => \^q\(3),
      I4 => output_OBUF(3),
      I5 => \adder/RA/temp_2\,
      O => \adder/RA/temp_4\
    );
\tmp[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \tmp_reg[7]_0\(0),
      I2 => sig_q_meno1,
      I3 => \tmp_reg[6]_0\(0),
      I4 => output_OBUF(6),
      O => \adder/RA/RA1to6[6].RA/cout1__0\
    );
\tmp[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \adder/RA/temp_0\,
      I1 => output_OBUF(1),
      I2 => complementoy(0),
      I3 => output_OBUF(2),
      I4 => complementoy(1),
      I5 => \adder/RA/RA1to6[3].RA/cout1__0\,
      O => \cout0__2\
    );
\tmp[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \tmp_reg[7]_0\(0),
      I2 => sig_q_meno1,
      I3 => \tmp_reg[6]_0\(0),
      I4 => output_OBUF(3),
      O => \adder/RA/RA1to6[3].RA/cout1__0\
    );
\tmp[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => sig_M(7),
      I1 => \tmp_reg[7]_0\(0),
      I2 => sig_q_meno1,
      I3 => \tmp_reg[6]_0\(0),
      I4 => output_OBUF(7),
      O => \cout1__0\
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(0),
      Q => \^q\(0),
      R => reset00_out
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(1),
      Q => \^q\(1),
      R => reset00_out
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(2),
      Q => \^q\(2),
      R => reset00_out
    );
\tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(3),
      Q => \^q\(3),
      R => reset00_out
    );
\tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(4),
      Q => \^q\(4),
      R => reset00_out
    );
\tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(5),
      Q => \^q\(5),
      R => reset00_out
    );
\tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(6),
      Q => \^q\(6),
      R => reset00_out
    );
\tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \tmp_reg[7]_1\(7),
      Q => sig_M(7),
      R => reset00_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_8_1 is
  port (
    complementoy : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_q_meno1 : in STD_LOGIC;
    \tmp_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_reg[7]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_8_1 : entity is "register_8";
end register_8_1;

architecture STRUCTURE of register_8_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp[6]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tmp[7]_i_11\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp[7]_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp[7]_i_8\ : label is "soft_lutpair20";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\tmp[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]_0\(0),
      I3 => \tmp_reg[7]_0\(3),
      O => complementoy(3)
    );
\tmp[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]_0\(0),
      I3 => \tmp_reg[7]_0\(0),
      O => complementoy(0)
    );
\tmp[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]_0\(0),
      I3 => \tmp_reg[7]_0\(1),
      O => complementoy(1)
    );
\tmp[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]_0\(0),
      I3 => \tmp_reg[7]_0\(4),
      O => complementoy(4)
    );
\tmp[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_q_meno1,
      I2 => \tmp_reg[6]_0\(0),
      I3 => \tmp_reg[7]_0\(2),
      O => complementoy(2)
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => reset00_out
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => reset00_out
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => reset00_out
    );
\tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => reset00_out
    );
\tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => reset00_out
    );
\tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => reset00_out
    );
\tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => reset00_out
    );
\tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => reset00_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Booth_multiplier is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    output_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    start_clear : in STD_LOGIC;
    sig_div : in STD_LOGIC;
    input2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset00_out : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Booth_multiplier;

architecture STRUCTURE of Booth_multiplier is
  signal M_n_10 : STD_LOGIC;
  signal M_n_11 : STD_LOGIC;
  signal M_n_12 : STD_LOGIC;
  signal M_n_8 : STD_LOGIC;
  signal M_n_9 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \adder/RA/RA1to6[1].RA/cout1__0\ : STD_LOGIC;
  signal \adder/RA/RA7/cout1__0\ : STD_LOGIC;
  signal \adder/complementoy\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal contatore_n_0 : STD_LOGIC;
  signal contatore_n_1 : STD_LOGIC;
  signal controllo_n_1 : STD_LOGIC;
  signal controllo_n_10 : STD_LOGIC;
  signal controllo_n_11 : STD_LOGIC;
  signal controllo_n_12 : STD_LOGIC;
  signal controllo_n_13 : STD_LOGIC;
  signal controllo_n_14 : STD_LOGIC;
  signal controllo_n_15 : STD_LOGIC;
  signal controllo_n_5 : STD_LOGIC;
  signal controllo_n_6 : STD_LOGIC;
  signal controllo_n_8 : STD_LOGIC;
  signal controllo_n_9 : STD_LOGIC;
  signal \cout0__2\ : STD_LOGIC;
  signal enable0 : STD_LOGIC;
  signal enable00_out : STD_LOGIC;
  signal \^output_obuf\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_M : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_enable_rM : STD_LOGIC;
  signal sig_q_meno1 : STD_LOGIC;
  signal sig_shift_r : STD_LOGIC;
  signal sig_sub : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  output_OBUF(15 downto 0) <= \^output_obuf\(15 downto 0);
A: entity work.register_8
     port map (
      CLK => CLK,
      D(4) => M_n_8,
      D(3) => M_n_9,
      D(2) => M_n_10,
      D(1) => M_n_11,
      D(0) => M_n_12,
      E(0) => controllo_n_5,
      Q(7 downto 0) => \^output_obuf\(15 downto 8),
      complementoy(2 downto 0) => \adder/complementoy\(6 downto 4),
      \cout0__2\ => \cout0__2\,
      \cout1__0\ => \adder/RA/RA7/cout1__0\,
      \cout1__0_0\ => \adder/RA/RA1to6[1].RA/cout1__0\,
      enable00_out => enable00_out,
      reset00_out => reset00_out,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      \tmp[7]_i_4_0\(1) => sig_M(3),
      \tmp[7]_i_4_0\(0) => sig_M(0),
      \tmp[7]_i_4_1\(0) => controllo_n_1,
      \tmp[7]_i_4_2\(0) => \^output_obuf\(0)
    );
M: entity work.register_8_0
     port map (
      CLK => CLK,
      D(4) => M_n_8,
      D(3) => M_n_9,
      D(2) => M_n_10,
      D(1) => M_n_11,
      D(0) => M_n_12,
      E(0) => enable0,
      Q(6 downto 0) => sig_M(6 downto 0),
      complementoy(2) => \adder/complementoy\(5),
      complementoy(1 downto 0) => \adder/complementoy\(2 downto 1),
      \cout0__2\ => \cout0__2\,
      \cout1__0\ => \adder/RA/RA7/cout1__0\,
      \cout1__0_0\ => \adder/RA/RA1to6[1].RA/cout1__0\,
      enable00_out => enable00_out,
      output_OBUF(7 downto 0) => \^output_obuf\(15 downto 8),
      reset00_out => reset00_out,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      \tmp_reg[6]_0\(0) => \^output_obuf\(0),
      \tmp_reg[7]_0\(0) => controllo_n_1,
      \tmp_reg[7]_1\(7 downto 0) => D(7 downto 0)
    );
\Q__0\: entity work.register_8_1
     port map (
      CLK => CLK,
      D(7) => controllo_n_8,
      D(6) => controllo_n_9,
      D(5) => controllo_n_10,
      D(4) => controllo_n_11,
      D(3) => controllo_n_12,
      D(2) => controllo_n_13,
      D(1) => controllo_n_14,
      D(0) => controllo_n_15,
      E(0) => controllo_n_6,
      Q(7 downto 0) => \^output_obuf\(7 downto 0),
      complementoy(4 downto 2) => \adder/complementoy\(6 downto 4),
      complementoy(1 downto 0) => \adder/complementoy\(2 downto 1),
      reset00_out => reset00_out,
      sig_q_meno1 => sig_q_meno1,
      \tmp_reg[6]_0\(0) => controllo_n_1,
      \tmp_reg[7]_0\(4 downto 2) => sig_M(6 downto 4),
      \tmp_reg[7]_0\(1 downto 0) => sig_M(2 downto 1)
    );
contatore: entity work.counter_mod8
     port map (
      CLK => CLK,
      D(1) => contatore_n_0,
      D(0) => contatore_n_1,
      Q(2) => sig_shift_r,
      Q(1) => sig_enable_rM,
      Q(0) => \^q\(0),
      reset00_out => reset00_out,
      sig_div => sig_div,
      start_clear => start_clear
    );
controllo: entity work.control_unit
     port map (
      CLK => CLK,
      D(7) => controllo_n_8,
      D(6) => controllo_n_9,
      D(5) => controllo_n_10,
      D(4) => controllo_n_11,
      D(3) => controllo_n_12,
      D(2) => controllo_n_13,
      D(1) => controllo_n_14,
      D(0) => controllo_n_15,
      E(0) => controllo_n_5,
      \FSM_onehot_curr_state_reg[1]_0\(0) => controllo_n_6,
      \FSM_onehot_curr_state_reg[1]_1\(0) => enable0,
      \FSM_onehot_curr_state_reg[2]_0\(1) => contatore_n_0,
      \FSM_onehot_curr_state_reg[2]_0\(0) => contatore_n_1,
      Q(3) => sig_shift_r,
      Q(2) => controllo_n_1,
      Q(1) => sig_enable_rM,
      Q(0) => \^q\(0),
      SS(0) => SS(0),
      input2_IBUF(7 downto 0) => input2_IBUF(7 downto 0),
      output_OBUF(0) => \^output_obuf\(8),
      sig_div => sig_div,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      start_clear => start_clear,
      \tmp_reg[6]\(7 downto 0) => \^output_obuf\(7 downto 0)
    );
q_meno1: entity work.register_1
     port map (
      CLK => CLK,
      Q(0) => \^output_obuf\(0),
      enable00_out => enable00_out,
      reset00_out => reset00_out,
      sig_div => sig_div,
      sig_q_meno1 => sig_q_meno1,
      tmp_reg_0(1) => sig_shift_r,
      tmp_reg_0(0) => controllo_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Multiplier_on_board is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    input1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Multiplier_on_board : entity is true;
end Multiplier_on_board;

architecture STRUCTURE of Multiplier_on_board is
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal input1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal multiplier_n_0 : STD_LOGIC;
  signal output_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset00_out : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal sig_div : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal start_clear : STD_LOGIC;
begin
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
deb_start: entity work.ButtonDebouncer
     port map (
      CLK => clock_IBUF_BUFG,
      Q(0) => multiplier_n_0,
      SS(0) => reset_IBUF,
      reset00_out => reset00_out,
      sig_div => sig_div,
      start_IBUF => start_IBUF,
      start_clear => start_clear
    );
divisore: entity work.Divisore_freq
     port map (
      CLK => clock_IBUF_BUFG,
      SS(0) => reset_IBUF,
      sig_div => sig_div
    );
\input1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(0),
      O => input1_IBUF(0)
    );
\input1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(1),
      O => input1_IBUF(1)
    );
\input1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(2),
      O => input1_IBUF(2)
    );
\input1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(3),
      O => input1_IBUF(3)
    );
\input1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(4),
      O => input1_IBUF(4)
    );
\input1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(5),
      O => input1_IBUF(5)
    );
\input1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(6),
      O => input1_IBUF(6)
    );
\input1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input1(7),
      O => input1_IBUF(7)
    );
\input2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(0),
      O => input2_IBUF(0)
    );
\input2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(1),
      O => input2_IBUF(1)
    );
\input2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(2),
      O => input2_IBUF(2)
    );
\input2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(3),
      O => input2_IBUF(3)
    );
\input2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(4),
      O => input2_IBUF(4)
    );
\input2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(5),
      O => input2_IBUF(5)
    );
\input2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(6),
      O => input2_IBUF(6)
    );
\input2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input2(7),
      O => input2_IBUF(7)
    );
multiplier: entity work.Booth_multiplier
     port map (
      CLK => clock_IBUF_BUFG,
      D(7 downto 0) => input1_IBUF(7 downto 0),
      Q(0) => multiplier_n_0,
      SS(0) => reset_IBUF,
      input2_IBUF(7 downto 0) => input2_IBUF(7 downto 0),
      output_OBUF(15 downto 0) => output_OBUF(15 downto 0),
      reset00_out => reset00_out,
      sig_div => sig_div,
      start_clear => start_clear
    );
\output[0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(0),
      O => output(0)
    );
\output[10]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(10),
      O => output(10)
    );
\output[11]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(11),
      O => output(11)
    );
\output[12]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(12),
      O => output(12)
    );
\output[13]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(13),
      O => output(13)
    );
\output[14]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(14),
      O => output(14)
    );
\output[15]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(15),
      O => output(15)
    );
\output[1]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(1),
      O => output(1)
    );
\output[2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(2),
      O => output(2)
    );
\output[3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(3),
      O => output(3)
    );
\output[4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(4),
      O => output(4)
    );
\output[5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(5),
      O => output(5)
    );
\output[6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(6),
      O => output(6)
    );
\output[7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(7),
      O => output(7)
    );
\output[8]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(8),
      O => output(8)
    );
\output[9]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(9),
      O => output(9)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
end STRUCTURE;
