// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jan  4 21:59:33 2023
// Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Progetti_Xilinx/11_Robertson/11_Robertson.sim/sim_1/synth/timing/xsim/simulation_time_synth.v
// Design      : Multiplier_on_board
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Booth_multiplier
   (Q,
    output_OBUF,
    CLK,
    start_clear,
    sig_div,
    input2_IBUF,
    reset00_out,
    SR,
    D);
  output [0:0]Q;
  output [15:0]output_OBUF;
  input CLK;
  input start_clear;
  input sig_div;
  input [7:0]input2_IBUF;
  input reset00_out;
  input [0:0]SR;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire M_n_10;
  wire M_n_11;
  wire M_n_12;
  wire M_n_8;
  wire M_n_9;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \adder/RA/RA1to6[1].RA/cout1__0 ;
  wire \adder/RA/RA7/cout1__0 ;
  wire [6:1]\adder/complementoy ;
  wire contatore_n_0;
  wire contatore_n_1;
  wire controllo_n_1;
  wire controllo_n_10;
  wire controllo_n_11;
  wire controllo_n_12;
  wire controllo_n_13;
  wire controllo_n_14;
  wire controllo_n_15;
  wire controllo_n_5;
  wire controllo_n_6;
  wire controllo_n_8;
  wire controllo_n_9;
  wire cout0__2;
  wire enable0;
  wire enable00_out;
  wire [7:0]input2_IBUF;
  wire [15:0]output_OBUF;
  wire reset00_out;
  wire [6:0]sig_M;
  wire sig_div;
  wire sig_enable_rM;
  wire sig_q_meno1;
  wire sig_shift_r;
  wire sig_sub;
  wire start_clear;

  register_8 A
       (.CLK(CLK),
        .D({M_n_8,M_n_9,M_n_10,M_n_11,M_n_12}),
        .E(controllo_n_5),
        .Q(output_OBUF[15:8]),
        .complementoy(\adder/complementoy [6:4]),
        .cout0__2(cout0__2),
        .cout1__0(\adder/RA/RA7/cout1__0 ),
        .cout1__0_0(\adder/RA/RA1to6[1].RA/cout1__0 ),
        .enable00_out(enable00_out),
        .reset00_out(reset00_out),
        .sig_q_meno1(sig_q_meno1),
        .sig_sub(sig_sub),
        .\tmp[7]_i_4_0 ({sig_M[3],sig_M[0]}),
        .\tmp[7]_i_4_1 (controllo_n_1),
        .\tmp[7]_i_4_2 (output_OBUF[0]));
  register_8_1 M
       (.CLK(CLK),
        .D({M_n_8,M_n_9,M_n_10,M_n_11,M_n_12}),
        .E(enable0),
        .Q(sig_M),
        .complementoy({\adder/complementoy [5],\adder/complementoy [2:1]}),
        .cout0__2(cout0__2),
        .cout1__0(\adder/RA/RA7/cout1__0 ),
        .cout1__0_0(\adder/RA/RA1to6[1].RA/cout1__0 ),
        .enable00_out(enable00_out),
        .output_OBUF(output_OBUF[15:8]),
        .reset00_out(reset00_out),
        .sig_q_meno1(sig_q_meno1),
        .sig_sub(sig_sub),
        .\tmp_reg[6]_0 (output_OBUF[0]),
        .\tmp_reg[7]_0 (controllo_n_1),
        .\tmp_reg[7]_1 (D));
  register_8_2 Q__0
       (.CLK(CLK),
        .D({controllo_n_8,controllo_n_9,controllo_n_10,controllo_n_11,controllo_n_12,controllo_n_13,controllo_n_14,controllo_n_15}),
        .E(controllo_n_6),
        .Q(output_OBUF[7:0]),
        .complementoy({\adder/complementoy [6:4],\adder/complementoy [2:1]}),
        .reset00_out(reset00_out),
        .sig_q_meno1(sig_q_meno1),
        .\tmp_reg[6]_0 (controllo_n_1),
        .\tmp_reg[7]_0 ({sig_M[6:4],sig_M[2:1]}));
  counter_mod8 contatore
       (.CLK(CLK),
        .D({contatore_n_0,contatore_n_1}),
        .Q({sig_shift_r,sig_enable_rM,Q}),
        .reset00_out(reset00_out),
        .sig_div(sig_div),
        .start_clear(start_clear));
  control_unit controllo
       (.CLK(CLK),
        .D({controllo_n_8,controllo_n_9,controllo_n_10,controllo_n_11,controllo_n_12,controllo_n_13,controllo_n_14,controllo_n_15}),
        .E(controllo_n_5),
        .\FSM_onehot_curr_state_reg[1]_0 (controllo_n_6),
        .\FSM_onehot_curr_state_reg[1]_1 (enable0),
        .\FSM_onehot_curr_state_reg[2]_0 ({contatore_n_0,contatore_n_1}),
        .Q({sig_shift_r,controllo_n_1,sig_enable_rM,Q}),
        .SR(SR),
        .input2_IBUF(input2_IBUF),
        .output_OBUF(output_OBUF[8]),
        .sig_div(sig_div),
        .sig_q_meno1(sig_q_meno1),
        .sig_sub(sig_sub),
        .start_clear(start_clear),
        .\tmp_reg[6] (output_OBUF[7:0]));
  register_1 q_meno1
       (.CLK(CLK),
        .Q(output_OBUF[0]),
        .enable00_out(enable00_out),
        .reset00_out(reset00_out),
        .sig_div(sig_div),
        .sig_q_meno1(sig_q_meno1),
        .tmp_reg_0({sig_shift_r,controllo_n_1}));
endmodule

