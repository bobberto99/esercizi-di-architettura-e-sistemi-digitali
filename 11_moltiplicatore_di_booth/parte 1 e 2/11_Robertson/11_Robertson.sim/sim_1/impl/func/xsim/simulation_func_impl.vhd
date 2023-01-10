-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Jan  4 22:15:36 2023
-- Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Xilinx/Progetti_Xilinx/11_Robertson/11_Robertson.sim/sim_1/impl/func/xsim/simulation_func_impl.vhd
-- Design      : Multiplier_on_board
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
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
  attribute SOFT_HLUTNM of \conteggio[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of div : label is "soft_lutpair1";
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
    tmp_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset00_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable00_out : out STD_LOGIC;
    \FSM_onehot_curr_state_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_curr_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_sub : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_q_meno1 : in STD_LOGIC;
    sig_div : in STD_LOGIC;
    output_OBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_IBUF : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    input2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \FSM_onehot_curr_state_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end control_unit;

architecture STRUCTURE of control_unit is
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^reset00_out\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  reset00_out <= \^reset00_out\;
\FSM_onehot_curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => start_IBUF,
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
      I2 => output_OBUF(1),
      O => D(0)
    );
\tmp[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(1),
      I1 => \^q\(1),
      I2 => output_OBUF(2),
      O => D(1)
    );
\tmp[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(2),
      I1 => \^q\(1),
      I2 => output_OBUF(3),
      O => D(2)
    );
\tmp[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(3),
      I1 => \^q\(1),
      I2 => output_OBUF(4),
      O => D(3)
    );
\tmp[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(4),
      I1 => \^q\(1),
      I2 => output_OBUF(5),
      O => D(4)
    );
\tmp[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(5),
      I1 => \^q\(1),
      I2 => output_OBUF(6),
      O => D(5)
    );
\tmp[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(2),
      I1 => output_OBUF(0),
      I2 => sig_q_meno1,
      O => sig_sub
    );
\tmp[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(6),
      I1 => \^q\(1),
      I2 => output_OBUF(7),
      O => D(6)
    );
\tmp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^q\(3),
      I1 => sig_div,
      I2 => \^q\(1),
      O => \FSM_onehot_curr_state_reg[4]_0\(0)
    );
\tmp[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_div,
      O => \FSM_onehot_curr_state_reg[1]_0\(0)
    );
\tmp[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => start_IBUF,
      I1 => \^q\(0),
      I2 => SS(0),
      O => \^reset00_out\
    );
\tmp[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE00AA00"
    )
        port map (
      I0 => \^q\(3),
      I1 => sig_q_meno1,
      I2 => output_OBUF(0),
      I3 => sig_div,
      I4 => \^q\(2),
      O => E(0)
    );
\tmp[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input2_IBUF(7),
      I1 => \^q\(1),
      I2 => \tmp_reg[7]\(0),
      O => D(7)
    );
\tmp[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \^q\(2),
      I1 => sig_div,
      I2 => output_OBUF(0),
      I3 => sig_q_meno1,
      O => enable00_out
    );
tmp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => sig_q_meno1,
      I1 => \^q\(3),
      I2 => sig_div,
      I3 => output_OBUF(0),
      I4 => \^reset00_out\,
      O => tmp_reg
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
    start_IBUF : in STD_LOGIC;
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
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => sig_counter(2),
      I1 => sig_counter(0),
      I2 => sig_counter(1),
      I3 => Q(2),
      I4 => start_IBUF,
      I5 => Q(0),
      O => D(0)
    );
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7F00"
    )
        port map (
      I0 => sig_counter(2),
      I1 => sig_counter(0),
      I2 => sig_counter(1),
      I3 => Q(2),
      I4 => Q(1),
      O => D(1)
    );
