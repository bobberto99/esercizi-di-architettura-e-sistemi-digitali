-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Dec  1 11:01:18 2022
-- Host        : DESKTOP-IR34L4A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/bobbo/Documents/5_Cronometro/5_Cronometro.sim/sim_1/synth/func/xsim/Cronometro_tb_func_synth.vhd
-- Design      : cronometro_con_display
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod64 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \conteggio_reg[1]_0\ : out STD_LOGIC;
    \conteggio_reg[2]_0\ : out STD_LOGIC;
    \conteggio_reg[4]_0\ : out STD_LOGIC;
    \conteggio_reg[3]_0\ : out STD_LOGIC;
    set_IBUF : in STD_LOGIC;
    en : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \conteggio_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end Counter_mod64;

architecture STRUCTURE of Counter_mod64 is
  signal \conteggio[5]_i_1_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_4_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \^conteggio_reg[1]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal seconds : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conteggio[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \conteggio[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \conteggio[5]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \conteggio[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \conteggio[5]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \conteggio[5]_i_5__0\ : label is "soft_lutpair7";
begin
  \conteggio_reg[1]_0\ <= \^conteggio_reg[1]_0\;
\catodi_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA17AF01F"
    )
        port map (
      I0 => seconds(2),
      I1 => seconds(1),
      I2 => seconds(3),
      I3 => seconds(5),
      I4 => seconds(4),
      I5 => \catodi_OBUF[3]_inst_i_1\,
      O => \conteggio_reg[2]_0\
    );
\catodi_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"65E7"
    )
        port map (
      I0 => seconds(4),
      I1 => seconds(3),
      I2 => seconds(5),
      I3 => seconds(2),
      O => \conteggio_reg[4]_0\
    );
\catodi_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000C80000"
    )
        port map (
      I0 => seconds(3),
      I1 => seconds(5),
      I2 => seconds(4),
      I3 => uscita_contatore(1),
      I4 => uscita_contatore(0),
      I5 => uscita_contatore(2),
      O => \conteggio_reg[3]_0\
    );
\conteggio[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => set_IBUF,
      I1 => seconds(0),
      O => p_0_in(0)
    );
\conteggio[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => seconds(1),
      I1 => seconds(0),
      I2 => set_IBUF,
      O => p_0_in(1)
    );
\conteggio[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEA"
    )
        port map (
      I0 => set_IBUF,
      I1 => seconds(0),
      I2 => seconds(1),
      I3 => seconds(2),
      O => p_0_in(2)
    );
\conteggio[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFEAAA"
    )
        port map (
      I0 => set_IBUF,
      I1 => seconds(1),
      I2 => seconds(0),
      I3 => seconds(2),
      I4 => seconds(3),
      O => p_0_in(3)
    );
\conteggio[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => set_IBUF,
      I1 => seconds(2),
      I2 => seconds(0),
      I3 => seconds(1),
      I4 => seconds(3),
      I5 => seconds(4),
      O => p_0_in(4)
    );
\conteggio[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \conteggio[5]_i_4_n_0\,
      I2 => seconds(3),
      I3 => seconds(2),
      I4 => seconds(0),
      I5 => seconds(1),
      O => \conteggio[5]_i_1_n_0\
    );
\conteggio[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => set_IBUF,
      I1 => \^conteggio_reg[1]_0\,
      I2 => en,
      O => E(0)
    );
\conteggio[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEA"
    )
        port map (
      I0 => set_IBUF,
      I1 => seconds(4),
      I2 => \conteggio[5]_i_5__0_n_0\,
      I3 => seconds(5),
      O => p_0_in(5)
    );
\conteggio[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => seconds(4),
      I1 => seconds(5),
      O => \conteggio[5]_i_4_n_0\
    );
\conteggio[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => seconds(1),
      I1 => seconds(0),
      I2 => seconds(2),
      I3 => seconds(3),
      I4 => seconds(4),
      I5 => seconds(5),
      O => \^conteggio_reg[1]_0\
    );
\conteggio[5]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => seconds(2),
      I1 => seconds(0),
      I2 => seconds(1),
      I3 => seconds(3),
      O => \conteggio[5]_i_5__0_n_0\
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(0),
      Q => seconds(0),
      R => \conteggio[5]_i_1_n_0\
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(1),
      Q => seconds(1),
      R => \conteggio[5]_i_1_n_0\
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(2),
      Q => seconds(2),
      R => \conteggio[5]_i_1_n_0\
    );
\conteggio_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(3),
      Q => seconds(3),
      R => \conteggio[5]_i_1_n_0\
    );
\conteggio_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(4),
      Q => seconds(4),
      R => \conteggio[5]_i_1_n_0\
    );
\conteggio_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \conteggio_reg[0]_0\(0),
      D => p_0_in(5),
      Q => seconds(5),
      R => \conteggio[5]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod64_5 is
  port (
    div_reg : out STD_LOGIC;
    catodi_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    div_reg_0 : out STD_LOGIC;
    en : in STD_LOGIC;
    u_reg : in STD_LOGIC;
    set_IBUF : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    u_reg_0 : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \catodi[5]\ : in STD_LOGIC;
    \catodi[5]_0\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_0\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_1\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_2\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_3\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_mod64_5 : entity is "Counter_mod64";
end Counter_mod64_5;

architecture STRUCTURE of Counter_mod64_5 is
  signal \catodi_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \catodi_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \catodi_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \catodi_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \conteggio[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \conteggio[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_6_n_0\ : STD_LOGIC;
  signal minutes : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conteggio[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \conteggio[5]_i_3__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \conteggio[5]_i_4__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \conteggio[5]_i_6\ : label is "soft_lutpair2";
begin
\catodi_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444554555555555"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_3_n_0\,
      I1 => \catodi[5]_0\,
      I2 => \catodi[5]\,
      I3 => \catodi_OBUF[5]_inst_i_4_n_0\,
      I4 => uscita_contatore(2),
      I5 => \catodi_OBUF[6]_inst_i_2_n_0\,
      O => catodi_OBUF(1)
    );
\catodi_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022220020"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_3_n_0\,
      I1 => \catodi[5]_0\,
      I2 => \catodi[5]\,
      I3 => \catodi_OBUF[5]_inst_i_4_n_0\,
      I4 => uscita_contatore(2),
      I5 => \catodi_OBUF[6]_inst_i_2_n_0\,
      O => catodi_OBUF(2)
    );
\catodi_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888848444848"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_3_n_0\,
      I1 => \catodi_OBUF[6]_inst_i_2_n_0\,
      I2 => uscita_contatore(2),
      I3 => \catodi_OBUF[5]_inst_i_4_n_0\,
      I4 => \catodi[5]\,
      I5 => \catodi[5]_0\,
      O => catodi_OBUF(0)
    );
\catodi_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFFCFEEEEFFEF"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_2_n_0\,
      I1 => \catodi[5]_0\,
      I2 => \catodi[5]\,
      I3 => \catodi_OBUF[5]_inst_i_4_n_0\,
      I4 => uscita_contatore(2),
      I5 => \catodi_OBUF[6]_inst_i_3_n_0\,
      O => catodi_OBUF(3)
    );
