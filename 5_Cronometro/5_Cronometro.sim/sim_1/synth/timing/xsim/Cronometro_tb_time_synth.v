// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Dec  1 10:33:49 2022
// Host        : DESKTOP-IR34L4A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/bobbo/Documents/5_Cronometro/5_Cronometro.sim/sim_1/synth/timing/xsim/Cronometro_tb_time_synth.v
// Design      : cronometro_con_display
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter_mod24_struct
   (u_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    en,
    seconds,
    u_reg_5,
    u_reg_6);
  output u_reg;
  output u_reg_0;
  output [0:0]u_reg_1;
  output [1:0]u_reg_2;
  input u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input en;
  input [0:0]seconds;
  input [0:0]u_reg_5;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]seconds;
  wire u_reg;
  wire u_reg_0;
  wire [0:0]u_reg_1;
  wire [1:0]u_reg_2;
  wire u_reg_3;
  wire u_reg_4;
  wire [0:0]u_reg_5;
  wire u_reg_6;

  Counter_mod32_struct contatore
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .seconds(seconds),
        .u_reg(u_reg),
        .u_reg_0(u_reg_0),
        .u_reg_1(u_reg_1),
        .u_reg_2(u_reg_2),
        .u_reg_3(u_reg_3),
        .u_reg_4(u_reg_4),
        .u_reg_5(u_reg_5),
        .u_reg_6(u_reg_6));
endmodule

module Counter_mod32_struct
   (u_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    en,
    seconds,
    u_reg_5,
    u_reg_6);
  output u_reg;
  output u_reg_0;
  output [0:0]u_reg_1;
  output [1:0]u_reg_2;
  input u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input en;
  input [0:0]seconds;
  input [0:0]u_reg_5;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire counter_0_n_1;
  wire counter_0_n_2;
  wire counter_2_n_1;
  wire en;
  wire [4:1]hours;
  wire [0:0]seconds;
  wire u_reg;
  wire u_reg_0;
  wire [0:0]u_reg_1;
  wire [1:0]u_reg_2;
  wire u_reg_3;
  wire u_reg_4;
  wire [0:0]u_reg_5;
  wire u_reg_6;

  FF_D_8 counter_0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_reg(counter_0_n_1),
        .en(en),
        .hours(hours),
        .seconds(seconds),
        .u_reg_0(u_reg),
        .u_reg_1(counter_0_n_2),
        .u_reg_2(u_reg_0),
        .u_reg_3(u_reg_3),
        .u_reg_4(u_reg_4),
        .u_reg_5(u_reg_5),
        .u_reg_6(u_reg_6));
  FF_D_9 counter_1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .hours(hours[1]),
        .seconds(seconds),
        .\temp_unita_reg[0] (hours[4:2]),
        .u_reg_0(u_reg_2[0]),
        .u_reg_1(u_reg_3),
        .u_reg_2(u_reg_5),
        .u_reg_3(u_reg));
  FF_D_10 counter_2
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .hours({hours[4:3],hours[1]}),
        .u_reg_0(hours[2]),
        .u_reg_1(counter_2_n_1),
        .u_reg_2(u_reg_1),
        .u_reg_3(u_reg_2[1]),
        .u_reg_4(u_reg_3),
        .u_reg_5(counter_0_n_1),
        .u_reg_6(u_reg),
        .u_reg_7(u_reg_6));
  FF_D_11 counter_3
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .hours(hours[3]),
        .u_reg_0(u_reg_3),
        .u_reg_1(counter_0_n_2));
  FF_D_12 counter_4
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .hours(hours[4]),
        .u_reg_0(u_reg_3),
        .u_reg_1(counter_2_n_1));
endmodule

module Cronometro
   (u_reg,
    u_reg_0,
    u_reg_1,
    D,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    u_reg_5,
    u_reg_6,
    reset_IBUF,
    clk_IBUF_BUFG,
    set_IBUF);
  output [0:0]u_reg;
  output [0:0]u_reg_0;
  output [0:0]u_reg_1;
  output [1:0]D;
  output [2:0]u_reg_2;
  output [1:0]u_reg_3;
  output [2:0]u_reg_4;
  output [0:0]u_reg_5;
  output [1:0]u_reg_6;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input set_IBUF;

  wire [1:0]D;
  wire clk_IBUF_BUFG;
  wire cont_minuti_n_2;
  wire cont_ore_n_1;
  wire cont_secondi_n_2;
  wire cont_secondi_n_3;
  wire div_n_1;
  wire div_n_2;
  wire div_n_3;
  wire div_n_4;
  wire en;
  wire [5:5]minutes;
  wire reset_IBUF;
  wire [5:5]seconds;
  wire set_IBUF;
  wire [0:0]u_reg;
  wire [0:0]u_reg_0;
  wire [0:0]u_reg_1;
  wire [2:0]u_reg_2;
  wire [1:0]u_reg_3;
  wire [2:0]u_reg_4;
  wire [0:0]u_reg_5;
  wire [1:0]u_reg_6;

  cont_mod_64_struct cont_minuti
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .seconds(seconds),
        .set_IBUF(set_IBUF),
        .u_reg(u_reg_1),
        .u_reg_0(minutes),
        .u_reg_1(cont_minuti_n_2),
        .u_reg_2(u_reg_3),
        .u_reg_3(u_reg_4),
        .u_reg_4(cont_secondi_n_2),
        .u_reg_5(cont_secondi_n_3),
        .u_reg_6(u_reg_0));
  Counter_mod24_struct cont_ore
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .seconds(seconds),
        .u_reg(u_reg_0),
        .u_reg_0(cont_ore_n_1),
        .u_reg_1(u_reg_5),
        .u_reg_2(u_reg_6),
        .u_reg_3(div_n_3),
        .u_reg_4(cont_minuti_n_2),
        .u_reg_5(minutes),
        .u_reg_6(div_n_4));
  cont_mod_64_struct_2 cont_secondi
       (.D(D),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .set_IBUF(set_IBUF),
        .u_reg(seconds),
        .u_reg_0(u_reg),
        .u_reg_1(cont_secondi_n_2),
        .u_reg_2(cont_secondi_n_3),
        .u_reg_3(u_reg_2),
        .u_reg_4(div_n_2),
        .u_reg_5(div_n_1),
        .u_reg_6(u_reg_1));
  Divisore_freq div
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_reg_0(div_n_1),
        .div_reg_1(div_n_2),
        .div_reg_2(div_n_3),
        .div_reg_3(div_n_4),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .set_IBUF(set_IBUF),
        .u_reg(u_reg),
        .u_reg_0(seconds),
        .u_reg_1(minutes),
        .u_reg_2(cont_ore_n_1));
endmodule