\c[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA6A6A6A"
    )
        port map (
      I0 => sig_counter(0),
      I1 => Q(2),
      I2 => sig_div,
      I3 => sig_counter(1),
      I4 => sig_counter(2),
      I5 => reset00_out,
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BCF0F0F0"
    )
        port map (
      I0 => sig_counter(2),
      I1 => sig_counter(0),
      I2 => sig_counter(1),
      I3 => sig_div,
      I4 => Q(2),
      I5 => reset00_out,
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAAAAA"
    )
        port map (
      I0 => sig_counter(2),
      I1 => sig_counter(0),
      I2 => sig_counter(1),
      I3 => sig_div,
      I4 => Q(2),
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
    temp_5 : out STD_LOGIC;
    tmp_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_0 : out STD_LOGIC;
    tmp_reg_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \tmp_reg[7]\ : in STD_LOGIC;
    output_OBUF : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cout1__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end register_1;

architecture STRUCTURE of register_1 is
  signal \adder/complementoy\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^sig_q_meno1\ : STD_LOGIC;
  signal \^temp_0\ : STD_LOGIC;
  signal \tmp[7]_i_8_n_0\ : STD_LOGIC;
  signal \^tmp_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  sig_q_meno1 <= \^sig_q_meno1\;
  temp_0 <= \^temp_0\;
  tmp_reg_0(1 downto 0) <= \^tmp_reg_0\(1 downto 0);
\tmp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF400040"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(0),
      I4 => output_OBUF(1),
      O => \^temp_0\
    );
\tmp[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(4),
      O => \^tmp_reg_0\(0)
    );
\tmp[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(3),
      O => \adder/complementoy\(4)
    );
\tmp[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(2),
      O => \adder/complementoy\(2)
    );
\tmp[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(1),
      O => \adder/complementoy\(1)
    );
\tmp[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \tmp[7]_i_8_n_0\,
      I1 => \tmp_reg[7]\,
      I2 => \adder/complementoy\(4),
      I3 => output_OBUF(4),
      I4 => \^tmp_reg_0\(0),
      I5 => output_OBUF(5),
      O => temp_5
    );
\tmp[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \^sig_q_meno1\,
      I1 => output_OBUF(0),
      I2 => Q(0),
      I3 => \tmp_reg[7]_0\(5),
      O => \^tmp_reg_0\(1)
    );
\tmp[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8E88800000000"
    )
        port map (
      I0 => output_OBUF(3),
      I1 => \adder/complementoy\(2),
      I2 => output_OBUF(2),
      I3 => \adder/complementoy\(1),
      I4 => \^temp_0\,
      I5 => \cout1__0\,
      O => \tmp[7]_i_8_n_0\
    );
tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tmp_reg_1,
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
    \tmp_reg[3]_0\ : out STD_LOGIC;
    temp_0 : in STD_LOGIC;
    sig_sub : in STD_LOGIC;
    \tmp_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    enable00_out : in STD_LOGIC;
    temp_1 : in STD_LOGIC;
    temp_2 : in STD_LOGIC;
    temp_3 : in STD_LOGIC;
    temp_4 : in STD_LOGIC;
    complementoy : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cout1__0\ : in STD_LOGIC;
    temp_5 : in STD_LOGIC;
    \cout1__0_0\ : in STD_LOGIC;
    \tmp[7]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp[7]_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_q_meno1 : in STD_LOGIC;
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end register_8;

architecture STRUCTURE of register_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmp[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmp[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[2]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[5]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[6]_i_1_n_0\ : STD_LOGIC;
  signal \tmp[7]_i_3_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\tmp[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \tmp_reg[5]_0\(0),
      I2 => \^q\(0),
      I3 => enable00_out,
      O => \tmp[0]_i_1__0_n_0\
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3C33CAAAAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => temp_0,
      I2 => \^q\(1),
      I3 => sig_sub,
      I4 => \tmp_reg[5]_0\(1),
      I5 => enable00_out,
      O => \tmp[1]_i_1_n_0\
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3C33CAAAAAAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => temp_1,
      I2 => \^q\(2),
      I3 => sig_sub,
      I4 => \tmp_reg[5]_0\(2),
      I5 => enable00_out,
      O => \tmp[2]_i_1_n_0\
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3C33CAAAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => temp_2,
      I2 => \^q\(3),
      I3 => sig_sub,
      I4 => \tmp_reg[5]_0\(3),
      I5 => enable00_out,
      O => \tmp[3]_i_1_n_0\
    );
\tmp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3C33CAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => temp_3,
      I2 => \^q\(4),
      I3 => sig_sub,
      I4 => \tmp_reg[5]_0\(4),
      I5 => enable00_out,
      O => \tmp[4]_i_1_n_0\
    );
\tmp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3C33CAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => temp_4,
      I2 => \^q\(5),
      I3 => sig_sub,
      I4 => \tmp_reg[5]_0\(5),
      I5 => enable00_out,
      O => \tmp[5]_i_1_n_0\
    );