\catodi_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AA8AAAAAAAAA"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_3_n_0\,
      I1 => \catodi[5]_0\,
      I2 => \catodi[5]\,
      I3 => \catodi_OBUF[5]_inst_i_4_n_0\,
      I4 => uscita_contatore(2),
      I5 => \catodi_OBUF[6]_inst_i_2_n_0\,
      O => catodi_OBUF(4)
    );
\catodi_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066D64694"
    )
        port map (
      I0 => minutes(3),
      I1 => minutes(5),
      I2 => minutes(4),
      I3 => minutes(2),
      I4 => minutes(1),
      I5 => \catodi_OBUF[3]_inst_i_1_2\,
      O => \catodi_OBUF[5]_inst_i_4_n_0\
    );
\catodi_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_2_n_0\,
      I1 => \catodi_OBUF[6]_inst_i_3_n_0\,
      O => catodi_OBUF(5)
    );
\catodi_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFA8AA"
    )
        port map (
      I0 => \catodi_OBUF[6]_inst_i_4_n_0\,
      I1 => \catodi_OBUF[3]_inst_i_1_0\,
      I2 => uscita_contatore(1),
      I3 => uscita_contatore(0),
      I4 => uscita_contatore(2),
      I5 => \catodi_OBUF[3]_inst_i_1_1\,
      O => \catodi_OBUF[6]_inst_i_2_n_0\
    );
\catodi_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFFEFFF"
    )
        port map (
      I0 => uscita_contatore(2),
      I1 => \catodi_OBUF[3]_inst_i_1_2\,
      I2 => minutes(4),
      I3 => minutes(5),
      I4 => minutes(3),
      I5 => \catodi_OBUF[3]_inst_i_1_3\,
      O => \catodi_OBUF[6]_inst_i_3_n_0\
    );
\catodi_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF77FFFF777FFF"
    )
        port map (
      I0 => uscita_contatore(1),
      I1 => uscita_contatore(0),
      I2 => minutes(2),
      I3 => minutes(4),
      I4 => minutes(5),
      I5 => minutes(3),
      O => \catodi_OBUF[6]_inst_i_4_n_0\
    );
\conteggio[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(0),
      O => \p_0_in__0\(0)
    );
\conteggio[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(1),
      I2 => minutes(0),
      O => \p_0_in__0\(1)
    );
\conteggio[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEA"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(0),
      I2 => minutes(1),
      I3 => minutes(2),
      O => \p_0_in__0\(2)
    );
\conteggio[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(1),
      I2 => minutes(0),
      I3 => minutes(2),
      I4 => minutes(3),
      O => \conteggio[3]_i_1__2_n_0\
    );
\conteggio[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(2),
      I2 => minutes(0),
      I3 => minutes(1),
      I4 => minutes(3),
      I5 => minutes(4),
      O => \conteggio[4]_i_1__2_n_0\
    );
\conteggio[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \conteggio[5]_i_4__0_n_0\,
      I2 => minutes(3),
      I3 => minutes(2),
      I4 => minutes(0),
      I5 => minutes(1),
      O => \conteggio[5]_i_1__0_n_0\
    );
\conteggio[5]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => set_IBUF,
      I1 => minutes(4),
      I2 => \conteggio[5]_i_6_n_0\,
      I3 => minutes(5),
      O => \conteggio[5]_i_3__0_n_0\
    );
\conteggio[5]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => minutes(4),
      I1 => minutes(5),
      O => \conteggio[5]_i_4__0_n_0\
    );
\conteggio[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => minutes(2),
      I1 => minutes(0),
      I2 => minutes(1),
      I3 => minutes(3),
      O => \conteggio[5]_i_6_n_0\
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => minutes(0),
      R => \conteggio[5]_i_1__0_n_0\
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => minutes(1),
      R => \conteggio[5]_i_1__0_n_0\
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => minutes(2),
      R => \conteggio[5]_i_1__0_n_0\
    );
\conteggio_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \conteggio[3]_i_1__2_n_0\,
      Q => minutes(3),
      R => \conteggio[5]_i_1__0_n_0\
    );
\conteggio_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \conteggio[4]_i_1__2_n_0\,
      Q => minutes(4),
      R => \conteggio[5]_i_1__0_n_0\
    );
\conteggio_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \conteggio[5]_i_3__0_n_0\,
      Q => minutes(5),
      R => \conteggio[5]_i_1__0_n_0\
    );
\u_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F7F7F7F00"
    )
        port map (
      I0 => u_i_4_n_0,
      I1 => en,
      I2 => u_reg,
      I3 => set_IBUF,
      I4 => reset_IBUF,
      I5 => u_reg_0,
      O => div_reg_0
    );
u_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => u_i_4_n_0,
      I1 => en,
      I2 => u_reg,
      I3 => set_IBUF,
      I4 => reset_IBUF,
      I5 => u_reg_0,
      O => div_reg
    );
u_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => minutes(1),
      I1 => minutes(0),
      I2 => minutes(2),
      I3 => minutes(3),
      I4 => minutes(4),
      I5 => minutes(5),
      O => u_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divisore_freq is
  port (
    en : out STD_LOGIC;
    div_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    set_IBUF : in STD_LOGIC
  );
end Divisore_freq;

