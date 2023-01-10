// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 17 18:22:06 2022
// Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Progetti_Xilinx/3_Riconoscitoree/3_Riconoscitoree.sim/sim_1/impl/timing/xsim/Riconoscitore_TB_time_impl.v
// Design      : Riconoscitore_su_board
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Divisore_freq
   (sig_div,
    E,
    clock_IBUF_BUFG,
    sig_m,
    CLEARED_BTN,
    reset_IBUF);
  output sig_div;
  output [0:0]E;
  input clock_IBUF_BUFG;
  input sig_m;
  input CLEARED_BTN;
  input reset_IBUF;

  wire CLEARED_BTN;
  wire [0:0]E;
  wire clock_IBUF_BUFG;
  wire conteggio;
  wire \conteggio[0]_i_1_n_0 ;
  wire div_i_1_n_0;
  wire reset_IBUF;
  wire sig_div;
  wire sig_m;

  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_stato_corrente[11]_i_1 
       (.I0(sig_div),
        .I1(sig_m),
        .I2(CLEARED_BTN),
        .O(E));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \conteggio[0]_i_1 
       (.I0(conteggio),
        .I1(reset_IBUF),
        .O(\conteggio[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\conteggio[0]_i_1_n_0 ),
        .Q(conteggio),
        .R(1'b0));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    div_i_1
       (.I0(conteggio),
        .I1(reset_IBUF),
        .O(div_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    div_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(div_i_1_n_0),
        .Q(sig_div),
        .R(1'b0));
endmodule

module Riconoscitore_2modi
   (led_OBUF,
    Q,
    reset_IBUF,
    E,
    clock_IBUF_BUFG,
    switch1_IBUF,
    \state_reg[2]_0 ,
    switch2_IBUF);
  output led_OBUF;
  output [2:0]Q;
  input reset_IBUF;
  input [0:0]E;
  input clock_IBUF_BUFG;
  input switch1_IBUF;
  input [0:0]\state_reg[2]_0 ;
  input switch2_IBUF;

  wire [0:0]E;
  wire \FSM_onehot_stato_corrente[10]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[11]_i_2_n_0 ;
  wire \FSM_onehot_stato_corrente[1]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[2]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[3]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[4]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[5]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[6]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[7]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[8]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[9]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[0] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[10] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[11] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[1] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[2] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[3] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[4] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[5] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[6] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[7] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[8] ;
  wire \FSM_onehot_stato_corrente_reg_n_0_[9] ;
  wire [2:0]Q;
  wire Y;
  wire clock_IBUF_BUFG;
  wire led_OBUF;
  wire reset_IBUF;
  wire [0:0]\state_reg[2]_0 ;
  wire [2:0]state_tmp;
  wire state_tmp__0;
  wire \state_tmp_reg[0]_i_1_n_0 ;
  wire \state_tmp_reg[1]_i_1_n_0 ;
  wire \state_tmp_reg[2]_i_1_n_0 ;
  wire switch1_IBUF;
  wire switch2_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \/i_ 
       (.I0(switch1_IBUF),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .O(Y));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[10]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[11]_i_2 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[11]_i_2_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "149" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \FSM_onehot_stato_corrente[1]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[7] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I2(switch2_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .O(\FSM_onehot_stato_corrente[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_stato_corrente[2]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[2]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[3]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[4]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[5]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I1(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[5]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_stato_corrente[6]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .I1(switch1_IBUF),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .O(\FSM_onehot_stato_corrente[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_stato_corrente[7]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[6] ),
        .I1(switch1_IBUF),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .O(\FSM_onehot_stato_corrente[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \FSM_onehot_stato_corrente[8]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I2(switch2_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .I4(switch1_IBUF),
        .O(\FSM_onehot_stato_corrente[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \FSM_onehot_stato_corrente[9]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .I2(switch1_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .O(\FSM_onehot_stato_corrente[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_stato_corrente_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(1'b0),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[10]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[11]_i_2_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[1]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[2]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[3]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[4]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[5]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[6]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[6] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[7]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[7] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[8]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_stato_corrente[9]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \__0/i_ 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I4(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .I5(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .O(state_tmp__0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\state_reg[2]_0 ),
        .D(state_tmp[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\state_reg[2]_0 ),
        .D(state_tmp[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\state_reg[2]_0 ),
        .D(state_tmp[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_tmp_reg[0] 
       (.CLR(1'b0),
        .D(\state_tmp_reg[0]_i_1_n_0 ),
        .G(state_tmp__0),
        .GE(1'b1),
        .Q(state_tmp[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_tmp_reg[0]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .O(\state_tmp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_tmp_reg[1] 
       (.CLR(1'b0),
        .D(\state_tmp_reg[1]_i_1_n_0 ),
        .G(state_tmp__0),
        .GE(1'b1),
        .Q(state_tmp[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state_tmp_reg[1]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .O(\state_tmp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_tmp_reg[2] 
       (.CLR(1'b0),
        .D(\state_tmp_reg[2]_i_1_n_0 ),
        .G(state_tmp__0),
        .GE(1'b1),
        .Q(state_tmp[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \state_tmp_reg[2]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .O(\state_tmp_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    uscita_reg
       (.C(clock_IBUF_BUFG),
        .CE(E),
        .D(Y),
        .Q(led_OBUF),
        .R(reset_IBUF));
endmodule

(* ECO_CHECKSUM = "39dd05a3" *) 
(* NotValidForBitStream *)
module Riconoscitore_su_board
   (clock,
    reset,
    button1,
    button2,
    switch1,
    switch2,
    led,
    led_stato);
  input clock;
  input reset;
  input button1;
  input button2;
  input switch1;
  input switch2;
  output led;
  output [2:0]led_stato;

  wire CLEARED_BTN;
  wire button1;
  wire button1_IBUF;
  wire button2;
  wire button2_IBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire deb_in_n_1;
  wire en;
  wire led;
  wire led_OBUF;
  wire [2:0]led_stato;
  wire [2:0]led_stato_OBUF;
  wire reset;
  wire reset_IBUF;
  wire sig_div;
  wire sig_m;
  wire switch1;
  wire switch1_IBUF;
  wire switch2;
  wire switch2_IBUF;

initial begin
 $sdf_annotate("Riconoscitore_TB_time_impl.sdf",,,,"tool_control");
end
  IBUF button1_IBUF_inst
       (.I(button1),
        .O(button1_IBUF));
  IBUF button2_IBUF_inst
       (.I(button2),
        .O(button2_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  automa_debouncer deb_in
       (.CLEARED_BTN(CLEARED_BTN),
        .E(deb_in_n_1),
        .button1_IBUF(button1_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .sig_div(sig_div),
        .sig_m(sig_m));
  automa_debouncer_0 deb_m
       (.button2_IBUF(button2_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .sig_div(sig_div),
        .sig_m(sig_m));
  Divisore_freq divisore
       (.CLEARED_BTN(CLEARED_BTN),
        .E(en),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .sig_div(sig_div),
        .sig_m(sig_m));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  OBUF \led_stato_OBUF[0]_inst 
       (.I(led_stato_OBUF[0]),
        .O(led_stato[0]));
  OBUF \led_stato_OBUF[1]_inst 
       (.I(led_stato_OBUF[1]),
        .O(led_stato[1]));
  OBUF \led_stato_OBUF[2]_inst 
       (.I(led_stato_OBUF[2]),
        .O(led_stato[2]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Riconoscitore_2modi riconoscitore
       (.E(en),
        .Q(led_stato_OBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .reset_IBUF(reset_IBUF),
        .\state_reg[2]_0 (deb_in_n_1),
        .switch1_IBUF(switch1_IBUF),
        .switch2_IBUF(switch2_IBUF));
  IBUF switch1_IBUF_inst
       (.I(switch1),
        .O(switch1_IBUF));
  IBUF switch2_IBUF_inst
       (.I(switch2),
        .O(switch2_IBUF));
endmodule

module automa_debouncer
   (CLEARED_BTN,
    E,
    clock_IBUF_BUFG,
    sig_m,
    sig_div,
    reset_IBUF,
    button1_IBUF);
  output CLEARED_BTN;
  output [0:0]E;
  input clock_IBUF_BUFG;
  input sig_m;
  input sig_div;
  input reset_IBUF;
  input button1_IBUF;

  wire CLEARED_BTN;
  wire CLEARED_BTN_i_1_n_0;
  wire CLEARED_BTN_i_2_n_0;
  wire [0:0]E;
  wire \FSM_sequential_btn_state[0]_i_1_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_1_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_2_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_3_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_4_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_5_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_6_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_7_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_8_n_0 ;
  wire [1:0]btn_state__0;
  wire button1_IBUF;
  wire clock_IBUF_BUFG;
  wire \debouncer.cont[0]_i_1__0_n_0 ;
  wire \debouncer.cont[10]_i_1_n_0 ;
  wire \debouncer.cont[11]_i_1_n_0 ;
  wire \debouncer.cont[12]_i_1_n_0 ;
  wire \debouncer.cont[13]_i_1_n_0 ;
  wire \debouncer.cont[14]_i_1__0_n_0 ;
  wire \debouncer.cont[15]_i_1_n_0 ;
  wire \debouncer.cont[16]_i_1__0_n_0 ;
  wire \debouncer.cont[17]_i_1__0_n_0 ;
  wire \debouncer.cont[18]_i_1__0_n_0 ;
  wire \debouncer.cont[19]_i_1__0_n_0 ;
  wire \debouncer.cont[1]_i_1__0_n_0 ;
  wire \debouncer.cont[20]_i_1_n_0 ;
  wire \debouncer.cont[21]_i_1_n_0 ;
  wire \debouncer.cont[22]_i_1_n_0 ;
  wire \debouncer.cont[23]_i_1_n_0 ;
  wire \debouncer.cont[24]_i_1_n_0 ;
  wire \debouncer.cont[25]_i_1_n_0 ;
  wire \debouncer.cont[26]_i_1_n_0 ;
  wire \debouncer.cont[27]_i_1_n_0 ;
  wire \debouncer.cont[28]_i_1_n_0 ;
  wire \debouncer.cont[29]_i_1_n_0 ;
  wire \debouncer.cont[2]_i_1__0_n_0 ;
  wire \debouncer.cont[30]_i_1_n_0 ;
  wire \debouncer.cont[31]_i_1_n_0 ;
  wire \debouncer.cont[31]_i_2_n_0 ;
  wire \debouncer.cont[31]_i_3_n_0 ;
  wire \debouncer.cont[3]_i_1__0_n_0 ;
  wire \debouncer.cont[4]_i_1__0_n_0 ;
  wire \debouncer.cont[5]_i_1__0_n_0 ;
  wire \debouncer.cont[6]_i_1_n_0 ;
  wire \debouncer.cont[7]_i_1_n_0 ;
  wire \debouncer.cont[8]_i_1_n_0 ;
  wire \debouncer.cont[9]_i_1__0_n_0 ;
  wire \debouncer.cont_reg[12]_i_2_n_0 ;
  wire \debouncer.cont_reg[16]_i_2_n_0 ;
  wire \debouncer.cont_reg[20]_i_2_n_0 ;
  wire \debouncer.cont_reg[24]_i_2_n_0 ;
  wire \debouncer.cont_reg[28]_i_2_n_0 ;
  wire \debouncer.cont_reg[4]_i_2_n_0 ;
  wire \debouncer.cont_reg[8]_i_2_n_0 ;
  wire \debouncer.cont_reg_n_0_[0] ;
  wire \debouncer.cont_reg_n_0_[10] ;
  wire \debouncer.cont_reg_n_0_[11] ;
  wire \debouncer.cont_reg_n_0_[12] ;
  wire \debouncer.cont_reg_n_0_[13] ;
  wire \debouncer.cont_reg_n_0_[14] ;
  wire \debouncer.cont_reg_n_0_[15] ;
  wire \debouncer.cont_reg_n_0_[16] ;
  wire \debouncer.cont_reg_n_0_[17] ;
  wire \debouncer.cont_reg_n_0_[18] ;
  wire \debouncer.cont_reg_n_0_[19] ;
  wire \debouncer.cont_reg_n_0_[1] ;
  wire \debouncer.cont_reg_n_0_[20] ;
  wire \debouncer.cont_reg_n_0_[21] ;
  wire \debouncer.cont_reg_n_0_[22] ;
  wire \debouncer.cont_reg_n_0_[23] ;
  wire \debouncer.cont_reg_n_0_[24] ;
  wire \debouncer.cont_reg_n_0_[25] ;
  wire \debouncer.cont_reg_n_0_[26] ;
  wire \debouncer.cont_reg_n_0_[27] ;
  wire \debouncer.cont_reg_n_0_[28] ;
  wire \debouncer.cont_reg_n_0_[29] ;
  wire \debouncer.cont_reg_n_0_[2] ;
  wire \debouncer.cont_reg_n_0_[30] ;
  wire \debouncer.cont_reg_n_0_[31] ;
  wire \debouncer.cont_reg_n_0_[3] ;
  wire \debouncer.cont_reg_n_0_[4] ;
  wire \debouncer.cont_reg_n_0_[5] ;
  wire \debouncer.cont_reg_n_0_[6] ;
  wire \debouncer.cont_reg_n_0_[7] ;
  wire \debouncer.cont_reg_n_0_[8] ;
  wire \debouncer.cont_reg_n_0_[9] ;
  wire [31:1]in5;
  wire reset_IBUF;
  wire sig_div;
  wire sig_m;
  wire [2:0]\NLW_debouncer.cont_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_debouncer.cont_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_debouncer.cont_reg[31]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[8]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    CLEARED_BTN_i_1
       (.I0(CLEARED_BTN_i_2_n_0),
        .I1(reset_IBUF),
        .O(CLEARED_BTN_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAFF000000400000)) 
    CLEARED_BTN_i_2
       (.I0(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I1(sig_div),
        .I2(button1_IBUF),
        .I3(btn_state__0[1]),
        .I4(btn_state__0[0]),
        .I5(CLEARED_BTN),
        .O(CLEARED_BTN_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    CLEARED_BTN_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(CLEARED_BTN_i_1_n_0),
        .Q(CLEARED_BTN),
        .R(1'b0));
  (* \PinAttr:I4:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCF5A5A)) 
    \FSM_sequential_btn_state[0]_i_1 
       (.I0(button1_IBUF),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(btn_state__0[1]),
        .I3(sig_div),
        .I4(btn_state__0[0]),
        .O(\FSM_sequential_btn_state[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCECCC0C)) 
    \FSM_sequential_btn_state[1]_i_1 
       (.I0(sig_div),
        .I1(btn_state__0[1]),
        .I2(btn_state__0[0]),
        .I3(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I4(button1_IBUF),
        .O(\FSM_sequential_btn_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_2 
       (.I0(\FSM_sequential_btn_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_btn_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_btn_state[1]_i_5_n_0 ),
        .I3(\FSM_sequential_btn_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_btn_state[1]_i_7_n_0 ),
        .I5(\FSM_sequential_btn_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_btn_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_3 
       (.I0(\debouncer.cont_reg_n_0_[25] ),
        .I1(\debouncer.cont_reg_n_0_[26] ),
        .I2(\debouncer.cont_reg_n_0_[24] ),
        .I3(\debouncer.cont_reg_n_0_[28] ),
        .I4(\debouncer.cont_reg_n_0_[29] ),
        .I5(\debouncer.cont_reg_n_0_[27] ),
        .O(\FSM_sequential_btn_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_sequential_btn_state[1]_i_4 
       (.I0(\debouncer.cont_reg_n_0_[7] ),
        .I1(\debouncer.cont_reg_n_0_[8] ),
        .I2(\debouncer.cont_reg_n_0_[6] ),
        .I3(\debouncer.cont_reg_n_0_[9] ),
        .I4(\debouncer.cont_reg_n_0_[10] ),
        .I5(\debouncer.cont_reg_n_0_[11] ),
        .O(\FSM_sequential_btn_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_btn_state[1]_i_5 
       (.I0(\debouncer.cont_reg_n_0_[18] ),
        .I1(\debouncer.cont_reg_n_0_[20] ),
        .I2(\debouncer.cont_reg_n_0_[19] ),
        .I3(\debouncer.cont_reg_n_0_[22] ),
        .I4(\debouncer.cont_reg_n_0_[23] ),
        .I5(\debouncer.cont_reg_n_0_[21] ),
        .O(\FSM_sequential_btn_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \FSM_sequential_btn_state[1]_i_6 
       (.I0(\debouncer.cont_reg_n_0_[13] ),
        .I1(\debouncer.cont_reg_n_0_[14] ),
        .I2(\debouncer.cont_reg_n_0_[12] ),
        .I3(\debouncer.cont_reg_n_0_[16] ),
        .I4(\debouncer.cont_reg_n_0_[17] ),
        .I5(\debouncer.cont_reg_n_0_[15] ),
        .O(\FSM_sequential_btn_state[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_btn_state[1]_i_7 
       (.I0(\debouncer.cont_reg_n_0_[30] ),
        .I1(\debouncer.cont_reg_n_0_[31] ),
        .O(\FSM_sequential_btn_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_btn_state[1]_i_8 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(\debouncer.cont_reg_n_0_[1] ),
        .I2(\debouncer.cont_reg_n_0_[2] ),
        .I3(\debouncer.cont_reg_n_0_[3] ),
        .I4(\debouncer.cont_reg_n_0_[4] ),
        .I5(\debouncer.cont_reg_n_0_[5] ),
        .O(\FSM_sequential_btn_state[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_btn_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[0]_i_1_n_0 ),
        .Q(btn_state__0[0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_btn_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[1]_i_1_n_0 ),
        .Q(btn_state__0[1]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'h32373737)) 
    \debouncer.cont[0]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg_n_0_[0] ),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[10]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[10]),
        .O(\debouncer.cont[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[11]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[11]),
        .O(\debouncer.cont[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[12]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[12]),
        .O(\debouncer.cont[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[13]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[13]),
        .O(\debouncer.cont[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[14]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[14]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[15]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[15]),
        .O(\debouncer.cont[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[16]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[16]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[17]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[17]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[17]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[18]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[18]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[19]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[19]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[19]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[1]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[1]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[20]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[20]),
        .O(\debouncer.cont[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[21]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[21]),
        .O(\debouncer.cont[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[22]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[22]),
        .O(\debouncer.cont[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[23]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[23]),
        .O(\debouncer.cont[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[24]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[24]),
        .O(\debouncer.cont[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[25]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[25]),
        .O(\debouncer.cont[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[26]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[26]),
        .O(\debouncer.cont[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[27]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[27]),
        .O(\debouncer.cont[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[28]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[28]),
        .O(\debouncer.cont[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[29]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[29]),
        .O(\debouncer.cont[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[2]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[2]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[30]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[30]),
        .O(\debouncer.cont[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \debouncer.cont[31]_i_1 
       (.I0(btn_state__0[0]),
        .I1(btn_state__0[1]),
        .I2(reset_IBUF),
        .O(\debouncer.cont[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h008F)) 
    \debouncer.cont[31]_i_2 
       (.I0(btn_state__0[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(btn_state__0[1]),
        .I3(reset_IBUF),
        .O(\debouncer.cont[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[31]_i_3 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[31]),
        .O(\debouncer.cont[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[3]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[3]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[4]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[4]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[5]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[5]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[6]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[6]),
        .O(\debouncer.cont[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[7]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[7]),
        .O(\debouncer.cont[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[8]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(in5[8]),
        .O(\debouncer.cont[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[9]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(in5[9]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I3(button1_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[0]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[0] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[10]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[10] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[11]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[11] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[12]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[12] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[12]_i_2 
       (.CI(\debouncer.cont_reg[8]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[12]_i_2_n_0 ,\NLW_debouncer.cont_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S({\debouncer.cont_reg_n_0_[12] ,\debouncer.cont_reg_n_0_[11] ,\debouncer.cont_reg_n_0_[10] ,\debouncer.cont_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[13]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[13] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[14]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[14] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[15]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[15] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[16]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[16] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[16]_i_2 
       (.CI(\debouncer.cont_reg[12]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[16]_i_2_n_0 ,\NLW_debouncer.cont_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S({\debouncer.cont_reg_n_0_[16] ,\debouncer.cont_reg_n_0_[15] ,\debouncer.cont_reg_n_0_[14] ,\debouncer.cont_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[17]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[17] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[18]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[18] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[19]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[19] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[1]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[1] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[20]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[20] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[20]_i_2 
       (.CI(\debouncer.cont_reg[16]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[20]_i_2_n_0 ,\NLW_debouncer.cont_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S({\debouncer.cont_reg_n_0_[20] ,\debouncer.cont_reg_n_0_[19] ,\debouncer.cont_reg_n_0_[18] ,\debouncer.cont_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[21]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[21] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[22]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[22] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[23]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[23] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[24]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[24] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[24]_i_2 
       (.CI(\debouncer.cont_reg[20]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[24]_i_2_n_0 ,\NLW_debouncer.cont_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S({\debouncer.cont_reg_n_0_[24] ,\debouncer.cont_reg_n_0_[23] ,\debouncer.cont_reg_n_0_[22] ,\debouncer.cont_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[25]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[25] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[26]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[26] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[27]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[27] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[28]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[28] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[28]_i_2 
       (.CI(\debouncer.cont_reg[24]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[28]_i_2_n_0 ,\NLW_debouncer.cont_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S({\debouncer.cont_reg_n_0_[28] ,\debouncer.cont_reg_n_0_[27] ,\debouncer.cont_reg_n_0_[26] ,\debouncer.cont_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[29]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[29] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[2]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[2] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[30]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[30] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[31]_i_3_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[31] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[31]_i_4 
       (.CI(\debouncer.cont_reg[28]_i_2_n_0 ),
        .CO(\NLW_debouncer.cont_reg[31]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_debouncer.cont_reg[31]_i_4_O_UNCONNECTED [3],in5[31:29]}),
        .S({1'b0,\debouncer.cont_reg_n_0_[31] ,\debouncer.cont_reg_n_0_[30] ,\debouncer.cont_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[3]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[3] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[4]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[4] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\debouncer.cont_reg[4]_i_2_n_0 ,\NLW_debouncer.cont_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\debouncer.cont_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[4:1]),
        .S({\debouncer.cont_reg_n_0_[4] ,\debouncer.cont_reg_n_0_[3] ,\debouncer.cont_reg_n_0_[2] ,\debouncer.cont_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[5]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[5] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[6]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[6] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[7]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[7] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[8]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[8] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[8]_i_2 
       (.CI(\debouncer.cont_reg[4]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[8]_i_2_n_0 ,\NLW_debouncer.cont_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S({\debouncer.cont_reg_n_0_[8] ,\debouncer.cont_reg_n_0_[7] ,\debouncer.cont_reg_n_0_[6] ,\debouncer.cont_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2_n_0 ),
        .D(\debouncer.cont[9]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[9] ),
        .R(\debouncer.cont[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \state[2]_i_1 
       (.I0(CLEARED_BTN),
        .I1(sig_m),
        .I2(sig_div),
        .I3(reset_IBUF),
        .O(E));
endmodule

(* ORIG_REF_NAME = "automa_debouncer" *) 
module automa_debouncer_0
   (sig_m,
    clock_IBUF_BUFG,
    reset_IBUF,
    button2_IBUF,
    sig_div);
  output sig_m;
  input clock_IBUF_BUFG;
  input reset_IBUF;
  input button2_IBUF;
  input sig_div;

  wire CLEARED_BTN_i_1__0_n_0;
  wire CLEARED_BTN_i_2__0_n_0;
  wire \FSM_sequential_btn_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_5__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_6__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_7__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_8__0_n_0 ;
  wire [1:0]btn_state__0;
  wire button2_IBUF;
  wire clock_IBUF_BUFG;
  wire \debouncer.cont[0]_i_1_n_0 ;
  wire \debouncer.cont[10]_i_1__0_n_0 ;
  wire \debouncer.cont[11]_i_1__0_n_0 ;
  wire \debouncer.cont[12]_i_1__0_n_0 ;
  wire \debouncer.cont[13]_i_1__0_n_0 ;
  wire \debouncer.cont[14]_i_1_n_0 ;
  wire \debouncer.cont[15]_i_1__0_n_0 ;
  wire \debouncer.cont[16]_i_1_n_0 ;
  wire \debouncer.cont[17]_i_1_n_0 ;
  wire \debouncer.cont[18]_i_1_n_0 ;
  wire \debouncer.cont[19]_i_1_n_0 ;
  wire \debouncer.cont[1]_i_1_n_0 ;
  wire \debouncer.cont[20]_i_1__0_n_0 ;
  wire \debouncer.cont[21]_i_1__0_n_0 ;
  wire \debouncer.cont[22]_i_1__0_n_0 ;
  wire \debouncer.cont[23]_i_1__0_n_0 ;
  wire \debouncer.cont[24]_i_1__0_n_0 ;
  wire \debouncer.cont[25]_i_1__0_n_0 ;
  wire \debouncer.cont[26]_i_1__0_n_0 ;
  wire \debouncer.cont[27]_i_1__0_n_0 ;
  wire \debouncer.cont[28]_i_1__0_n_0 ;
  wire \debouncer.cont[29]_i_1__0_n_0 ;
  wire \debouncer.cont[2]_i_1_n_0 ;
  wire \debouncer.cont[30]_i_1__0_n_0 ;
  wire \debouncer.cont[31]_i_1__0_n_0 ;
  wire \debouncer.cont[31]_i_2__0_n_0 ;
  wire \debouncer.cont[31]_i_3__0_n_0 ;
  wire \debouncer.cont[3]_i_1_n_0 ;
  wire \debouncer.cont[4]_i_1_n_0 ;
  wire \debouncer.cont[5]_i_1_n_0 ;
  wire \debouncer.cont[6]_i_1__0_n_0 ;
  wire \debouncer.cont[7]_i_1__0_n_0 ;
  wire \debouncer.cont[8]_i_1__0_n_0 ;
  wire \debouncer.cont[9]_i_1_n_0 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[31]_i_4__0_n_5 ;
  wire \debouncer.cont_reg[31]_i_4__0_n_6 ;
  wire \debouncer.cont_reg[31]_i_4__0_n_7 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_7 ;
  wire \debouncer.cont_reg_n_0_[0] ;
  wire \debouncer.cont_reg_n_0_[10] ;
  wire \debouncer.cont_reg_n_0_[11] ;
  wire \debouncer.cont_reg_n_0_[12] ;
  wire \debouncer.cont_reg_n_0_[13] ;
  wire \debouncer.cont_reg_n_0_[14] ;
  wire \debouncer.cont_reg_n_0_[15] ;
  wire \debouncer.cont_reg_n_0_[16] ;
  wire \debouncer.cont_reg_n_0_[17] ;
  wire \debouncer.cont_reg_n_0_[18] ;
  wire \debouncer.cont_reg_n_0_[19] ;
  wire \debouncer.cont_reg_n_0_[1] ;
  wire \debouncer.cont_reg_n_0_[20] ;
  wire \debouncer.cont_reg_n_0_[21] ;
  wire \debouncer.cont_reg_n_0_[22] ;
  wire \debouncer.cont_reg_n_0_[23] ;
  wire \debouncer.cont_reg_n_0_[24] ;
  wire \debouncer.cont_reg_n_0_[25] ;
  wire \debouncer.cont_reg_n_0_[26] ;
  wire \debouncer.cont_reg_n_0_[27] ;
  wire \debouncer.cont_reg_n_0_[28] ;
  wire \debouncer.cont_reg_n_0_[29] ;
  wire \debouncer.cont_reg_n_0_[2] ;
  wire \debouncer.cont_reg_n_0_[30] ;
  wire \debouncer.cont_reg_n_0_[31] ;
  wire \debouncer.cont_reg_n_0_[3] ;
  wire \debouncer.cont_reg_n_0_[4] ;
  wire \debouncer.cont_reg_n_0_[5] ;
  wire \debouncer.cont_reg_n_0_[6] ;
  wire \debouncer.cont_reg_n_0_[7] ;
  wire \debouncer.cont_reg_n_0_[8] ;
  wire \debouncer.cont_reg_n_0_[9] ;
  wire reset_IBUF;
  wire sig_div;
  wire sig_m;
  wire [2:0]\NLW_debouncer.cont_reg[12]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[16]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[20]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[24]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[28]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_debouncer.cont_reg[31]_i_4__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_debouncer.cont_reg[31]_i_4__0_O_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[4]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_debouncer.cont_reg[8]_i_2__0_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    CLEARED_BTN_i_1__0
       (.I0(CLEARED_BTN_i_2__0_n_0),
        .I1(reset_IBUF),
        .O(CLEARED_BTN_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFAFF000000400000)) 
    CLEARED_BTN_i_2__0
       (.I0(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I1(sig_div),
        .I2(button2_IBUF),
        .I3(btn_state__0[1]),
        .I4(btn_state__0[0]),
        .I5(sig_m),
        .O(CLEARED_BTN_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    CLEARED_BTN_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(CLEARED_BTN_i_1__0_n_0),
        .Q(sig_m),
        .R(1'b0));
  (* \PinAttr:I4:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCCCF5A5A)) 
    \FSM_sequential_btn_state[0]_i_1__0 
       (.I0(button2_IBUF),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(btn_state__0[1]),
        .I3(sig_div),
        .I4(btn_state__0[0]),
        .O(\FSM_sequential_btn_state[0]_i_1__0_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCCECCC0C)) 
    \FSM_sequential_btn_state[1]_i_1__0 
       (.I0(sig_div),
        .I1(btn_state__0[1]),
        .I2(btn_state__0[0]),
        .I3(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I4(button2_IBUF),
        .O(\FSM_sequential_btn_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_2__0 
       (.I0(\FSM_sequential_btn_state[1]_i_3__0_n_0 ),
        .I1(\FSM_sequential_btn_state[1]_i_4__0_n_0 ),
        .I2(\FSM_sequential_btn_state[1]_i_5__0_n_0 ),
        .I3(\FSM_sequential_btn_state[1]_i_6__0_n_0 ),
        .I4(\FSM_sequential_btn_state[1]_i_7__0_n_0 ),
        .I5(\FSM_sequential_btn_state[1]_i_8__0_n_0 ),
        .O(\FSM_sequential_btn_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_3__0 
       (.I0(\debouncer.cont_reg_n_0_[25] ),
        .I1(\debouncer.cont_reg_n_0_[26] ),
        .I2(\debouncer.cont_reg_n_0_[24] ),
        .I3(\debouncer.cont_reg_n_0_[28] ),
        .I4(\debouncer.cont_reg_n_0_[29] ),
        .I5(\debouncer.cont_reg_n_0_[27] ),
        .O(\FSM_sequential_btn_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_sequential_btn_state[1]_i_4__0 
       (.I0(\debouncer.cont_reg_n_0_[7] ),
        .I1(\debouncer.cont_reg_n_0_[8] ),
        .I2(\debouncer.cont_reg_n_0_[6] ),
        .I3(\debouncer.cont_reg_n_0_[9] ),
        .I4(\debouncer.cont_reg_n_0_[10] ),
        .I5(\debouncer.cont_reg_n_0_[11] ),
        .O(\FSM_sequential_btn_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_btn_state[1]_i_5__0 
       (.I0(\debouncer.cont_reg_n_0_[18] ),
        .I1(\debouncer.cont_reg_n_0_[20] ),
        .I2(\debouncer.cont_reg_n_0_[19] ),
        .I3(\debouncer.cont_reg_n_0_[22] ),
        .I4(\debouncer.cont_reg_n_0_[23] ),
        .I5(\debouncer.cont_reg_n_0_[21] ),
        .O(\FSM_sequential_btn_state[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \FSM_sequential_btn_state[1]_i_6__0 
       (.I0(\debouncer.cont_reg_n_0_[13] ),
        .I1(\debouncer.cont_reg_n_0_[14] ),
        .I2(\debouncer.cont_reg_n_0_[12] ),
        .I3(\debouncer.cont_reg_n_0_[16] ),
        .I4(\debouncer.cont_reg_n_0_[17] ),
        .I5(\debouncer.cont_reg_n_0_[15] ),
        .O(\FSM_sequential_btn_state[1]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_btn_state[1]_i_7__0 
       (.I0(\debouncer.cont_reg_n_0_[30] ),
        .I1(\debouncer.cont_reg_n_0_[31] ),
        .O(\FSM_sequential_btn_state[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_btn_state[1]_i_8__0 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(\debouncer.cont_reg_n_0_[1] ),
        .I2(\debouncer.cont_reg_n_0_[2] ),
        .I3(\debouncer.cont_reg_n_0_[3] ),
        .I4(\debouncer.cont_reg_n_0_[4] ),
        .I5(\debouncer.cont_reg_n_0_[5] ),
        .O(\FSM_sequential_btn_state[1]_i_8__0_n_0 ));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_btn_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[0]_i_1__0_n_0 ),
        .Q(btn_state__0[0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_btn_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[1]_i_1__0_n_0 ),
        .Q(btn_state__0[1]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'h32373737)) 
    \debouncer.cont[0]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg_n_0_[0] ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[10]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[12]_i_2__0_n_6 ),
        .O(\debouncer.cont[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[11]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[12]_i_2__0_n_5 ),
        .O(\debouncer.cont[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[12]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[12]_i_2__0_n_4 ),
        .O(\debouncer.cont[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[13]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[16]_i_2__0_n_7 ),
        .O(\debouncer.cont[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[14]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[16]_i_2__0_n_6 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[15]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[16]_i_2__0_n_5 ),
        .O(\debouncer.cont[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[16]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[16]_i_2__0_n_4 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[17]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[20]_i_2__0_n_7 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[18]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[20]_i_2__0_n_6 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[19]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[20]_i_2__0_n_5 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[1]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[4]_i_2__0_n_7 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[20]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[20]_i_2__0_n_4 ),
        .O(\debouncer.cont[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[21]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[24]_i_2__0_n_7 ),
        .O(\debouncer.cont[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[22]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[24]_i_2__0_n_6 ),
        .O(\debouncer.cont[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[23]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[24]_i_2__0_n_5 ),
        .O(\debouncer.cont[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[24]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[24]_i_2__0_n_4 ),
        .O(\debouncer.cont[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[25]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[28]_i_2__0_n_7 ),
        .O(\debouncer.cont[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[26]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[28]_i_2__0_n_6 ),
        .O(\debouncer.cont[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[27]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[28]_i_2__0_n_5 ),
        .O(\debouncer.cont[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[28]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[28]_i_2__0_n_4 ),
        .O(\debouncer.cont[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[29]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[31]_i_4__0_n_7 ),
        .O(\debouncer.cont[29]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[2]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[4]_i_2__0_n_6 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[30]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[31]_i_4__0_n_6 ),
        .O(\debouncer.cont[30]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \debouncer.cont[31]_i_1__0 
       (.I0(btn_state__0[0]),
        .I1(btn_state__0[1]),
        .I2(reset_IBUF),
        .O(\debouncer.cont[31]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h008F)) 
    \debouncer.cont[31]_i_2__0 
       (.I0(btn_state__0[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(btn_state__0[1]),
        .I3(reset_IBUF),
        .O(\debouncer.cont[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[31]_i_3__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[31]_i_4__0_n_5 ),
        .O(\debouncer.cont[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[3]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[4]_i_2__0_n_5 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[4]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[4]_i_2__0_n_4 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[5]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[8]_i_2__0_n_7 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[6]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[8]_i_2__0_n_6 ),
        .O(\debouncer.cont[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[7]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[8]_i_2__0_n_5 ),
        .O(\debouncer.cont[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \debouncer.cont[8]_i_1__0 
       (.I0(btn_state__0[1]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(\debouncer.cont_reg[8]_i_2__0_n_4 ),
        .O(\debouncer.cont[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hC8CDCDCD)) 
    \debouncer.cont[9]_i_1 
       (.I0(btn_state__0[1]),
        .I1(\debouncer.cont_reg[12]_i_2__0_n_7 ),
        .I2(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I3(button2_IBUF),
        .I4(sig_div),
        .O(\debouncer.cont[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[0]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[0] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[10]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[10] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[11]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[11] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[12]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[12] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[12]_i_2__0 
       (.CI(\debouncer.cont_reg[8]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[12]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[12]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[12]_i_2__0_n_4 ,\debouncer.cont_reg[12]_i_2__0_n_5 ,\debouncer.cont_reg[12]_i_2__0_n_6 ,\debouncer.cont_reg[12]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[12] ,\debouncer.cont_reg_n_0_[11] ,\debouncer.cont_reg_n_0_[10] ,\debouncer.cont_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[13]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[13] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[14]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[14] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[15]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[15] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[16]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[16] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[16]_i_2__0 
       (.CI(\debouncer.cont_reg[12]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[16]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[16]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[16]_i_2__0_n_4 ,\debouncer.cont_reg[16]_i_2__0_n_5 ,\debouncer.cont_reg[16]_i_2__0_n_6 ,\debouncer.cont_reg[16]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[16] ,\debouncer.cont_reg_n_0_[15] ,\debouncer.cont_reg_n_0_[14] ,\debouncer.cont_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[17]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[17] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[18]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[18] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[19]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[19] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[1]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[1] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[20]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[20] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[20]_i_2__0 
       (.CI(\debouncer.cont_reg[16]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[20]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[20]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[20]_i_2__0_n_4 ,\debouncer.cont_reg[20]_i_2__0_n_5 ,\debouncer.cont_reg[20]_i_2__0_n_6 ,\debouncer.cont_reg[20]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[20] ,\debouncer.cont_reg_n_0_[19] ,\debouncer.cont_reg_n_0_[18] ,\debouncer.cont_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[21]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[21] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[22]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[22] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[23]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[23] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[24]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[24] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[24]_i_2__0 
       (.CI(\debouncer.cont_reg[20]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[24]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[24]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[24]_i_2__0_n_4 ,\debouncer.cont_reg[24]_i_2__0_n_5 ,\debouncer.cont_reg[24]_i_2__0_n_6 ,\debouncer.cont_reg[24]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[24] ,\debouncer.cont_reg_n_0_[23] ,\debouncer.cont_reg_n_0_[22] ,\debouncer.cont_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[25]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[25] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[26]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[26] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[27]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[27] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[28]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[28] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[28]_i_2__0 
       (.CI(\debouncer.cont_reg[24]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[28]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[28]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[28]_i_2__0_n_4 ,\debouncer.cont_reg[28]_i_2__0_n_5 ,\debouncer.cont_reg[28]_i_2__0_n_6 ,\debouncer.cont_reg[28]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[28] ,\debouncer.cont_reg_n_0_[27] ,\debouncer.cont_reg_n_0_[26] ,\debouncer.cont_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[29]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[29] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[2]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[2] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[30]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[30] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[31]_i_3__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[31] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[31]_i_4__0 
       (.CI(\debouncer.cont_reg[28]_i_2__0_n_0 ),
        .CO(\NLW_debouncer.cont_reg[31]_i_4__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_debouncer.cont_reg[31]_i_4__0_O_UNCONNECTED [3],\debouncer.cont_reg[31]_i_4__0_n_5 ,\debouncer.cont_reg[31]_i_4__0_n_6 ,\debouncer.cont_reg[31]_i_4__0_n_7 }),
        .S({1'b0,\debouncer.cont_reg_n_0_[31] ,\debouncer.cont_reg_n_0_[30] ,\debouncer.cont_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[3]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[3] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[4]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[4] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[4]_i_2__0 
       (.CI(1'b0),
        .CO({\debouncer.cont_reg[4]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[4]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\debouncer.cont_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[4]_i_2__0_n_4 ,\debouncer.cont_reg[4]_i_2__0_n_5 ,\debouncer.cont_reg[4]_i_2__0_n_6 ,\debouncer.cont_reg[4]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[4] ,\debouncer.cont_reg_n_0_[3] ,\debouncer.cont_reg_n_0_[2] ,\debouncer.cont_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[5]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[5] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[6]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[6] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[7]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[7] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[8]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[8] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debouncer.cont_reg[8]_i_2__0 
       (.CI(\debouncer.cont_reg[4]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[8]_i_2__0_n_0 ,\NLW_debouncer.cont_reg[8]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[8]_i_2__0_n_4 ,\debouncer.cont_reg[8]_i_2__0_n_5 ,\debouncer.cont_reg[8]_i_2__0_n_6 ,\debouncer.cont_reg[8]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[8] ,\debouncer.cont_reg_n_0_[7] ,\debouncer.cont_reg_n_0_[6] ,\debouncer.cont_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \debouncer.cont_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\debouncer.cont[31]_i_2__0_n_0 ),
        .D(\debouncer.cont[9]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[9] ),
        .R(\debouncer.cont[31]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
