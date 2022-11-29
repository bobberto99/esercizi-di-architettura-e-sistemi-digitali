@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Oct 29 18:14:14 +0200 2022
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim Riconoscitore_2modi_TB_time_synth -key {Post-Synthesis:sim_1:Timing:Riconoscitore_2modi_TB} -tclbatch Riconoscitore_2modi_TB.tcl -log simulate.log"
call xsim  Riconoscitore_2modi_TB_time_synth -key {Post-Synthesis:sim_1:Timing:Riconoscitore_2modi_TB} -tclbatch Riconoscitore_2modi_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