architecture STRUCTURE of Divisore_freq is
  signal conteggio : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \conteggio0_carry__0_n_0\ : STD_LOGIC;
  signal \conteggio0_carry__0_n_1\ : STD_LOGIC;
  signal \conteggio0_carry__0_n_2\ : STD_LOGIC;
  signal \conteggio0_carry__0_n_3\ : STD_LOGIC;
  signal \conteggio0_carry__1_n_0\ : STD_LOGIC;
  signal \conteggio0_carry__1_n_1\ : STD_LOGIC;
  signal \conteggio0_carry__1_n_2\ : STD_LOGIC;
  signal \conteggio0_carry__1_n_3\ : STD_LOGIC;
  signal \conteggio0_carry__2_n_0\ : STD_LOGIC;
  signal \conteggio0_carry__2_n_1\ : STD_LOGIC;
  signal \conteggio0_carry__2_n_2\ : STD_LOGIC;
  signal \conteggio0_carry__2_n_3\ : STD_LOGIC;
  signal \conteggio0_carry__3_n_0\ : STD_LOGIC;
  signal \conteggio0_carry__3_n_1\ : STD_LOGIC;
  signal \conteggio0_carry__3_n_2\ : STD_LOGIC;
  signal \conteggio0_carry__3_n_3\ : STD_LOGIC;
  signal \conteggio0_carry__4_n_0\ : STD_LOGIC;
  signal \conteggio0_carry__4_n_1\ : STD_LOGIC;
  signal \conteggio0_carry__4_n_2\ : STD_LOGIC;
  signal \conteggio0_carry__4_n_3\ : STD_LOGIC;
  signal \conteggio0_carry__5_n_3\ : STD_LOGIC;
  signal conteggio0_carry_n_0 : STD_LOGIC;
  signal conteggio0_carry_n_1 : STD_LOGIC;
  signal conteggio0_carry_n_2 : STD_LOGIC;
  signal conteggio0_carry_n_3 : STD_LOGIC;
  signal \conteggio[26]_i_2_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_3_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_4_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_5_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_6_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_7_n_0\ : STD_LOGIC;
  signal \conteggio[26]_i_8_n_0\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[0]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[10]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[11]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[12]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[13]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[14]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[15]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[16]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[17]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[18]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[19]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[1]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[20]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[21]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[22]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[23]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[24]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[25]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[26]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[2]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[3]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[4]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[5]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[6]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[7]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[8]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal div : STD_LOGIC;
  signal \^en\ : STD_LOGIC;
  signal \NLW_conteggio0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_conteggio0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of conteggio0_carry : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \conteggio0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conteggio[0]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \conteggio[10]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \conteggio[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \conteggio[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \conteggio[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \conteggio[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \conteggio[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \conteggio[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \conteggio[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \conteggio[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \conteggio[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \conteggio[1]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \conteggio[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \conteggio[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \conteggio[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \conteggio[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \conteggio[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \conteggio[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \conteggio[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \conteggio[26]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \conteggio[4]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \conteggio[5]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \conteggio[6]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \conteggio[7]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \conteggio[8]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \conteggio[9]_i_1__0\ : label is "soft_lutpair18";
begin
  en <= \^en\;
conteggio0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => conteggio0_carry_n_0,
      CO(2) => conteggio0_carry_n_1,
      CO(1) => conteggio0_carry_n_2,
      CO(0) => conteggio0_carry_n_3,
      CYINIT => \conteggio_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \conteggio_reg_n_0_[4]\,
      S(2) => \conteggio_reg_n_0_[3]\,
      S(1) => \conteggio_reg_n_0_[2]\,
      S(0) => \conteggio_reg_n_0_[1]\
    );
\conteggio0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => conteggio0_carry_n_0,
      CO(3) => \conteggio0_carry__0_n_0\,
      CO(2) => \conteggio0_carry__0_n_1\,
      CO(1) => \conteggio0_carry__0_n_2\,
      CO(0) => \conteggio0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \conteggio_reg_n_0_[8]\,
      S(2) => \conteggio_reg_n_0_[7]\,
      S(1) => \conteggio_reg_n_0_[6]\,
      S(0) => \conteggio_reg_n_0_[5]\
    );
\conteggio0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \conteggio0_carry__0_n_0\,
      CO(3) => \conteggio0_carry__1_n_0\,
      CO(2) => \conteggio0_carry__1_n_1\,
      CO(1) => \conteggio0_carry__1_n_2\,
      CO(0) => \conteggio0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \conteggio_reg_n_0_[12]\,
      S(2) => \conteggio_reg_n_0_[11]\,
      S(1) => \conteggio_reg_n_0_[10]\,
      S(0) => \conteggio_reg_n_0_[9]\
    );
\conteggio0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \conteggio0_carry__1_n_0\,
      CO(3) => \conteggio0_carry__2_n_0\,
      CO(2) => \conteggio0_carry__2_n_1\,
      CO(1) => \conteggio0_carry__2_n_2\,
      CO(0) => \conteggio0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \conteggio_reg_n_0_[16]\,
      S(2) => \conteggio_reg_n_0_[15]\,
      S(1) => \conteggio_reg_n_0_[14]\,
      S(0) => \conteggio_reg_n_0_[13]\
    );
\conteggio0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \conteggio0_carry__2_n_0\,
      CO(3) => \conteggio0_carry__3_n_0\,
      CO(2) => \conteggio0_carry__3_n_1\,
      CO(1) => \conteggio0_carry__3_n_2\,
      CO(0) => \conteggio0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \conteggio_reg_n_0_[20]\,
      S(2) => \conteggio_reg_n_0_[19]\,
      S(1) => \conteggio_reg_n_0_[18]\,
      S(0) => \conteggio_reg_n_0_[17]\
    );
\conteggio0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \conteggio0_carry__3_n_0\,
      CO(3) => \conteggio0_carry__4_n_0\,
      CO(2) => \conteggio0_carry__4_n_1\,
      CO(1) => \conteggio0_carry__4_n_2\,
      CO(0) => \conteggio0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \conteggio_reg_n_0_[24]\,
      S(2) => \conteggio_reg_n_0_[23]\,
      S(1) => \conteggio_reg_n_0_[22]\,
      S(0) => \conteggio_reg_n_0_[21]\
    );
\conteggio0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \conteggio0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_conteggio0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \conteggio0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_conteggio0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1) => \conteggio_reg_n_0_[26]\,
      S(0) => \conteggio_reg_n_0_[25]\
    );
\conteggio[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \conteggio_reg_n_0_[0]\,
      O => conteggio(0)
    );
\conteggio[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(10),
      O => conteggio(10)
    );
\conteggio[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(11),
      O => conteggio(11)
    );
\conteggio[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(12),
      O => conteggio(12)
    );
\conteggio[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(13),
      O => conteggio(13)
    );
\conteggio[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(14),
      O => conteggio(14)
    );
\conteggio[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(15),
      O => conteggio(15)
    );
\conteggio[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(16),
      O => conteggio(16)
    );
\conteggio[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(17),
      O => conteggio(17)
    );
\conteggio[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(18),
      O => conteggio(18)
    );
\conteggio[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(19),
      O => conteggio(19)
    );
\conteggio[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(1),
      O => conteggio(1)
    );
\conteggio[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(20),
      O => conteggio(20)
    );
\conteggio[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(21),
      O => conteggio(21)
    );
\conteggio[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(22),
      O => conteggio(22)
    );
\conteggio[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(23),
      O => conteggio(23)
    );
\conteggio[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(24),
      O => conteggio(24)
    );
\conteggio[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(25),
      O => conteggio(25)
    );
\conteggio[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(26),
      O => conteggio(26)
    );
\conteggio[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[26]\,
      I1 => \conteggio_reg_n_0_[25]\,
      I2 => \conteggio_reg_n_0_[0]\,
      I3 => \conteggio[26]_i_5_n_0\,
      I4 => \conteggio[26]_i_6_n_0\,
      O => \conteggio[26]_i_2_n_0\
    );
\conteggio[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[8]\,
      I1 => \conteggio_reg_n_0_[7]\,
      I2 => \conteggio_reg_n_0_[5]\,
      I3 => \conteggio_reg_n_0_[6]\,
      I4 => \conteggio[26]_i_7_n_0\,
      O => \conteggio[26]_i_3_n_0\
    );
\conteggio[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[15]\,
      I1 => \conteggio_reg_n_0_[16]\,
      I2 => \conteggio_reg_n_0_[13]\,
      I3 => \conteggio_reg_n_0_[14]\,
      I4 => \conteggio[26]_i_8_n_0\,
      O => \conteggio[26]_i_4_n_0\
    );
\conteggio[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[22]\,
      I1 => \conteggio_reg_n_0_[21]\,
      I2 => \conteggio_reg_n_0_[24]\,
      I3 => \conteggio_reg_n_0_[23]\,
      O => \conteggio[26]_i_5_n_0\
    );
\conteggio[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[2]\,
      I1 => \conteggio_reg_n_0_[1]\,
      I2 => \conteggio_reg_n_0_[4]\,
      I3 => \conteggio_reg_n_0_[3]\,
      O => \conteggio[26]_i_6_n_0\
    );
\conteggio[26]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \conteggio_reg_n_0_[10]\,
      I1 => \conteggio_reg_n_0_[9]\,
      I2 => \conteggio_reg_n_0_[12]\,
      I3 => \conteggio_reg_n_0_[11]\,
      O => \conteggio[26]_i_7_n_0\
    );
\conteggio[26]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \conteggio_reg_n_0_[18]\,
      I1 => \conteggio_reg_n_0_[17]\,
      I2 => \conteggio_reg_n_0_[20]\,
      I3 => \conteggio_reg_n_0_[19]\,
      O => \conteggio[26]_i_8_n_0\
    );
\conteggio[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(2),
      O => conteggio(2)
    );
\conteggio[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(3),
      O => conteggio(3)
    );
\conteggio[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(4),
      O => conteggio(4)
    );
\conteggio[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(5),
      O => conteggio(5)
    );
\conteggio[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^en\,
      I1 => set_IBUF,
      O => div_reg_0(0)
    );
\conteggio[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(6),
      O => conteggio(6)
    );
\conteggio[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(7),
      O => conteggio(7)
    );
\conteggio[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(8),
      O => conteggio(8)
    );
\conteggio[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      I3 => data0(9),
      O => conteggio(9)
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(0),
      Q => \conteggio_reg_n_0_[0]\,
      R => reset_IBUF
    );
\conteggio_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(10),
      Q => \conteggio_reg_n_0_[10]\,
      R => reset_IBUF
    );
\conteggio_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(11),
      Q => \conteggio_reg_n_0_[11]\,
      R => reset_IBUF
    );
\conteggio_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(12),
      Q => \conteggio_reg_n_0_[12]\,
      R => reset_IBUF
    );
\conteggio_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(13),
      Q => \conteggio_reg_n_0_[13]\,
      R => reset_IBUF
    );
\conteggio_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(14),
      Q => \conteggio_reg_n_0_[14]\,
      R => reset_IBUF
    );
\conteggio_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(15),
      Q => \conteggio_reg_n_0_[15]\,
      R => reset_IBUF
    );