module Divisore_freq
   (en,
    div_reg_0,
    div_reg_1,
    div_reg_2,
    div_reg_3,
    reset_IBUF,
    clk_IBUF_BUFG,
    set_IBUF,
    u_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2);
  output en;
  output div_reg_0;
  output div_reg_1;
  output div_reg_2;
  output div_reg_3;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input set_IBUF;
  input [0:0]u_reg;
  input [0:0]u_reg_0;
  input [0:0]u_reg_1;
  input u_reg_2;

  wire clk_IBUF_BUFG;
  wire div_reg_0;
  wire div_reg_1;
  wire div_reg_2;
  wire div_reg_3;
  wire en;
  wire reset_IBUF;
  wire set_IBUF;
  wire [0:0]u_reg;
  wire [0:0]u_reg_0;
  wire [0:0]u_reg_1;
  wire u_reg_2;

  FDRE #(
    .INIT(1'b0)) 
    div_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(en),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    u_i_1
       (.I0(reset_IBUF),
        .I1(set_IBUF),
        .I2(en),
        .O(div_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    u_i_1__0
       (.I0(set_IBUF),
        .I1(reset_IBUF),
        .I2(en),
        .I3(u_reg_0),
        .I4(u_reg_1),
        .I5(u_reg_2),
        .O(div_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h01F0)) 
    u_i_1__8
       (.I0(reset_IBUF),
        .I1(set_IBUF),
        .I2(en),
        .I3(u_reg),
        .O(div_reg_0));
  LUT3 #(
    .INIT(8'h80)) 
    u_i_2__3
       (.I0(en),
        .I1(u_reg_0),
        .I2(u_reg_1),
        .O(div_reg_3));
endmodule

(* ORIG_REF_NAME = "Divisore_freq" *) 
module Divisore_freq__parameterized1
   (uscita_divisore,
    reset_IBUF,
    CLK);
  output uscita_divisore;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [16:0]conteggio;
  wire conteggio0_carry__0_n_0;
  wire conteggio0_carry__0_n_1;
  wire conteggio0_carry__0_n_2;
  wire conteggio0_carry__0_n_3;
  wire conteggio0_carry__1_n_0;
  wire conteggio0_carry__1_n_1;
  wire conteggio0_carry__1_n_2;
  wire conteggio0_carry__1_n_3;
  wire conteggio0_carry__2_n_1;
  wire conteggio0_carry__2_n_2;
  wire conteggio0_carry__2_n_3;
  wire conteggio0_carry_n_0;
  wire conteggio0_carry_n_1;
  wire conteggio0_carry_n_2;
  wire conteggio0_carry_n_3;
  wire \conteggio[16]_i_2_n_0 ;
  wire \conteggio[16]_i_3_n_0 ;
  wire \conteggio[16]_i_4_n_0 ;
  wire \conteggio[16]_i_5_n_0 ;
  wire \conteggio_reg_n_0_[0] ;
  wire \conteggio_reg_n_0_[10] ;
  wire \conteggio_reg_n_0_[11] ;
  wire \conteggio_reg_n_0_[12] ;
  wire \conteggio_reg_n_0_[13] ;
  wire \conteggio_reg_n_0_[14] ;
  wire \conteggio_reg_n_0_[15] ;
  wire \conteggio_reg_n_0_[16] ;
  wire \conteggio_reg_n_0_[1] ;
  wire \conteggio_reg_n_0_[2] ;
  wire \conteggio_reg_n_0_[3] ;
  wire \conteggio_reg_n_0_[4] ;
  wire \conteggio_reg_n_0_[5] ;
  wire \conteggio_reg_n_0_[6] ;
  wire \conteggio_reg_n_0_[7] ;
  wire \conteggio_reg_n_0_[8] ;
  wire \conteggio_reg_n_0_[9] ;
  wire [16:1]data0;
  wire div;
  wire reset_IBUF;
  wire uscita_divisore;
  wire [3:3]NLW_conteggio0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry
       (.CI(1'b0),
        .CO({conteggio0_carry_n_0,conteggio0_carry_n_1,conteggio0_carry_n_2,conteggio0_carry_n_3}),
        .CYINIT(\conteggio_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\conteggio_reg_n_0_[4] ,\conteggio_reg_n_0_[3] ,\conteggio_reg_n_0_[2] ,\conteggio_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__0
       (.CI(conteggio0_carry_n_0),
        .CO({conteggio0_carry__0_n_0,conteggio0_carry__0_n_1,conteggio0_carry__0_n_2,conteggio0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\conteggio_reg_n_0_[8] ,\conteggio_reg_n_0_[7] ,\conteggio_reg_n_0_[6] ,\conteggio_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__1
       (.CI(conteggio0_carry__0_n_0),
        .CO({conteggio0_carry__1_n_0,conteggio0_carry__1_n_1,conteggio0_carry__1_n_2,conteggio0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\conteggio_reg_n_0_[12] ,\conteggio_reg_n_0_[11] ,\conteggio_reg_n_0_[10] ,\conteggio_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__2
       (.CI(conteggio0_carry__1_n_0),
        .CO({NLW_conteggio0_carry__2_CO_UNCONNECTED[3],conteggio0_carry__2_n_1,conteggio0_carry__2_n_2,conteggio0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\conteggio_reg_n_0_[16] ,\conteggio_reg_n_0_[15] ,\conteggio_reg_n_0_[14] ,\conteggio_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \conteggio[0]_i_1 
       (.I0(\conteggio_reg_n_0_[0] ),
        .O(conteggio[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[10]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[10]),
        .O(conteggio[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[11]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[11]),
        .O(conteggio[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[12]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[12]),
        .O(conteggio[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[13]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[13]),
        .O(conteggio[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[14]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[14]),
        .O(conteggio[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[15]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[15]),
        .O(conteggio[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[16]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[16]),
        .O(conteggio[16]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \conteggio[16]_i_2 
       (.I0(\conteggio_reg_n_0_[4] ),
        .I1(\conteggio_reg_n_0_[3] ),
        .I2(\conteggio_reg_n_0_[6] ),
        .I3(\conteggio_reg_n_0_[5] ),
        .O(\conteggio[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \conteggio[16]_i_3 
       (.I0(\conteggio_reg_n_0_[0] ),
        .I1(\conteggio_reg_n_0_[15] ),
        .I2(\conteggio_reg_n_0_[16] ),
        .I3(\conteggio_reg_n_0_[2] ),
        .I4(\conteggio_reg_n_0_[1] ),
        .O(\conteggio[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \conteggio[16]_i_4 
       (.I0(\conteggio_reg_n_0_[12] ),
        .I1(\conteggio_reg_n_0_[11] ),
        .I2(\conteggio_reg_n_0_[14] ),
        .I3(\conteggio_reg_n_0_[13] ),
        .O(\conteggio[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \conteggio[16]_i_5 
       (.I0(\conteggio_reg_n_0_[7] ),
        .I1(\conteggio_reg_n_0_[8] ),
        .I2(\conteggio_reg_n_0_[10] ),
        .I3(\conteggio_reg_n_0_[9] ),
        .O(\conteggio[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[1]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[1]),
        .O(conteggio[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[2]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[2]),
        .O(conteggio[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[3]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[3]),
        .O(conteggio[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[4]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[4]),
        .O(conteggio[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[5]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[5]),
        .O(conteggio[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[6]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[6]),
        .O(conteggio[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[7]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[7]),
        .O(conteggio[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[8]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[8]),
        .O(conteggio[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \conteggio[9]_i_1__0 
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .I4(data0[9]),
        .O(conteggio[9]));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[0]),
        .Q(\conteggio_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[10]),
        .Q(\conteggio_reg_n_0_[10] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[11]),
        .Q(\conteggio_reg_n_0_[11] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[12]),
        .Q(\conteggio_reg_n_0_[12] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[13]),
        .Q(\conteggio_reg_n_0_[13] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[14]),
        .Q(\conteggio_reg_n_0_[14] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[15]),
        .Q(\conteggio_reg_n_0_[15] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[16]),
        .Q(\conteggio_reg_n_0_[16] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[1]),
        .Q(\conteggio_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[2]),
        .Q(\conteggio_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[3]),
        .Q(\conteggio_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[4]),
        .Q(\conteggio_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[5]),
        .Q(\conteggio_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[6]),
        .Q(\conteggio_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[7]),
        .Q(\conteggio_reg_n_0_[7] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[8]),
        .Q(\conteggio_reg_n_0_[8] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[9]),
        .Q(\conteggio_reg_n_0_[9] ),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_i_1__0
       (.I0(\conteggio[16]_i_2_n_0 ),
        .I1(\conteggio[16]_i_3_n_0 ),
        .I2(\conteggio[16]_i_4_n_0 ),
        .I3(\conteggio[16]_i_5_n_0 ),
        .O(div));
  FDRE #(
    .INIT(1'b0)) 
    div_reg
       (.C(CLK),
        .CE(1'b1),
        .D(div),
        .Q(uscita_divisore),
        .R(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "Divisore_freq" *) 
module Divisore_freq__parameterized3
   (E,
    reset_IBUF,
    CLK);
  output [0:0]E;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [26:0]conteggio;
  wire conteggio0_carry__0_n_0;
  wire conteggio0_carry__0_n_1;
  wire conteggio0_carry__0_n_2;
  wire conteggio0_carry__0_n_3;
  wire conteggio0_carry__0_n_4;
  wire conteggio0_carry__0_n_5;
  wire conteggio0_carry__0_n_6;
  wire conteggio0_carry__0_n_7;
  wire conteggio0_carry__1_n_0;
  wire conteggio0_carry__1_n_1;
  wire conteggio0_carry__1_n_2;
  wire conteggio0_carry__1_n_3;
  wire conteggio0_carry__1_n_4;
  wire conteggio0_carry__1_n_5;
  wire conteggio0_carry__1_n_6;
  wire conteggio0_carry__1_n_7;
  wire conteggio0_carry__2_n_0;
  wire conteggio0_carry__2_n_1;
  wire conteggio0_carry__2_n_2;
  wire conteggio0_carry__2_n_3;
  wire conteggio0_carry__2_n_4;
  wire conteggio0_carry__2_n_5;
  wire conteggio0_carry__2_n_6;
  wire conteggio0_carry__2_n_7;
  wire conteggio0_carry__3_n_0;
  wire conteggio0_carry__3_n_1;
  wire conteggio0_carry__3_n_2;
  wire conteggio0_carry__3_n_3;
  wire conteggio0_carry__3_n_4;
  wire conteggio0_carry__3_n_5;
  wire conteggio0_carry__3_n_6;
  wire conteggio0_carry__3_n_7;
  wire conteggio0_carry__4_n_0;
  wire conteggio0_carry__4_n_1;
  wire conteggio0_carry__4_n_2;
  wire conteggio0_carry__4_n_3;
  wire conteggio0_carry__4_n_4;
  wire conteggio0_carry__4_n_5;
  wire conteggio0_carry__4_n_6;
  wire conteggio0_carry__4_n_7;
  wire conteggio0_carry__5_n_3;
  wire conteggio0_carry__5_n_6;
  wire conteggio0_carry__5_n_7;
  wire conteggio0_carry_n_0;
  wire conteggio0_carry_n_1;
  wire conteggio0_carry_n_2;
  wire conteggio0_carry_n_3;
  wire conteggio0_carry_n_4;
  wire conteggio0_carry_n_5;
  wire conteggio0_carry_n_6;
  wire conteggio0_carry_n_7;
  wire \conteggio[26]_i_2_n_0 ;
  wire \conteggio[26]_i_3_n_0 ;
  wire \conteggio[26]_i_4_n_0 ;
  wire \conteggio[26]_i_5_n_0 ;
  wire \conteggio[26]_i_6_n_0 ;
  wire \conteggio[26]_i_7_n_0 ;
  wire \conteggio[26]_i_8_n_0 ;
  wire \conteggio_reg_n_0_[0] ;
  wire \conteggio_reg_n_0_[10] ;
  wire \conteggio_reg_n_0_[11] ;
  wire \conteggio_reg_n_0_[12] ;
  wire \conteggio_reg_n_0_[13] ;
  wire \conteggio_reg_n_0_[14] ;
  wire \conteggio_reg_n_0_[15] ;
  wire \conteggio_reg_n_0_[16] ;
  wire \conteggio_reg_n_0_[17] ;
  wire \conteggio_reg_n_0_[18] ;
  wire \conteggio_reg_n_0_[19] ;
  wire \conteggio_reg_n_0_[1] ;
  wire \conteggio_reg_n_0_[20] ;
  wire \conteggio_reg_n_0_[21] ;
  wire \conteggio_reg_n_0_[22] ;
  wire \conteggio_reg_n_0_[23] ;
  wire \conteggio_reg_n_0_[24] ;
  wire \conteggio_reg_n_0_[25] ;
  wire \conteggio_reg_n_0_[26] ;
  wire \conteggio_reg_n_0_[2] ;
  wire \conteggio_reg_n_0_[3] ;
  wire \conteggio_reg_n_0_[4] ;
  wire \conteggio_reg_n_0_[5] ;
  wire \conteggio_reg_n_0_[6] ;
  wire \conteggio_reg_n_0_[7] ;
  wire \conteggio_reg_n_0_[8] ;
  wire \conteggio_reg_n_0_[9] ;
  wire div;
  wire reset_IBUF;
  wire [3:1]NLW_conteggio0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_conteggio0_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry
       (.CI(1'b0),
        .CO({conteggio0_carry_n_0,conteggio0_carry_n_1,conteggio0_carry_n_2,conteggio0_carry_n_3}),
        .CYINIT(\conteggio_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry_n_4,conteggio0_carry_n_5,conteggio0_carry_n_6,conteggio0_carry_n_7}),
        .S({\conteggio_reg_n_0_[4] ,\conteggio_reg_n_0_[3] ,\conteggio_reg_n_0_[2] ,\conteggio_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__0
       (.CI(conteggio0_carry_n_0),
        .CO({conteggio0_carry__0_n_0,conteggio0_carry__0_n_1,conteggio0_carry__0_n_2,conteggio0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry__0_n_4,conteggio0_carry__0_n_5,conteggio0_carry__0_n_6,conteggio0_carry__0_n_7}),
        .S({\conteggio_reg_n_0_[8] ,\conteggio_reg_n_0_[7] ,\conteggio_reg_n_0_[6] ,\conteggio_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__1
       (.CI(conteggio0_carry__0_n_0),
        .CO({conteggio0_carry__1_n_0,conteggio0_carry__1_n_1,conteggio0_carry__1_n_2,conteggio0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry__1_n_4,conteggio0_carry__1_n_5,conteggio0_carry__1_n_6,conteggio0_carry__1_n_7}),
        .S({\conteggio_reg_n_0_[12] ,\conteggio_reg_n_0_[11] ,\conteggio_reg_n_0_[10] ,\conteggio_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__2
       (.CI(conteggio0_carry__1_n_0),
        .CO({conteggio0_carry__2_n_0,conteggio0_carry__2_n_1,conteggio0_carry__2_n_2,conteggio0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry__2_n_4,conteggio0_carry__2_n_5,conteggio0_carry__2_n_6,conteggio0_carry__2_n_7}),
        .S({\conteggio_reg_n_0_[16] ,\conteggio_reg_n_0_[15] ,\conteggio_reg_n_0_[14] ,\conteggio_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__3
       (.CI(conteggio0_carry__2_n_0),
        .CO({conteggio0_carry__3_n_0,conteggio0_carry__3_n_1,conteggio0_carry__3_n_2,conteggio0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry__3_n_4,conteggio0_carry__3_n_5,conteggio0_carry__3_n_6,conteggio0_carry__3_n_7}),
        .S({\conteggio_reg_n_0_[20] ,\conteggio_reg_n_0_[19] ,\conteggio_reg_n_0_[18] ,\conteggio_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__4
       (.CI(conteggio0_carry__3_n_0),
        .CO({conteggio0_carry__4_n_0,conteggio0_carry__4_n_1,conteggio0_carry__4_n_2,conteggio0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({conteggio0_carry__4_n_4,conteggio0_carry__4_n_5,conteggio0_carry__4_n_6,conteggio0_carry__4_n_7}),
        .S({\conteggio_reg_n_0_[24] ,\conteggio_reg_n_0_[23] ,\conteggio_reg_n_0_[22] ,\conteggio_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conteggio0_carry__5
       (.CI(conteggio0_carry__4_n_0),
        .CO({NLW_conteggio0_carry__5_CO_UNCONNECTED[3:1],conteggio0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_conteggio0_carry__5_O_UNCONNECTED[3:2],conteggio0_carry__5_n_6,conteggio0_carry__5_n_7}),
        .S({1'b0,1'b0,\conteggio_reg_n_0_[26] ,\conteggio_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \conteggio[0]_i_1__0 
       (.I0(\conteggio_reg_n_0_[0] ),
        .O(conteggio[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[10]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__1_n_6),
        .O(conteggio[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[11]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__1_n_5),
        .O(conteggio[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[12]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__1_n_4),
        .O(conteggio[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[13]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__2_n_7),
        .O(conteggio[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[14]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__2_n_6),
        .O(conteggio[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[15]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__2_n_5),
        .O(conteggio[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[16]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__2_n_4),
        .O(conteggio[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[17]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__3_n_7),
        .O(conteggio[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[18]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__3_n_6),
        .O(conteggio[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[19]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__3_n_5),
        .O(conteggio[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[1]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry_n_7),
        .O(conteggio[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[20]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__3_n_4),
        .O(conteggio[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[21]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__4_n_7),
        .O(conteggio[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[22]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__4_n_6),
        .O(conteggio[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[23]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__4_n_5),
        .O(conteggio[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[24]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__4_n_4),
        .O(conteggio[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[25]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__5_n_7),
        .O(conteggio[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[26]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__5_n_6),
        .O(conteggio[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \conteggio[26]_i_2 
       (.I0(\conteggio_reg_n_0_[26] ),
        .I1(\conteggio_reg_n_0_[25] ),
        .I2(\conteggio_reg_n_0_[0] ),
        .I3(\conteggio[26]_i_5_n_0 ),
        .I4(\conteggio[26]_i_6_n_0 ),
        .O(\conteggio[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \conteggio[26]_i_3 
       (.I0(\conteggio_reg_n_0_[8] ),
        .I1(\conteggio_reg_n_0_[7] ),
        .I2(\conteggio_reg_n_0_[5] ),
        .I3(\conteggio_reg_n_0_[6] ),
        .I4(\conteggio[26]_i_7_n_0 ),
        .O(\conteggio[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \conteggio[26]_i_4 
       (.I0(\conteggio_reg_n_0_[15] ),
        .I1(\conteggio_reg_n_0_[16] ),
        .I2(\conteggio_reg_n_0_[13] ),
        .I3(\conteggio_reg_n_0_[14] ),
        .I4(\conteggio[26]_i_8_n_0 ),
        .O(\conteggio[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \conteggio[26]_i_5 
       (.I0(\conteggio_reg_n_0_[22] ),
        .I1(\conteggio_reg_n_0_[21] ),
        .I2(\conteggio_reg_n_0_[24] ),
        .I3(\conteggio_reg_n_0_[23] ),
        .O(\conteggio[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \conteggio[26]_i_6 
       (.I0(\conteggio_reg_n_0_[2] ),
        .I1(\conteggio_reg_n_0_[1] ),
        .I2(\conteggio_reg_n_0_[4] ),
        .I3(\conteggio_reg_n_0_[3] ),
        .O(\conteggio[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \conteggio[26]_i_7 
       (.I0(\conteggio_reg_n_0_[10] ),
        .I1(\conteggio_reg_n_0_[9] ),
        .I2(\conteggio_reg_n_0_[12] ),
        .I3(\conteggio_reg_n_0_[11] ),
        .O(\conteggio[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \conteggio[26]_i_8 
       (.I0(\conteggio_reg_n_0_[18] ),
        .I1(\conteggio_reg_n_0_[17] ),
        .I2(\conteggio_reg_n_0_[20] ),
        .I3(\conteggio_reg_n_0_[19] ),
        .O(\conteggio[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[2]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry_n_6),
        .O(conteggio[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[3]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry_n_5),
        .O(conteggio[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[4]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry_n_4),
        .O(conteggio[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[5]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__0_n_7),
        .O(conteggio[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[6]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__0_n_6),
        .O(conteggio[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[7]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__0_n_5),
        .O(conteggio[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[8]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__0_n_4),
        .O(conteggio[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \conteggio[9]_i_1 
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .I3(conteggio0_carry__1_n_7),
        .O(conteggio[9]));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[0]),
        .Q(\conteggio_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[10]),
        .Q(\conteggio_reg_n_0_[10] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[11]),
        .Q(\conteggio_reg_n_0_[11] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[12]),
        .Q(\conteggio_reg_n_0_[12] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[13]),
        .Q(\conteggio_reg_n_0_[13] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[14]),
        .Q(\conteggio_reg_n_0_[14] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[15]),
        .Q(\conteggio_reg_n_0_[15] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[16]),
        .Q(\conteggio_reg_n_0_[16] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[17]),
        .Q(\conteggio_reg_n_0_[17] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[18]),
        .Q(\conteggio_reg_n_0_[18] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[19]),
        .Q(\conteggio_reg_n_0_[19] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[1]),
        .Q(\conteggio_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[20]),
        .Q(\conteggio_reg_n_0_[20] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[21]),
        .Q(\conteggio_reg_n_0_[21] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[22]),
        .Q(\conteggio_reg_n_0_[22] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[23]),
        .Q(\conteggio_reg_n_0_[23] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[24]),
        .Q(\conteggio_reg_n_0_[24] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[25]),
        .Q(\conteggio_reg_n_0_[25] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[26]),
        .Q(\conteggio_reg_n_0_[26] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[2]),
        .Q(\conteggio_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[3]),
        .Q(\conteggio_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[4]),
        .Q(\conteggio_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[5]),
        .Q(\conteggio_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[6]),
        .Q(\conteggio_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[7]),
        .Q(\conteggio_reg_n_0_[7] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[8]),
        .Q(\conteggio_reg_n_0_[8] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(conteggio[9]),
        .Q(\conteggio_reg_n_0_[9] ),
        .R(reset_IBUF));
  LUT3 #(
    .INIT(8'h01)) 
    div_i_1
       (.I0(\conteggio[26]_i_2_n_0 ),
        .I1(\conteggio[26]_i_3_n_0 ),
        .I2(\conteggio[26]_i_4_n_0 ),
        .O(div));
  FDRE #(
    .INIT(1'b0)) 
    div_reg
       (.C(CLK),
        .CE(1'b1),
        .D(div),
        .Q(E),
        .R(reset_IBUF));
endmodule

module FF_D
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    clk_IBUF_BUFG,
    reset_IBUF,
    set_IBUF,
    en,
    seconds);
  output u_reg_0;
  output u_reg_1;
  output u_reg_2;
  input u_reg_3;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input set_IBUF;
  input en;
  input [2:0]seconds;

  wire clk_IBUF_BUFG;
  wire en;
  wire reset_IBUF;
  wire [2:0]seconds;
  wire set_IBUF;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire u_reg_3;

  LUT6 #(
    .INIT(64'hFF7FFF00FF80FF00)) 
    u_i_1__3
       (.I0(u_reg_0),
        .I1(seconds[0]),
        .I2(seconds[1]),
        .I3(set_IBUF),
        .I4(en),
        .I5(seconds[2]),
        .O(u_reg_2));
  LUT5 #(
    .INIT(32'h5503AA00)) 
    u_i_1__9
       (.I0(u_reg_0),
        .I1(reset_IBUF),
        .I2(set_IBUF),
        .I3(en),
        .I4(seconds[0]),
        .O(u_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_3),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_10
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    u_reg_5,
    clk_IBUF_BUFG,
    hours,
    u_reg_6,
    u_reg_7);
  output [0:0]u_reg_0;
  output u_reg_1;
  output [0:0]u_reg_2;
  output [0:0]u_reg_3;
  input u_reg_4;
  input u_reg_5;
  input clk_IBUF_BUFG;
  input [2:0]hours;
  input u_reg_6;
  input u_reg_7;

  wire clk_IBUF_BUFG;
  wire [2:0]hours;
  wire [0:0]u_reg_0;
  wire u_reg_1;
  wire [0:0]u_reg_2;
  wire [0:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire u_reg_6;
  wire u_reg_7;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6318)) 
    \temp_decine_reg[1]_i_1__1 
       (.I0(u_reg_0),
        .I1(hours[1]),
        .I2(hours[2]),
        .I3(hours[0]),
        .O(u_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \temp_unita_reg[1]_i_1__1 
       (.I0(u_reg_0),
        .I1(hours[1]),
        .I2(hours[2]),
        .O(u_reg_3));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    u_i_1__7
       (.I0(u_reg_0),
        .I1(hours[0]),
        .I2(u_reg_6),
        .I3(hours[1]),
        .I4(u_reg_7),
        .I5(hours[2]),
        .O(u_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_4),
        .D(u_reg_5),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_11
   (hours,
    u_reg_0,
    u_reg_1,
    clk_IBUF_BUFG);
  output [0:0]hours;
  input u_reg_0;
  input u_reg_1;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]hours;
  wire u_reg_0;
  wire u_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_0),
        .D(u_reg_1),
        .Q(hours),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_12
   (hours,
    u_reg_0,
    u_reg_1,
    clk_IBUF_BUFG);
  output [0:0]hours;
  input u_reg_0;
  input u_reg_1;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]hours;
  wire u_reg_0;
  wire u_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_0),
        .D(u_reg_1),
        .Q(hours),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_13
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    reset_IBUF,
    set_IBUF,
    seconds,
    en,
    minutes,
    u_reg_5,
    u_reg_6);
  output u_reg_0;
  output u_reg_1;
  output u_reg_2;
  output u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input set_IBUF;
  input [0:0]seconds;
  input en;
  input [2:0]minutes;
  input u_reg_5;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire en;
  wire [2:0]minutes;
  wire reset_IBUF;
  wire [0:0]seconds;
  wire set_IBUF;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire u_reg_6;

  LUT6 #(
    .INIT(64'hF5F3F3F3FAF0F0F0)) 
    u_i_1__11
       (.I0(u_reg_0),
        .I1(reset_IBUF),
        .I2(set_IBUF),
        .I3(seconds),
        .I4(en),
        .I5(minutes[0]),
        .O(u_reg_1));
  LUT6 #(
    .INIT(64'hFF77FF0FFF88FF00)) 
    u_i_1__12
       (.I0(u_reg_0),
        .I1(minutes[0]),
        .I2(reset_IBUF),
        .I3(set_IBUF),
        .I4(u_reg_5),
        .I5(minutes[1]),
        .O(u_reg_2));
  LUT6 #(
    .INIT(64'h7F7F00FF80800000)) 
    u_i_1__13
       (.I0(u_reg_0),
        .I1(minutes[0]),
        .I2(minutes[1]),
        .I3(u_reg_6),
        .I4(u_reg_5),
        .I5(minutes[2]),
        .O(u_reg_3));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_4),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_14
   (minutes,
    u_reg_0,
    clk_IBUF_BUFG);
  output [0:0]minutes;
  input u_reg_0;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]minutes;
  wire u_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_0),
        .Q(minutes),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_15
   (minutes,
    div_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    clk_IBUF_BUFG,
    reset_IBUF,
    set_IBUF,
    en,
    seconds,
    u_reg_3,
    u_reg_4,
    u_reg_5,
    u_reg_6);
  output [0:0]minutes;
  output div_reg;
  output u_reg_0;
  output [0:0]u_reg_1;
  input u_reg_2;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input set_IBUF;
  input en;
  input [0:0]seconds;
  input [2:0]u_reg_3;
  input u_reg_4;
  input u_reg_5;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire div_reg;
  wire en;
  wire [0:0]minutes;
  wire reset_IBUF;
  wire [0:0]seconds;
  wire set_IBUF;
  wire u_i_2__5_n_0;
  wire u_reg_0;
  wire [0:0]u_reg_1;
  wire u_reg_2;
  wire [2:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire u_reg_6;

  LUT5 #(
    .INIT(32'h9C23429C)) 
    \temp_decine_reg[1]_i_1__0 
       (.I0(minutes),
        .I1(u_reg_5),
        .I2(u_reg_3[2]),
        .I3(u_reg_3[1]),
        .I4(u_reg_3[0]),
        .O(u_reg_1));
  LUT6 #(
    .INIT(64'hAA03030355000000)) 
    u_i_1__14
       (.I0(u_i_2__5_n_0),
        .I1(reset_IBUF),
        .I2(set_IBUF),
        .I3(en),
        .I4(seconds),
        .I5(u_reg_3[2]),
        .O(div_reg));
  LUT6 #(
    .INIT(64'hBBBB000F44440000)) 
    u_i_1__15
       (.I0(u_i_2__5_n_0),
        .I1(u_reg_3[2]),
        .I2(reset_IBUF),
        .I3(set_IBUF),
        .I4(u_reg_4),
        .I5(u_reg_5),
        .O(u_reg_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    u_i_2__5
       (.I0(minutes),
        .I1(u_reg_3[0]),
        .I2(u_reg_6),
        .I3(u_reg_3[1]),
        .O(u_i_2__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_2),
        .Q(minutes),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_16
   (u_reg_0,
    set,
    u_reg_1,
    u_reg_2,
    clk_IBUF_BUFG,
    set_IBUF,
    reset_IBUF,
    minutes,
    \temp_unita_reg[0] );
  output [0:0]u_reg_0;
  output set;
  output [1:0]u_reg_1;
  input u_reg_2;
  input clk_IBUF_BUFG;
  input set_IBUF;
  input reset_IBUF;
  input [2:0]minutes;
  input \temp_unita_reg[0] ;

  wire clk_IBUF_BUFG;
  wire [2:0]minutes;
  wire reset_IBUF;
  wire set;
  wire set_IBUF;
  wire \temp_unita_reg[0] ;
  wire [0:0]u_reg_0;
  wire [1:0]u_reg_1;
  wire u_reg_2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5AD65294)) 
    \temp_unita_reg[0]_i_1__0 
       (.I0(u_reg_0),
        .I1(minutes[2]),
        .I2(\temp_unita_reg[0] ),
        .I3(minutes[1]),
        .I4(minutes[0]),
        .O(u_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \temp_unita_reg[2]_i_1__0 
       (.I0(u_reg_0),
        .I1(minutes[2]),
        .I2(\temp_unita_reg[0] ),
        .O(u_reg_1[1]));
  LUT2 #(
    .INIT(4'hE)) 
    u_i_2
       (.I0(set_IBUF),
        .I1(reset_IBUF),
        .O(set));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_2),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_17
   (minutes,
    u_reg_0,
    clk_IBUF_BUFG);
  output [0:0]minutes;
  input u_reg_0;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]minutes;
  wire u_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_0),
        .Q(minutes),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_18
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    seconds,
    en,
    u_reg_5,
    minutes);
  output u_reg_0;
  output u_reg_1;
  output [0:0]u_reg_2;
  output [0:0]u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input [0:0]seconds;
  input en;
  input u_reg_5;
  input [3:0]minutes;

  wire clk_IBUF_BUFG;
  wire en;
  wire [3:0]minutes;
  wire [0:0]seconds;
  wire u_reg_0;
  wire u_reg_1;
  wire [0:0]u_reg_2;
  wire [0:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h394223C4)) 
    \temp_decine_reg[2]_i_1__0 
       (.I0(u_reg_0),
        .I1(minutes[3]),
        .I2(minutes[2]),
        .I3(minutes[1]),
        .I4(minutes[0]),
        .O(u_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC642)) 
    \temp_unita_reg[1]_i_1__0 
       (.I0(u_reg_0),
        .I1(minutes[3]),
        .I2(minutes[2]),
        .I3(minutes[1]),
        .O(u_reg_3));
  LUT4 #(
    .INIT(16'h0080)) 
    u_i_2__2
       (.I0(u_reg_0),
        .I1(seconds),
        .I2(en),
        .I3(u_reg_5),
        .O(u_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_4),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_3
   (seconds,
    u_reg_0,
    u_reg_1,
    clk_IBUF_BUFG,
    u_reg_2,
    set_IBUF,
    en,
    u_reg_3);
  output [0:0]seconds;
  output u_reg_0;
  input u_reg_1;
  input clk_IBUF_BUFG;
  input u_reg_2;
  input set_IBUF;
  input en;
  input [0:0]u_reg_3;

  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]seconds;
  wire set_IBUF;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire [0:0]u_reg_3;

  LUT5 #(
    .INIT(32'hF7F0F8F0)) 
    u_i_2__1
       (.I0(seconds),
        .I1(u_reg_2),
        .I2(set_IBUF),
        .I3(en),
        .I4(u_reg_3),
        .O(u_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_reg_1),
        .Q(seconds),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_4
   (u_reg_0,
    u_reg_1,
    div_reg,
    D,
    u_reg_2,
    u_reg_3,
    clk_IBUF_BUFG,
    seconds,
    set_IBUF,
    en,
    u_reg_4,
    u_reg_5);
  output [0:0]u_reg_0;
  output u_reg_1;
  output div_reg;
  output [0:0]D;
  input u_reg_2;
  input u_reg_3;
  input clk_IBUF_BUFG;
  input [2:0]seconds;
  input set_IBUF;
  input en;
  input u_reg_4;
  input u_reg_5;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire div_reg;
  wire en;
  wire [2:0]seconds;
  wire set_IBUF;
  wire u_i_2__0_n_0;
  wire [0:0]u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire u_reg_3;
  wire u_reg_4;
  wire u_reg_5;

  LUT5 #(
    .INIT(32'h9C23429C)) 
    \temp_decine_reg[1]_i_1 
       (.I0(u_reg_0),
        .I1(u_reg_4),
        .I2(seconds[2]),
        .I3(seconds[1]),
        .I4(seconds[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFBF0F4F0)) 
    u_i_1__1
       (.I0(u_i_2__0_n_0),
        .I1(seconds[2]),
        .I2(set_IBUF),
        .I3(en),
        .I4(u_reg_4),
        .O(u_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hECDC)) 
    u_i_1__2
       (.I0(u_i_2__0_n_0),
        .I1(set_IBUF),
        .I2(en),
        .I3(seconds[2]),
        .O(div_reg));
  LUT4 #(
    .INIT(16'h7FFF)) 
    u_i_2__0
       (.I0(u_reg_0),
        .I1(seconds[0]),
        .I2(u_reg_5),
        .I3(seconds[1]),
        .O(u_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_2),
        .D(u_reg_3),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_5
   (seconds,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    clk_IBUF_BUFG,
    \temp_unita_reg[2] ,
    \temp_unita_reg[0] );
  output [0:0]seconds;
  output [1:0]u_reg_0;
  input u_reg_1;
  input u_reg_2;
  input clk_IBUF_BUFG;
  input [2:0]\temp_unita_reg[2] ;
  input \temp_unita_reg[0] ;

  wire clk_IBUF_BUFG;
  wire [0:0]seconds;
  wire \temp_unita_reg[0] ;
  wire [2:0]\temp_unita_reg[2] ;
  wire [1:0]u_reg_0;
  wire u_reg_1;
  wire u_reg_2;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5AD65294)) 
    \temp_unita_reg[0]_i_1 
       (.I0(seconds),
        .I1(\temp_unita_reg[2] [2]),
        .I2(\temp_unita_reg[0] ),
        .I3(\temp_unita_reg[2] [1]),
        .I4(\temp_unita_reg[2] [0]),
        .O(u_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \temp_unita_reg[2]_i_1 
       (.I0(seconds),
        .I1(\temp_unita_reg[2] [2]),
        .I2(\temp_unita_reg[0] ),
        .O(u_reg_0[1]));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_1),
        .D(u_reg_2),
        .Q(seconds),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_6
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    clk_IBUF_BUFG);
  output [0:0]u_reg_0;
  input u_reg_1;
  input u_reg_2;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]u_reg_0;
  wire u_reg_1;
  wire u_reg_2;

  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_1),
        .D(u_reg_2),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_7
   (u_reg_0,
    u_reg_1,
    u_reg_2,
    D,
    u_reg_3,
    u_reg_4,
    u_reg_5,
    clk_IBUF_BUFG,
    reset_IBUF,
    set_IBUF,
    en,
    u_reg_6,
    seconds);
  output u_reg_0;
  output u_reg_1;
  output u_reg_2;
  output [0:0]D;
  output [0:0]u_reg_3;
  input u_reg_4;
  input u_reg_5;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input set_IBUF;
  input en;
  input [0:0]u_reg_6;
  input [3:0]seconds;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire en;
  wire reset_IBUF;
  wire [3:0]seconds;
  wire set_IBUF;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire [0:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire [0:0]u_reg_6;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h394223C4)) 
    \temp_decine_reg[2]_i_1 
       (.I0(u_reg_0),
        .I1(seconds[3]),
        .I2(seconds[2]),
        .I3(seconds[1]),
        .I4(seconds[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC642)) 
    \temp_unita_reg[1]_i_1 
       (.I0(u_reg_0),
        .I1(seconds[3]),
        .I2(seconds[2]),
        .I3(seconds[1]),
        .O(u_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCDDDFCCC)) 
    u_i_1__10
       (.I0(reset_IBUF),
        .I1(set_IBUF),
        .I2(u_reg_0),
        .I3(en),
        .I4(u_reg_6),
        .O(u_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    u_i_2__4
       (.I0(u_reg_0),
        .I1(en),
        .O(u_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_4),
        .D(u_reg_5),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_8
   (u_reg_0,
    div_reg,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    en,
    seconds,
    u_reg_5,
    hours,
    u_reg_6);
  output u_reg_0;
  output div_reg;
  output u_reg_1;
  output u_reg_2;
  input u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input en;
  input [0:0]seconds;
  input [0:0]u_reg_5;
  input [3:0]hours;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire div_reg;
  wire en;
  wire [3:0]hours;
  wire [0:0]seconds;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire u_reg_3;
  wire u_reg_4;
  wire [0:0]u_reg_5;
  wire u_reg_6;

  LUT6 #(
    .INIT(64'h0080808080000000)) 
    u_i_1__5
       (.I0(en),
        .I1(seconds),
        .I2(u_reg_5),
        .I3(u_reg_0),
        .I4(hours[0]),
        .I5(hours[1]),
        .O(div_reg));
  LUT5 #(
    .INIT(32'h7F008000)) 
    u_i_1__6
       (.I0(u_reg_0),
        .I1(hours[0]),
        .I2(hours[1]),
        .I3(u_reg_6),
        .I4(hours[2]),
        .O(u_reg_1));
  LUT5 #(
    .INIT(32'h01000000)) 
    u_i_3
       (.I0(u_reg_0),
        .I1(hours[0]),
        .I2(hours[1]),
        .I3(hours[3]),
        .I4(hours[2]),
        .O(u_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_3),
        .D(u_reg_4),
        .Q(u_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_9
   (hours,
    u_reg_0,
    u_reg_1,
    clk_IBUF_BUFG,
    en,
    seconds,
    u_reg_2,
    u_reg_3,
    \temp_unita_reg[0] );
  output [0:0]hours;
  output [0:0]u_reg_0;
  input u_reg_1;
  input clk_IBUF_BUFG;
  input en;
  input [0:0]seconds;
  input [0:0]u_reg_2;
  input u_reg_3;
  input [2:0]\temp_unita_reg[0] ;

  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]hours;
  wire [0:0]seconds;
  wire [2:0]\temp_unita_reg[0] ;
  wire u_i_1__4_n_0;
  wire [0:0]u_reg_0;
  wire u_reg_1;
  wire [0:0]u_reg_2;
  wire u_reg_3;

  LUT4 #(
    .INIT(16'hB02C)) 
    \temp_unita_reg[0]_i_1__1 
       (.I0(hours),
        .I1(\temp_unita_reg[0] [2]),
        .I2(\temp_unita_reg[0] [1]),
        .I3(\temp_unita_reg[0] [0]),
        .O(u_reg_0));
  LUT5 #(
    .INIT(32'h00808000)) 
    u_i_1__4
       (.I0(en),
        .I1(seconds),
        .I2(u_reg_2),
        .I3(hours),
        .I4(u_reg_3),
        .O(u_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    u_reg
       (.C(clk_IBUF_BUFG),
        .CE(u_reg_1),
        .D(u_i_1__4_n_0),
        .Q(hours),
        .R(1'b0));
endmodule

module cont_mod_64_struct
   (u_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    reset_IBUF,
    set_IBUF,
    seconds,
    en,
    u_reg_5,
    u_reg_6);
  output u_reg;
  output [0:0]u_reg_0;
  output u_reg_1;
  output [1:0]u_reg_2;
  output [2:0]u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input set_IBUF;
  input [0:0]seconds;
  input en;
  input u_reg_5;
  input u_reg_6;

  wire clk_IBUF_BUFG;
  wire counter_0_n_1;
  wire counter_0_n_2;
  wire counter_0_n_3;
  wire counter_2_n_1;
  wire counter_2_n_2;
  wire counter_3_n_1;
  wire en;
  wire [4:1]minutes;
  wire reset_IBUF;
  wire [0:0]seconds;
  wire set_IBUF;
  wire u_reg;
  wire [0:0]u_reg_0;
  wire u_reg_1;
  wire [1:0]u_reg_2;
  wire [2:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire u_reg_6;

  FF_D_13 counter_0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .minutes(minutes[3:1]),
        .reset_IBUF(reset_IBUF),
        .seconds(seconds),
        .set_IBUF(set_IBUF),
        .u_reg_0(u_reg),
        .u_reg_1(counter_0_n_1),
        .u_reg_2(counter_0_n_2),
        .u_reg_3(counter_0_n_3),
        .u_reg_4(u_reg_4),
        .u_reg_5(u_reg_5),
        .u_reg_6(counter_3_n_1));
  FF_D_14 counter_1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .minutes(minutes[1]),
        .u_reg_0(counter_0_n_1));
  FF_D_15 counter_2
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_reg(counter_2_n_1),
        .en(en),
        .minutes(minutes[2]),
        .reset_IBUF(reset_IBUF),
        .seconds(seconds),
        .set_IBUF(set_IBUF),
        .u_reg_0(counter_2_n_2),
        .u_reg_1(u_reg_2[0]),
        .u_reg_2(counter_0_n_2),
        .u_reg_3({minutes[4:3],minutes[1]}),
        .u_reg_4(u_reg_5),
        .u_reg_5(u_reg_0),
        .u_reg_6(u_reg));
  FF_D_16 counter_3
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .minutes({minutes[4],minutes[2:1]}),
        .reset_IBUF(reset_IBUF),
        .set(counter_3_n_1),
        .set_IBUF(set_IBUF),
        .\temp_unita_reg[0] (u_reg_0),
        .u_reg_0(minutes[3]),
        .u_reg_1({u_reg_3[2],u_reg_3[0]}),
        .u_reg_2(counter_0_n_3));
  FF_D_17 counter_4
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .minutes(minutes[4]),
        .u_reg_0(counter_2_n_1));
  FF_D_18 counter_5
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .minutes(minutes),
        .seconds(seconds),
        .u_reg_0(u_reg_0),
        .u_reg_1(u_reg_1),
        .u_reg_2(u_reg_2[1]),
        .u_reg_3(u_reg_3[1]),
        .u_reg_4(counter_2_n_2),
        .u_reg_5(u_reg_6));
endmodule

(* ORIG_REF_NAME = "cont_mod_64_struct" *) 
module cont_mod_64_struct_2
   (u_reg,
    u_reg_0,
    u_reg_1,
    u_reg_2,
    D,
    u_reg_3,
    u_reg_4,
    clk_IBUF_BUFG,
    u_reg_5,
    reset_IBUF,
    set_IBUF,
    en,
    u_reg_6);
  output [0:0]u_reg;
  output u_reg_0;
  output u_reg_1;
  output u_reg_2;
  output [1:0]D;
  output [2:0]u_reg_3;
  input u_reg_4;
  input clk_IBUF_BUFG;
  input u_reg_5;
  input reset_IBUF;
  input set_IBUF;
  input en;
  input [0:0]u_reg_6;

  wire [1:0]D;
  wire clk_IBUF_BUFG;
  wire counter_0_n_1;
  wire counter_0_n_2;
  wire counter_1_n_1;
  wire counter_2_n_1;
  wire counter_2_n_2;
  wire en;
  wire reset_IBUF;
  wire [4:1]seconds;
  wire set_IBUF;
  wire [0:0]u_reg;
  wire u_reg_0;
  wire u_reg_1;
  wire u_reg_2;
  wire [2:0]u_reg_3;
  wire u_reg_4;
  wire u_reg_5;
  wire [0:0]u_reg_6;

  FF_D counter_0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .seconds(seconds[3:1]),
        .set_IBUF(set_IBUF),
        .u_reg_0(u_reg_0),
        .u_reg_1(counter_0_n_1),
        .u_reg_2(counter_0_n_2),
        .u_reg_3(u_reg_5));
  FF_D_3 counter_1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .seconds(seconds[1]),
        .set_IBUF(set_IBUF),
        .u_reg_0(counter_1_n_1),
        .u_reg_1(counter_0_n_1),
        .u_reg_2(u_reg_0),
        .u_reg_3(seconds[2]));
  FF_D_4 counter_2
       (.D(D[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_reg(counter_2_n_2),
        .en(en),
        .seconds({seconds[4:3],seconds[1]}),
        .set_IBUF(set_IBUF),
        .u_reg_0(seconds[2]),
        .u_reg_1(counter_2_n_1),
        .u_reg_2(u_reg_4),
        .u_reg_3(counter_1_n_1),
        .u_reg_4(u_reg),
        .u_reg_5(u_reg_0));
  FF_D_5 counter_3
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .seconds(seconds[3]),
        .\temp_unita_reg[0] (u_reg),
        .\temp_unita_reg[2] ({seconds[4],seconds[2:1]}),
        .u_reg_0({u_reg_3[2],u_reg_3[0]}),
        .u_reg_1(u_reg_4),
        .u_reg_2(counter_0_n_2));
  FF_D_6 counter_4
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .u_reg_0(seconds[4]),
        .u_reg_1(u_reg_4),
        .u_reg_2(counter_2_n_2));
  FF_D_7 counter_5
       (.D(D[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .seconds(seconds),
        .set_IBUF(set_IBUF),
        .u_reg_0(u_reg),
        .u_reg_1(u_reg_1),
        .u_reg_2(u_reg_2),
        .u_reg_3(u_reg_3[1]),
        .u_reg_4(u_reg_4),
        .u_reg_5(counter_2_n_1),
        .u_reg_6(u_reg_6));
endmodule

module contatore_modulo_8_display
   (catodi_OBUF,
    \conteggio_reg[1]_0 ,
    anodi_OBUF,
    \catodi[6] ,
    \catodi_OBUF[6]_inst_i_1_0 ,
    Q,
    \catodi_OBUF[6]_inst_i_1_1 ,
    \catodi_OBUF[6]_inst_i_1_2 ,
    uscita_divisore,
    reset_IBUF,
    CLK);
  output [6:0]catodi_OBUF;
  output [1:0]\conteggio_reg[1]_0 ;
  output [5:0]anodi_OBUF;
  input \catodi[6] ;
  input \catodi_OBUF[6]_inst_i_1_0 ;
  input [1:0]Q;
  input [1:0]\catodi_OBUF[6]_inst_i_1_1 ;
  input \catodi_OBUF[6]_inst_i_1_2 ;
  input uscita_divisore;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire [5:0]anodi_OBUF;
  wire \catodi[6] ;
  wire [6:0]catodi_OBUF;
  wire \catodi_OBUF[6]_inst_i_1_0 ;
  wire [1:0]\catodi_OBUF[6]_inst_i_1_1 ;
  wire \catodi_OBUF[6]_inst_i_1_2 ;
  wire \conteggio[0]_i_1_n_0 ;
  wire \conteggio[1]_i_1_n_0 ;
  wire \conteggio[2]_i_1_n_0 ;
  wire [1:0]\conteggio_reg[1]_0 ;
  wire reset_IBUF;
  wire [1:0]sel0;
  wire [2:2]uscita_contatore;
  wire uscita_divisore;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anodi_OBUF[2]_inst_i_1 
       (.I0(uscita_contatore),
        .I1(\conteggio_reg[1]_0 [0]),
        .I2(\conteggio_reg[1]_0 [1]),
        .O(anodi_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anodi_OBUF[3]_inst_i_1 
       (.I0(\conteggio_reg[1]_0 [1]),
        .I1(\conteggio_reg[1]_0 [0]),
        .I2(uscita_contatore),
        .O(anodi_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anodi_OBUF[4]_inst_i_1 
       (.I0(\conteggio_reg[1]_0 [1]),
        .I1(\conteggio_reg[1]_0 [0]),
        .I2(uscita_contatore),
        .O(anodi_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anodi_OBUF[5]_inst_i_1 
       (.I0(uscita_contatore),
        .I1(\conteggio_reg[1]_0 [0]),
        .I2(\conteggio_reg[1]_0 [1]),
        .O(anodi_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anodi_OBUF[6]_inst_i_1 
       (.I0(\conteggio_reg[1]_0 [1]),
        .I1(uscita_contatore),
        .I2(\conteggio_reg[1]_0 [0]),
        .O(anodi_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \anodi_OBUF[7]_inst_i_1 
       (.I0(\conteggio_reg[1]_0 [1]),
        .I1(uscita_contatore),
        .I2(\conteggio_reg[1]_0 [0]),
        .O(anodi_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \catodi_OBUF[0]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(catodi_OBUF[0]));
  LUT4 #(
    .INIT(16'h0220)) 
    \catodi_OBUF[1]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(catodi_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0D00)) 
    \catodi_OBUF[2]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(catodi_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h20D2)) 
    \catodi_OBUF[3]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(catodi_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \catodi_OBUF[4]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(catodi_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFDD0)) 
    \catodi_OBUF[5]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(catodi_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h20DD)) 
    \catodi_OBUF[6]_inst_i_1 
       (.I0(\catodi[6] ),
        .I1(uscita_contatore),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(catodi_OBUF[6]));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \catodi_OBUF[6]_inst_i_3 
       (.I0(\catodi_OBUF[6]_inst_i_1_0 ),
        .I1(\conteggio_reg[1]_0 [1]),
        .I2(uscita_contatore),
        .I3(Q[0]),
        .I4(\conteggio_reg[1]_0 [0]),
        .I5(\catodi_OBUF[6]_inst_i_1_1 [0]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \catodi_OBUF[6]_inst_i_4 
       (.I0(\catodi_OBUF[6]_inst_i_1_2 ),
        .I1(\conteggio_reg[1]_0 [1]),
        .I2(uscita_contatore),
        .I3(Q[1]),
        .I4(\conteggio_reg[1]_0 [0]),
        .I5(\catodi_OBUF[6]_inst_i_1_1 [1]),
        .O(sel0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \conteggio[0]_i_1 
       (.I0(uscita_divisore),
        .I1(\conteggio_reg[1]_0 [0]),
        .O(\conteggio[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \conteggio[1]_i_1 
       (.I0(\conteggio_reg[1]_0 [0]),
        .I1(uscita_divisore),
        .I2(\conteggio_reg[1]_0 [1]),
        .O(\conteggio[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \conteggio[2]_i_1 
       (.I0(\conteggio_reg[1]_0 [1]),
        .I1(\conteggio_reg[1]_0 [0]),
        .I2(uscita_divisore),
        .I3(uscita_contatore),
        .O(\conteggio[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\conteggio[0]_i_1_n_0 ),
        .Q(\conteggio_reg[1]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\conteggio[1]_i_1_n_0 ),
        .Q(\conteggio_reg[1]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \conteggio_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\conteggio[2]_i_1_n_0 ),
        .Q(uscita_contatore),
        .R(reset_IBUF));
endmodule

(* NotValidForBitStream *)
module cronometro_con_display
   (clk,
    reset,
    set,
    anodi,
    catodi);
  input clk;
  input reset;
  input set;
  output [7:0]anodi;
  output [7:0]catodi;

  wire Cron_n_10;
  wire Cron_n_11;
  wire Cron_n_12;
  wire Cron_n_13;
  wire Cron_n_14;
  wire Cron_n_15;
  wire Cron_n_3;
  wire Cron_n_4;
  wire Cron_n_5;
  wire Cron_n_6;
  wire Cron_n_7;
  wire Cron_n_8;
  wire Cron_n_9;
  wire [7:0]anodi;
  wire [7:2]anodi_OBUF;
  wire [7:0]catodi;
  wire [6:0]catodi_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]hours;
  wire [0:0]minutes;
  wire reset;
  wire reset_IBUF;
  wire [0:0]seconds;
  wire set;
  wire set_IBUF;

initial begin
 $sdf_annotate("Cronometro_tb_time_synth.sdf",,,,"tool_control");
end
  Cronometro Cron
       (.D({Cron_n_3,Cron_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .set_IBUF(set_IBUF),
        .u_reg(seconds),
        .u_reg_0(hours),
        .u_reg_1(minutes),
        .u_reg_2({Cron_n_5,Cron_n_6,Cron_n_7}),
        .u_reg_3({Cron_n_8,Cron_n_9}),
        .u_reg_4({Cron_n_10,Cron_n_11,Cron_n_12}),
        .u_reg_5(Cron_n_13),
        .u_reg_6({Cron_n_14,Cron_n_15}));
  OBUF \anodi_OBUF[0]_inst 
       (.I(1'b1),
        .O(anodi[0]));
  OBUF \anodi_OBUF[1]_inst 
       (.I(1'b1),
        .O(anodi[1]));
  OBUF \anodi_OBUF[2]_inst 
       (.I(anodi_OBUF[2]),
        .O(anodi[2]));
  OBUF \anodi_OBUF[3]_inst 
       (.I(anodi_OBUF[3]),
        .O(anodi[3]));
  OBUF \anodi_OBUF[4]_inst 
       (.I(anodi_OBUF[4]),
        .O(anodi[4]));
  OBUF \anodi_OBUF[5]_inst 
       (.I(anodi_OBUF[5]),
        .O(anodi[5]));
  OBUF \anodi_OBUF[6]_inst 
       (.I(anodi_OBUF[6]),
        .O(anodi[6]));
  OBUF \anodi_OBUF[7]_inst 
       (.I(anodi_OBUF[7]),
        .O(anodi[7]));
  OBUF \catodi_OBUF[0]_inst 
       (.I(catodi_OBUF[0]),
        .O(catodi[0]));
  OBUF \catodi_OBUF[1]_inst 
       (.I(catodi_OBUF[1]),
        .O(catodi[1]));
  OBUF \catodi_OBUF[2]_inst 
       (.I(catodi_OBUF[2]),
        .O(catodi[2]));
  OBUF \catodi_OBUF[3]_inst 
       (.I(catodi_OBUF[3]),
        .O(catodi[3]));
  OBUF \catodi_OBUF[4]_inst 
       (.I(catodi_OBUF[4]),
        .O(catodi[4]));
  OBUF \catodi_OBUF[5]_inst 
       (.I(catodi_OBUF[5]),
        .O(catodi[5]));
  OBUF \catodi_OBUF[6]_inst 
       (.I(catodi_OBUF[6]),
        .O(catodi[6]));
  OBUF \catodi_OBUF[7]_inst 
       (.I(1'b1),
        .O(catodi[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  display dis
       (.CLK(clk_IBUF_BUFG),
        .D({Cron_n_5,Cron_n_6,Cron_n_7}),
        .anodi_OBUF(anodi_OBUF),
        .catodi_OBUF(catodi_OBUF),
        .\catodi_OBUF[6]_inst_i_2 ({Cron_n_3,Cron_n_4,seconds}),
        .\catodi_OBUF[6]_inst_i_2_0 ({Cron_n_10,Cron_n_11,Cron_n_12}),
        .\catodi_OBUF[6]_inst_i_2_1 ({Cron_n_8,Cron_n_9,minutes}),
        .\catodi_OBUF[6]_inst_i_4 ({Cron_n_14,Cron_n_15}),
        .\catodi_OBUF[6]_inst_i_4_0 ({Cron_n_13,hours}),
        .reset_IBUF(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF set_IBUF_inst
       (.I(set),
        .O(set_IBUF));
endmodule

module display
   (catodi_OBUF,
    anodi_OBUF,
    reset_IBUF,
    CLK,
    D,
    \catodi_OBUF[6]_inst_i_2 ,
    \catodi_OBUF[6]_inst_i_2_0 ,
    \catodi_OBUF[6]_inst_i_2_1 ,
    \catodi_OBUF[6]_inst_i_4 ,
    \catodi_OBUF[6]_inst_i_4_0 );
  output [6:0]catodi_OBUF;
  output [5:0]anodi_OBUF;
  input reset_IBUF;
  input CLK;
  input [2:0]D;
  input [2:0]\catodi_OBUF[6]_inst_i_2 ;
  input [2:0]\catodi_OBUF[6]_inst_i_2_0 ;
  input [2:0]\catodi_OBUF[6]_inst_i_2_1 ;
  input [1:0]\catodi_OBUF[6]_inst_i_4 ;
  input [1:0]\catodi_OBUF[6]_inst_i_4_0 ;

  wire CLK;
  wire [2:0]D;
  wire [5:0]anodi_OBUF;
  wire [6:0]catodi_OBUF;
  wire [2:0]\catodi_OBUF[6]_inst_i_2 ;
  wire [2:0]\catodi_OBUF[6]_inst_i_2_0 ;
  wire [2:0]\catodi_OBUF[6]_inst_i_2_1 ;
  wire [1:0]\catodi_OBUF[6]_inst_i_4 ;
  wire [1:0]\catodi_OBUF[6]_inst_i_4_0 ;
  wire [1:0]decine_ore;
  wire [2:0]decine_secondi;
  wire en;
  wire reset_IBUF;
  wire splitter_minuti_n_0;
  wire splitter_minuti_n_1;
  wire splitter_minuti_n_2;
  wire [1:0]unita_ore;
  wire [2:0]unita_secondi;
  wire [1:0]uscita_contatore;
  wire uscita_divisore;

  contatore_modulo_8_display contatore
       (.CLK(CLK),
        .Q(decine_ore),
        .anodi_OBUF(anodi_OBUF),
        .\catodi[6] (splitter_minuti_n_2),
        .catodi_OBUF(catodi_OBUF),
        .\catodi_OBUF[6]_inst_i_1_0 (splitter_minuti_n_0),
        .\catodi_OBUF[6]_inst_i_1_1 (unita_ore),
        .\catodi_OBUF[6]_inst_i_1_2 (splitter_minuti_n_1),
        .\conteggio_reg[1]_0 (uscita_contatore),
        .reset_IBUF(reset_IBUF),
        .uscita_divisore(uscita_divisore));
  Divisore_freq__parameterized1 freq_div
       (.CLK(CLK),
        .reset_IBUF(reset_IBUF),
        .uscita_divisore(uscita_divisore));
  Divisore_freq__parameterized3 freq_div2
       (.CLK(CLK),
        .E(en),
        .reset_IBUF(reset_IBUF));
  splitter splitter_minuti
       (.E(en),
        .Q(decine_secondi),
        .\catodi_OBUF[1]_inst_i_1 (uscita_contatore),
        .\catodi_OBUF[1]_inst_i_1_0 (unita_secondi),
        .\catodi_OBUF[6]_inst_i_2_0 (\catodi_OBUF[6]_inst_i_2_0 ),
        .\catodi_OBUF[6]_inst_i_2_1 (\catodi_OBUF[6]_inst_i_2_1 ),
        .\conteggio_reg[1] (splitter_minuti_n_0),
        .\conteggio_reg[1]_0 (splitter_minuti_n_1),
        .\conteggio_reg[1]_1 (splitter_minuti_n_2));
  splitter_0 splitter_ore
       (.E(en),
        .Q(unita_ore),
        .\catodi_OBUF[6]_inst_i_4 (\catodi_OBUF[6]_inst_i_4 ),
        .\catodi_OBUF[6]_inst_i_4_0 (\catodi_OBUF[6]_inst_i_4_0 ),
        .div_reg(decine_ore));
  splitter_1 splitter_secondi
       (.D(D),
        .E(en),
        .Q(unita_secondi),
        .\catodi_OBUF[6]_inst_i_2 (\catodi_OBUF[6]_inst_i_2 ),
        .div_reg(decine_secondi));
endmodule

module splitter
   (\conteggio_reg[1] ,
    \conteggio_reg[1]_0 ,
    \conteggio_reg[1]_1 ,
    \catodi_OBUF[1]_inst_i_1 ,
    Q,
    \catodi_OBUF[1]_inst_i_1_0 ,
    \catodi_OBUF[6]_inst_i_2_0 ,
    E,
    \catodi_OBUF[6]_inst_i_2_1 );
  output \conteggio_reg[1] ;
  output \conteggio_reg[1]_0 ;
  output \conteggio_reg[1]_1 ;
  input [1:0]\catodi_OBUF[1]_inst_i_1 ;
  input [2:0]Q;
  input [2:0]\catodi_OBUF[1]_inst_i_1_0 ;
  input [2:0]\catodi_OBUF[6]_inst_i_2_0 ;
  input [0:0]E;
  input [2:0]\catodi_OBUF[6]_inst_i_2_1 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]\catodi_OBUF[1]_inst_i_1 ;
  wire [2:0]\catodi_OBUF[1]_inst_i_1_0 ;
  wire [2:0]\catodi_OBUF[6]_inst_i_2_0 ;
  wire [2:0]\catodi_OBUF[6]_inst_i_2_1 ;
  wire \conteggio_reg[1] ;
  wire \conteggio_reg[1]_0 ;
  wire \conteggio_reg[1]_1 ;
  wire [2:0]decine_minuti;
  wire [2:0]unita_minuti;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \catodi_OBUF[6]_inst_i_2 
       (.I0(decine_minuti[2]),
        .I1(unita_minuti[2]),
        .I2(\catodi_OBUF[1]_inst_i_1 [1]),
        .I3(Q[2]),
        .I4(\catodi_OBUF[1]_inst_i_1 [0]),
        .I5(\catodi_OBUF[1]_inst_i_1_0 [2]),
        .O(\conteggio_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \catodi_OBUF[6]_inst_i_5 
       (.I0(decine_minuti[0]),
        .I1(unita_minuti[0]),
        .I2(\catodi_OBUF[1]_inst_i_1 [1]),
        .I3(Q[0]),
        .I4(\catodi_OBUF[1]_inst_i_1 [0]),
        .I5(\catodi_OBUF[1]_inst_i_1_0 [0]),
        .O(\conteggio_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \catodi_OBUF[6]_inst_i_6 
       (.I0(decine_minuti[1]),
        .I1(unita_minuti[1]),
        .I2(\catodi_OBUF[1]_inst_i_1 [1]),
        .I3(Q[1]),
        .I4(\catodi_OBUF[1]_inst_i_1 [0]),
        .I5(\catodi_OBUF[1]_inst_i_1_0 [1]),
        .O(\conteggio_reg[1]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[0] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_1 [0]),
        .G(E),
        .GE(1'b1),
        .Q(decine_minuti[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[1] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_1 [1]),
        .G(E),
        .GE(1'b1),
        .Q(decine_minuti[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[2] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_1 [2]),
        .G(E),
        .GE(1'b1),
        .Q(decine_minuti[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[0] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_0 [0]),
        .G(E),
        .GE(1'b1),
        .Q(unita_minuti[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[1] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_0 [1]),
        .G(E),
        .GE(1'b1),
        .Q(unita_minuti[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[2] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2_0 [2]),
        .G(E),
        .GE(1'b1),
        .Q(unita_minuti[2]));
endmodule

(* ORIG_REF_NAME = "splitter" *) 
module splitter_0
   (Q,
    div_reg,
    \catodi_OBUF[6]_inst_i_4 ,
    E,
    \catodi_OBUF[6]_inst_i_4_0 );
  output [1:0]Q;
  output [1:0]div_reg;
  input [1:0]\catodi_OBUF[6]_inst_i_4 ;
  input [0:0]E;
  input [1:0]\catodi_OBUF[6]_inst_i_4_0 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]\catodi_OBUF[6]_inst_i_4 ;
  wire [1:0]\catodi_OBUF[6]_inst_i_4_0 ;
  wire [1:0]div_reg;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[0] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_4_0 [0]),
        .G(E),
        .GE(1'b1),
        .Q(div_reg[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[1] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_4_0 [1]),
        .G(E),
        .GE(1'b1),
        .Q(div_reg[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[0] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_4 [0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[1] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_4 [1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "splitter" *) 
module splitter_1
   (Q,
    div_reg,
    D,
    E,
    \catodi_OBUF[6]_inst_i_2 );
  output [2:0]Q;
  output [2:0]div_reg;
  input [2:0]D;
  input [0:0]E;
  input [2:0]\catodi_OBUF[6]_inst_i_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [2:0]\catodi_OBUF[6]_inst_i_2 ;
  wire [2:0]div_reg;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[0] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2 [0]),
        .G(E),
        .GE(1'b1),
        .Q(div_reg[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[1] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2 [1]),
        .G(E),
        .GE(1'b1),
        .Q(div_reg[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_decine_reg[2] 
       (.CLR(1'b0),
        .D(\catodi_OBUF[6]_inst_i_2 [2]),
        .G(E),
        .GE(1'b1),
        .Q(div_reg[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_unita_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
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
