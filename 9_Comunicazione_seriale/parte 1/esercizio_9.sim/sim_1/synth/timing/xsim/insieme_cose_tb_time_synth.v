// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Dec  9 22:56:11 2022
// Host        : DESKTOP-IR34L4A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/bobbo/Desktop/esercizio_9/esercizio_9.sim/sim_1/synth/timing/xsim/insieme_cose_tb_time_synth.v
// Design      : comunicazione_seriale
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Receiver
   (errors_OBUF,
    Q,
    clk_IBUF_BUFG,
    \rdSReg_reg[9] ,
    SR);
  output [2:0]errors_OBUF;
  output [7:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]\rdSReg_reg[9] ;
  input [0:0]SR;

  wire [7:0]Q;
  wire RDA;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [2:0]errors_OBUF;
  wire [0:0]\rdSReg_reg[9] ;
  wire [7:0]sig_dbout;
  wire sig_reset;

  UARTcomponent_0 ricevitore
       (.Q(sig_dbout),
        .RDA(RDA),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .errors_OBUF(errors_OBUF),
        .\rdSReg_reg[9]_0 (\rdSReg_reg[9] ),
        .sig_reset(sig_reset));
  uc_receiver uc
       (.D(sig_dbout),
        .Q(Q),
        .RDA(RDA),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sig_reset(sig_reset));
endmodule