\tmp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033FFCC0AAAAAAAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => temp_4,
      I2 => complementoy(0),
      I3 => \^q\(5),
      I4 => \cout1__0\,
      I5 => enable00_out,
      O => \tmp[6]_i_1_n_0\
    );
\tmp[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033FFCC0AAAAAAAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => temp_5,
      I2 => complementoy(1),
      I3 => \^q\(6),
      I4 => \cout1__0_0\,
      I5 => enable00_out,
      O => \tmp[7]_i_3_n_0\
    );
\tmp[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \tmp_reg[5]_0\(3),
      I2 => \tmp[7]_i_4\(0),
      I3 => \tmp[7]_i_4_0\(0),
      I4 => sig_q_meno1,
      O => \tmp_reg[3]_0\
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
      D => \tmp[2]_i_1_n_0\,
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
      D => \tmp[3]_i_1_n_0\,
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
      D => \tmp[4]_i_1_n_0\,
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
      D => \tmp[5]_i_1_n_0\,
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
      D => \tmp[6]_i_1_n_0\,
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
    temp_4 : out STD_LOGIC;
    temp_2 : out STD_LOGIC;
    temp_3 : out STD_LOGIC;
    temp_1 : out STD_LOGIC;
    \cout1__0_0\ : out STD_LOGIC;
    \cout1__0_1\ : out STD_LOGIC;
    \tmp_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_q_meno1 : in STD_LOGIC;
    output_OBUF : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sig_sub : in STD_LOGIC;
    temp_0 : in STD_LOGIC;
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_8_0 : entity is "register_8";
end register_8_0;

architecture STRUCTURE of register_8_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_M : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^temp_1\ : STD_LOGIC;
  signal \^temp_2\ : STD_LOGIC;
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  temp_1 <= \^temp_1\;
  temp_2 <= \^temp_2\;
\tmp[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFF808D0"
    )
        port map (
      I0 => \^q\(0),
      I1 => output_OBUF(0),
      I2 => sig_sub,
      I3 => \^q\(1),
      I4 => output_OBUF(1),
      O => \^temp_1\
    );
\tmp[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => temp_0,
      I1 => \^q\(1),
      I2 => output_OBUF(1),
      I3 => sig_sub,
      I4 => \^q\(2),
      I5 => output_OBUF(2),
      O => \^temp_2\
    );
\tmp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \^temp_1\,
      I1 => \^q\(2),
      I2 => output_OBUF(2),
      I3 => sig_sub,
      I4 => \^q\(3),
      I5 => output_OBUF(3),
      O => temp_3
    );
\tmp[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \^temp_2\,
      I1 => \^q\(3),
      I2 => output_OBUF(3),
      I3 => sig_sub,
      I4 => \^q\(4),
      I5 => output_OBUF(4),
      O => temp_4
    );
\tmp[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5595AA6A"
    )
        port map (
      I0 => \^q\(6),
      I1 => \tmp_reg[7]_0\(0),
      I2 => \tmp_reg[6]_0\(0),
      I3 => sig_q_meno1,
      I4 => output_OBUF(5),
      O => \cout1__0_1\
    );