\conteggio_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(16),
      Q => \conteggio_reg_n_0_[16]\,
      R => reset_IBUF
    );
\conteggio_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(17),
      Q => \conteggio_reg_n_0_[17]\,
      R => reset_IBUF
    );
\conteggio_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(18),
      Q => \conteggio_reg_n_0_[18]\,
      R => reset_IBUF
    );
\conteggio_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(19),
      Q => \conteggio_reg_n_0_[19]\,
      R => reset_IBUF
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(1),
      Q => \conteggio_reg_n_0_[1]\,
      R => reset_IBUF
    );
\conteggio_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(20),
      Q => \conteggio_reg_n_0_[20]\,
      R => reset_IBUF
    );
\conteggio_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(21),
      Q => \conteggio_reg_n_0_[21]\,
      R => reset_IBUF
    );
\conteggio_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(22),
      Q => \conteggio_reg_n_0_[22]\,
      R => reset_IBUF
    );
\conteggio_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(23),
      Q => \conteggio_reg_n_0_[23]\,
      R => reset_IBUF
    );
\conteggio_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(24),
      Q => \conteggio_reg_n_0_[24]\,
      R => reset_IBUF
    );
\conteggio_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(25),
      Q => \conteggio_reg_n_0_[25]\,
      R => reset_IBUF
    );
\conteggio_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(26),
      Q => \conteggio_reg_n_0_[26]\,
      R => reset_IBUF
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(2),
      Q => \conteggio_reg_n_0_[2]\,
      R => reset_IBUF
    );
\conteggio_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(3),
      Q => \conteggio_reg_n_0_[3]\,
      R => reset_IBUF
    );
\conteggio_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(4),
      Q => \conteggio_reg_n_0_[4]\,
      R => reset_IBUF
    );
\conteggio_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(5),
      Q => \conteggio_reg_n_0_[5]\,
      R => reset_IBUF
    );
\conteggio_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(6),
      Q => \conteggio_reg_n_0_[6]\,
      R => reset_IBUF
    );
\conteggio_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(7),
      Q => \conteggio_reg_n_0_[7]\,
      R => reset_IBUF
    );
\conteggio_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(8),
      Q => \conteggio_reg_n_0_[8]\,
      R => reset_IBUF
    );
\conteggio_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(9),
      Q => \conteggio_reg_n_0_[9]\,
      R => reset_IBUF
    );
\div_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \conteggio[26]_i_2_n_0\,
      I1 => \conteggio[26]_i_3_n_0\,
      I2 => \conteggio[26]_i_4_n_0\,
      O => div
    );
