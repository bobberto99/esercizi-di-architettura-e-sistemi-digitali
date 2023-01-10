// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Dec  8 00:52:34 2022
// Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Progetti_Xilinx/test_es6/test_es6.sim/sim_1/synth/timing/xsim/insieme_cose_tb_time_synth.v
// Design      : insieme_cose
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ButtonDebouncer
   (CLEARED_BTN,
    CLK,
    read_IBUF);
  output CLEARED_BTN;
  input CLK;
  input read_IBUF;

  wire CLEARED_BTN;
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
  wire [1:0]btn_state;
  wire [31:0]cont;
  wire cont0_carry__0_n_0;
  wire cont0_carry__0_n_1;
  wire cont0_carry__0_n_2;
  wire cont0_carry__0_n_3;
  wire cont0_carry__1_n_0;
  wire cont0_carry__1_n_1;
  wire cont0_carry__1_n_2;
  wire cont0_carry__1_n_3;
  wire cont0_carry__2_n_0;
  wire cont0_carry__2_n_1;
  wire cont0_carry__2_n_2;
  wire cont0_carry__2_n_3;
  wire cont0_carry__3_n_0;
  wire cont0_carry__3_n_1;
  wire cont0_carry__3_n_2;
  wire cont0_carry__3_n_3;
  wire cont0_carry__4_n_0;
  wire cont0_carry__4_n_1;
  wire cont0_carry__4_n_2;
  wire cont0_carry__4_n_3;
  wire cont0_carry__5_n_0;
  wire cont0_carry__5_n_1;
  wire cont0_carry__5_n_2;
  wire cont0_carry__5_n_3;
  wire cont0_carry__6_n_2;
  wire cont0_carry__6_n_3;
  wire cont0_carry_n_0;
  wire cont0_carry_n_1;
  wire cont0_carry_n_2;
  wire cont0_carry_n_3;
  wire cont_0;
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
  wire read_IBUF;
  wire [3:2]NLW_cont0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cont0_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEF000400)) 
    CLEARED_BTN_i_1
       (.I0(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I1(read_IBUF),
        .I2(btn_state[1]),
        .I3(btn_state[0]),
        .I4(CLEARED_BTN),
        .O(CLEARED_BTN_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLEARED_BTN_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CLEARED_BTN_i_1_n_0),
        .Q(CLEARED_BTN),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF606)) 
    \FSM_sequential_btn_state[0]_i_1 
       (.I0(read_IBUF),
        .I1(btn_state[1]),
        .I2(btn_state[0]),
        .I3(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_btn_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_sequential_btn_state[1]_i_1 
       (.I0(read_IBUF),
        .I1(btn_state[0]),
        .I2(\FSM_sequential_btn_state[1]_i_2_n_0 ),
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
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_sequential_btn_state[1]_i_8 
       (.I0(\debouncer.cont_reg_n_0_[1] ),
        .I1(\debouncer.cont_reg_n_0_[2] ),
        .I2(\debouncer.cont_reg_n_0_[0] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry
       (.CI(1'b0),
        .CO({cont0_carry_n_0,cont0_carry_n_1,cont0_carry_n_2,cont0_carry_n_3}),
        .CYINIT(\debouncer.cont_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[4:1]),
        .S({\debouncer.cont_reg_n_0_[4] ,\debouncer.cont_reg_n_0_[3] ,\debouncer.cont_reg_n_0_[2] ,\debouncer.cont_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__0
       (.CI(cont0_carry_n_0),
        .CO({cont0_carry__0_n_0,cont0_carry__0_n_1,cont0_carry__0_n_2,cont0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S({\debouncer.cont_reg_n_0_[8] ,\debouncer.cont_reg_n_0_[7] ,\debouncer.cont_reg_n_0_[6] ,\debouncer.cont_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__1
       (.CI(cont0_carry__0_n_0),
        .CO({cont0_carry__1_n_0,cont0_carry__1_n_1,cont0_carry__1_n_2,cont0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S({\debouncer.cont_reg_n_0_[12] ,\debouncer.cont_reg_n_0_[11] ,\debouncer.cont_reg_n_0_[10] ,\debouncer.cont_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__2
       (.CI(cont0_carry__1_n_0),
        .CO({cont0_carry__2_n_0,cont0_carry__2_n_1,cont0_carry__2_n_2,cont0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S({\debouncer.cont_reg_n_0_[16] ,\debouncer.cont_reg_n_0_[15] ,\debouncer.cont_reg_n_0_[14] ,\debouncer.cont_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__3
       (.CI(cont0_carry__2_n_0),
        .CO({cont0_carry__3_n_0,cont0_carry__3_n_1,cont0_carry__3_n_2,cont0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S({\debouncer.cont_reg_n_0_[20] ,\debouncer.cont_reg_n_0_[19] ,\debouncer.cont_reg_n_0_[18] ,\debouncer.cont_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__4
       (.CI(cont0_carry__3_n_0),
        .CO({cont0_carry__4_n_0,cont0_carry__4_n_1,cont0_carry__4_n_2,cont0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S({\debouncer.cont_reg_n_0_[24] ,\debouncer.cont_reg_n_0_[23] ,\debouncer.cont_reg_n_0_[22] ,\debouncer.cont_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__5
       (.CI(cont0_carry__4_n_0),
        .CO({cont0_carry__5_n_0,cont0_carry__5_n_1,cont0_carry__5_n_2,cont0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S({\debouncer.cont_reg_n_0_[28] ,\debouncer.cont_reg_n_0_[27] ,\debouncer.cont_reg_n_0_[26] ,\debouncer.cont_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cont0_carry__6
       (.CI(cont0_carry__5_n_0),
        .CO({NLW_cont0_carry__6_CO_UNCONNECTED[3:2],cont0_carry__6_n_2,cont0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cont0_carry__6_O_UNCONNECTED[3],in5[31:29]}),
        .S({1'b0,\debouncer.cont_reg_n_0_[31] ,\debouncer.cont_reg_n_0_[30] ,\debouncer.cont_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    \debouncer.cont[0]_i_1 
       (.I0(\debouncer.cont_reg_n_0_[0] ),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[10]_i_1 
       (.I0(in5[10]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[11]_i_1 
       (.I0(in5[11]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[12]_i_1 
       (.I0(in5[12]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[13]_i_1 
       (.I0(in5[13]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[14]_i_1 
       (.I0(in5[14]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[15]_i_1 
       (.I0(in5[15]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[16]_i_1 
       (.I0(in5[16]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[17]_i_1 
       (.I0(in5[17]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[18]_i_1 
       (.I0(in5[18]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[19]_i_1 
       (.I0(in5[19]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[1]_i_1 
       (.I0(in5[1]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[20]_i_1 
       (.I0(in5[20]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[21]_i_1 
       (.I0(in5[21]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[22]_i_1 
       (.I0(in5[22]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[23]_i_1 
       (.I0(in5[23]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[24]_i_1 
       (.I0(in5[24]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[25]_i_1 
       (.I0(in5[25]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[26]_i_1 
       (.I0(in5[26]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[27]_i_1 
       (.I0(in5[27]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[28]_i_1 
       (.I0(in5[28]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[29]_i_1 
       (.I0(in5[29]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[2]_i_1 
       (.I0(in5[2]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[30]_i_1 
       (.I0(in5[30]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[30]));
  LUT4 #(
    .INIT(16'h8BBB)) 
    \debouncer.cont[31]_i_1 
       (.I0(\FSM_sequential_btn_state[1]_i_2_n_0 ),
        .I1(btn_state[0]),
        .I2(btn_state[1]),
        .I3(read_IBUF),
        .O(cont_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[31]_i_2 
       (.I0(in5[31]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[3]_i_1 
       (.I0(in5[3]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[4]_i_1 
       (.I0(in5[4]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[5]_i_1 
       (.I0(in5[5]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[6]_i_1 
       (.I0(in5[6]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[7]_i_1 
       (.I0(in5[7]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[8]_i_1 
       (.I0(in5[8]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
        .I3(btn_state[1]),
        .O(cont[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \debouncer.cont[9]_i_1 
       (.I0(in5[9]),
        .I1(btn_state[0]),
        .I2(read_IBUF),
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
  FDRE #(
    .INIT(1'b0)) 
    \debouncer.cont_reg[9] 
       (.C(CLK),
        .CE(cont_0),
        .D(cont[9]),
        .Q(\debouncer.cont_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module ROM
   (Q,
    D,
    CLK);
  output [2:0]Q;
  input [2:0]D;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire [2:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
endmodule

module counter_mod16
   (address,
    CLEARED_BTN,
    CLK);
  output [2:0]address;
  input CLEARED_BTN;
  input CLK;

  wire CLEARED_BTN;
  wire CLK;
  wire [2:0]address;
  wire \c[0]_i_1_n_0 ;
  wire \c[1]_i_1_n_0 ;
  wire \c[2]_i_1_n_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_i_1 
       (.I0(CLEARED_BTN),
        .I1(address[0]),
        .O(\c[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c[1]_i_1 
       (.I0(address[0]),
        .I1(CLEARED_BTN),
        .I2(address[1]),
        .O(\c[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \c[2]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(CLEARED_BTN),
        .I3(address[2]),
        .O(\c[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[1]_i_1_n_0 ),
        .Q(address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\c[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module insieme_cose
   (clock,
    read,
    reset,
    \output );
  input clock;
  input read;
  input reset;
  output [2:0]\output ;

  wire CLEARED_BTN;
  wire [2:0]address;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [2:0]\output ;
  wire [2:0]output_OBUF;
  wire read;
  wire read_IBUF;

initial begin
 $sdf_annotate("insieme_cose_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  counter_mod16 counter
       (.CLEARED_BTN(CLEARED_BTN),
        .CLK(clock_IBUF_BUFG),
        .address(address));
  ButtonDebouncer deb_read
       (.CLEARED_BTN(CLEARED_BTN),
        .CLK(clock_IBUF_BUFG),
        .read_IBUF(read_IBUF));
  OBUF \output[0]_INST_0 
       (.I(output_OBUF[0]),
        .O(\output [0]));
  OBUF \output[1]_INST_0 
       (.I(output_OBUF[1]),
        .O(\output [1]));
  OBUF \output[2]_INST_0 
       (.I(output_OBUF[2]),
        .O(\output [2]));
  IBUF read_IBUF_inst
       (.I(read),
        .O(read_IBUF));
  ROM rom_data
       (.CLK(clock_IBUF_BUFG),
        .D(address),
        .Q(output_OBUF));
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