module ButtonDebouncer
   (SR,
    CLK,
    reset_IBUF,
    sig_div);
  output [0:0]SR;
  input CLK;
  input reset_IBUF;
  input sig_div;

  wire CLEARED_BTN_i_1__0_n_0;
  wire CLK;
  wire \FSM_sequential_btn_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_5__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_6__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_7__0_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_8__0_n_0 ;
  wire [0:0]SR;
  wire [1:0]btn_state;
  wire cont;
  wire \debouncer.cont[0]_i_1_n_0 ;
  wire \debouncer.cont[10]_i_1__0_n_0 ;
  wire \debouncer.cont[11]_i_1__0_n_0 ;
  wire \debouncer.cont[12]_i_1__0_n_0 ;
  wire \debouncer.cont[13]_i_1__0_n_0 ;
  wire \debouncer.cont[14]_i_1__0_n_0 ;
  wire \debouncer.cont[15]_i_1__0_n_0 ;
  wire \debouncer.cont[16]_i_1__0_n_0 ;
  wire \debouncer.cont[17]_i_1__0_n_0 ;
  wire \debouncer.cont[18]_i_1__0_n_0 ;
  wire \debouncer.cont[19]_i_1__0_n_0 ;
  wire \debouncer.cont[1]_i_1__0_n_0 ;
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
  wire \debouncer.cont[2]_i_1__0_n_0 ;
  wire \debouncer.cont[30]_i_1__0_n_0 ;
  wire \debouncer.cont[31]_i_2__0_n_0 ;
  wire \debouncer.cont[3]_i_1__0_n_0 ;
  wire \debouncer.cont[4]_i_1__0_n_0 ;
  wire \debouncer.cont[5]_i_1__0_n_0 ;
  wire \debouncer.cont[6]_i_1__0_n_0 ;
  wire \debouncer.cont[7]_i_1__0_n_0 ;
  wire \debouncer.cont[8]_i_1__0_n_0 ;
  wire \debouncer.cont[9]_i_1__0_n_0 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[12]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[16]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[20]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[24]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[28]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[31]_i_3__0_n_2 ;
  wire \debouncer.cont_reg[31]_i_3__0_n_3 ;
  wire \debouncer.cont_reg[31]_i_3__0_n_5 ;
  wire \debouncer.cont_reg[31]_i_3__0_n_6 ;
  wire \debouncer.cont_reg[31]_i_3__0_n_7 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_3 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_4 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_5 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_6 ;
  wire \debouncer.cont_reg[4]_i_2__0_n_7 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_0 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_1 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_2 ;
  wire \debouncer.cont_reg[8]_i_2__0_n_3 ;
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
  wire [3:2]\NLW_debouncer.cont_reg[31]_i_3__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_debouncer.cont_reg[31]_i_3__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF2F2F25200500000)) 
    CLEARED_BTN_i_1__0
       (.I0(btn_state[1]),
        .I1(sig_div),
        .I2(btn_state[0]),
        .I3(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I4(reset_IBUF),
        .I5(SR),
        .O(CLEARED_BTN_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLEARED_BTN_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CLEARED_BTN_i_1__0_n_0),
        .Q(SR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8DD8)) 
    \FSM_sequential_btn_state[0]_i_1__0 
       (.I0(btn_state[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\FSM_sequential_btn_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \FSM_sequential_btn_state[1]_i_1__0 
       (.I0(btn_state[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
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
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_4__0 
       (.I0(\debouncer.cont_reg_n_0_[7] ),
        .I1(\debouncer.cont_reg_n_0_[8] ),
        .I2(\debouncer.cont_reg_n_0_[6] ),
        .I3(\debouncer.cont_reg_n_0_[10] ),
        .I4(\debouncer.cont_reg_n_0_[11] ),
        .I5(\debouncer.cont_reg_n_0_[9] ),
        .O(\FSM_sequential_btn_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_5__0 
       (.I0(\debouncer.cont_reg_n_0_[19] ),
        .I1(\debouncer.cont_reg_n_0_[20] ),
        .I2(\debouncer.cont_reg_n_0_[18] ),
        .I3(\debouncer.cont_reg_n_0_[22] ),
        .I4(\debouncer.cont_reg_n_0_[23] ),
        .I5(\debouncer.cont_reg_n_0_[21] ),
        .O(\FSM_sequential_btn_state[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
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
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_sequential_btn_state[1]_i_8__0 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(\debouncer.cont_reg_n_0_[1] ),
        .I2(\debouncer.cont_reg_n_0_[2] ),
        .I3(\debouncer.cont_reg_n_0_[4] ),
        .I4(\debouncer.cont_reg_n_0_[5] ),
        .I5(\debouncer.cont_reg_n_0_[3] ),
        .O(\FSM_sequential_btn_state[1]_i_8__0_n_0 ));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[0]_i_1__0_n_0 ),
        .Q(btn_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[1]_i_1__0_n_0 ),
        .Q(btn_state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    \debouncer.cont[0]_i_1 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[10]_i_1__0 
       (.I0(\debouncer.cont_reg[12]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[11]_i_1__0 
       (.I0(\debouncer.cont_reg[12]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[12]_i_1__0 
       (.I0(\debouncer.cont_reg[12]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[13]_i_1__0 
       (.I0(\debouncer.cont_reg[16]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[14]_i_1__0 
       (.I0(\debouncer.cont_reg[16]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[15]_i_1__0 
       (.I0(\debouncer.cont_reg[16]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[16]_i_1__0 
       (.I0(\debouncer.cont_reg[16]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[17]_i_1__0 
       (.I0(\debouncer.cont_reg[20]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[18]_i_1__0 
       (.I0(\debouncer.cont_reg[20]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[19]_i_1__0 
       (.I0(\debouncer.cont_reg[20]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[1]_i_1__0 
       (.I0(\debouncer.cont_reg[4]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[20]_i_1__0 
       (.I0(\debouncer.cont_reg[20]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[21]_i_1__0 
       (.I0(\debouncer.cont_reg[24]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[22]_i_1__0 
       (.I0(\debouncer.cont_reg[24]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[23]_i_1__0 
       (.I0(\debouncer.cont_reg[24]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[24]_i_1__0 
       (.I0(\debouncer.cont_reg[24]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[25]_i_1__0 
       (.I0(\debouncer.cont_reg[28]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[26]_i_1__0 
       (.I0(\debouncer.cont_reg[28]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[27]_i_1__0 
       (.I0(\debouncer.cont_reg[28]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[28]_i_1__0 
       (.I0(\debouncer.cont_reg[28]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[29]_i_1__0 
       (.I0(\debouncer.cont_reg[31]_i_3__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[2]_i_1__0 
       (.I0(\debouncer.cont_reg[4]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[30]_i_1__0 
       (.I0(\debouncer.cont_reg[31]_i_3__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[30]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BBB)) 
    \debouncer.cont[31]_i_1__0 
       (.I0(\FSM_sequential_btn_state[1]_i_2__0_n_0 ),
        .I1(btn_state[0]),
        .I2(btn_state[1]),
        .I3(reset_IBUF),
        .O(cont));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[31]_i_2__0 
       (.I0(\debouncer.cont_reg[31]_i_3__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[3]_i_1__0 
       (.I0(\debouncer.cont_reg[4]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[4]_i_1__0 
       (.I0(\debouncer.cont_reg[4]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[5]_i_1__0 
       (.I0(\debouncer.cont_reg[8]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[6]_i_1__0 
       (.I0(\debouncer.cont_reg[8]_i_2__0_n_6 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[7]_i_1__0 
       (.I0(\debouncer.cont_reg[8]_i_2__0_n_5 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[8]_i_1__0 
       (.I0(\debouncer.cont_reg[8]_i_2__0_n_4 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[9]_i_1__0 
       (.I0(\debouncer.cont_reg[12]_i_2__0_n_7 ),
        .I1(btn_state[0]),
        .I2(reset_IBUF),
        .I3(btn_state[1]),
        .O(\debouncer.cont[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[0] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[0]_i_1_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[10] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[10]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[11] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[11]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[12] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[12]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[12]_i_2__0 
       (.CI(\debouncer.cont_reg[8]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[12]_i_2__0_n_0 ,\debouncer.cont_reg[12]_i_2__0_n_1 ,\debouncer.cont_reg[12]_i_2__0_n_2 ,\debouncer.cont_reg[12]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[12]_i_2__0_n_4 ,\debouncer.cont_reg[12]_i_2__0_n_5 ,\debouncer.cont_reg[12]_i_2__0_n_6 ,\debouncer.cont_reg[12]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[12] ,\debouncer.cont_reg_n_0_[11] ,\debouncer.cont_reg_n_0_[10] ,\debouncer.cont_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[13] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[13]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[14] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[14]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[15] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[15]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[16] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[16]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[16]_i_2__0 
       (.CI(\debouncer.cont_reg[12]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[16]_i_2__0_n_0 ,\debouncer.cont_reg[16]_i_2__0_n_1 ,\debouncer.cont_reg[16]_i_2__0_n_2 ,\debouncer.cont_reg[16]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[16]_i_2__0_n_4 ,\debouncer.cont_reg[16]_i_2__0_n_5 ,\debouncer.cont_reg[16]_i_2__0_n_6 ,\debouncer.cont_reg[16]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[16] ,\debouncer.cont_reg_n_0_[15] ,\debouncer.cont_reg_n_0_[14] ,\debouncer.cont_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[17] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[17]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[18] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[18]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[19] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[19]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[1] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[1]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[20] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[20]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[20] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[20]_i_2__0 
       (.CI(\debouncer.cont_reg[16]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[20]_i_2__0_n_0 ,\debouncer.cont_reg[20]_i_2__0_n_1 ,\debouncer.cont_reg[20]_i_2__0_n_2 ,\debouncer.cont_reg[20]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[20]_i_2__0_n_4 ,\debouncer.cont_reg[20]_i_2__0_n_5 ,\debouncer.cont_reg[20]_i_2__0_n_6 ,\debouncer.cont_reg[20]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[20] ,\debouncer.cont_reg_n_0_[19] ,\debouncer.cont_reg_n_0_[18] ,\debouncer.cont_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[21] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[21]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[22] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[22]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[23] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[23]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[24] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[24]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[24] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[24]_i_2__0 
       (.CI(\debouncer.cont_reg[20]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[24]_i_2__0_n_0 ,\debouncer.cont_reg[24]_i_2__0_n_1 ,\debouncer.cont_reg[24]_i_2__0_n_2 ,\debouncer.cont_reg[24]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[24]_i_2__0_n_4 ,\debouncer.cont_reg[24]_i_2__0_n_5 ,\debouncer.cont_reg[24]_i_2__0_n_6 ,\debouncer.cont_reg[24]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[24] ,\debouncer.cont_reg_n_0_[23] ,\debouncer.cont_reg_n_0_[22] ,\debouncer.cont_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[25] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[25]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[26] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[26]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[27] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[27]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[28] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[28]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[28] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[28]_i_2__0 
       (.CI(\debouncer.cont_reg[24]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[28]_i_2__0_n_0 ,\debouncer.cont_reg[28]_i_2__0_n_1 ,\debouncer.cont_reg[28]_i_2__0_n_2 ,\debouncer.cont_reg[28]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[28]_i_2__0_n_4 ,\debouncer.cont_reg[28]_i_2__0_n_5 ,\debouncer.cont_reg[28]_i_2__0_n_6 ,\debouncer.cont_reg[28]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[28] ,\debouncer.cont_reg_n_0_[27] ,\debouncer.cont_reg_n_0_[26] ,\debouncer.cont_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[29] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[29]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[2] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[2]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[30] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[30]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[31] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[31]_i_2__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[31]_i_3__0 
       (.CI(\debouncer.cont_reg[28]_i_2__0_n_0 ),
        .CO({\NLW_debouncer.cont_reg[31]_i_3__0_CO_UNCONNECTED [3:2],\debouncer.cont_reg[31]_i_3__0_n_2 ,\debouncer.cont_reg[31]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_debouncer.cont_reg[31]_i_3__0_O_UNCONNECTED [3],\debouncer.cont_reg[31]_i_3__0_n_5 ,\debouncer.cont_reg[31]_i_3__0_n_6 ,\debouncer.cont_reg[31]_i_3__0_n_7 }),
        .S({1'b0,\debouncer.cont_reg_n_0_[31] ,\debouncer.cont_reg_n_0_[30] ,\debouncer.cont_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[3] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[3]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[4] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[4]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[4]_i_2__0 
       (.CI(1'b0),
        .CO({\debouncer.cont_reg[4]_i_2__0_n_0 ,\debouncer.cont_reg[4]_i_2__0_n_1 ,\debouncer.cont_reg[4]_i_2__0_n_2 ,\debouncer.cont_reg[4]_i_2__0_n_3 }),
        .CYINIT(\debouncer.cont_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[4]_i_2__0_n_4 ,\debouncer.cont_reg[4]_i_2__0_n_5 ,\debouncer.cont_reg[4]_i_2__0_n_6 ,\debouncer.cont_reg[4]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[4] ,\debouncer.cont_reg_n_0_[3] ,\debouncer.cont_reg_n_0_[2] ,\debouncer.cont_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[5] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[5]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[6] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[6]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[7] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[7]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[8] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[8]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[8]_i_2__0 
       (.CI(\debouncer.cont_reg[4]_i_2__0_n_0 ),
        .CO({\debouncer.cont_reg[8]_i_2__0_n_0 ,\debouncer.cont_reg[8]_i_2__0_n_1 ,\debouncer.cont_reg[8]_i_2__0_n_2 ,\debouncer.cont_reg[8]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debouncer.cont_reg[8]_i_2__0_n_4 ,\debouncer.cont_reg[8]_i_2__0_n_5 ,\debouncer.cont_reg[8]_i_2__0_n_6 ,\debouncer.cont_reg[8]_i_2__0_n_7 }),
        .S({\debouncer.cont_reg_n_0_[8] ,\debouncer.cont_reg_n_0_[7] ,\debouncer.cont_reg_n_0_[6] ,\debouncer.cont_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[9] 
       (.C(CLK),
        .CE(cont),
        .D(\debouncer.cont[9]_i_1__0_n_0 ),
        .Q(\debouncer.cont_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ButtonDebouncer" *) 
module ButtonDebouncer_0
   (start_clear,
    reset00_out,
    CLK,
    Q,
    SR,
    start_IBUF,
    sig_div);
  output start_clear;
  output reset00_out;
  input CLK;
  input [0:0]Q;
  input [0:0]SR;
  input start_IBUF;
  input sig_div;

  wire CLEARED_BTN_i_1_n_0;
  wire CLK;
  wire \FSM_sequential_btn_state[0]_i_1_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_1_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_2_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_3_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_4_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_5_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_6_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_7_n_0 ;
  wire \FSM_sequential_btn_state[1]_i_8_n_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]btn_state;
  wire [31:0]cont;
  wire cont_0;
  wire \debouncer.cont_reg[12]_i_2_n_0 ;
  wire \debouncer.cont_reg[12]_i_2_n_1 ;
  wire \debouncer.cont_reg[12]_i_2_n_2 ;
  wire \debouncer.cont_reg[12]_i_2_n_3 ;
  wire \debouncer.cont_reg[16]_i_2_n_0 ;
  wire \debouncer.cont_reg[16]_i_2_n_1 ;
  wire \debouncer.cont_reg[16]_i_2_n_2 ;
  wire \debouncer.cont_reg[16]_i_2_n_3 ;
  wire \debouncer.cont_reg[20]_i_2_n_0 ;
  wire \debouncer.cont_reg[20]_i_2_n_1 ;
  wire \debouncer.cont_reg[20]_i_2_n_2 ;
  wire \debouncer.cont_reg[20]_i_2_n_3 ;
  wire \debouncer.cont_reg[24]_i_2_n_0 ;
  wire \debouncer.cont_reg[24]_i_2_n_1 ;
  wire \debouncer.cont_reg[24]_i_2_n_2 ;
  wire \debouncer.cont_reg[24]_i_2_n_3 ;
  wire \debouncer.cont_reg[28]_i_2_n_0 ;
  wire \debouncer.cont_reg[28]_i_2_n_1 ;
  wire \debouncer.cont_reg[28]_i_2_n_2 ;
  wire \debouncer.cont_reg[28]_i_2_n_3 ;
  wire \debouncer.cont_reg[31]_i_3_n_2 ;
  wire \debouncer.cont_reg[31]_i_3_n_3 ;
  wire \debouncer.cont_reg[4]_i_2_n_0 ;
  wire \debouncer.cont_reg[4]_i_2_n_1 ;
  wire \debouncer.cont_reg[4]_i_2_n_2 ;
  wire \debouncer.cont_reg[4]_i_2_n_3 ;
  wire \debouncer.cont_reg[8]_i_2_n_0 ;
  wire \debouncer.cont_reg[8]_i_2_n_1 ;
  wire \debouncer.cont_reg[8]_i_2_n_2 ;
  wire \debouncer.cont_reg[8]_i_2_n_3 ;
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
  wire reset00_out;
  wire sig_div;
  wire start_IBUF;
  wire start_clear;
  wire [3:2]\NLW_debouncer.cont_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_debouncer.cont_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF2F2F25200500000)) 
    CLEARED_BTN_i_1
       (.I0(btn_state[1]),
        .I1(sig_div),
        .I2(btn_state[0]),
        .I3(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I4(start_IBUF),
        .I5(start_clear),
        .O(CLEARED_BTN_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLEARED_BTN_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CLEARED_BTN_i_1_n_0),
        .Q(start_clear),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8DD8)) 
    \FSM_sequential_btn_state[0]_i_1 
       (.I0(btn_state[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(\FSM_sequential_btn_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \FSM_sequential_btn_state[1]_i_1 
       (.I0(btn_state[0]),
        .I1(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I2(start_IBUF),
        .I3(btn_state[1]),
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
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_4 
       (.I0(\debouncer.cont_reg_n_0_[7] ),
        .I1(\debouncer.cont_reg_n_0_[8] ),
        .I2(\debouncer.cont_reg_n_0_[6] ),
        .I3(\debouncer.cont_reg_n_0_[10] ),
        .I4(\debouncer.cont_reg_n_0_[11] ),
        .I5(\debouncer.cont_reg_n_0_[9] ),
        .O(\FSM_sequential_btn_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_btn_state[1]_i_5 
       (.I0(\debouncer.cont_reg_n_0_[19] ),
        .I1(\debouncer.cont_reg_n_0_[20] ),
        .I2(\debouncer.cont_reg_n_0_[18] ),
        .I3(\debouncer.cont_reg_n_0_[22] ),
        .I4(\debouncer.cont_reg_n_0_[23] ),
        .I5(\debouncer.cont_reg_n_0_[21] ),
        .O(\FSM_sequential_btn_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
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
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_sequential_btn_state[1]_i_8 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(\debouncer.cont_reg_n_0_[1] ),
        .I2(\debouncer.cont_reg_n_0_[2] ),
        .I3(\debouncer.cont_reg_n_0_[4] ),
        .I4(\debouncer.cont_reg_n_0_[5] ),
        .I5(\debouncer.cont_reg_n_0_[3] ),
        .O(\FSM_sequential_btn_state[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[0]_i_1_n_0 ),
        .Q(btn_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "controllo_pressione:01,controllo_rilascio:11,premuto:10,non_premuto:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_btn_state[1]_i_1_n_0 ),
        .Q(btn_state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    \debouncer.cont[0]_i_1__0 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[10]_i_1 
       (.I0(in5[10]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[11]_i_1 
       (.I0(in5[11]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[12]_i_1 
       (.I0(in5[12]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[13]_i_1 
       (.I0(in5[13]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[14]_i_1 
       (.I0(in5[14]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[15]_i_1 
       (.I0(in5[15]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[16]_i_1 
       (.I0(in5[16]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[17]_i_1 
       (.I0(in5[17]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[18]_i_1 
       (.I0(in5[18]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[19]_i_1 
       (.I0(in5[19]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[1]_i_1 
       (.I0(in5[1]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[20]_i_1 
       (.I0(in5[20]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[21]_i_1 
       (.I0(in5[21]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[22]_i_1 
       (.I0(in5[22]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[23]_i_1 
       (.I0(in5[23]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[24]_i_1 
       (.I0(in5[24]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[25]_i_1 
       (.I0(in5[25]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[26]_i_1 
       (.I0(in5[26]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[27]_i_1 
       (.I0(in5[27]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[28]_i_1 
       (.I0(in5[28]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[29]_i_1 
       (.I0(in5[29]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[2]_i_1 
       (.I0(in5[2]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[30]_i_1 
       (.I0(in5[30]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[30]));
  LUT4 #(
    .INIT(16'h8BBB)) 
    \debouncer.cont[31]_i_1 
       (.I0(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I1(btn_state[0]),
        .I2(btn_state[1]),
        .I3(start_IBUF),
        .O(cont_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[31]_i_2 
       (.I0(in5[31]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[3]_i_1 
       (.I0(in5[3]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[4]_i_1 
       (.I0(in5[4]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[5]_i_1 
       (.I0(in5[5]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[6]_i_1 
       (.I0(in5[6]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[7]_i_1 
       (.I0(in5[7]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[8]_i_1 
       (.I0(in5[8]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[9]_i_1 
       (.I0(in5[9]),
        .I1(btn_state[0]),
        .I2(start_IBUF),
        .I3(btn_state[1]),
        .O(cont[9]));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[0] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[0]),
        .Q(\debouncer.cont_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[10] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[10]),
        .Q(\debouncer.cont_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[11] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[11]),
        .Q(\debouncer.cont_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[12] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[12]),
        .Q(\debouncer.cont_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[12]_i_2 
       (.CI(\debouncer.cont_reg[8]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[12]_i_2_n_0 ,\debouncer.cont_reg[12]_i_2_n_1 ,\debouncer.cont_reg[12]_i_2_n_2 ,\debouncer.cont_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S({\debouncer.cont_reg_n_0_[12] ,\debouncer.cont_reg_n_0_[11] ,\debouncer.cont_reg_n_0_[10] ,\debouncer.cont_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[13] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[13]),
        .Q(\debouncer.cont_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[14] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[14]),
        .Q(\debouncer.cont_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[15] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[15]),
        .Q(\debouncer.cont_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[16] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[16]),
        .Q(\debouncer.cont_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[16]_i_2 
       (.CI(\debouncer.cont_reg[12]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[16]_i_2_n_0 ,\debouncer.cont_reg[16]_i_2_n_1 ,\debouncer.cont_reg[16]_i_2_n_2 ,\debouncer.cont_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S({\debouncer.cont_reg_n_0_[16] ,\debouncer.cont_reg_n_0_[15] ,\debouncer.cont_reg_n_0_[14] ,\debouncer.cont_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[17] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[17]),
        .Q(\debouncer.cont_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[18] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[18]),
        .Q(\debouncer.cont_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[19] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[19]),
        .Q(\debouncer.cont_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[1] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[1]),
        .Q(\debouncer.cont_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[20] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[20]),
        .Q(\debouncer.cont_reg_n_0_[20] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[20]_i_2 
       (.CI(\debouncer.cont_reg[16]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[20]_i_2_n_0 ,\debouncer.cont_reg[20]_i_2_n_1 ,\debouncer.cont_reg[20]_i_2_n_2 ,\debouncer.cont_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S({\debouncer.cont_reg_n_0_[20] ,\debouncer.cont_reg_n_0_[19] ,\debouncer.cont_reg_n_0_[18] ,\debouncer.cont_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[21] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[21]),
        .Q(\debouncer.cont_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[22] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[22]),
        .Q(\debouncer.cont_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[23] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[23]),
        .Q(\debouncer.cont_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[24] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[24]),
        .Q(\debouncer.cont_reg_n_0_[24] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[24]_i_2 
       (.CI(\debouncer.cont_reg[20]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[24]_i_2_n_0 ,\debouncer.cont_reg[24]_i_2_n_1 ,\debouncer.cont_reg[24]_i_2_n_2 ,\debouncer.cont_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S({\debouncer.cont_reg_n_0_[24] ,\debouncer.cont_reg_n_0_[23] ,\debouncer.cont_reg_n_0_[22] ,\debouncer.cont_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[25] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[25]),
        .Q(\debouncer.cont_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[26] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[26]),
        .Q(\debouncer.cont_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[27] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[27]),
        .Q(\debouncer.cont_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[28] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[28]),
        .Q(\debouncer.cont_reg_n_0_[28] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[28]_i_2 
       (.CI(\debouncer.cont_reg[24]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[28]_i_2_n_0 ,\debouncer.cont_reg[28]_i_2_n_1 ,\debouncer.cont_reg[28]_i_2_n_2 ,\debouncer.cont_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S({\debouncer.cont_reg_n_0_[28] ,\debouncer.cont_reg_n_0_[27] ,\debouncer.cont_reg_n_0_[26] ,\debouncer.cont_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[29] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[29]),
        .Q(\debouncer.cont_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[2] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[2]),
        .Q(\debouncer.cont_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[30] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[30]),
        .Q(\debouncer.cont_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[31] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[31]),
        .Q(\debouncer.cont_reg_n_0_[31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[31]_i_3 
       (.CI(\debouncer.cont_reg[28]_i_2_n_0 ),
        .CO({\NLW_debouncer.cont_reg[31]_i_3_CO_UNCONNECTED [3:2],\debouncer.cont_reg[31]_i_3_n_2 ,\debouncer.cont_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_debouncer.cont_reg[31]_i_3_O_UNCONNECTED [3],in5[31:29]}),
        .S({1'b0,\debouncer.cont_reg_n_0_[31] ,\debouncer.cont_reg_n_0_[30] ,\debouncer.cont_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[3] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[3]),
        .Q(\debouncer.cont_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[4] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[4]),
        .Q(\debouncer.cont_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\debouncer.cont_reg[4]_i_2_n_0 ,\debouncer.cont_reg[4]_i_2_n_1 ,\debouncer.cont_reg[4]_i_2_n_2 ,\debouncer.cont_reg[4]_i_2_n_3 }),
        .CYINIT(\debouncer.cont_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[4:1]),
        .S({\debouncer.cont_reg_n_0_[4] ,\debouncer.cont_reg_n_0_[3] ,\debouncer.cont_reg_n_0_[2] ,\debouncer.cont_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[5] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[5]),
        .Q(\debouncer.cont_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[6] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[6]),
        .Q(\debouncer.cont_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[7] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[7]),
        .Q(\debouncer.cont_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[8] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[8]),
        .Q(\debouncer.cont_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \debouncer.cont_reg[8]_i_2 
       (.CI(\debouncer.cont_reg[4]_i_2_n_0 ),
        .CO({\debouncer.cont_reg[8]_i_2_n_0 ,\debouncer.cont_reg[8]_i_2_n_1 ,\debouncer.cont_reg[8]_i_2_n_2 ,\debouncer.cont_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S({\debouncer.cont_reg_n_0_[8] ,\debouncer.cont_reg_n_0_[7] ,\debouncer.cont_reg_n_0_[6] ,\debouncer.cont_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[9] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[9]),
        .Q(\debouncer.cont_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    \tmp[7]_i_1 
       (.I0(start_clear),
        .I1(Q),
        .I2(SR),
        .O(reset00_out));
endmodule

module Divisore_freq
   (sig_div,
    SR,
    CLK);
  output sig_div;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [3:0]conteggio;
  wire \conteggio[0]_i_1_n_0 ;
  wire div_n_0;
  wire [3:1]p_0_in;
  wire sig_div;

  LUT1 #(
    .INIT(2'h1)) 
    \conteggio[0]_i_1 
       (.I0(conteggio[0]),
        .O(\conteggio[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h3C34)) 
    \conteggio[1]_i_1 
       (.I0(conteggio[3]),
        .I1(conteggio[0]),
        .I2(conteggio[1]),
        .I3(conteggio[2]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \conteggio[2]_i_1 
       (.I0(conteggio[0]),
        .I1(conteggio[1]),
        .I2(conteggio[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AA2)) 
    \conteggio[3]_i_1 
       (.I0(conteggio[3]),
        .I1(conteggio[0]),
        .I2(conteggio[1]),
        .I3(conteggio[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\conteggio[0]_i_1_n_0 ),
        .Q(conteggio[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(conteggio[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(conteggio[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(conteggio[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    div
       (.I0(conteggio[2]),
        .I1(conteggio[1]),
        .I2(conteggio[3]),
        .I3(conteggio[0]),
        .O(div_n_0));
  FDRE #(
    .INIT(1'b0)) 
    div_reg
       (.C(CLK),
        .CE(1'b1),
        .D(div_n_0),
        .Q(sig_div),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module Multiplier_on_board
   (clock,
    reset,
    start,
    input1,
    input2,
    \output );
  input clock;
  input reset;
  input start;
  input [7:0]input1;
  input [7:0]input2;
  output [15:0]\output ;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]input1;
  wire [7:0]input1_IBUF;
  wire [7:0]input2;
  wire [7:0]input2_IBUF;
  wire multiplier_n_0;
  wire [15:0]\output ;
  wire [15:0]output_OBUF;
  wire reset;
  wire reset00_out;
  wire reset_IBUF;
  wire reset_clear;
  wire sig_div;
  wire start;
  wire start_IBUF;
  wire start_clear;

initial begin
 $sdf_annotate("simulation_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  ButtonDebouncer deb_reset
       (.CLK(clock_IBUF_BUFG),
        .SR(reset_clear),
        .reset_IBUF(reset_IBUF),
        .sig_div(sig_div));
  ButtonDebouncer_0 deb_start
       (.CLK(clock_IBUF_BUFG),
        .Q(multiplier_n_0),
        .SR(reset_clear),
        .reset00_out(reset00_out),
        .sig_div(sig_div),
        .start_IBUF(start_IBUF),
        .start_clear(start_clear));
  Divisore_freq divisore
       (.CLK(clock_IBUF_BUFG),
        .SR(reset_IBUF),
        .sig_div(sig_div));
  IBUF \input1_IBUF[0]_inst 
       (.I(input1[0]),
        .O(input1_IBUF[0]));
  IBUF \input1_IBUF[1]_inst 
       (.I(input1[1]),
        .O(input1_IBUF[1]));
  IBUF \input1_IBUF[2]_inst 
       (.I(input1[2]),
        .O(input1_IBUF[2]));
  IBUF \input1_IBUF[3]_inst 
       (.I(input1[3]),
        .O(input1_IBUF[3]));
  IBUF \input1_IBUF[4]_inst 
       (.I(input1[4]),
        .O(input1_IBUF[4]));
  IBUF \input1_IBUF[5]_inst 
       (.I(input1[5]),
        .O(input1_IBUF[5]));
  IBUF \input1_IBUF[6]_inst 
       (.I(input1[6]),
        .O(input1_IBUF[6]));
  IBUF \input1_IBUF[7]_inst 
       (.I(input1[7]),
        .O(input1_IBUF[7]));
  IBUF \input2_IBUF[0]_inst 
       (.I(input2[0]),
        .O(input2_IBUF[0]));
  IBUF \input2_IBUF[1]_inst 
       (.I(input2[1]),
        .O(input2_IBUF[1]));
  IBUF \input2_IBUF[2]_inst 
       (.I(input2[2]),
        .O(input2_IBUF[2]));
  IBUF \input2_IBUF[3]_inst 
       (.I(input2[3]),
        .O(input2_IBUF[3]));
  IBUF \input2_IBUF[4]_inst 
       (.I(input2[4]),
        .O(input2_IBUF[4]));
  IBUF \input2_IBUF[5]_inst 
       (.I(input2[5]),
        .O(input2_IBUF[5]));
  IBUF \input2_IBUF[6]_inst 
       (.I(input2[6]),
        .O(input2_IBUF[6]));
  IBUF \input2_IBUF[7]_inst 
       (.I(input2[7]),
        .O(input2_IBUF[7]));
  Booth_multiplier multiplier
       (.CLK(clock_IBUF_BUFG),
        .D(input1_IBUF),
        .Q(multiplier_n_0),
        .SR(reset_clear),
        .input2_IBUF(input2_IBUF),
        .output_OBUF(output_OBUF),
        .reset00_out(reset00_out),
        .sig_div(sig_div),
        .start_clear(start_clear));
  OBUF \output[0]_INST_0 
       (.I(output_OBUF[0]),
        .O(\output [0]));
  OBUF \output[10]_INST_0 
       (.I(output_OBUF[10]),
        .O(\output [10]));
  OBUF \output[11]_INST_0 
       (.I(output_OBUF[11]),
        .O(\output [11]));
  OBUF \output[12]_INST_0 
       (.I(output_OBUF[12]),
        .O(\output [12]));
  OBUF \output[13]_INST_0 
       (.I(output_OBUF[13]),
        .O(\output [13]));
  OBUF \output[14]_INST_0 
       (.I(output_OBUF[14]),
        .O(\output [14]));
  OBUF \output[15]_INST_0 
       (.I(output_OBUF[15]),
        .O(\output [15]));
  OBUF \output[1]_INST_0 
       (.I(output_OBUF[1]),
        .O(\output [1]));
  OBUF \output[2]_INST_0 
       (.I(output_OBUF[2]),
        .O(\output [2]));
  OBUF \output[3]_INST_0 
       (.I(output_OBUF[3]),
        .O(\output [3]));
  OBUF \output[4]_INST_0 
       (.I(output_OBUF[4]),
        .O(\output [4]));
  OBUF \output[5]_INST_0 
       (.I(output_OBUF[5]),
        .O(\output [5]));
  OBUF \output[6]_INST_0 
       (.I(output_OBUF[6]),
        .O(\output [6]));
  OBUF \output[7]_INST_0 
       (.I(output_OBUF[7]),
        .O(\output [7]));
  OBUF \output[8]_INST_0 
       (.I(output_OBUF[8]),
        .O(\output [8]));
  OBUF \output[9]_INST_0 
       (.I(output_OBUF[9]),
        .O(\output [9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module control_unit
   (Q,
    sig_sub,
    E,
    \FSM_onehot_curr_state_reg[1]_0 ,
    \FSM_onehot_curr_state_reg[1]_1 ,
    D,
    start_clear,
    sig_q_meno1,
    \tmp_reg[6] ,
    sig_div,
    input2_IBUF,
    output_OBUF,
    SR,
    CLK,
    \FSM_onehot_curr_state_reg[2]_0 );
  output [3:0]Q;
  output sig_sub;
  output [0:0]E;
  output [0:0]\FSM_onehot_curr_state_reg[1]_0 ;
  output [0:0]\FSM_onehot_curr_state_reg[1]_1 ;
  output [7:0]D;
  input start_clear;
  input sig_q_meno1;
  input [7:0]\tmp_reg[6] ;
  input sig_div;
  input [7:0]input2_IBUF;
  input [0:0]output_OBUF;
  input [0:0]SR;
  input CLK;
  input [1:0]\FSM_onehot_curr_state_reg[2]_0 ;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_curr_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_curr_state_reg[1]_1 ;
  wire [1:0]\FSM_onehot_curr_state_reg[2]_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [7:0]input2_IBUF;
  wire [0:0]output_OBUF;
  wire sig_div;
  wire sig_q_meno1;
  wire sig_sub;
  wire start_clear;
  wire [7:0]\tmp_reg[6] ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(Q[0]),
        .I1(start_clear),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(CLK),
        .CE(sig_div),
        .D(\FSM_onehot_curr_state_reg[2]_0 [0]),
        .Q(Q[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(CLK),
        .CE(sig_div),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(CLK),
        .CE(sig_div),
        .D(\FSM_onehot_curr_state_reg[2]_0 [1]),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(CLK),
        .CE(sig_div),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "operazione:01000,shift:10000,prelievo:00010,inizio:00100,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(CLK),
        .CE(sig_div),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[0]_i_1 
       (.I0(input2_IBUF[0]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[1]_i_1__0 
       (.I0(input2_IBUF[1]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[2]_i_1__0 
       (.I0(input2_IBUF[2]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[3]_i_1__0 
       (.I0(input2_IBUF[3]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[4]_i_1__0 
       (.I0(input2_IBUF[4]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[5]_i_1__0 
       (.I0(input2_IBUF[5]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \tmp[5]_i_2 
       (.I0(Q[2]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6] [0]),
        .O(sig_sub));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[6]_i_1__0 
       (.I0(input2_IBUF[6]),
        .I1(Q[1]),
        .I2(\tmp_reg[6] [7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \tmp[7]_i_1__0 
       (.I0(Q[1]),
        .I1(sig_div),
        .I2(Q[3]),
        .O(\FSM_onehot_curr_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[7]_i_1__1 
       (.I0(Q[1]),
        .I1(sig_div),
        .O(\FSM_onehot_curr_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF002800)) 
    \tmp[7]_i_2 
       (.I0(Q[2]),
        .I1(\tmp_reg[6] [0]),
        .I2(sig_q_meno1),
        .I3(sig_div),
        .I4(Q[3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[7]_i_2__0 
       (.I0(input2_IBUF[7]),
        .I1(Q[1]),
        .I2(output_OBUF),
        .O(D[7]));
endmodule

module counter_mod8
   (D,
    Q,
    start_clear,
    sig_div,
    reset00_out,
    CLK);
  output [1:0]D;
  input [2:0]Q;
  input start_clear;
  input sig_div;
  input reset00_out;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire \c[0]_i_1_n_0 ;
  wire \c[1]_i_1_n_0 ;
  wire \c[2]_i_1_n_0 ;
  wire reset00_out;
  wire [2:0]sig_counter;
  wire sig_div;
  wire start_clear;

  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(start_clear),
        .I1(Q[0]),
        .I2(sig_counter[1]),
        .I3(sig_counter[0]),
        .I4(sig_counter[2]),
        .I5(Q[2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_curr_state[2]_i_1 
       (.I0(Q[1]),
        .I1(sig_counter[1]),
        .I2(sig_counter[0]),
        .I3(sig_counter[2]),
        .I4(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000000D5AAAAAA)) 
    \c[0]_i_1 
       (.I0(sig_counter[0]),
        .I1(sig_counter[1]),
        .I2(sig_counter[2]),
        .I3(Q[2]),
        .I4(sig_div),
        .I5(reset00_out),
        .O(\c[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF8800)) 
    \c[1]_i_1 
       (.I0(sig_div),
        .I1(Q[2]),
        .I2(sig_counter[2]),
        .I3(sig_counter[0]),
        .I4(sig_counter[1]),
        .I5(reset00_out),
        .O(\c[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8F0F0F0)) 
    \c[2]_i_1 
       (.I0(sig_div),
        .I1(Q[2]),
        .I2(sig_counter[2]),
        .I3(sig_counter[0]),
        .I4(sig_counter[1]),
        .I5(reset00_out),
        .O(\c[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[0]_i_1_n_0 ),
        .Q(sig_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[1]_i_1_n_0 ),
        .Q(sig_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[2]_i_1_n_0 ),
        .Q(sig_counter[2]),
        .R(1'b0));
endmodule

module register_1
   (sig_q_meno1,
    enable00_out,
    CLK,
    Q,
    tmp_reg_0,
    sig_div,
    reset00_out);
  output sig_q_meno1;
  output enable00_out;
  input CLK;
  input [0:0]Q;
  input [1:0]tmp_reg_0;
  input sig_div;
  input reset00_out;

  wire CLK;
  wire [0:0]Q;
  wire enable00_out;
  wire reset00_out;
  wire sig_div;
  wire sig_q_meno1;
  wire tmp_i_1_n_0;
  wire [1:0]tmp_reg_0;

  LUT4 #(
    .INIT(16'h6000)) 
    \tmp[7]_i_7 
       (.I0(sig_q_meno1),
        .I1(Q),
        .I2(tmp_reg_0[0]),
        .I3(sig_div),
        .O(enable00_out));
  LUT5 #(
    .INIT(32'h0000EA2A)) 
    tmp_i_1
       (.I0(sig_q_meno1),
        .I1(sig_div),
        .I2(tmp_reg_0[1]),
        .I3(Q),
        .I4(reset00_out),
        .O(tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tmp_i_1_n_0),
        .Q(sig_q_meno1),
        .R(1'b0));
endmodule

module register_8
   (Q,
    complementoy,
    cout1__0,
    enable00_out,
    cout0__2,
    \tmp[7]_i_4_0 ,
    \tmp[7]_i_4_1 ,
    sig_q_meno1,
    \tmp[7]_i_4_2 ,
    sig_sub,
    cout1__0_0,
    reset00_out,
    E,
    CLK,
    D);
  output [7:0]Q;
  input [2:0]complementoy;
  input cout1__0;
  input enable00_out;
  input cout0__2;
  input [1:0]\tmp[7]_i_4_0 ;
  input [0:0]\tmp[7]_i_4_1 ;
  input sig_q_meno1;
  input [0:0]\tmp[7]_i_4_2 ;
  input sig_sub;
  input cout1__0_0;
  input reset00_out;
  input [0:0]E;
  input CLK;
  input [4:0]D;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \adder/RA/temp_5 ;
  wire [2:0]complementoy;
  wire cout00_out__2;
  wire cout0__2;
  wire cout1__0;
  wire cout1__0_0;
  wire enable00_out;
  wire reset00_out;
  wire sig_q_meno1;
  wire sig_sub;
  wire \tmp[0]_i_1__0_n_0 ;
  wire \tmp[1]_i_1_n_0 ;
  wire \tmp[7]_i_3_n_0 ;
  wire [1:0]\tmp[7]_i_4_0 ;
  wire [0:0]\tmp[7]_i_4_1 ;
  wire [0:0]\tmp[7]_i_4_2 ;

  LUT4 #(
    .INIT(16'h66F0)) 
    \tmp[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\tmp[7]_i_4_0 [0]),
        .I2(Q[1]),
        .I3(enable00_out),
        .O(\tmp[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h53AC53ACFFFF0000)) 
    \tmp[1]_i_1 
       (.I0(Q[0]),
        .I1(sig_sub),
        .I2(\tmp[7]_i_4_0 [0]),
        .I3(cout1__0_0),
        .I4(Q[2]),
        .I5(enable00_out),
        .O(\tmp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17E817E8FFFF0000)) 
    \tmp[7]_i_3 
       (.I0(\adder/RA/temp_5 ),
        .I1(Q[6]),
        .I2(complementoy[2]),
        .I3(cout1__0),
        .I4(Q[7]),
        .I5(enable00_out),
        .O(\tmp[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \tmp[7]_i_4 
       (.I0(complementoy[1]),
        .I1(Q[5]),
        .I2(complementoy[0]),
        .I3(Q[4]),
        .I4(cout00_out__2),
        .I5(cout0__2),
        .O(\adder/RA/temp_5 ));
  LUT5 #(
    .INIT(32'h88288888)) 
    \tmp[7]_i_9 
       (.I0(Q[3]),
        .I1(\tmp[7]_i_4_0 [1]),
        .I2(\tmp[7]_i_4_1 ),
        .I3(sig_q_meno1),
        .I4(\tmp[7]_i_4_2 ),
        .O(cout00_out__2));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\tmp[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\tmp[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[2]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[3]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[4]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[5]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[6]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\tmp[7]_i_3_n_0 ),
        .Q(Q[7]),
        .R(reset00_out));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_1
   (cout1__0,
    Q,
    D,
    cout0__2,
    cout1__0_0,
    \tmp_reg[7]_0 ,
    sig_q_meno1,
    \tmp_reg[6]_0 ,
    output_OBUF,
    complementoy,
    enable00_out,
    sig_sub,
    reset00_out,
    E,
    \tmp_reg[7]_1 ,
    CLK);
  output cout1__0;
  output [6:0]Q;
  output [4:0]D;
  output cout0__2;
  output cout1__0_0;
  input [0:0]\tmp_reg[7]_0 ;
  input sig_q_meno1;
  input [0:0]\tmp_reg[6]_0 ;
  input [7:0]output_OBUF;
  input [2:0]complementoy;
  input enable00_out;
  input sig_sub;
  input reset00_out;
  input [0:0]E;
  input [7:0]\tmp_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \adder/RA/RA1to6[3].RA/cout1__0 ;
  wire \adder/RA/RA1to6[6].RA/cout1__0 ;
  wire \adder/RA/temp_0 ;
  wire \adder/RA/temp_1 ;
  wire \adder/RA/temp_2 ;
  wire \adder/RA/temp_3 ;
  wire \adder/RA/temp_4 ;
  wire [2:0]complementoy;
  wire cout0__2;
  wire cout1__0;
  wire cout1__0_0;
  wire enable00_out;
  wire [7:0]output_OBUF;
  wire reset00_out;
  wire [7:7]sig_M;
  wire sig_q_meno1;
  wire sig_sub;
  wire [0:0]\tmp_reg[6]_0 ;
  wire [0:0]\tmp_reg[7]_0 ;
  wire [7:0]\tmp_reg[7]_1 ;

  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \tmp[1]_i_2 
       (.I0(Q[1]),
        .I1(\tmp_reg[7]_0 ),
        .I2(sig_q_meno1),
        .I3(\tmp_reg[6]_0 ),
        .I4(output_OBUF[1]),
        .O(cout1__0_0));
  LUT6 #(
    .INIT(64'h69966996FFFF0000)) 
    \tmp[2]_i_1 
       (.I0(\adder/RA/temp_1 ),
        .I1(output_OBUF[2]),
        .I2(sig_sub),
        .I3(Q[2]),
        .I4(output_OBUF[3]),
        .I5(enable00_out),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF6E460E4)) 
    \tmp[2]_i_2 
       (.I0(Q[1]),
        .I1(sig_sub),
        .I2(output_OBUF[1]),
        .I3(Q[0]),
        .I4(output_OBUF[0]),
        .O(\adder/RA/temp_1 ));
  LUT6 #(
    .INIT(64'h69966996FFFF0000)) 
    \tmp[3]_i_1 
       (.I0(\adder/RA/temp_2 ),
        .I1(output_OBUF[3]),
        .I2(sig_sub),
        .I3(Q[3]),
        .I4(output_OBUF[4]),
        .I5(enable00_out),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \tmp[3]_i_2 
       (.I0(Q[2]),
        .I1(sig_sub),
        .I2(output_OBUF[2]),
        .I3(Q[1]),
        .I4(output_OBUF[1]),
        .I5(\adder/RA/temp_0 ),
        .O(\adder/RA/temp_2 ));
  LUT5 #(
    .INIT(32'hAEAA0400)) 
    \tmp[3]_i_3 
       (.I0(Q[0]),
        .I1(\tmp_reg[7]_0 ),
        .I2(sig_q_meno1),
        .I3(\tmp_reg[6]_0 ),
        .I4(output_OBUF[0]),
        .O(\adder/RA/temp_0 ));
  LUT6 #(
    .INIT(64'h69966996FFFF0000)) 
    \tmp[4]_i_1 
       (.I0(\adder/RA/temp_3 ),
        .I1(output_OBUF[4]),
        .I2(sig_sub),
        .I3(Q[4]),
        .I4(output_OBUF[5]),
        .I5(enable00_out),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \tmp[4]_i_2 
       (.I0(Q[3]),
        .I1(sig_sub),
        .I2(output_OBUF[3]),
        .I3(Q[2]),
        .I4(output_OBUF[2]),
        .I5(\adder/RA/temp_1 ),
        .O(\adder/RA/temp_3 ));
  LUT6 #(
    .INIT(64'h69966996FFFF0000)) 
    \tmp[5]_i_1 
       (.I0(\adder/RA/temp_4 ),
        .I1(output_OBUF[5]),
        .I2(sig_sub),
        .I3(Q[5]),
        .I4(output_OBUF[6]),
        .I5(enable00_out),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h17E817E8FFFF0000)) 
    \tmp[6]_i_1 
       (.I0(\adder/RA/temp_4 ),
        .I1(output_OBUF[5]),
        .I2(complementoy[2]),
        .I3(\adder/RA/RA1to6[6].RA/cout1__0 ),
        .I4(output_OBUF[7]),
        .I5(enable00_out),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \tmp[6]_i_2 
       (.I0(Q[4]),
        .I1(sig_sub),
        .I2(output_OBUF[4]),
        .I3(Q[3]),
        .I4(output_OBUF[3]),
        .I5(\adder/RA/temp_2 ),
        .O(\adder/RA/temp_4 ));
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \tmp[6]_i_4 
       (.I0(Q[6]),
        .I1(\tmp_reg[7]_0 ),
        .I2(sig_q_meno1),
        .I3(\tmp_reg[6]_0 ),
        .I4(output_OBUF[6]),
        .O(\adder/RA/RA1to6[6].RA/cout1__0 ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \tmp[7]_i_10 
       (.I0(\adder/RA/temp_0 ),
        .I1(output_OBUF[1]),
        .I2(complementoy[0]),
        .I3(output_OBUF[2]),
        .I4(complementoy[1]),
        .I5(\adder/RA/RA1to6[3].RA/cout1__0 ),
        .O(cout0__2));
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \tmp[7]_i_13 
       (.I0(Q[3]),
        .I1(\tmp_reg[7]_0 ),
        .I2(sig_q_meno1),
        .I3(\tmp_reg[6]_0 ),
        .I4(output_OBUF[3]),
        .O(\adder/RA/RA1to6[3].RA/cout1__0 ));
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \tmp[7]_i_6 
       (.I0(sig_M),
        .I1(\tmp_reg[7]_0 ),
        .I2(sig_q_meno1),
        .I3(\tmp_reg[6]_0 ),
        .I4(output_OBUF[7]),
        .O(cout1__0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [0]),
        .Q(Q[0]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [1]),
        .Q(Q[1]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [2]),
        .Q(Q[2]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [3]),
        .Q(Q[3]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [4]),
        .Q(Q[4]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [5]),
        .Q(Q[5]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [6]),
        .Q(Q[6]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\tmp_reg[7]_1 [7]),
        .Q(sig_M),
        .R(reset00_out));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_2
   (complementoy,
    Q,
    sig_q_meno1,
    \tmp_reg[6]_0 ,
    \tmp_reg[7]_0 ,
    reset00_out,
    E,
    D,
    CLK);
  output [4:0]complementoy;
  output [7:0]Q;
  input sig_q_meno1;
  input [0:0]\tmp_reg[6]_0 ;
  input [4:0]\tmp_reg[7]_0 ;
  input reset00_out;
  input [0:0]E;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [4:0]complementoy;
  wire reset00_out;
  wire sig_q_meno1;
  wire [0:0]\tmp_reg[6]_0 ;
  wire [4:0]\tmp_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tmp[6]_i_3 
       (.I0(Q[0]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6]_0 ),
        .I3(\tmp_reg[7]_0 [3]),
        .O(complementoy[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tmp[7]_i_11 
       (.I0(Q[0]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6]_0 ),
        .I3(\tmp_reg[7]_0 [0]),
        .O(complementoy[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tmp[7]_i_12 
       (.I0(Q[0]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6]_0 ),
        .I3(\tmp_reg[7]_0 [1]),
        .O(complementoy[1]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \tmp[7]_i_5 
       (.I0(Q[0]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6]_0 ),
        .I3(\tmp_reg[7]_0 [4]),
        .O(complementoy[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tmp[7]_i_8 
       (.I0(Q[0]),
        .I1(sig_q_meno1),
        .I2(\tmp_reg[6]_0 ),
        .I3(\tmp_reg[7]_0 [2]),
        .O(complementoy[2]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset00_out));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset00_out));
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