\tmp[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5595AA6A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \tmp_reg[7]_0\(0),
      I2 => \tmp_reg[6]_0\(0),
      I3 => sig_q_meno1,
      I4 => output_OBUF(3),
      O => \cout1__0_0\
    );
\tmp[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5595AA6A"
    )
        port map (
      I0 => sig_M(7),
      I1 => \tmp_reg[7]_0\(0),
      I2 => \tmp_reg[6]_0\(0),
      I3 => sig_q_meno1,
      I4 => output_OBUF(6),
      O => \cout1__0\
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
    output_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset00_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_8_1 : entity is "register_8";
end register_8_1;

architecture STRUCTURE of register_8_1 is
  signal \tmp_reg[0]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[1]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[2]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[3]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[4]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[5]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[6]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp_reg[7]_lopt_replica_1\ : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[0]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \tmp_reg[0]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[1]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[1]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[2]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[2]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[3]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[3]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[4]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[4]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[5]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[5]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[6]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[6]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp_reg[7]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp_reg[7]_lopt_replica\ : label is "SWEEP";
begin
  lopt <= \tmp_reg[0]_lopt_replica_1\;
  lopt_1 <= \tmp_reg[1]_lopt_replica_1\;
  lopt_2 <= \tmp_reg[2]_lopt_replica_1\;
  lopt_3 <= \tmp_reg[3]_lopt_replica_1\;
  lopt_4 <= \tmp_reg[4]_lopt_replica_1\;
  lopt_5 <= \tmp_reg[5]_lopt_replica_1\;
  lopt_6 <= \tmp_reg[6]_lopt_replica_1\;
  lopt_7 <= \tmp_reg[7]_lopt_replica_1\;
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => output_OBUF(0),
      R => reset00_out
    );
\tmp_reg[0]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \tmp_reg[0]_lopt_replica_1\,
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
      Q => output_OBUF(1),
      R => reset00_out
    );
\tmp_reg[1]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \tmp_reg[1]_lopt_replica_1\,
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
      Q => output_OBUF(2),
      R => reset00_out
    );
\tmp_reg[2]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \tmp_reg[2]_lopt_replica_1\,
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
      Q => output_OBUF(3),
      R => reset00_out
    );
\tmp_reg[3]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \tmp_reg[3]_lopt_replica_1\,
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
      Q => output_OBUF(4),
      R => reset00_out
    );
\tmp_reg[4]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => \tmp_reg[4]_lopt_replica_1\,
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
      Q => output_OBUF(5),
      R => reset00_out
    );
\tmp_reg[5]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => \tmp_reg[5]_lopt_replica_1\,
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
      Q => output_OBUF(6),
      R => reset00_out
    );
\tmp_reg[6]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => \tmp_reg[6]_lopt_replica_1\,
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
      Q => output_OBUF(7),
      R => reset00_out
    );
\tmp_reg[7]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => \tmp_reg[7]_lopt_replica_1\,
      R => reset00_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Booth_multiplier is
  port (
    output_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    sig_div : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_IBUF : in STD_LOGIC;
    input2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC
  );
end Booth_multiplier;