div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => div,
      Q => \^en\,
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Divisore_freq__parameterized1\ is
  port (
    uscita_divisore : out STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Divisore_freq__parameterized1\ : entity is "Divisore_freq";
end \Divisore_freq__parameterized1\;

architecture STRUCTURE of \Divisore_freq__parameterized1\ is
  signal conteggio : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \conteggio[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \conteggio[10]_i_2_n_0\ : STD_LOGIC;
  signal \conteggio[10]_i_3_n_0\ : STD_LOGIC;
  signal \conteggio[10]_i_4_n_0\ : STD_LOGIC;
  signal \conteggio[10]_i_5_n_0\ : STD_LOGIC;
  signal \conteggio[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \conteggio[9]_i_2_n_0\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[0]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[10]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[1]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[2]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[3]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[4]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[5]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[6]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[7]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[8]\ : STD_LOGIC;
  signal \conteggio_reg_n_0_[9]\ : STD_LOGIC;
  signal div : STD_LOGIC;
  signal div_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conteggio[0]_i_1__2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \conteggio[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \conteggio[10]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \conteggio[1]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \conteggio[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \conteggio[5]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \conteggio[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \conteggio[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \conteggio[8]_i_1\ : label is "soft_lutpair29";
begin
\conteggio[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \conteggio[10]_i_3_n_0\,
      I1 => \conteggio_reg_n_0_[0]\,
      O => \conteggio[0]_i_1__2_n_0\
    );
\conteggio[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \conteggio_reg_n_0_[10]\,
      I1 => \conteggio_reg_n_0_[9]\,
      I2 => \conteggio[10]_i_2_n_0\,
      I3 => \conteggio[10]_i_3_n_0\,
      O => conteggio(10)
    );
\conteggio[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[8]\,
      I1 => \conteggio_reg_n_0_[6]\,
      I2 => \conteggio[9]_i_2_n_0\,
      I3 => \conteggio_reg_n_0_[7]\,
      O => \conteggio[10]_i_2_n_0\
    );
\conteggio[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \conteggio_reg_n_0_[9]\,
      I1 => \conteggio_reg_n_0_[10]\,
      I2 => \conteggio_reg_n_0_[0]\,
      I3 => \conteggio[10]_i_4_n_0\,
      I4 => \conteggio[10]_i_5_n_0\,
      O => \conteggio[10]_i_3_n_0\
    );
\conteggio[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \conteggio_reg_n_0_[2]\,
      I1 => \conteggio_reg_n_0_[3]\,
      I2 => \conteggio_reg_n_0_[8]\,
      I3 => \conteggio_reg_n_0_[1]\,
      O => \conteggio[10]_i_4_n_0\
    );
\conteggio[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \conteggio_reg_n_0_[6]\,
      I1 => \conteggio_reg_n_0_[7]\,
      I2 => \conteggio_reg_n_0_[4]\,
      I3 => \conteggio_reg_n_0_[5]\,
      O => \conteggio[10]_i_5_n_0\
    );
\conteggio[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \conteggio_reg_n_0_[1]\,
      I1 => \conteggio_reg_n_0_[0]\,
      I2 => \conteggio[10]_i_3_n_0\,
      O => conteggio(1)
    );
\conteggio[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \conteggio_reg_n_0_[2]\,
      I1 => \conteggio_reg_n_0_[1]\,
      I2 => \conteggio_reg_n_0_[0]\,
      I3 => \conteggio[10]_i_3_n_0\,
      O => conteggio(2)
    );
\conteggio[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[3]\,
      I1 => \conteggio_reg_n_0_[2]\,
      I2 => \conteggio_reg_n_0_[0]\,
      I3 => \conteggio_reg_n_0_[1]\,
      I4 => \conteggio[10]_i_3_n_0\,
      O => conteggio(3)
    );
\conteggio[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[4]\,
      I1 => \conteggio_reg_n_0_[3]\,
      I2 => \conteggio_reg_n_0_[1]\,
      I3 => \conteggio_reg_n_0_[0]\,
      I4 => \conteggio_reg_n_0_[2]\,
      I5 => \conteggio[10]_i_3_n_0\,
      O => conteggio(4)
    );
\conteggio[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \conteggio_reg_n_0_[5]\,
      I1 => \conteggio[5]_i_2__1_n_0\,
      I2 => \conteggio[10]_i_3_n_0\,
      O => conteggio(5)
    );
\conteggio[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[4]\,
      I1 => \conteggio_reg_n_0_[2]\,
      I2 => \conteggio_reg_n_0_[0]\,
      I3 => \conteggio_reg_n_0_[1]\,
      I4 => \conteggio_reg_n_0_[3]\,
      O => \conteggio[5]_i_2__1_n_0\
    );
\conteggio[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \conteggio_reg_n_0_[6]\,
      I1 => \conteggio[9]_i_2_n_0\,
      I2 => \conteggio[10]_i_3_n_0\,
      O => conteggio(6)
    );
\conteggio[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \conteggio_reg_n_0_[7]\,
      I1 => \conteggio_reg_n_0_[6]\,
      I2 => \conteggio[9]_i_2_n_0\,
      I3 => \conteggio[10]_i_3_n_0\,
      O => conteggio(7)
    );
\conteggio[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[8]\,
      I1 => \conteggio_reg_n_0_[7]\,
      I2 => \conteggio[9]_i_2_n_0\,
      I3 => \conteggio_reg_n_0_[6]\,
      I4 => \conteggio[10]_i_3_n_0\,
      O => conteggio(8)
    );
\conteggio[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[9]\,
      I1 => \conteggio_reg_n_0_[8]\,
      I2 => \conteggio_reg_n_0_[6]\,
      I3 => \conteggio[9]_i_2_n_0\,
      I4 => \conteggio_reg_n_0_[7]\,
      I5 => \conteggio[10]_i_3_n_0\,
      O => conteggio(9)
    );
\conteggio[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[5]\,
      I1 => \conteggio_reg_n_0_[3]\,
      I2 => \conteggio_reg_n_0_[1]\,
      I3 => \conteggio_reg_n_0_[0]\,
      I4 => \conteggio_reg_n_0_[2]\,
      I5 => \conteggio_reg_n_0_[4]\,
      O => \conteggio[9]_i_2_n_0\
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \conteggio[0]_i_1__2_n_0\,
      Q => \conteggio_reg_n_0_[0]\,
      R => reset_IBUF
    );
\conteggio_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(10),
      Q => \conteggio_reg_n_0_[10]\,
      R => reset_IBUF
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(1),
      Q => \conteggio_reg_n_0_[1]\,
      R => reset_IBUF
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(2),
      Q => \conteggio_reg_n_0_[2]\,
      R => reset_IBUF
    );
\conteggio_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(3),
      Q => \conteggio_reg_n_0_[3]\,
      R => reset_IBUF
    );
\conteggio_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(4),
      Q => \conteggio_reg_n_0_[4]\,
      R => reset_IBUF
    );
\conteggio_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(5),
      Q => \conteggio_reg_n_0_[5]\,
      R => reset_IBUF
    );
\conteggio_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(6),
      Q => \conteggio_reg_n_0_[6]\,
      R => reset_IBUF
    );
\conteggio_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(7),
      Q => \conteggio_reg_n_0_[7]\,
      R => reset_IBUF
    );
\conteggio_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(8),
      Q => \conteggio_reg_n_0_[8]\,
      R => reset_IBUF
    );
\conteggio_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conteggio(9),
      Q => \conteggio_reg_n_0_[9]\,
      R => reset_IBUF
    );
div_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \conteggio_reg_n_0_[6]\,
      I1 => div_i_2_n_0,
      I2 => \conteggio_reg_n_0_[8]\,
      I3 => \conteggio_reg_n_0_[7]\,
      I4 => \conteggio_reg_n_0_[9]\,
      I5 => \conteggio_reg_n_0_[10]\,
      O => div
    );