module UARTcomponent
   (Q,
    \tfSReg_reg[0]_0 ,
    clk_IBUF_BUFG,
    sig_wr,
    \tfSReg_reg[3]_0 ,
    \tfSReg_reg[2]_0 ,
    \tfSReg_reg[1]_0 ,
    \tfSReg_reg[5]_0 ,
    \tfSReg_reg[6]_0 ,
    \tfSReg_reg[8]_0 ,
    \tfSReg_reg[4]_0 ,
    \tfSReg_reg[7]_0 ,
    SS);
  output [0:0]Q;
  output [0:0]\tfSReg_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input sig_wr;
  input \tfSReg_reg[3]_0 ;
  input \tfSReg_reg[2]_0 ;
  input \tfSReg_reg[1]_0 ;
  input \tfSReg_reg[5]_0 ;
  input \tfSReg_reg[6]_0 ;
  input \tfSReg_reg[8]_0 ;
  input \tfSReg_reg[4]_0 ;
  input \tfSReg_reg[7]_0 ;
  input [0:0]SS;

  wire \FSM_onehot_sttCur[0]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[1]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[2]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[2]_i_2_n_0 ;
  wire \FSM_onehot_sttCur[2]_i_3_n_0 ;
  wire \FSM_onehot_sttCur[3]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[3]_i_2_n_0 ;
  wire \FSM_onehot_sttCur[3]_i_3_n_0 ;
  wire \FSM_onehot_sttCur[4]_i_1_n_0 ;
  wire \FSM_onehot_sttCur_reg_n_0_[2] ;
  wire \FSM_onehot_sttCur_reg_n_0_[4] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire clk_IBUF_BUFG;
  wire eqOp__2;
  wire [8:1]p_1_in;
  wire [3:0]plusOp;
  wire sig_wr;
  wire tClkRST;
  wire tDelayCtr0;
  wire \tDelayCtr[0]_i_3_n_0 ;
  wire [12:0]tDelayCtr_reg;
  wire \tDelayCtr_reg[0]_i_2_n_0 ;
  wire \tDelayCtr_reg[0]_i_2_n_1 ;
  wire \tDelayCtr_reg[0]_i_2_n_2 ;
  wire \tDelayCtr_reg[0]_i_2_n_3 ;
  wire \tDelayCtr_reg[0]_i_2_n_4 ;
  wire \tDelayCtr_reg[0]_i_2_n_5 ;
  wire \tDelayCtr_reg[0]_i_2_n_6 ;
  wire \tDelayCtr_reg[0]_i_2_n_7 ;
  wire \tDelayCtr_reg[12]_i_1_n_7 ;
  wire \tDelayCtr_reg[4]_i_1_n_0 ;
  wire \tDelayCtr_reg[4]_i_1_n_1 ;
  wire \tDelayCtr_reg[4]_i_1_n_2 ;
  wire \tDelayCtr_reg[4]_i_1_n_3 ;
  wire \tDelayCtr_reg[4]_i_1_n_4 ;
  wire \tDelayCtr_reg[4]_i_1_n_5 ;
  wire \tDelayCtr_reg[4]_i_1_n_6 ;
  wire \tDelayCtr_reg[4]_i_1_n_7 ;
  wire \tDelayCtr_reg[8]_i_1_n_0 ;
  wire \tDelayCtr_reg[8]_i_1_n_1 ;
  wire \tDelayCtr_reg[8]_i_1_n_2 ;
  wire \tDelayCtr_reg[8]_i_1_n_3 ;
  wire \tDelayCtr_reg[8]_i_1_n_4 ;
  wire \tDelayCtr_reg[8]_i_1_n_5 ;
  wire \tDelayCtr_reg[8]_i_1_n_6 ;
  wire \tDelayCtr_reg[8]_i_1_n_7 ;
  wire [3:0]tfCtr_reg;
  wire tfIncr;
  wire \tfSReg[0]_i_1_n_0 ;
  wire \tfSReg[8]_i_1_n_0 ;
  wire \tfSReg[9]_i_1_n_0 ;
  wire \tfSReg[9]_i_2_n_0 ;
  wire \tfSReg[9]_i_3_n_0 ;
  wire [0:0]\tfSReg_reg[0]_0 ;
  wire \tfSReg_reg[1]_0 ;
  wire \tfSReg_reg[2]_0 ;
  wire \tfSReg_reg[3]_0 ;
  wire \tfSReg_reg[4]_0 ;
  wire \tfSReg_reg[5]_0 ;
  wire \tfSReg_reg[6]_0 ;
  wire \tfSReg_reg[7]_0 ;
  wire \tfSReg_reg[8]_0 ;
  wire \tfSReg_reg_n_0_[1] ;
  wire \tfSReg_reg_n_0_[2] ;
  wire \tfSReg_reg_n_0_[3] ;
  wire \tfSReg_reg_n_0_[4] ;
  wire \tfSReg_reg_n_0_[5] ;
  wire \tfSReg_reg_n_0_[6] ;
  wire \tfSReg_reg_n_0_[7] ;
  wire \tfSReg_reg_n_0_[8] ;
  wire \tfSReg_reg_n_0_[9] ;
  wire [3:0]\NLW_tDelayCtr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tDelayCtr_reg[12]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_sttCur[0]_i_1 
       (.I0(\FSM_onehot_sttCur_reg_n_0_[4] ),
        .I1(sig_wr),
        .I2(Q),
        .O(\FSM_onehot_sttCur[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_sttCur[1]_i_1 
       (.I0(Q),
        .I1(sig_wr),
        .O(\FSM_onehot_sttCur[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_sttCur[2]_i_1 
       (.I0(\FSM_onehot_sttCur[2]_i_2_n_0 ),
        .I1(\FSM_onehot_sttCur[3]_i_3_n_0 ),
        .I2(\FSM_onehot_sttCur[2]_i_3_n_0 ),
        .I3(\FSM_onehot_sttCur[3]_i_2_n_0 ),
        .I4(\FSM_onehot_sttCur_reg_n_0_[2] ),
        .O(\FSM_onehot_sttCur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFF0000)) 
    \FSM_onehot_sttCur[2]_i_2 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .I2(tfCtr_reg[2]),
        .I3(tfCtr_reg[3]),
        .I4(tfIncr),
        .I5(tClkRST),
        .O(\FSM_onehot_sttCur[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sttCur[2]_i_3 
       (.I0(tDelayCtr_reg[2]),
        .I1(tDelayCtr_reg[1]),
        .I2(tDelayCtr_reg[0]),
        .O(\FSM_onehot_sttCur[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_sttCur[3]_i_1 
       (.I0(\FSM_onehot_sttCur_reg_n_0_[2] ),
        .I1(\FSM_onehot_sttCur[3]_i_2_n_0 ),
        .I2(tDelayCtr_reg[0]),
        .I3(tDelayCtr_reg[1]),
        .I4(tDelayCtr_reg[2]),
        .I5(\FSM_onehot_sttCur[3]_i_3_n_0 ),
        .O(\FSM_onehot_sttCur[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_sttCur[3]_i_2 
       (.I0(tDelayCtr_reg[7]),
        .I1(tDelayCtr_reg[8]),
        .I2(tDelayCtr_reg[9]),
        .I3(tDelayCtr_reg[10]),
        .I4(tDelayCtr_reg[12]),
        .I5(tDelayCtr_reg[11]),
        .O(\FSM_onehot_sttCur[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_sttCur[3]_i_3 
       (.I0(tDelayCtr_reg[6]),
        .I1(tDelayCtr_reg[5]),
        .I2(tDelayCtr_reg[4]),
        .I3(tDelayCtr_reg[3]),
        .O(\FSM_onehot_sttCur[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_sttCur[4]_i_1 
       (.I0(sig_wr),
        .I1(\FSM_onehot_sttCur_reg_n_0_[4] ),
        .I2(eqOp__2),
        .I3(tfIncr),
        .O(\FSM_onehot_sttCur[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_sttCur[4]_i_2 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .I2(tfCtr_reg[2]),
        .I3(tfCtr_reg[3]),
        .O(eqOp__2));
  (* FSM_ENCODED_STATES = "stttransfer:00010,sttdelay:00100,sttshift:01000,sttidle:00001,sttwaitwrite:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sttCur_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[0]_i_1_n_0 ),
        .Q(Q),
        .S(SS));
  (* FSM_ENCODED_STATES = "stttransfer:00010,sttdelay:00100,sttshift:01000,sttidle:00001,sttwaitwrite:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[1]_i_1_n_0 ),
        .Q(tClkRST),
        .R(SS));
  (* FSM_ENCODED_STATES = "stttransfer:00010,sttdelay:00100,sttshift:01000,sttidle:00001,sttwaitwrite:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[2]_i_1_n_0 ),
        .Q(\FSM_onehot_sttCur_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "stttransfer:00010,sttdelay:00100,sttshift:01000,sttidle:00001,sttwaitwrite:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[3]_i_1_n_0 ),
        .Q(tfIncr),
        .R(SS));
  (* FSM_ENCODED_STATES = "stttransfer:00010,sttdelay:00100,sttshift:01000,sttidle:00001,sttwaitwrite:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[4]_i_1_n_0 ),
        .Q(\FSM_onehot_sttCur_reg_n_0_[4] ),
        .R(SS));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \tDelayCtr[0]_i_1 
       (.I0(tClkRST),
        .I1(Q),
        .I2(\FSM_onehot_sttCur[3]_i_2_n_0 ),
        .I3(\FSM_onehot_sttCur[2]_i_3_n_0 ),
        .I4(\FSM_onehot_sttCur[3]_i_3_n_0 ),
        .O(tDelayCtr0));
  LUT1 #(
    .INIT(2'h1)) 
    \tDelayCtr[0]_i_3 
       (.I0(tDelayCtr_reg[0]),
        .O(\tDelayCtr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[0]_i_2_n_7 ),
        .Q(tDelayCtr_reg[0]),
        .R(tDelayCtr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tDelayCtr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\tDelayCtr_reg[0]_i_2_n_0 ,\tDelayCtr_reg[0]_i_2_n_1 ,\tDelayCtr_reg[0]_i_2_n_2 ,\tDelayCtr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\tDelayCtr_reg[0]_i_2_n_4 ,\tDelayCtr_reg[0]_i_2_n_5 ,\tDelayCtr_reg[0]_i_2_n_6 ,\tDelayCtr_reg[0]_i_2_n_7 }),
        .S({tDelayCtr_reg[3:1],\tDelayCtr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[8]_i_1_n_5 ),
        .Q(tDelayCtr_reg[10]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[8]_i_1_n_4 ),
        .Q(tDelayCtr_reg[11]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[12]_i_1_n_7 ),
        .Q(tDelayCtr_reg[12]),
        .R(tDelayCtr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tDelayCtr_reg[12]_i_1 
       (.CI(\tDelayCtr_reg[8]_i_1_n_0 ),
        .CO(\NLW_tDelayCtr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tDelayCtr_reg[12]_i_1_O_UNCONNECTED [3:1],\tDelayCtr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,tDelayCtr_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[0]_i_2_n_6 ),
        .Q(tDelayCtr_reg[1]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[0]_i_2_n_5 ),
        .Q(tDelayCtr_reg[2]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[0]_i_2_n_4 ),
        .Q(tDelayCtr_reg[3]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[4]_i_1_n_7 ),
        .Q(tDelayCtr_reg[4]),
        .R(tDelayCtr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tDelayCtr_reg[4]_i_1 
       (.CI(\tDelayCtr_reg[0]_i_2_n_0 ),
        .CO({\tDelayCtr_reg[4]_i_1_n_0 ,\tDelayCtr_reg[4]_i_1_n_1 ,\tDelayCtr_reg[4]_i_1_n_2 ,\tDelayCtr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tDelayCtr_reg[4]_i_1_n_4 ,\tDelayCtr_reg[4]_i_1_n_5 ,\tDelayCtr_reg[4]_i_1_n_6 ,\tDelayCtr_reg[4]_i_1_n_7 }),
        .S(tDelayCtr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[4]_i_1_n_6 ),
        .Q(tDelayCtr_reg[5]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[4]_i_1_n_5 ),
        .Q(tDelayCtr_reg[6]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[4]_i_1_n_4 ),
        .Q(tDelayCtr_reg[7]),
        .R(tDelayCtr0));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[8]_i_1_n_7 ),
        .Q(tDelayCtr_reg[8]),
        .R(tDelayCtr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tDelayCtr_reg[8]_i_1 
       (.CI(\tDelayCtr_reg[4]_i_1_n_0 ),
        .CO({\tDelayCtr_reg[8]_i_1_n_0 ,\tDelayCtr_reg[8]_i_1_n_1 ,\tDelayCtr_reg[8]_i_1_n_2 ,\tDelayCtr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tDelayCtr_reg[8]_i_1_n_4 ,\tDelayCtr_reg[8]_i_1_n_5 ,\tDelayCtr_reg[8]_i_1_n_6 ,\tDelayCtr_reg[8]_i_1_n_7 }),
        .S(tDelayCtr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \tDelayCtr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tDelayCtr_reg[8]_i_1_n_6 ),
        .Q(tDelayCtr_reg[9]),
        .R(tDelayCtr0));
  LUT1 #(
    .INIT(2'h1)) 
    \tfCtr[0]_i_1 
       (.I0(tfCtr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tfCtr[1]_i_1 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tfCtr[2]_i_1 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .I2(tfCtr_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tfCtr[3]_i_1 
       (.I0(tfCtr_reg[1]),
        .I1(tfCtr_reg[0]),
        .I2(tfCtr_reg[2]),
        .I3(tfCtr_reg[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tfIncr),
        .D(plusOp[0]),
        .Q(tfCtr_reg[0]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tfIncr),
        .D(plusOp[1]),
        .Q(tfCtr_reg[1]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tfIncr),
        .D(plusOp[2]),
        .Q(tfCtr_reg[2]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tfIncr),
        .D(plusOp[3]),
        .Q(tfCtr_reg[3]),
        .R(tClkRST));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \tfSReg[0]_i_1 
       (.I0(\tfSReg_reg[0]_0 ),
        .I1(\tfSReg_reg_n_0_[1] ),
        .I2(tClkRST),
        .I3(tfIncr),
        .O(\tfSReg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[1]_i_1 
       (.I0(\tfSReg_reg[1]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[2] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[2]_i_1 
       (.I0(\tfSReg_reg[2]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[3] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[3]_i_1 
       (.I0(\tfSReg_reg[3]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[4] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[4]_i_1 
       (.I0(\tfSReg_reg[4]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[5] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[5]_i_1 
       (.I0(\tfSReg_reg[5]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[6] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[6]_i_1 
       (.I0(\tfSReg_reg[6]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[7] ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[7]_i_1 
       (.I0(\tfSReg_reg[7]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[8] ),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \tfSReg[8]_i_1 
       (.I0(tClkRST),
        .I1(tfIncr),
        .O(\tfSReg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tfSReg[8]_i_2 
       (.I0(\tfSReg_reg[8]_0 ),
        .I1(tClkRST),
        .I2(\tfSReg_reg_n_0_[9] ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hC3FFC3AA)) 
    \tfSReg[9]_i_1 
       (.I0(\tfSReg_reg_n_0_[9] ),
        .I1(\tfSReg[9]_i_2_n_0 ),
        .I2(\tfSReg[9]_i_3_n_0 ),
        .I3(tClkRST),
        .I4(tfIncr),
        .O(\tfSReg[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tfSReg[9]_i_2 
       (.I0(\tfSReg_reg[3]_0 ),
        .I1(\tfSReg_reg[2]_0 ),
        .I2(\tfSReg_reg[1]_0 ),
        .I3(\tfSReg_reg[5]_0 ),
        .O(\tfSReg[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tfSReg[9]_i_3 
       (.I0(\tfSReg_reg[6]_0 ),
        .I1(\tfSReg_reg[8]_0 ),
        .I2(\tfSReg_reg[4]_0 ),
        .I3(\tfSReg_reg[7]_0 ),
        .O(\tfSReg[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tfSReg[0]_i_1_n_0 ),
        .Q(\tfSReg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\tfSReg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\tfSReg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\tfSReg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\tfSReg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\tfSReg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\tfSReg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\tfSReg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\tfSReg[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\tfSReg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tfSReg[9]_i_1_n_0 ),
        .Q(\tfSReg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "UARTcomponent" *) 
module UARTcomponent_0
   (errors_OBUF,
    RDA,
    Q,
    clk_IBUF_BUFG,
    sig_reset,
    \rdSReg_reg[9]_0 );
  output [2:0]errors_OBUF;
  output RDA;
  output [7:0]Q;
  input clk_IBUF_BUFG;
  input sig_reset;
  input [0:0]\rdSReg_reg[9]_0 ;

  wire CE;
  wire \FSM_onehot_strCur[0]_i_1_n_0 ;
  wire \FSM_onehot_strCur[1]_i_1_n_0 ;
  wire \FSM_onehot_strCur[2]_i_1_n_0 ;
  wire \FSM_onehot_strCur[2]_i_2_n_0 ;
  wire \FSM_onehot_strCur[3]_i_1_n_0 ;
  wire \FSM_onehot_strCur[4]_i_1_n_0 ;
  wire \FSM_onehot_strCur[4]_i_2_n_0 ;
  wire \FSM_onehot_strCur[5]_i_1_n_0 ;
  wire \FSM_onehot_strCur_reg_n_0_[1] ;
  wire \FSM_onehot_strCur_reg_n_0_[2] ;
  wire \FSM_onehot_strCur_reg_n_0_[4] ;
  wire PE_i_2_n_0;
  wire [7:0]Q;
  wire RDA;
  wire RDA_i_1_n_0;
  wire clkDiv0;
  wire \clkDiv[9]_i_3_n_0 ;
  wire \clkDiv[9]_i_4_n_0 ;
  wire [9:0]clkDiv_reg;
  wire clk_IBUF_BUFG;
  wire ctRst;
  wire [2:0]ctr_reg;
  wire [3:0]dataCtr_reg;
  wire dataIncr;
  wire dataRST;
  wire eqOp0_in;
  wire [2:0]errors_OBUF;
  wire frameError;
  wire p_0_in;
  wire p_0_in7_in;
  wire [8:8]p_0_in__0;
  wire p_1_in9_in;
  wire p_2_in8_in;
  wire p_3_in13_in;
  wire p_4_in10_in;
  wire p_5_in12_in;
  wire p_6_in11_in;
  wire parError;
  wire [9:0]plusOp__0;
  wire [3:0]plusOp__1;
  wire [3:0]plusOp__2;
  wire rdReg0;
  wire [0:0]\rdSReg_reg[9]_0 ;
  wire \rdSReg_reg_n_0_[0] ;
  wire \rdSReg_reg_n_0_[8] ;
  wire sig_reset;

  LUT1 #(
    .INIT(2'h1)) 
    FE_i_1
       (.I0(p_0_in__0),
        .O(frameError));
  FDCE #(
    .INIT(1'b0)) 
    FE_reg
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .CLR(sig_reset),
        .D(frameError),
        .Q(errors_OBUF[1]));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_strCur[0]_i_1 
       (.I0(\rdSReg_reg[9]_0 ),
        .I1(ctRst),
        .I2(CE),
        .O(\FSM_onehot_strCur[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_strCur[1]_i_1 
       (.I0(\FSM_onehot_strCur[2]_i_2_n_0 ),
        .I1(\FSM_onehot_strCur_reg_n_0_[1] ),
        .I2(\rdSReg_reg[9]_0 ),
        .I3(ctRst),
        .O(\FSM_onehot_strCur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \FSM_onehot_strCur[2]_i_1 
       (.I0(dataIncr),
        .I1(\FSM_onehot_strCur_reg_n_0_[1] ),
        .I2(\FSM_onehot_strCur[2]_i_2_n_0 ),
        .I3(\FSM_onehot_strCur[4]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(\FSM_onehot_strCur_reg_n_0_[2] ),
        .O(\FSM_onehot_strCur[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_strCur[2]_i_2 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .I3(p_0_in),
        .O(\FSM_onehot_strCur[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_onehot_strCur[3]_i_1 
       (.I0(\FSM_onehot_strCur_reg_n_0_[2] ),
        .I1(dataCtr_reg[3]),
        .I2(dataCtr_reg[2]),
        .I3(dataCtr_reg[1]),
        .I4(dataCtr_reg[0]),
        .O(\FSM_onehot_strCur[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_onehot_strCur[4]_i_1 
       (.I0(\FSM_onehot_strCur[4]_i_2_n_0 ),
        .I1(\FSM_onehot_strCur_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_strCur_reg_n_0_[4] ),
        .O(\FSM_onehot_strCur[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_strCur[4]_i_2 
       (.I0(dataCtr_reg[0]),
        .I1(dataCtr_reg[1]),
        .I2(dataCtr_reg[2]),
        .I3(dataCtr_reg[3]),
        .O(\FSM_onehot_strCur[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_strCur[5]_i_1 
       (.I0(\FSM_onehot_strCur_reg_n_0_[4] ),
        .I1(p_0_in),
        .O(\FSM_onehot_strCur[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_strCur_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[0]_i_1_n_0 ),
        .Q(ctRst),
        .S(sig_reset));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_strCur_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[1]_i_1_n_0 ),
        .Q(\FSM_onehot_strCur_reg_n_0_[1] ),
        .R(sig_reset));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_strCur_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[2]_i_1_n_0 ),
        .Q(\FSM_onehot_strCur_reg_n_0_[2] ),
        .R(sig_reset));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_strCur_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[3]_i_1_n_0 ),
        .Q(CE),
        .R(sig_reset));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_strCur_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[4]_i_1_n_0 ),
        .Q(\FSM_onehot_strCur_reg_n_0_[4] ),
        .R(sig_reset));
  (* FSM_ENCODED_STATES = "stridle:000001,streightdelay:000010,strcheckstop:001000,strwaitfor0:000100,strgetdata:100000,strwaitfor1:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_strCur_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_strCur[5]_i_1_n_0 ),
        .Q(dataIncr),
        .R(sig_reset));
  FDCE #(
    .INIT(1'b0)) 
    OE_reg
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .CLR(sig_reset),
        .D(RDA),
        .Q(errors_OBUF[0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    PE_i_1
       (.I0(p_0_in7_in),
        .I1(PE_i_2_n_0),
        .I2(p_1_in9_in),
        .I3(p_2_in8_in),
        .I4(p_6_in11_in),
        .I5(p_4_in10_in),
        .O(parError));
  LUT4 #(
    .INIT(16'h6996)) 
    PE_i_2
       (.I0(p_3_in13_in),
        .I1(p_5_in12_in),
        .I2(\rdSReg_reg_n_0_[8] ),
        .I3(\rdSReg_reg_n_0_[0] ),
        .O(PE_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    PE_reg
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .CLR(sig_reset),
        .D(parError),
        .Q(errors_OBUF[2]));
  LUT2 #(
    .INIT(4'hE)) 
    RDA_i_1
       (.I0(CE),
        .I1(RDA),
        .O(RDA_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    RDA_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sig_reset),
        .D(RDA_i_1_n_0),
        .Q(RDA));
  LUT1 #(
    .INIT(2'h1)) 
    \clkDiv[0]_i_1 
       (.I0(clkDiv_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkDiv[1]_i_1 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[2]_i_1 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[3]_i_1 
       (.I0(clkDiv_reg[1]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[2]),
        .I3(clkDiv_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clkDiv[4]_i_1 
       (.I0(clkDiv_reg[2]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[1]),
        .I3(clkDiv_reg[3]),
        .I4(clkDiv_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clkDiv[5]_i_1 
       (.I0(clkDiv_reg[3]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[0]),
        .I3(clkDiv_reg[2]),
        .I4(clkDiv_reg[4]),
        .I5(clkDiv_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkDiv[6]_i_1 
       (.I0(\clkDiv[9]_i_4_n_0 ),
        .I1(clkDiv_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[7]_i_1 
       (.I0(\clkDiv[9]_i_4_n_0 ),
        .I1(clkDiv_reg[6]),
        .I2(clkDiv_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[8]_i_1 
       (.I0(clkDiv_reg[6]),
        .I1(\clkDiv[9]_i_4_n_0 ),
        .I2(clkDiv_reg[7]),
        .I3(clkDiv_reg[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \clkDiv[9]_i_1 
       (.I0(clkDiv_reg[1]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[3]),
        .I3(clkDiv_reg[2]),
        .I4(\clkDiv[9]_i_3_n_0 ),
        .I5(ctRst),
        .O(clkDiv0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clkDiv[9]_i_2 
       (.I0(clkDiv_reg[7]),
        .I1(\clkDiv[9]_i_4_n_0 ),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[8]),
        .I4(clkDiv_reg[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \clkDiv[9]_i_3 
       (.I0(clkDiv_reg[4]),
        .I1(clkDiv_reg[5]),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[7]),
        .I4(clkDiv_reg[9]),
        .I5(clkDiv_reg[8]),
        .O(\clkDiv[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clkDiv[9]_i_4 
       (.I0(clkDiv_reg[5]),
        .I1(clkDiv_reg[3]),
        .I2(clkDiv_reg[1]),
        .I3(clkDiv_reg[0]),
        .I4(clkDiv_reg[2]),
        .I5(clkDiv_reg[4]),
        .O(\clkDiv[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(clkDiv_reg[0]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(clkDiv_reg[1]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(clkDiv_reg[2]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(clkDiv_reg[3]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(clkDiv_reg[4]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(clkDiv_reg[5]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(clkDiv_reg[6]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(clkDiv_reg[7]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[8]),
        .Q(clkDiv_reg[8]),
        .R(clkDiv0));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[9]),
        .Q(clkDiv_reg[9]),
        .R(clkDiv0));
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[2]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[2]),
        .O(plusOp__1[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ctr[3]_i_1 
       (.I0(\clkDiv[9]_i_3_n_0 ),
        .I1(clkDiv_reg[2]),
        .I2(clkDiv_reg[3]),
        .I3(clkDiv_reg[0]),
        .I4(clkDiv_reg[1]),
        .O(eqOp0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctr[3]_i_2 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .I3(p_0_in),
        .O(plusOp__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp0_in),
        .D(plusOp__1[0]),
        .Q(ctr_reg[0]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp0_in),
        .D(plusOp__1[1]),
        .Q(ctr_reg[1]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp0_in),
        .D(plusOp__1[2]),
        .Q(ctr_reg[2]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp0_in),
        .D(plusOp__1[3]),
        .Q(p_0_in),
        .R(ctRst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dataCtr[0]_i_1 
       (.I0(dataCtr_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dataCtr[1]_i_1 
       (.I0(dataCtr_reg[0]),
        .I1(dataCtr_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dataCtr[2]_i_1 
       (.I0(dataCtr_reg[0]),
        .I1(dataCtr_reg[1]),
        .I2(dataCtr_reg[2]),
        .O(plusOp__2[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \dataCtr[3]_i_1 
       (.I0(ctRst),
        .I1(\FSM_onehot_strCur_reg_n_0_[1] ),
        .O(dataRST));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dataCtr[3]_i_2 
       (.I0(dataCtr_reg[1]),
        .I1(dataCtr_reg[0]),
        .I2(dataCtr_reg[2]),
        .I3(dataCtr_reg[3]),
        .O(plusOp__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(plusOp__2[0]),
        .Q(dataCtr_reg[0]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(plusOp__2[1]),
        .Q(dataCtr_reg[1]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(plusOp__2[2]),
        .Q(dataCtr_reg[2]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(plusOp__2[3]),
        .Q(dataCtr_reg[3]),
        .R(dataRST));
  LUT2 #(
    .INIT(4'h2)) 
    \rdReg[7]_i_1 
       (.I0(CE),
        .I1(sig_reset),
        .O(rdReg0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(\rdSReg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_6_in11_in),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_5_in12_in),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_4_in10_in),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_3_in13_in),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_2_in8_in),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_1_in9_in),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rdReg0),
        .D(p_0_in7_in),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_6_in11_in),
        .Q(\rdSReg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_5_in12_in),
        .Q(p_6_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_4_in10_in),
        .Q(p_5_in12_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_3_in13_in),
        .Q(p_4_in10_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_2_in8_in),
        .Q(p_3_in13_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_1_in9_in),
        .Q(p_2_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_0_in7_in),
        .Q(p_1_in9_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(\rdSReg_reg_n_0_[8] ),
        .Q(p_0_in7_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(p_0_in__0),
        .Q(\rdSReg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(dataIncr),
        .D(\rdSReg_reg[9]_0 ),
        .Q(p_0_in__0),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module comunicazione_seriale
   (reset,
    clk,
    wr_button,
    \input ,
    LED,
    errors);
  input reset;
  input clk;
  input wr_button;
  input [7:0]\input ;
  output [7:0]LED;
  output [2:0]errors;

  wire [7:0]LED;
  wire [7:0]LED_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]errors;
  wire [2:0]errors_OBUF;
  wire [7:0]\input ;
  wire [9:9]p_0_in__0;
  wire reset;
  wire reset_IBUF;
  wire \tfSReg_reg[1]_i_2_n_0 ;
  wire \tfSReg_reg[2]_i_2_n_0 ;
  wire \tfSReg_reg[3]_i_2_n_0 ;
  wire \tfSReg_reg[4]_i_2_n_0 ;
  wire \tfSReg_reg[5]_i_2_n_0 ;
  wire \tfSReg_reg[6]_i_2_n_0 ;
  wire \tfSReg_reg[7]_i_2_n_0 ;
  wire \tfSReg_reg[8]_i_3_n_0 ;
  wire wr_button;
  wire wr_button_IBUF;
  wire wr_cleared;

initial begin
 $sdf_annotate("insieme_cose_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  pulitore_switch button
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .wr_button_IBUF(wr_button_IBUF),
        .wr_cleared(wr_cleared));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \errors_OBUF[0]_inst 
       (.I(errors_OBUF[0]),
        .O(errors[0]));
  OBUF \errors_OBUF[1]_inst 
       (.I(errors_OBUF[1]),
        .O(errors[1]));
  OBUF \errors_OBUF[2]_inst 
       (.I(errors_OBUF[2]),
        .O(errors[2]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Receiver ricevitore
       (.Q(LED_OBUF),
        .SR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .errors_OBUF(errors_OBUF),
        .\rdSReg_reg[9] (p_0_in__0));
  IBUF \tfSReg_reg[1]_i_2 
       (.I(\input [0]),
        .O(\tfSReg_reg[1]_i_2_n_0 ));
  IBUF \tfSReg_reg[2]_i_2 
       (.I(\input [1]),
        .O(\tfSReg_reg[2]_i_2_n_0 ));
  IBUF \tfSReg_reg[3]_i_2 
       (.I(\input [2]),
        .O(\tfSReg_reg[3]_i_2_n_0 ));
  IBUF \tfSReg_reg[4]_i_2 
       (.I(\input [3]),
        .O(\tfSReg_reg[4]_i_2_n_0 ));
  IBUF \tfSReg_reg[5]_i_2 
       (.I(\input [4]),
        .O(\tfSReg_reg[5]_i_2_n_0 ));
  IBUF \tfSReg_reg[6]_i_2 
       (.I(\input [5]),
        .O(\tfSReg_reg[6]_i_2_n_0 ));
  IBUF \tfSReg_reg[7]_i_2 
       (.I(\input [6]),
        .O(\tfSReg_reg[7]_i_2_n_0 ));
  IBUF \tfSReg_reg[8]_i_3 
       (.I(\input [7]),
        .O(\tfSReg_reg[8]_i_3_n_0 ));
  trasmettitore trasmitter
       (.SR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\tfSReg_reg[0] (p_0_in__0),
        .\tfSReg_reg[1] (\tfSReg_reg[1]_i_2_n_0 ),
        .\tfSReg_reg[2] (\tfSReg_reg[2]_i_2_n_0 ),
        .\tfSReg_reg[3] (\tfSReg_reg[3]_i_2_n_0 ),
        .\tfSReg_reg[4] (\tfSReg_reg[4]_i_2_n_0 ),
        .\tfSReg_reg[5] (\tfSReg_reg[5]_i_2_n_0 ),
        .\tfSReg_reg[6] (\tfSReg_reg[6]_i_2_n_0 ),
        .\tfSReg_reg[7] (\tfSReg_reg[7]_i_2_n_0 ),
        .\tfSReg_reg[8] (\tfSReg_reg[8]_i_3_n_0 ),
        .wr_cleared(wr_cleared));
  IBUF wr_button_IBUF_inst
       (.I(wr_button),
        .O(wr_button_IBUF));
endmodule

module control_unit
   (sig_wr,
    SS,
    wr_cleared,
    Q,
    SR,
    clk_IBUF_BUFG);
  output sig_wr;
  output [0:0]SS;
  input wr_cleared;
  input [0:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire WR_reg_i_1_n_0;
  wire clk_IBUF_BUFG;
  wire [0:0]curr_state_reg;
  wire next_state;
  wire sig_wr;
  wire uart_reset_reg_i_1_n_0;
  wire wr_cleared;

  (* FSM_ENCODED_STATES = "idle:001,non_disponibile:010,disponibile:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,non_disponibile:010,disponibile:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(curr_state_reg),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,non_disponibile:010,disponibile:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(curr_state_reg),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFEAC0EA)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(curr_state_reg),
        .I1(wr_cleared),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(Q),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(next_state));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    WR_reg
       (.CLR(1'b0),
        .D(curr_state_reg),
        .G(WR_reg_i_1_n_0),
        .GE(1'b1),
        .Q(sig_wr));
  LUT2 #(
    .INIT(4'hE)) 
    WR_reg_i_1
       (.I0(curr_state_reg),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(WR_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    uart_reset_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .G(uart_reset_reg_i_1_n_0),
        .GE(1'b1),
        .Q(SS));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    uart_reset_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(curr_state_reg),
        .O(uart_reset_reg_i_1_n_0));
endmodule

module pulitore_switch
   (wr_cleared,
    clk_IBUF_BUFG,
    wr_button_IBUF);
  output wr_cleared;
  input clk_IBUF_BUFG;
  input wr_button_IBUF;

  wire clk_IBUF_BUFG;
  wire output0;
  wire premuto;
  wire wr_button_IBUF;
  wire wr_cleared;

  LUT2 #(
    .INIT(4'h2)) 
    output_i_1
       (.I0(wr_button_IBUF),
        .I1(premuto),
        .O(output0));
  FDRE #(
    .INIT(1'b0)) 
    output_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(output0),
        .Q(wr_cleared),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    premuto_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(wr_button_IBUF),
        .Q(premuto),
        .R(1'b0));
endmodule

module trasmettitore
   (\tfSReg_reg[0] ,
    clk_IBUF_BUFG,
    wr_cleared,
    \tfSReg_reg[3] ,
    \tfSReg_reg[2] ,
    \tfSReg_reg[1] ,
    \tfSReg_reg[5] ,
    \tfSReg_reg[6] ,
    \tfSReg_reg[8] ,
    \tfSReg_reg[4] ,
    \tfSReg_reg[7] ,
    SR);
  output [0:0]\tfSReg_reg[0] ;
  input clk_IBUF_BUFG;
  input wr_cleared;
  input \tfSReg_reg[3] ;
  input \tfSReg_reg[2] ;
  input \tfSReg_reg[1] ;
  input \tfSReg_reg[5] ;
  input \tfSReg_reg[6] ;
  input \tfSReg_reg[8] ;
  input \tfSReg_reg[4] ;
  input \tfSReg_reg[7] ;
  input [0:0]SR;

  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire sig_reset;
  wire sig_tbe;
  wire sig_wr;
  wire [0:0]\tfSReg_reg[0] ;
  wire \tfSReg_reg[1] ;
  wire \tfSReg_reg[2] ;
  wire \tfSReg_reg[3] ;
  wire \tfSReg_reg[4] ;
  wire \tfSReg_reg[5] ;
  wire \tfSReg_reg[6] ;
  wire \tfSReg_reg[7] ;
  wire \tfSReg_reg[8] ;
  wire wr_cleared;

  UARTcomponent UART
       (.Q(sig_tbe),
        .SS(sig_reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sig_wr(sig_wr),
        .\tfSReg_reg[0]_0 (\tfSReg_reg[0] ),
        .\tfSReg_reg[1]_0 (\tfSReg_reg[1] ),
        .\tfSReg_reg[2]_0 (\tfSReg_reg[2] ),
        .\tfSReg_reg[3]_0 (\tfSReg_reg[3] ),
        .\tfSReg_reg[4]_0 (\tfSReg_reg[4] ),
        .\tfSReg_reg[5]_0 (\tfSReg_reg[5] ),
        .\tfSReg_reg[6]_0 (\tfSReg_reg[6] ),
        .\tfSReg_reg[7]_0 (\tfSReg_reg[7] ),
        .\tfSReg_reg[8]_0 (\tfSReg_reg[8] ));
  control_unit controllo
       (.Q(sig_tbe),
        .SR(SR),
        .SS(sig_reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sig_wr(sig_wr),
        .wr_cleared(wr_cleared));
endmodule

module uc_receiver
   (sig_reset,
    Q,
    RDA,
    SR,
    clk_IBUF_BUFG,
    D);
  output sig_reset;
  output [7:0]Q;
  input RDA;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire [7:0]Q;
  wire RDA;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire leds_temp;
  wire next_state;
  wire sig_reset;
  wire uart_reset_reg_i_1__0_n_0;

  (* FSM_ENCODED_STATES = "idle:001,ricezione:010,disponibile:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,ricezione:010,disponibile:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(leds_temp),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,ricezione:010,disponibile:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(leds_temp),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_next_state_reg[2]_i_1__0 
       (.I0(leds_temp),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I2(RDA),
        .I3(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .O(next_state));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \leds_temp_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(leds_temp),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    uart_reset_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .G(uart_reset_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(sig_reset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    uart_reset_reg_i_1__0
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(uart_reset_reg_i_1__0_n_0));
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