architecture STRUCTURE of Booth_multiplier is
  signal A_n_8 : STD_LOGIC;
  signal \adder/RA/RA1to6[3].RA/cout1__0\ : STD_LOGIC;
  signal \adder/RA/RA1to6[6].RA/cout1__0\ : STD_LOGIC;
  signal \adder/RA/RA7/cout1__0\ : STD_LOGIC;
  signal \adder/RA/temp_0\ : STD_LOGIC;
  signal \adder/RA/temp_1\ : STD_LOGIC;
  signal \adder/RA/temp_2\ : STD_LOGIC;
  signal \adder/RA/temp_3\ : STD_LOGIC;
  signal \adder/RA/temp_4\ : STD_LOGIC;
  signal \adder/RA/temp_5\ : STD_LOGIC;
  signal \adder/complementoy\ : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal contatore_n_0 : STD_LOGIC;
  signal contatore_n_1 : STD_LOGIC;
  signal controllo_n_0 : STD_LOGIC;
  signal controllo_n_11 : STD_LOGIC;
  signal controllo_n_12 : STD_LOGIC;
  signal controllo_n_13 : STD_LOGIC;
  signal controllo_n_14 : STD_LOGIC;
  signal controllo_n_15 : STD_LOGIC;
  signal controllo_n_16 : STD_LOGIC;
  signal controllo_n_17 : STD_LOGIC;
  signal controllo_n_18 : STD_LOGIC;
  signal controllo_n_2 : STD_LOGIC;
  signal controllo_n_4 : STD_LOGIC;
  signal controllo_n_6 : STD_LOGIC;
  signal controllo_n_8 : STD_LOGIC;
  signal enable0 : STD_LOGIC;
  signal enable00_out : STD_LOGIC;
  signal \^output_obuf\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset00_out : STD_LOGIC;
  signal sig_M : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_enable_rM : STD_LOGIC;
  signal sig_q_meno1 : STD_LOGIC;
  signal sig_shift_r : STD_LOGIC;
  signal sig_sub : STD_LOGIC;
begin
  output_OBUF(15 downto 0) <= \^output_obuf\(15 downto 0);
A: entity work.register_8
     port map (
      CLK => CLK,
      E(0) => controllo_n_6,
      Q(7 downto 0) => \^output_obuf\(15 downto 8),
      complementoy(1 downto 0) => \adder/complementoy\(6 downto 5),
      \cout1__0\ => \adder/RA/RA1to6[6].RA/cout1__0\,
      \cout1__0_0\ => \adder/RA/RA7/cout1__0\,
      enable00_out => enable00_out,
      reset00_out => reset00_out,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      temp_0 => \adder/RA/temp_0\,
      temp_1 => \adder/RA/temp_1\,
      temp_2 => \adder/RA/temp_2\,
      temp_3 => \adder/RA/temp_3\,
      temp_4 => \adder/RA/temp_4\,
      temp_5 => \adder/RA/temp_5\,
      \tmp[7]_i_4\(0) => controllo_n_2,
      \tmp[7]_i_4_0\(0) => \^output_obuf\(0),
      \tmp_reg[3]_0\ => A_n_8,
      \tmp_reg[5]_0\(5 downto 0) => sig_M(5 downto 0)
    );
M: entity work.register_8_0
     port map (
      CLK => CLK,
      D(7 downto 0) => D(7 downto 0),
      E(0) => enable0,
      Q(6 downto 0) => sig_M(6 downto 0),
      \cout1__0\ => \adder/RA/RA7/cout1__0\,
      \cout1__0_0\ => \adder/RA/RA1to6[3].RA/cout1__0\,
      \cout1__0_1\ => \adder/RA/RA1to6[6].RA/cout1__0\,
      output_OBUF(6 downto 5) => \^output_obuf\(15 downto 14),
      output_OBUF(4 downto 0) => \^output_obuf\(12 downto 8),
      reset00_out => reset00_out,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      temp_0 => \adder/RA/temp_0\,
      temp_1 => \adder/RA/temp_1\,
      temp_2 => \adder/RA/temp_2\,
      temp_3 => \adder/RA/temp_3\,
      temp_4 => \adder/RA/temp_4\,
      \tmp_reg[6]_0\(0) => \^output_obuf\(0),
      \tmp_reg[7]_0\(0) => controllo_n_2
    );
Q: entity work.register_8_1
     port map (
      CLK => CLK,
      D(7) => controllo_n_11,
      D(6) => controllo_n_12,
      D(5) => controllo_n_13,
      D(4) => controllo_n_14,
      D(3) => controllo_n_15,
      D(2) => controllo_n_16,
      D(1) => controllo_n_17,
      D(0) => controllo_n_18,
      E(0) => controllo_n_8,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => lopt_7,
      output_OBUF(7 downto 0) => \^output_obuf\(7 downto 0),
      reset00_out => reset00_out
    );