div_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \conteggio_reg_n_0_[3]\,
      I1 => \conteggio_reg_n_0_[0]\,
      I2 => \conteggio_reg_n_0_[2]\,
      I3 => \conteggio_reg_n_0_[1]\,
      I4 => \conteggio_reg_n_0_[5]\,
      I5 => \conteggio_reg_n_0_[4]\,
      O => div_i_2_n_0
    );
div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => div,
      Q => uscita_divisore,
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D is
  port (
    hours : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_reg_0 : out STD_LOGIC;
    u_reg_1 : in STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    u_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FF_D;

architecture STRUCTURE of FF_D is
  signal \^hours\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal u_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \u_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of u_i_3 : label is "soft_lutpair3";
begin
  hours(0) <= \^hours\(0);
\u_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^hours\(0),
      I1 => u_reg_3(0),
      O => u_reg_0
    );
u_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hours\(0),
      O => u_i_3_n_0
    );
u_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_reg_2,
      D => u_i_3_n_0,
      Q => \^hours\(0),
      R => u_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_1 is
  port (
    u_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_reg_1 : out STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    u_reg_3 : in STD_LOGIC;
    u_reg_4 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 0 to 0 );
    hours : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_1 : entity is "FF_D";
end FF_D_1;

architecture STRUCTURE of FF_D_1 is
  signal \^u_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  u_reg_0(0) <= \^u_reg_0\(0);
\catodi_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000302000300000"
    )
        port map (
      I0 => \^u_reg_0\(0),
      I1 => \catodi_OBUF[3]_inst_i_1\,
      I2 => uscita_contatore(0),
      I3 => hours(0),
      I4 => hours(2),
      I5 => hours(1),
      O => u_reg_1
    );
u_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_reg_3,
      D => u_reg_4,
      Q => \^u_reg_0\(0),
      R => u_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_2 is
  port (
    hours : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_reg_0 : out STD_LOGIC;
    u_reg_1 : in STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \catodi_OBUF[6]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_2 : entity is "FF_D";
end FF_D_2;

architecture STRUCTURE of FF_D_2 is
  signal \^hours\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal u_i_1_n_0 : STD_LOGIC;
begin
  hours(0) <= \^hours\(0);
\catodi_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E00000000000"
    )
        port map (
      I0 => \^hours\(0),
      I1 => \catodi_OBUF[6]_inst_i_2\(2),
      I2 => \catodi_OBUF[6]_inst_i_2\(3),
      I3 => uscita_contatore(2),
      I4 => uscita_contatore(1),
      I5 => uscita_contatore(0),
      O => u_reg_0
    );
u_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^hours\(0),
      I1 => \catodi_OBUF[6]_inst_i_2\(1),
      I2 => \catodi_OBUF[6]_inst_i_2\(0),
      O => u_i_1_n_0
    );
u_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_reg_2,
      D => u_i_1_n_0,
      Q => \^hours\(0),
      R => u_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_3 is
  port (
    u_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_reg_1 : out STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    u_reg_3 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    hours : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_3 : entity is "FF_D";
end FF_D_3;

architecture STRUCTURE of FF_D_3 is
  signal \u_i_1__0_n_0\ : STD_LOGIC;
  signal \^u_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \u_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of u_i_5 : label is "soft_lutpair4";
begin
  u_reg_0(0) <= \^u_reg_0\(0);
\u_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^u_reg_0\(0),
      I1 => hours(2),
      I2 => hours(0),
      I3 => hours(1),
      O => \u_i_1__0_n_0\
    );
u_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^u_reg_0\(0),
      I1 => hours(3),
      I2 => hours(2),
      I3 => hours(1),
      I4 => hours(0),
      O => u_reg_1
    );
u_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_reg_3,
      D => \u_i_1__0_n_0\,
      Q => \^u_reg_0\(0),
      R => u_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_4 is
  port (
    hours : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_reg_0 : in STD_LOGIC;
    u_reg_1 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    u_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_4 : entity is "FF_D";
end FF_D_4;

architecture STRUCTURE of FF_D_4 is
  signal \^hours\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_i_1__1_n_0\ : STD_LOGIC;
begin
  hours(0) <= \^hours\(0);
\u_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^hours\(0),
      I1 => u_reg_2(1),
      I2 => u_reg_2(0),
      I3 => u_reg_2(2),
      I4 => u_reg_2(3),
      O => \u_i_1__1_n_0\
    );
u_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_reg_1,
      D => \u_i_1__1_n_0\,
      Q => \^hours\(0),
      R => u_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity contatore_modulo_8_display is
  port (
    anodi_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \conteggio_reg[2]_0\ : out STD_LOGIC;
    \conteggio_reg[1]_0\ : out STD_LOGIC;
    \conteggio_reg[0]_0\ : out STD_LOGIC;
    \conteggio_reg[0]_1\ : out STD_LOGIC;
    \conteggio_reg[1]_1\ : out STD_LOGIC;
    uscita_divisore : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end contatore_modulo_8_display;

architecture STRUCTURE of contatore_modulo_8_display is
  signal \conteggio[0]_i_1_n_0\ : STD_LOGIC;
  signal \conteggio[1]_i_1_n_0\ : STD_LOGIC;
  signal \conteggio[2]_i_1_n_0\ : STD_LOGIC;
  signal \^conteggio_reg[0]_0\ : STD_LOGIC;
  signal \^conteggio_reg[1]_0\ : STD_LOGIC;
  signal \^conteggio_reg[2]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anodi_OBUF[0]_inst_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \anodi_OBUF[1]_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \anodi_OBUF[2]_inst_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \anodi_OBUF[3]_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \anodi_OBUF[4]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \anodi_OBUF[5]_inst_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \anodi_OBUF[6]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \anodi_OBUF[7]_inst_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \catodi_OBUF[6]_inst_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \conteggio[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \conteggio[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \conteggio[2]_i_1\ : label is "soft_lutpair23";
begin
  \conteggio_reg[0]_0\ <= \^conteggio_reg[0]_0\;
  \conteggio_reg[1]_0\ <= \^conteggio_reg[1]_0\;
  \conteggio_reg[2]_0\ <= \^conteggio_reg[2]_0\;
\anodi_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^conteggio_reg[1]_0\,
      I1 => \^conteggio_reg[0]_0\,
      I2 => \^conteggio_reg[2]_0\,
      O => anodi_OBUF(0)
    );
\anodi_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^conteggio_reg[1]_0\,
      I1 => \^conteggio_reg[0]_0\,
      I2 => \^conteggio_reg[2]_0\,
      O => anodi_OBUF(1)
    );
\anodi_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^conteggio_reg[0]_0\,
      I1 => \^conteggio_reg[1]_0\,
      I2 => \^conteggio_reg[2]_0\,
      O => anodi_OBUF(2)
    );
\anodi_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^conteggio_reg[1]_0\,
      I1 => \^conteggio_reg[0]_0\,
      I2 => \^conteggio_reg[2]_0\,
      O => anodi_OBUF(3)
    );
