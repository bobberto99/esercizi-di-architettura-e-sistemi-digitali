// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Oct 29 18:14:03 2022
// Host        : DESKTOP-1RVA572 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Progetti_Xilinx/3_Riconoscitore/3_Riconoscitore.sim/sim_1/synth/timing/xsim/Riconoscitore_2modi_TB_time_synth.v
// Design      : Riconoscitore_2modi
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Riconoscitore_2modi
   (i,
    RST,
    CLK,
    M,
    uscita);
  input i;
  input RST;
  input CLK;
  input M;
  output uscita;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire \FSM_onehot_stato_corrente[10]_i_1_n_0 ;
  wire \FSM_onehot_stato_corrente[11]_i_1_n_0 ;
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
  wire M;
  wire M_IBUF;
  wire RST;
  wire RST_IBUF;
  wire Y;
  wire i;
  wire i_IBUF;
  wire uscita;
  wire uscita_OBUF;

initial begin
 $sdf_annotate("Riconoscitore_2modi_TB_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[10]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[11]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \FSM_onehot_stato_corrente[1]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[7] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I2(M_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .O(\FSM_onehot_stato_corrente[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_stato_corrente[2]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[3]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[4]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_stato_corrente[5]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .I1(i_IBUF),
        .O(\FSM_onehot_stato_corrente[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_stato_corrente[6]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .I1(i_IBUF),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .O(\FSM_onehot_stato_corrente[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_stato_corrente[7]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[6] ),
        .I1(i_IBUF),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .O(\FSM_onehot_stato_corrente[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \FSM_onehot_stato_corrente[8]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .I2(M_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .I4(i_IBUF),
        .O(\FSM_onehot_stato_corrente[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \FSM_onehot_stato_corrente[9]_i_1 
       (.I0(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .I2(i_IBUF),
        .I3(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .O(\FSM_onehot_stato_corrente[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_stato_corrente_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[0] ),
        .S(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[10]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[10] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[11]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[1]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[1] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[2]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[2] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[3]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[3] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[4]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[5]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[5] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[6]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[6] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[7]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[7] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[8]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[8] ),
        .R(RST_IBUF));
  (* FSM_ENCODED_STATES = "s3:010000000000,s4:100000000000,s2:001000000000,s11:000010000000,s10:000001000000,s1:000100000000,s0:000000000001,s9:000000100000,s7:000000001000,s6:000000000100,s8:000000010000,s5:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stato_corrente_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_stato_corrente[9]_i_1_n_0 ),
        .Q(\FSM_onehot_stato_corrente_reg_n_0_[9] ),
        .R(RST_IBUF));
  IBUF M_IBUF_inst
       (.I(M),
        .O(M_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  IBUF i_IBUF_inst
       (.I(i),
        .O(i_IBUF));
  OBUF uscita_OBUF_inst
       (.I(uscita_OBUF),
        .O(uscita));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    uscita_i_1
       (.I0(i_IBUF),
        .I1(\FSM_onehot_stato_corrente_reg_n_0_[11] ),
        .I2(\FSM_onehot_stato_corrente_reg_n_0_[4] ),
        .O(Y));
  FDRE #(
    .INIT(1'b0)) 
    uscita_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Y),
        .Q(uscita_OBUF),
        .R(RST_IBUF));
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