contatore: entity work.counter_mod8
     port map (
      CLK => CLK,
      D(1) => contatore_n_0,
      D(0) => contatore_n_1,
      Q(2) => sig_shift_r,
      Q(1) => sig_enable_rM,
      Q(0) => controllo_n_4,
      reset00_out => reset00_out,
      sig_div => sig_div,
      start_IBUF => start_IBUF
    );
controllo: entity work.control_unit
     port map (
      CLK => CLK,
      D(7) => controllo_n_11,
      D(6) => controllo_n_12,
      D(5) => controllo_n_13,
      D(4) => controllo_n_14,
      D(3) => controllo_n_15,
      D(2) => controllo_n_16,
      D(1) => controllo_n_17,
      D(0) => controllo_n_18,
      E(0) => controllo_n_6,
      \FSM_onehot_curr_state_reg[1]_0\(0) => enable0,
      \FSM_onehot_curr_state_reg[2]_0\(1) => contatore_n_0,
      \FSM_onehot_curr_state_reg[2]_0\(0) => contatore_n_1,
      \FSM_onehot_curr_state_reg[4]_0\(0) => controllo_n_8,
      Q(3) => sig_shift_r,
      Q(2) => controllo_n_2,
      Q(1) => sig_enable_rM,
      Q(0) => controllo_n_4,
      SS(0) => SS(0),
      enable00_out => enable00_out,
      input2_IBUF(7 downto 0) => input2_IBUF(7 downto 0),
      output_OBUF(7 downto 0) => \^output_obuf\(7 downto 0),
      reset00_out => reset00_out,
      sig_div => sig_div,
      sig_q_meno1 => sig_q_meno1,
      sig_sub => sig_sub,
      start_IBUF => start_IBUF,
      tmp_reg => controllo_n_0,
      \tmp_reg[7]\(0) => \^output_obuf\(8)
    );
q_meno1: entity work.register_1
     port map (
      CLK => CLK,
      Q(0) => controllo_n_2,
      \cout1__0\ => \adder/RA/RA1to6[3].RA/cout1__0\,
      output_OBUF(5 downto 4) => \^output_obuf\(13 downto 12),
      output_OBUF(3 downto 1) => \^output_obuf\(10 downto 8),
      output_OBUF(0) => \^output_obuf\(0),
      sig_q_meno1 => sig_q_meno1,
      temp_0 => \adder/RA/temp_0\,
      temp_5 => \adder/RA/temp_5\,
      \tmp_reg[7]\ => A_n_8,
      \tmp_reg[7]_0\(5 downto 3) => sig_M(6 downto 4),
      \tmp_reg[7]_0\(2 downto 0) => sig_M(2 downto 0),
      tmp_reg_0(1 downto 0) => \adder/complementoy\(6 downto 5),
      tmp_reg_1 => controllo_n_0
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
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Multiplier_on_board : entity is "f2db9fdd";
end Multiplier_on_board;

architecture STRUCTURE of Multiplier_on_board is
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal input1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal output_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal sig_div : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal NLW_multiplier_output_OBUF_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \output[0]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[1]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[2]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[3]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[4]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[5]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[6]_INST_0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \output[7]_INST_0\ : label is "SWEEP";
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
      SS(0) => reset_IBUF,
      input2_IBUF(7 downto 0) => input2_IBUF(7 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => lopt_7,
      output_OBUF(15 downto 8) => output_OBUF(15 downto 8),
      output_OBUF(7 downto 0) => NLW_multiplier_output_OBUF_UNCONNECTED(7 downto 0),
      sig_div => sig_div,
      start_IBUF => start_IBUF
    );
\output[0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt,
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
      I => lopt_1,
      O => output(1)
    );
\output[2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_2,
      O => output(2)
    );
\output[3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_3,
      O => output(3)
    );
\output[4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_4,
      O => output(4)
    );
\output[5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_5,
      O => output(5)
    );
\output[6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_6,
      O => output(6)
    );
\output[7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => lopt_7,
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