\anodi_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^conteggio_reg[2]_0\,
      I1 => \^conteggio_reg[1]_0\,
      I2 => \^conteggio_reg[0]_0\,
      O => anodi_OBUF(4)
    );
\anodi_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^conteggio_reg[2]_0\,
      I1 => \^conteggio_reg[1]_0\,
      I2 => \^conteggio_reg[0]_0\,
      O => anodi_OBUF(5)
    );
\anodi_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^conteggio_reg[2]_0\,
      I1 => \^conteggio_reg[0]_0\,
      I2 => \^conteggio_reg[1]_0\,
      O => anodi_OBUF(6)
    );
\anodi_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^conteggio_reg[2]_0\,
      I1 => \^conteggio_reg[1]_0\,
      I2 => \^conteggio_reg[0]_0\,
      O => anodi_OBUF(7)
    );
\catodi_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^conteggio_reg[1]_0\,
      I1 => \^conteggio_reg[0]_0\,
      O => \conteggio_reg[1]_1\
    );
\catodi_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^conteggio_reg[0]_0\,
      I1 => \^conteggio_reg[1]_0\,
      O => \conteggio_reg[0]_1\
    );
\conteggio[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => uscita_divisore,
      I1 => \^conteggio_reg[0]_0\,
      O => \conteggio[0]_i_1_n_0\
    );
\conteggio[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^conteggio_reg[0]_0\,
      I1 => uscita_divisore,
      I2 => \^conteggio_reg[1]_0\,
      O => \conteggio[1]_i_1_n_0\
    );
\conteggio[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^conteggio_reg[1]_0\,
      I1 => \^conteggio_reg[0]_0\,
      I2 => uscita_divisore,
      I3 => \^conteggio_reg[2]_0\,
      O => \conteggio[2]_i_1_n_0\
    );
\conteggio_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \conteggio[0]_i_1_n_0\,
      Q => \^conteggio_reg[0]_0\,
      R => reset_IBUF
    );
\conteggio_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \conteggio[1]_i_1_n_0\,
      Q => \^conteggio_reg[1]_0\,
      R => reset_IBUF
    );
\conteggio_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \conteggio[2]_i_1_n_0\,
      Q => \^conteggio_reg[2]_0\,
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod32_struct is
  port (
    u_reg : out STD_LOGIC;
    u_reg_0 : out STD_LOGIC;
    u_reg_1 : out STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    u_reg_3 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end Counter_mod32_struct;

architecture STRUCTURE of Counter_mod32_struct is
  signal counter_0_n_1 : STD_LOGIC;
  signal hours : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
counter_0: entity work.FF_D
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      hours(0) => hours(0),
      u_reg_0 => counter_0_n_1,
      u_reg_1 => u_reg_2,
      u_reg_2 => u_reg_3,
      u_reg_3(0) => hours(1)
    );
counter_1: entity work.FF_D_1
     port map (
      \catodi_OBUF[3]_inst_i_1\ => \catodi_OBUF[3]_inst_i_1\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      hours(2 downto 0) => hours(4 downto 2),
      u_reg_0(0) => hours(1),
      u_reg_1 => u_reg_0,
      u_reg_2 => u_reg_2,
      u_reg_3 => u_reg_3,
      u_reg_4 => counter_0_n_1,
      uscita_contatore(0) => uscita_contatore(2)
    );
counter_2: entity work.FF_D_2
     port map (
      \catodi_OBUF[6]_inst_i_2\(3 downto 2) => hours(4 downto 3),
      \catodi_OBUF[6]_inst_i_2\(1 downto 0) => hours(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      hours(0) => hours(2),
      u_reg_0 => u_reg_1,
      u_reg_1 => u_reg_2,
      u_reg_2 => u_reg_3,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
counter_3: entity work.FF_D_3
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      hours(3) => hours(4),
      hours(2 downto 0) => hours(2 downto 0),
      u_reg_0(0) => hours(3),
      u_reg_1 => u_reg,
      u_reg_2 => u_reg_2,
      u_reg_3 => u_reg_3
    );
counter_4: entity work.FF_D_4
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      hours(0) => hours(4),
      u_reg_0 => u_reg_2,
      u_reg_1 => u_reg_3,
      u_reg_2(3 downto 0) => hours(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod60 is
  port (
    div_reg : out STD_LOGIC;
    catodi_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    div_reg_0 : out STD_LOGIC;
    en : in STD_LOGIC;
    u_reg : in STD_LOGIC;
    set_IBUF : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    u_reg_0 : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \catodi[5]\ : in STD_LOGIC;
    \catodi[5]_0\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_0\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_1\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end Counter_mod60;

architecture STRUCTURE of Counter_mod60 is
begin
contatore: entity work.Counter_mod64_5
     port map (
      E(0) => E(0),
      \catodi[5]\ => \catodi[5]\,
      \catodi[5]_0\ => \catodi[5]_0\,
      catodi_OBUF(5 downto 0) => catodi_OBUF(5 downto 0),
      \catodi_OBUF[3]_inst_i_1_0\ => \catodi_OBUF[3]_inst_i_1\,
      \catodi_OBUF[3]_inst_i_1_1\ => \catodi_OBUF[3]_inst_i_1_0\,
      \catodi_OBUF[3]_inst_i_1_2\ => \catodi_OBUF[3]_inst_i_1_1\,
      \catodi_OBUF[3]_inst_i_1_3\ => \catodi_OBUF[3]_inst_i_1_2\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      div_reg => div_reg,
      div_reg_0 => div_reg_0,
      en => en,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF,
      u_reg => u_reg,
      u_reg_0 => u_reg_0,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod60_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \conteggio_reg[1]\ : out STD_LOGIC;
    \conteggio_reg[2]\ : out STD_LOGIC;
    \conteggio_reg[4]\ : out STD_LOGIC;
    \conteggio_reg[3]\ : out STD_LOGIC;
    set_IBUF : in STD_LOGIC;
    en : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \conteggio_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_mod60_0 : entity is "Counter_mod60";
end Counter_mod60_0;

architecture STRUCTURE of Counter_mod60_0 is
begin
contatore: entity work.Counter_mod64
     port map (
      E(0) => E(0),
      \catodi_OBUF[3]_inst_i_1\ => \catodi_OBUF[3]_inst_i_1\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \conteggio_reg[0]_0\(0) => \conteggio_reg[0]\(0),
      \conteggio_reg[1]_0\ => \conteggio_reg[1]\,
      \conteggio_reg[2]_0\ => \conteggio_reg[2]\,
      \conteggio_reg[3]_0\ => \conteggio_reg[3]\,
      \conteggio_reg[4]_0\ => \conteggio_reg[4]\,
      en => en,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity display is
  port (
    anodi_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uscita_contatore : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \conteggio_reg[0]\ : out STD_LOGIC;
    \conteggio_reg[1]\ : out STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end display;

architecture STRUCTURE of display is
  signal uscita_divisore : STD_LOGIC;
begin
contatore: entity work.contatore_modulo_8_display
     port map (
      anodi_OBUF(7 downto 0) => anodi_OBUF(7 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \conteggio_reg[0]_0\ => uscita_contatore(0),
      \conteggio_reg[0]_1\ => \conteggio_reg[0]\,
      \conteggio_reg[1]_0\ => uscita_contatore(1),
      \conteggio_reg[1]_1\ => \conteggio_reg[1]\,
      \conteggio_reg[2]_0\ => uscita_contatore(2),
      reset_IBUF => reset_IBUF,
      uscita_divisore => uscita_divisore
    );
freq_div: entity work.\Divisore_freq__parameterized1\
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      reset_IBUF => reset_IBUF,
      uscita_divisore => uscita_divisore
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_mod24_struct is
  port (
    u_reg : out STD_LOGIC;
    u_reg_0 : out STD_LOGIC;
    u_reg_1 : out STD_LOGIC;
    u_reg_2 : in STD_LOGIC;
    u_reg_3 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end Counter_mod24_struct;

architecture STRUCTURE of Counter_mod24_struct is
begin
contatore: entity work.Counter_mod32_struct
     port map (
      \catodi_OBUF[3]_inst_i_1\ => \catodi_OBUF[3]_inst_i_1\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      u_reg => u_reg,
      u_reg_0 => u_reg_0,
      u_reg_1 => u_reg_1,
      u_reg_2 => u_reg_2,
      u_reg_3 => u_reg_3,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cronometro is
  port (
    catodi_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    set_IBUF : in STD_LOGIC;
    uscita_contatore : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \catodi_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    \catodi_OBUF[3]_inst_i_1_0\ : in STD_LOGIC
  );
end Cronometro;

architecture STRUCTURE of Cronometro is
  signal cont_minuti_n_0 : STD_LOGIC;
  signal cont_minuti_n_7 : STD_LOGIC;
  signal cont_ore_n_0 : STD_LOGIC;
  signal cont_ore_n_1 : STD_LOGIC;
  signal cont_ore_n_2 : STD_LOGIC;
  signal cont_secondi_n_0 : STD_LOGIC;
  signal cont_secondi_n_1 : STD_LOGIC;
  signal cont_secondi_n_2 : STD_LOGIC;
  signal cont_secondi_n_3 : STD_LOGIC;
  signal cont_secondi_n_4 : STD_LOGIC;
  signal div_n_1 : STD_LOGIC;
  signal en : STD_LOGIC;
begin
cont_minuti: entity work.Counter_mod60
     port map (
      E(0) => cont_secondi_n_0,
      \catodi[5]\ => cont_secondi_n_2,
      \catodi[5]_0\ => cont_ore_n_1,
      catodi_OBUF(5 downto 0) => catodi_OBUF(5 downto 0),
      \catodi_OBUF[3]_inst_i_1\ => cont_secondi_n_3,
      \catodi_OBUF[3]_inst_i_1_0\ => cont_ore_n_2,
      \catodi_OBUF[3]_inst_i_1_1\ => \catodi_OBUF[3]_inst_i_1_0\,
      \catodi_OBUF[3]_inst_i_1_2\ => cont_secondi_n_4,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      div_reg => cont_minuti_n_0,
      div_reg_0 => cont_minuti_n_7,
      en => en,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF,
      u_reg => cont_secondi_n_1,
      u_reg_0 => cont_ore_n_0,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
cont_ore: entity work.Counter_mod24_struct
     port map (
      \catodi_OBUF[3]_inst_i_1\ => \catodi_OBUF[3]_inst_i_1\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      u_reg => cont_ore_n_0,
      u_reg_0 => cont_ore_n_1,
      u_reg_1 => cont_ore_n_2,
      u_reg_2 => cont_minuti_n_7,
      u_reg_3 => cont_minuti_n_0,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
cont_secondi: entity work.Counter_mod60_0
     port map (
      E(0) => cont_secondi_n_0,
      \catodi_OBUF[3]_inst_i_1\ => \catodi_OBUF[3]_inst_i_1\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \conteggio_reg[0]\(0) => div_n_1,
      \conteggio_reg[1]\ => cont_secondi_n_1,
      \conteggio_reg[2]\ => cont_secondi_n_2,
      \conteggio_reg[3]\ => cont_secondi_n_4,
      \conteggio_reg[4]\ => cont_secondi_n_3,
      en => en,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
div: entity work.Divisore_freq
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      div_reg_0(0) => div_n_1,
      en => en,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cronometro_con_display is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    set : in STD_LOGIC;
    anodi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    catodi : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cronometro_con_display : entity is true;
end cronometro_con_display;

architecture STRUCTURE of cronometro_con_display is
  signal anodi_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal catodi_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dis_n_11 : STD_LOGIC;
  signal dis_n_12 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal set_IBUF : STD_LOGIC;
  signal uscita_contatore : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
Cron: entity work.Cronometro
     port map (
      catodi_OBUF(5 downto 3) => catodi_OBUF(6 downto 4),
      catodi_OBUF(2 downto 0) => catodi_OBUF(2 downto 0),
      \catodi_OBUF[3]_inst_i_1\ => dis_n_12,
      \catodi_OBUF[3]_inst_i_1_0\ => dis_n_11,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      reset_IBUF => reset_IBUF,
      set_IBUF => set_IBUF,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
\anodi_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(0),
      O => anodi(0)
    );
\anodi_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(1),
      O => anodi(1)
    );
\anodi_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(2),
      O => anodi(2)
    );
\anodi_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(3),
      O => anodi(3)
    );
\anodi_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(4),
      O => anodi(4)
    );
\anodi_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(5),
      O => anodi(5)
    );
\anodi_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(6),
      O => anodi(6)
    );
\anodi_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodi_OBUF(7),
      O => anodi(7)
    );
\catodi_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(0),
      O => catodi(0)
    );
\catodi_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(1),
      O => catodi(1)
    );
\catodi_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(2),
      O => catodi(2)
    );
\catodi_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(0),
      O => catodi(3)
    );
\catodi_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(4),
      O => catodi(4)
    );
\catodi_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(5),
      O => catodi(5)
    );
\catodi_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => catodi_OBUF(6),
      O => catodi(6)
    );
\catodi_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => catodi(7)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
dis: entity work.display
     port map (
      anodi_OBUF(7 downto 0) => anodi_OBUF(7 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \conteggio_reg[0]\ => dis_n_11,
      \conteggio_reg[1]\ => dis_n_12,
      reset_IBUF => reset_IBUF,
      uscita_contatore(2 downto 0) => uscita_contatore(2 downto 0)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
set_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => set,
      O => set_IBUF
    );
end STRUCTURE;
