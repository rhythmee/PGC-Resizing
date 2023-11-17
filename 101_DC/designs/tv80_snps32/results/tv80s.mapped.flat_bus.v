/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP3
// Date      : Fri Nov 17 22:17:03 2023
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_tv80s_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   net1599, net1602, n1;

  AND2X1_RVT main_gate ( .A1(net1602), .A2(CLK), .Y(ENCLK) );
  OR2X1_RVT test_or ( .A1(EN), .A2(TE), .Y(net1599) );
  LATCHX1_RVT latch ( .CLK(n1), .D(net1599), .Q(net1602) );
  INVX2_RVT U1 ( .A(CLK), .Y(n1) );
endmodule


module SNPS_CLOCK_GATE_HIGH_tv80s_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   net1599, net1602, n2;

  AND2X1_RVT main_gate ( .A1(net1602), .A2(CLK), .Y(ENCLK) );
  OR2X1_RVT test_or ( .A1(EN), .A2(TE), .Y(net1599) );
  LATCHX1_RVT latch ( .CLK(n2), .D(net1599), .Q(net1602) );
  INVX2_RVT U1 ( .A(CLK), .Y(n2) );
endmodule


module tv80s_DW01_inc_1_DW01_inc_4 ( A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;
  output SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_;
  wire   carry_6_, carry_5_, carry_4_, carry_3_, carry_2_;

  HADDX1_RVT U1_1_5 ( .A0(A_5_), .B0(carry_5_), .C1(carry_6_), .SO(SUM_5_) );
  HADDX1_RVT U1_1_4 ( .A0(A_4_), .B0(carry_4_), .C1(carry_5_), .SO(SUM_4_) );
  HADDX1_RVT U1_1_3 ( .A0(A_3_), .B0(carry_3_), .C1(carry_4_), .SO(SUM_3_) );
  HADDX1_RVT U1_1_2 ( .A0(A_2_), .B0(carry_2_), .C1(carry_3_), .SO(SUM_2_) );
  HADDX1_RVT U1_1_1 ( .A0(A_1_), .B0(A_0_), .C1(carry_2_), .SO(SUM_1_) );
  XOR2X1_RVT U1 ( .A1(carry_6_), .A2(A_6_), .Y(SUM_6_) );
  INVX0_RVT U2 ( .A(A_0_), .Y(SUM_0_) );
endmodule


module SNPS_CLOCK_GATE_HIGH_tv80s_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   net1599, net1602, n2;

  AND2X1_RVT main_gate ( .A1(net1602), .A2(CLK), .Y(ENCLK) );
  OR2X1_RVT test_or ( .A1(EN), .A2(TE), .Y(net1599) );
  LATCHX1_RVT latch ( .CLK(n2), .D(net1599), .Q(net1602) );
  INVX0_RVT U2 ( .A(CLK), .Y(n2) );
endmodule


module tv80s_DW01_inc_0 ( A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, 
        A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, SUM_15_, SUM_14_, 
        SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, 
        SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_,
         A_4_, A_3_, A_2_, A_1_, A_0_;
  output SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_,
         SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  HADDX1_RVT U2 ( .A0(A_14_), .B0(n2), .C1(n1), .SO(SUM_14_) );
  HADDX1_RVT U3 ( .A0(A_13_), .B0(n3), .C1(n2), .SO(SUM_13_) );
  HADDX1_RVT U4 ( .A0(A_12_), .B0(n4), .C1(n3), .SO(SUM_12_) );
  HADDX1_RVT U5 ( .A0(A_11_), .B0(n5), .C1(n4), .SO(SUM_11_) );
  HADDX1_RVT U6 ( .A0(A_10_), .B0(n6), .C1(n5), .SO(SUM_10_) );
  HADDX1_RVT U7 ( .A0(A_9_), .B0(n7), .C1(n6), .SO(SUM_9_) );
  HADDX1_RVT U8 ( .A0(A_8_), .B0(n8), .C1(n7), .SO(SUM_8_) );
  HADDX1_RVT U9 ( .A0(A_7_), .B0(n9), .C1(n8), .SO(SUM_7_) );
  HADDX1_RVT U10 ( .A0(A_6_), .B0(n10), .C1(n9), .SO(SUM_6_) );
  HADDX1_RVT U11 ( .A0(A_5_), .B0(n11), .C1(n10), .SO(SUM_5_) );
  HADDX1_RVT U12 ( .A0(A_4_), .B0(n12), .C1(n11), .SO(SUM_4_) );
  HADDX1_RVT U13 ( .A0(A_3_), .B0(n13), .C1(n12), .SO(SUM_3_) );
  HADDX1_RVT U14 ( .A0(A_2_), .B0(n14), .C1(n13), .SO(SUM_2_) );
  HADDX1_RVT U15 ( .A0(A_1_), .B0(A_0_), .C1(n14), .SO(SUM_1_) );
  INVX1_RVT U20 ( .A(A_0_), .Y(SUM_0_) );
  XOR2X1_RVT U21 ( .A1(n1), .A2(A_15_), .Y(SUM_15_) );
endmodule


module tv80s ( m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, 
        A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, 
        A_4_, A_3_, A_2_, A_1_, A_0_, do_7_, do_6_, do_5_, do_4_, do_3_, do_2_, 
        do_1_, do_0_, reset_n, MY_CLK, wait_n, int_n, nmi_n, busrq_n, di_7_, 
        di_6_, di_5_, di_4_, di_3_, di_2_, di_1_, di_0_ );
  input reset_n, MY_CLK, wait_n, int_n, nmi_n, busrq_n, di_7_, di_6_, di_5_,
         di_4_, di_3_, di_2_, di_1_, di_0_;
  output m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, A_15_,
         A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_,
         A_3_, A_2_, A_1_, A_0_, do_7_, do_6_, do_5_, do_4_, do_3_, do_2_,
         do_1_, do_0_;
  wire   di_reg_7_, di_reg_6_, di_reg_5_, di_reg_4_, di_reg_3_, di_reg_2_,
         di_reg_1_, di_reg_0_, mcycle_2_, mcycle_1_, mcycle_0_, tstate_2_,
         tstate_1_, tstate_0_, N33, N35, N36, i_tv80_core_N1441,
         i_tv80_core_N1440, i_tv80_core_Auto_Wait_t2,
         i_tv80_core_Pre_XY_F_M_0_, i_tv80_core_Pre_XY_F_M_1_,
         i_tv80_core_Pre_XY_F_M_2_, i_tv80_core_Oldnmi_n, i_tv80_core_NMI_s,
         i_tv80_core_INT_s, i_tv80_core_BusReq_s, i_tv80_core_N1294,
         i_tv80_core_N1222, i_tv80_core_N1221, i_tv80_core_N1220,
         i_tv80_core_N1219, i_tv80_core_N1218, i_tv80_core_N1217,
         i_tv80_core_N1216, i_tv80_core_N1215, i_tv80_core_N1214,
         i_tv80_core_N1213, i_tv80_core_N1212, i_tv80_core_N1211,
         i_tv80_core_N1210, i_tv80_core_N1209, i_tv80_core_N1208,
         i_tv80_core_N1207, i_tv80_core_RegBusB_0_, i_tv80_core_RegBusB_1_,
         i_tv80_core_RegBusB_2_, i_tv80_core_RegBusB_3_,
         i_tv80_core_RegBusB_4_, i_tv80_core_RegBusB_5_,
         i_tv80_core_RegBusB_6_, i_tv80_core_RegBusB_7_,
         i_tv80_core_RegBusB_8_, i_tv80_core_RegBusB_9_,
         i_tv80_core_RegBusB_10_, i_tv80_core_RegBusB_11_,
         i_tv80_core_RegBusB_12_, i_tv80_core_RegBusB_13_,
         i_tv80_core_RegBusB_14_, i_tv80_core_RegBusB_15_,
         i_tv80_core_RegBusA_0_, i_tv80_core_RegBusA_1_,
         i_tv80_core_RegBusA_2_, i_tv80_core_RegBusA_3_,
         i_tv80_core_RegBusA_4_, i_tv80_core_RegBusA_5_,
         i_tv80_core_RegBusA_6_, i_tv80_core_RegBusA_7_,
         i_tv80_core_RegBusA_8_, i_tv80_core_RegBusA_9_,
         i_tv80_core_RegBusA_10_, i_tv80_core_RegBusA_11_,
         i_tv80_core_RegBusA_12_, i_tv80_core_RegBusA_13_,
         i_tv80_core_RegBusA_14_, i_tv80_core_RegBusA_15_,
         i_tv80_core_RegBusA_r_0_, i_tv80_core_RegBusA_r_1_,
         i_tv80_core_RegBusA_r_2_, i_tv80_core_RegBusA_r_3_,
         i_tv80_core_RegBusA_r_4_, i_tv80_core_RegBusA_r_5_,
         i_tv80_core_RegBusA_r_6_, i_tv80_core_RegBusA_r_7_,
         i_tv80_core_RegBusA_r_8_, i_tv80_core_RegBusA_r_9_,
         i_tv80_core_RegBusA_r_10_, i_tv80_core_RegBusA_r_11_,
         i_tv80_core_RegBusA_r_12_, i_tv80_core_RegBusA_r_13_,
         i_tv80_core_RegBusA_r_14_, i_tv80_core_RegBusA_r_15_,
         i_tv80_core_N1117, i_tv80_core_N1108, i_tv80_core_RegAddrB_r_0_,
         i_tv80_core_RegAddrB_r_1_, i_tv80_core_RegAddrB_r_2_,
         i_tv80_core_N1103, i_tv80_core_N1102, i_tv80_core_RegAddrA_r_0_,
         i_tv80_core_RegAddrA_r_1_, i_tv80_core_RegAddrA_r_2_,
         i_tv80_core_IncDecZ, i_tv80_core_Fp_0_, i_tv80_core_Fp_2_,
         i_tv80_core_Fp_4_, i_tv80_core_Fp_7_, i_tv80_core_N262,
         i_tv80_core_N261, i_tv80_core_N260, i_tv80_core_N259,
         i_tv80_core_N258, i_tv80_core_N257, i_tv80_core_N256,
         i_tv80_core_N255, i_tv80_core_N254, i_tv80_core_N253,
         i_tv80_core_N252, i_tv80_core_N251, i_tv80_core_N250,
         i_tv80_core_N249, i_tv80_core_N248, i_tv80_core_N247,
         i_tv80_core_mcycles_0_, i_tv80_core_mcycles_1_, i_tv80_core_N159,
         i_tv80_core_N158, i_tv80_core_N157, i_tv80_core_N156,
         i_tv80_core_N155, i_tv80_core_N154, i_tv80_core_N153,
         i_tv80_core_Alternate, i_tv80_core_SP_0_, i_tv80_core_SP_1_,
         i_tv80_core_SP_2_, i_tv80_core_SP_3_, i_tv80_core_SP_4_,
         i_tv80_core_SP_5_, i_tv80_core_SP_6_, i_tv80_core_SP_7_,
         i_tv80_core_SP_8_, i_tv80_core_SP_9_, i_tv80_core_SP_10_,
         i_tv80_core_SP_11_, i_tv80_core_SP_12_, i_tv80_core_SP_13_,
         i_tv80_core_SP_14_, i_tv80_core_SP_15_, i_tv80_core_Read_To_Reg_r_0_,
         i_tv80_core_Read_To_Reg_r_1_, i_tv80_core_Read_To_Reg_r_2_,
         i_tv80_core_Read_To_Reg_r_3_, i_tv80_core_Read_To_Reg_r_4_,
         i_tv80_core_Auto_Wait_t1, i_tv80_core_IntE_FF2, i_tv80_core_BTR_r,
         i_tv80_core_ACC_0_, i_tv80_core_ACC_1_, i_tv80_core_ACC_2_,
         i_tv80_core_ACC_3_, i_tv80_core_ACC_4_, i_tv80_core_ACC_5_,
         i_tv80_core_ACC_6_, i_tv80_core_ACC_7_, i_tv80_core_PC_0_,
         i_tv80_core_PC_1_, i_tv80_core_PC_2_, i_tv80_core_PC_3_,
         i_tv80_core_PC_4_, i_tv80_core_PC_5_, i_tv80_core_PC_6_,
         i_tv80_core_PC_7_, i_tv80_core_PC_8_, i_tv80_core_PC_9_,
         i_tv80_core_PC_10_, i_tv80_core_PC_11_, i_tv80_core_PC_12_,
         i_tv80_core_PC_13_, i_tv80_core_PC_14_, i_tv80_core_PC_15_,
         i_tv80_core_RegBusC_0_, i_tv80_core_RegBusC_1_,
         i_tv80_core_RegBusC_2_, i_tv80_core_RegBusC_3_,
         i_tv80_core_RegBusC_4_, i_tv80_core_RegBusC_5_,
         i_tv80_core_RegBusC_6_, i_tv80_core_RegBusC_7_,
         i_tv80_core_RegBusC_8_, i_tv80_core_RegBusC_9_,
         i_tv80_core_RegBusC_10_, i_tv80_core_RegBusC_11_,
         i_tv80_core_RegBusC_12_, i_tv80_core_RegBusC_13_,
         i_tv80_core_RegBusC_14_, i_tv80_core_RegBusC_15_,
         i_tv80_core_TmpAddr_0_, i_tv80_core_TmpAddr_1_,
         i_tv80_core_TmpAddr_2_, i_tv80_core_TmpAddr_3_,
         i_tv80_core_TmpAddr_4_, i_tv80_core_TmpAddr_5_,
         i_tv80_core_TmpAddr_6_, i_tv80_core_TmpAddr_7_,
         i_tv80_core_TmpAddr_8_, i_tv80_core_TmpAddr_9_,
         i_tv80_core_TmpAddr_10_, i_tv80_core_TmpAddr_11_,
         i_tv80_core_TmpAddr_12_, i_tv80_core_TmpAddr_13_,
         i_tv80_core_TmpAddr_14_, i_tv80_core_TmpAddr_15_,
         i_tv80_core_IStatus_0_, i_tv80_core_IStatus_1_, i_tv80_core_Halt_FF,
         i_tv80_core_I_0_, i_tv80_core_I_1_, i_tv80_core_I_2_,
         i_tv80_core_I_3_, i_tv80_core_I_4_, i_tv80_core_I_5_,
         i_tv80_core_I_6_, i_tv80_core_I_7_, i_tv80_core_R_0_,
         i_tv80_core_R_1_, i_tv80_core_R_2_, i_tv80_core_R_3_,
         i_tv80_core_R_4_, i_tv80_core_R_5_, i_tv80_core_R_6_,
         i_tv80_core_R_7_, i_tv80_core_Save_ALU_r, i_tv80_core_XY_Ind,
         i_tv80_core_XY_State_0_, i_tv80_core_XY_State_1_, i_tv80_core_BusAck,
         i_tv80_core_BusB_0_, i_tv80_core_BusB_1_, i_tv80_core_BusB_2_,
         i_tv80_core_BusB_3_, i_tv80_core_BusB_4_, i_tv80_core_BusB_5_,
         i_tv80_core_BusB_6_, i_tv80_core_BusB_7_, i_tv80_core_BusA_1_,
         i_tv80_core_BusA_2_, i_tv80_core_BusA_3_, i_tv80_core_BusA_4_,
         i_tv80_core_BusA_5_, i_tv80_core_BusA_6_, i_tv80_core_BusA_7_,
         i_tv80_core_ALU_Op_r_0_, i_tv80_core_ALU_Op_r_1_,
         i_tv80_core_ALU_Op_r_2_, i_tv80_core_ALU_Op_r_3_,
         i_tv80_core_Set_BusB_To_1_, i_tv80_core_Set_BusB_To_2_,
         i_tv80_core_Set_BusB_To_3_, i_tv80_core_IntCycle,
         i_tv80_core_NMICycle, i_tv80_core_F_0_, i_tv80_core_F_1_,
         i_tv80_core_F_2_, i_tv80_core_F_3_, i_tv80_core_F_4_,
         i_tv80_core_F_5_, i_tv80_core_F_6_, i_tv80_core_F_7_,
         i_tv80_core_ISet_1_, i_tv80_core_IR_0_, i_tv80_core_IR_1_,
         i_tv80_core_IR_2_, i_tv80_core_IR_3_, i_tv80_core_IR_4_,
         i_tv80_core_IR_5_, i_tv80_core_IR_6_, i_tv80_core_IR_7_,
         i_tv80_core_IntE, i_tv80_core_i_alu_N185,
         i_tv80_core_i_reg_RegsL_7__0_, i_tv80_core_i_reg_RegsL_7__1_,
         i_tv80_core_i_reg_RegsL_7__2_, i_tv80_core_i_reg_RegsL_7__3_,
         i_tv80_core_i_reg_RegsL_7__4_, i_tv80_core_i_reg_RegsL_7__5_,
         i_tv80_core_i_reg_RegsL_7__6_, i_tv80_core_i_reg_RegsL_7__7_,
         i_tv80_core_i_reg_RegsL_6__0_, i_tv80_core_i_reg_RegsL_6__1_,
         i_tv80_core_i_reg_RegsL_6__2_, i_tv80_core_i_reg_RegsL_6__3_,
         i_tv80_core_i_reg_RegsL_6__4_, i_tv80_core_i_reg_RegsL_6__5_,
         i_tv80_core_i_reg_RegsL_6__6_, i_tv80_core_i_reg_RegsL_6__7_,
         i_tv80_core_i_reg_RegsL_5__0_, i_tv80_core_i_reg_RegsL_5__1_,
         i_tv80_core_i_reg_RegsL_5__2_, i_tv80_core_i_reg_RegsL_5__3_,
         i_tv80_core_i_reg_RegsL_5__4_, i_tv80_core_i_reg_RegsL_5__5_,
         i_tv80_core_i_reg_RegsL_5__6_, i_tv80_core_i_reg_RegsL_5__7_,
         i_tv80_core_i_reg_RegsL_4__0_, i_tv80_core_i_reg_RegsL_4__1_,
         i_tv80_core_i_reg_RegsL_4__2_, i_tv80_core_i_reg_RegsL_4__3_,
         i_tv80_core_i_reg_RegsL_4__4_, i_tv80_core_i_reg_RegsL_4__5_,
         i_tv80_core_i_reg_RegsL_4__6_, i_tv80_core_i_reg_RegsL_4__7_,
         i_tv80_core_i_reg_RegsL_3__0_, i_tv80_core_i_reg_RegsL_3__1_,
         i_tv80_core_i_reg_RegsL_3__2_, i_tv80_core_i_reg_RegsL_3__3_,
         i_tv80_core_i_reg_RegsL_3__4_, i_tv80_core_i_reg_RegsL_3__5_,
         i_tv80_core_i_reg_RegsL_3__6_, i_tv80_core_i_reg_RegsL_3__7_,
         i_tv80_core_i_reg_RegsL_2__0_, i_tv80_core_i_reg_RegsL_2__1_,
         i_tv80_core_i_reg_RegsL_2__2_, i_tv80_core_i_reg_RegsL_2__3_,
         i_tv80_core_i_reg_RegsL_2__4_, i_tv80_core_i_reg_RegsL_2__5_,
         i_tv80_core_i_reg_RegsL_2__6_, i_tv80_core_i_reg_RegsL_2__7_,
         i_tv80_core_i_reg_RegsL_1__0_, i_tv80_core_i_reg_RegsL_1__1_,
         i_tv80_core_i_reg_RegsL_1__2_, i_tv80_core_i_reg_RegsL_1__3_,
         i_tv80_core_i_reg_RegsL_1__4_, i_tv80_core_i_reg_RegsL_1__5_,
         i_tv80_core_i_reg_RegsL_1__6_, i_tv80_core_i_reg_RegsL_1__7_,
         i_tv80_core_i_reg_RegsL_0__0_, i_tv80_core_i_reg_RegsL_0__1_,
         i_tv80_core_i_reg_RegsL_0__2_, i_tv80_core_i_reg_RegsL_0__3_,
         i_tv80_core_i_reg_RegsL_0__4_, i_tv80_core_i_reg_RegsL_0__5_,
         i_tv80_core_i_reg_RegsL_0__6_, i_tv80_core_i_reg_RegsL_0__7_,
         i_tv80_core_i_reg_RegsH_7__0_, i_tv80_core_i_reg_RegsH_7__1_,
         i_tv80_core_i_reg_RegsH_7__2_, i_tv80_core_i_reg_RegsH_7__3_,
         i_tv80_core_i_reg_RegsH_7__4_, i_tv80_core_i_reg_RegsH_7__5_,
         i_tv80_core_i_reg_RegsH_7__6_, i_tv80_core_i_reg_RegsH_7__7_,
         i_tv80_core_i_reg_RegsH_6__0_, i_tv80_core_i_reg_RegsH_6__1_,
         i_tv80_core_i_reg_RegsH_6__2_, i_tv80_core_i_reg_RegsH_6__3_,
         i_tv80_core_i_reg_RegsH_6__4_, i_tv80_core_i_reg_RegsH_6__5_,
         i_tv80_core_i_reg_RegsH_6__6_, i_tv80_core_i_reg_RegsH_6__7_,
         i_tv80_core_i_reg_RegsH_5__0_, i_tv80_core_i_reg_RegsH_5__1_,
         i_tv80_core_i_reg_RegsH_5__2_, i_tv80_core_i_reg_RegsH_5__3_,
         i_tv80_core_i_reg_RegsH_5__4_, i_tv80_core_i_reg_RegsH_5__5_,
         i_tv80_core_i_reg_RegsH_5__6_, i_tv80_core_i_reg_RegsH_5__7_,
         i_tv80_core_i_reg_RegsH_4__0_, i_tv80_core_i_reg_RegsH_4__1_,
         i_tv80_core_i_reg_RegsH_4__2_, i_tv80_core_i_reg_RegsH_4__3_,
         i_tv80_core_i_reg_RegsH_4__4_, i_tv80_core_i_reg_RegsH_4__5_,
         i_tv80_core_i_reg_RegsH_4__6_, i_tv80_core_i_reg_RegsH_4__7_,
         i_tv80_core_i_reg_RegsH_3__0_, i_tv80_core_i_reg_RegsH_3__1_,
         i_tv80_core_i_reg_RegsH_3__2_, i_tv80_core_i_reg_RegsH_3__3_,
         i_tv80_core_i_reg_RegsH_3__4_, i_tv80_core_i_reg_RegsH_3__5_,
         i_tv80_core_i_reg_RegsH_3__6_, i_tv80_core_i_reg_RegsH_3__7_,
         i_tv80_core_i_reg_RegsH_2__0_, i_tv80_core_i_reg_RegsH_2__1_,
         i_tv80_core_i_reg_RegsH_2__2_, i_tv80_core_i_reg_RegsH_2__3_,
         i_tv80_core_i_reg_RegsH_2__4_, i_tv80_core_i_reg_RegsH_2__5_,
         i_tv80_core_i_reg_RegsH_2__6_, i_tv80_core_i_reg_RegsH_2__7_,
         i_tv80_core_i_reg_RegsH_1__0_, i_tv80_core_i_reg_RegsH_1__1_,
         i_tv80_core_i_reg_RegsH_1__2_, i_tv80_core_i_reg_RegsH_1__3_,
         i_tv80_core_i_reg_RegsH_1__4_, i_tv80_core_i_reg_RegsH_1__5_,
         i_tv80_core_i_reg_RegsH_1__6_, i_tv80_core_i_reg_RegsH_1__7_,
         i_tv80_core_i_reg_RegsH_0__0_, i_tv80_core_i_reg_RegsH_0__1_,
         i_tv80_core_i_reg_RegsH_0__2_, i_tv80_core_i_reg_RegsH_0__3_,
         i_tv80_core_i_reg_RegsH_0__4_, i_tv80_core_i_reg_RegsH_0__5_,
         i_tv80_core_i_reg_RegsH_0__6_, i_tv80_core_i_reg_RegsH_0__7_,
         i_tv80_core_i_reg_N22, i_tv80_core_i_reg_N21, i_tv80_core_i_reg_N20,
         i_tv80_core_i_reg_N19, i_tv80_core_i_reg_N18, i_tv80_core_i_reg_N17,
         i_tv80_core_i_reg_N16, i_tv80_core_i_reg_N15, i_tv80_core_i_reg_N14,
         net1618, net1620, n107, n108, n109, n110, n111, n112, n113, n114,
         n120, n192, n194, n197, n273, n277, n281, n303, n304, n306, n308,
         n310, n311, n329, n335, n336, n339, n340, n341, n342, n343, n344,
         n345, n346, n348, n357, n358, n433, n434, n435, n444, n460, n467,
         n468, n484, n488, n489, n493, n497, n498, n499, n500, n509, n514,
         n1147, n1287, n1288, n1411, n1602, n1604, n1835, n1880, n1881, n1882,
         n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892,
         n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902,
         n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912,
         n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922,
         n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932,
         n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942,
         n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952,
         n1953, n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962,
         n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972,
         n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982,
         n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992,
         n1993, n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002,
         n2003, n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012,
         n2013, n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022,
         n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032,
         n2033, n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042,
         n2043, n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052,
         n2053, n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062,
         n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072,
         n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082,
         n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092,
         n2093, n2094, n2095, n2099, n2100, n2101, n2102, n2103, n2104, n2105,
         n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113, n2114, n2115,
         n2116, n2117, n2118, n2119, n2120, n2122, n2123, n2124, n2125, n2126,
         n2127, n2128, n2129, n2133, n2136, n2140, n2142, n2143, n2144, n2145,
         n2148, n2149, n2150, n2151, n2152, n2153, n2154, n2155, n2156, n2157,
         n2158, n2159, n2160, n2161, n2162, n2163, n2165, n2166, n2167, n2168,
         n2169, n2170, n2171, n2172, n2173, n2174, n2175, n2176, n2177, n2178,
         n2179, n2180, n2181, n2182, n2183, n2185, n2187, n2188, n2189, n2190,
         n2191, n2295, n2296, n2298, n2299, n2300, n2310, n2311, n2313, n2314,
         n2316, n2317, n2318, n2320, n2321, n2322, n2323, n2324, n2325, n2328,
         n2330, n2331, n2333, n2335, n2336, n2338, n2340, n2342, n2346, n2347,
         n2348, n2349, n2350, n2351, n2352, n2353, n2354, n2355, n2356, n2358,
         n2359, n2360, n2361, n2362, n2363, n2364, n2365, n2366, n2367, n2368,
         n2369, n2370, n2371, n2372, n2373, n2376, n2377, n2378, n2379, n2380,
         n2381, n2382, n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390,
         n2391, n2392, n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400,
         n2401, n2402, n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410,
         n2411, n2412, n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421,
         n2422, n2423, n2424, n2425, n2426, n2427, n2428, n2431, n2432, n2433,
         n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441, n2442, n2443,
         n2444, n2445, n2446, n2447, n2448, n2450, n2451, n2452, n2453, n2454,
         n2455, n2457, n2458, n2459, n2462, n2463, n2464, n2469, n2470, n2471,
         n2472, n2474, n2475, n2476, n2478, n2479, n2480, n2484, n2485, n2486,
         n2488, n2489, n2492, n2493, n2494, n2495, n2496, n2497, n2498, n2499,
         n2500, n2501, n2503, n2504, n2505, n2506, n2507, n2509, n2510, n2511,
         n2512, n2513, n2514, n2515, n2518, n2520, n2521, n2522, n2523, n2524,
         n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532, n2533, n2534,
         n2535, n2536, n2537, n2539, n2540, n2542, n2543, n2544, n2545, n2546,
         n2547, n2548, n2549, n2550, n2551, n2552, n2553, n2554, n2555, n2556,
         n2557, n2558, n2559, n2560, n2561, n2562, n2563, n2564, n2565, n2566,
         n2567, n2568, n2569, n2570, n2571, n2572, n2573, n2574, n2577, n2578,
         n2579, n2580, n2581, n2582, n2583, n2584, n2585, n2586, n2587, n2588,
         n2589, n2590, n2591, n2592, n2593, n2594, n2595, n2596, n2597, n2598,
         n2599, n2600, n2601, n2602, n2603, n2604, n2605, n2606, n2607, n2608,
         n2609, n2610, n2611, n2612, n2613, n2614, n2615, n2616, n2617, n2618,
         n2619, n2620, n2621, n2622, n2623, n2624, n2625, n2626, n2627, n2628,
         n2629, n2630, n2631, n2632, n2633, n2634, n2635, n2636, n2637, n2638,
         n2639, n2640, n2641, n2642, n2643, n2644, n2645, n2646, n2647, n2648,
         n2649, n2650, n2651, n2652, n2653, n2654, n2655, n2656, n2657, n2658,
         n2659, n2660, n2661, n2662, n2663, n2664, n2665, n2666, n2667, n2668,
         n2669, n2670, n2671, n2672, n2673, n2674, n2675, n2676, n2677, n2678,
         n2679, n2680, n2681, n2682, n2683, n2684, n2685, n2686, n2687, n2688,
         n2689, n2690, n2691, n2692, n2693, n2694, n2695, n2696, n2697, n2699,
         n2700, n2701, n2702, n2703, n2704, n2705, n2706, n2707, n2708, n2709,
         n2710, n2711, n2712, n2713, n2714, n2715, n2716, n2717, n2718, n2719,
         n2720, n2721, n2722, n2723, n2724, n2725, n2726, n2727, n2728, n2729,
         n2730, n2731, n2732, n2733, n2734, n2735, n2736, n2737, n2738, n2739,
         n2740, n2741, n2742, n2743, n2744, n2745, n2746, n2747, n2748, n2750,
         n2751, n2752, n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760,
         n2761, n2762, n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770,
         n2771, n2772, n2773, n2774, n2775, n2776, n2777, n2778, n2779, n2780,
         n2781, n2782, n2783, n2784, n2785, n2786, n2787, n2788, n2789, n2790,
         n2791, n2792, n2793, n2794, n2795, n2796, n2797, n2798, n2799, n2800,
         n2801, n2802, n2803, n2808, n2809, n2810, n2811, n2812, n2813, n2814,
         n2815, n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824,
         n2825, n2826, n2827, n2828, n2829, n2830, n2831, n2832, n2833, n2834,
         n2835, n2836, n2837, n2838, n2839, n2840, n2841, n2842, n2843, n2844,
         n2845, n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854,
         n2855, n2856, n2857, n2858, n2859, n2860, n2861, n2862, n2863, n2864,
         n2865, n2866, n2867, n2868, n2869, n2870, n2871, n2872, n2873, n2874,
         n2875, n2876, n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884,
         n2885, n2886, n2887, n2888, n2889, n2890, n2891, n2892, n2893, n2894,
         n2895, n2896, n2897, n2898, n2899, n2900, n2901, n2902, n2903, n2904,
         n2905, n2906, n2907, n2908, n2909, n2910, n2911, n2912, n2913, n2914,
         n2915, n2916, n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924,
         n2925, n2926, n2927, n2928, n2929, n2930, n2931, n2932, n2933, n2934,
         n2935, n2936, n2937, n2938, n2939, n2940, n2941, n2942, n2943, n2944,
         n2945, n2946, n2947, n2948, n2949, n2950, n2952, n2953, n2954, n2955,
         n2958, n2959, n2960, n2961, n2962, n2963, n2964, n2965, n2966, n2967,
         n2968, n2969, n2970, n2971, n2972, n2973, n2974, n2975, n2976, n2977,
         n2978, n2979, n2980, n2981, n2982, n2983, n2984, n2985, n2986, n2987,
         n2988, n2989, n2990, n2991, n2992, n2993, n2994, n2995, n2996, n2997,
         n2998, n2999, n3000, n3001, n3002, n3003, n3004, n3005, n3006, n3007,
         n3008, n3009, n3010, n3011, n3012, n3013, n3014, n3015, n3016, n3017,
         n3018, n3019, n3020, n3021, n3022, n3023, n3024, n3025, n3026, n3027,
         n3028, n3029, n3030, n3031, n3032, n3033, n3034, n3035, n3036, n3037,
         n3038, n3039, n3040, n3041, n3042, n3043, n3044, n3045, n3046, n3047,
         n3048, n3049, n3050, n3051, n3052, n3053, n3054, n3055, n3056, n3058,
         n3059, n3060, n3061, n3065, n3066, n3067, n3068, n3069, n3070, n3071,
         n3072, n3073, n3074, n3075, n3076, n3077, n3078, n3079, n3080, n3081,
         n3082, n3083, n3084, n3085, n3086, n3087, n3088, n3089, n3090, n3091,
         n3092, n3093, n3094, n3095, n3096, n3097, n3098, n3099, n3100, n3101,
         n3102, n3103, n3106, n3107, n3108, n3109, n3110, n3111, n3112, n3113,
         n3114, n3116, n3117, n3119, n3120, n3121, n3122, n3123, n3124, n3126,
         n3127, n3129, n3130, n3132, n3133, n3135, n3137, n3138, n3140, n3142,
         n3143, n3144, n3146, n3147, n3148, n3150, n3151, n3152, n3156, n3158,
         n3159, n3160, n3161, n3162, n3163, n3164, n3165, n3167, n3168, n3169,
         n3170, n3171, n3172, n3173, n3174, n3175, n3176, n3177, n3178, n3179,
         n3180, n3181, n3182, n3183, n3184, n3185, n3186, n3187, n3188, n3189,
         n3190, n3191, n3192, n3193, n3194, n3195, n3196, n3197, n3198, n3199,
         n3200, n3201, n3202, n3203, n3204, n3205, n3206, n3207, n3208, n3209,
         n3210, n3211, n3212, n3213, n3214, n3215, n3216, n3217, n3218, n3219,
         n3220, n3221, n3222, n3223, n3224, n3225, n3226, n3227, n3228, n3229,
         n3230, n3231, n3232, n3233, n3234, n3235, n3236, n3237, n3238, n3239,
         n3240, n3241, n3242, n3243, n3244, n3245, n3246, n3247, n3248, n3249,
         n3250, n3251, n3252, n3253, n3254, n3255, n3256, n3257, n3258, n3259,
         n3260, n3261, n3262, n3263, n3264, n3265, n3266, n3267, n3268, n3269,
         n3270, n3271, n3272, n3273, n3274, n3275, n3276, n3277, n3278, n3279,
         n3280, n3281, n3282, n3283, n3284, n3285, n3286, n3287, n3288, n3289,
         n3290, n3291, n3292, n3293, n3294, n3295, n3296, n3297, n3298, n3299,
         n3300, n3301, n3302, n3303, n3304, n3305, n3306, n3307, n3308, n3309,
         n3310, n3311, n3312, n3313, n3314, n3315, n3316, n3317, n3318, n3319,
         n3320, n3321, n3322, n3323, n3324, n3325, n3326, n3327, n3328, n3329,
         n3330, n3331, n3332, n3333, n3334, n3335, n3336, n3337, n3338, n3339,
         n3340, n3341, n3342, n3343, n3344, n3345, n3346, n3347, n3348, n3349,
         n3350, n3351, n3352, n3353, n3354, n3355, n3356, n3357, n3358, n3359,
         n3360, n3361, n3362, n3363, n3364, n3365, n3367, n3368, n3369, n3370,
         n3371, n3372, n3373, n3374, n3375, n3376, n3377, n3378, n3379, n3380,
         n3381, n3382, n3383, n3384, n3385, n3386, n3387, n3388, n3389, n3390,
         n3391, n3392, n3393, n3394, n3395, n3396, n3397, n3398, n3399, n3400,
         n3401, n3402, n3403, n3404, n3405, n3406, n3407, n3408, n3409, n3410,
         n3411, n3412, n3413, n3414, n3415, n3416, n3417, n3418, n3419, n3420,
         n3421, n3422, n3423, n3424, n3425, n3426, n3427, n3428, n3429, n3430,
         n3431, n3432, n3433, n3434, n3435, n3436, n3437, n3438, n3439, n3440,
         n3441, n3442, n3443, n3444, n3445, n3446, n3447, n3448, n3449, n3450,
         n3451, n3452, n3453, n3454, n3455, n3456, n3457, n3458, n3459, n3460,
         n3461, n3462, n3463, n3464, n3465, n3466, n3467, n3468, n3469, n3470,
         n3471, n3472, n3473, n3474, n3475, n3476, n3477, n3478, n3479, n3480,
         n3481, n3482, n3483, n3484, n3485, n3486, n3487, n3488, n3489, n3490,
         n3491, n3492, n3493, n3494, n3495, n3496, n3497, n3498, n3499, n3500,
         n3501, n3502, n3503, n3504, n3505, n3506, n3507, n3508, n3509, n3510,
         n3511, n3512, n3513, n3514, n3515, n3516, n3517, n3518, n3519, n3520,
         n3521, n3522, n3523, n3524, n3525, n3526, n3527, n3528, n3529, n3530,
         n3531, n3532, n3533, n3534, n3535, n3536, n3537, n3538, n3539, n3540,
         n3541, n3542, n3543, n3544, n3545, n3546, n3547, n3548, n3549, n3550,
         n3551, n3552, n3553, n3554, n3555, n3556, n3557, n3558, n3559, n3560,
         n3561, n3562, n3563, n3564, n3565, n3566, n3567, n3568, n3569, n3571,
         n3572, n3573, n3574, n3575, n3576, n3577, n3578, n3579, n3580, n3581,
         n3582, n3583, n3584, n3585, n3586, n3587, n3588, n3589, n3590, n3591,
         n3592, n3593, n3594, n3595, n3596, n3597, n3598, n3599, n3600, n3601,
         n3602, n3603, n3604, n3605, n3606, n3607, n3608, n3609, n3610, n3611,
         n3612, n3613, n3614, n3615, n3616, n3617, n3618, n3619, n3620, n3621,
         n3622, n3623, n3624, n3625, n3626, n3627, n3628, n3629, n3630, n3631,
         n3632, n3633, n3634, n3635, n3636, n3637, n3638, n3639, n3640, n3641,
         n3642, n3643, n3644, n3645, n3646, n3647, n3648, n3649, n3650, n3651,
         n3652, n3653, n3654, n3655, n3656, n3657, n3658, n3659, n3660, n3661,
         n3662, n3663, n3664, n3665, n3666, n3667, n3668, n3670, n3671, n3672,
         n3673, n3674, n3675, n3676, n3677, n3678, n3679, n3680, n3681, n3682,
         n3683, n3684, n3685, n3686, n3687, n3688, n3689, n3690, n3691, n3692,
         n3693, n3694, n3695, n3696, n3697, n3698, n3699, n3700, n3701, n3702,
         n3703, n3704, n3705, n3706, n3707, n3708, n3709, n3710, n3711, n3712,
         n3713, n3714, n3715, n3716, n3717, n3718, n3719, n3720, n3721, n3722,
         n3723, n3724, n3725, n3726, n3727, n3728, n3729, n3730, n3731, n3732,
         n3733, n3734, n3735, n3736, n3737, n3738, n3739, n3740, n3741, n3742,
         n3743, n3744, n3745, n3746, n3747, n3748, n3749, n3750, n3751, n3752,
         n3753, n3754, n3755, n3756, n3757, n3758, n3759, n3760, n3761, n3762,
         n3763, n3764, n3765, n3766, n3767, n3768, n3769, n3770, n3771, n3772,
         n3773, n3774, n3775, n3776, n3777, n3778, n3779, n3780, n3781, n3782,
         n3783, n3784, n3785, n3786, n3787, n3788, n3789, n3790, n3791, n3792,
         n3793, n3794, n3795, n3796, n3797, n3798, n3799, n3800, n3801, n3802,
         n3803, n3804, n3805, n3806, n3807, n3808, n3809, n3810, n3811, n3812,
         n3813, n3814, n3815, n3816, n3817, n3818, n3819, n3820, n3821, n3822,
         n3823, n3824, n3825, n3826, n3827, n3828, n3829, n3830, n3831, n3832,
         n3833, n3834, n3835, n3836, n3837, n3838, n3839, n3840, n3841, n3842,
         n3843, n3844, n3845, n3846, n3847, n3848, n3849, n3850, n3851, n3852,
         n3853, n3854, n3855, n3856, n3857, n3858, n3859, n3860, n3862, n3863,
         n3864, n3865, n3866, n3867, n3868, n3869, n3870, n3871, n3872, n3873,
         n3874, n3875, n3876, n3877, n3878, n3879, n3880, n3881, n3882, n3883,
         n3884, n3885, n3886, n3887, n3888, n3889, n3890, n3891, n3892, n3893,
         n3894, n3895, n3896, n3897, n3898, n3899, n3900, n3901, n3902, n3903,
         n3904, n3905, n3906, n3907, n3908, n3909, n3910, n3911, n3912, n3913,
         n3914, n3915, n3916, n3917, n3918, n3919, n3920, n3921, n3922, n3923,
         n3924, n3925, n3926, n3927, n3928, n3929, n3930, n3931, n3932, n3933,
         n3934, n3935, n3936, n3937, n3938, n3939, n3940, n3941, n3942, n3943,
         n3944, n3945, n3946, n3947, n3948, n3949, n3950, n3951, n3952, n3953,
         n3954, n3955, n3956, n3957, n3958, n3959, n3960, n3961, n3962, n3963,
         n3964, n3965, n3966, n3967, n3968, n3969, n3970, n3971, n3972, n3973,
         n3974, n3975, n3976, n3977, n3978, n3979, n3980, n3981, n3982, n3983,
         n3984, n3985, n3986, n3987, n3988, n3989, n3990, n3991, n3992, n3993,
         n3994, n3995, n3996, n3997, n3998, n3999, n4000, n4001, n4002, n4003,
         n4004, n4005, n4006, n4007, n4008, n4009, n4010, n4011, n4012, n4013,
         n4014, n4015, n4016, n4017, n4018, n4019, n4020, n4021, n4022, n4023,
         n4024, n4025, n4026, n4027, n4028, n4029, n4030, n4031, n4032, n4033,
         n4034, n4035, n4036, n4037, n4038, n4039, n4040, n4041, n4042, n4043,
         n4044, n4046, n4047, n4048, n4049, n4050, n4051, n4052, n4053, n4054,
         n4055, n4056, n4057, n4058, n4059, n4060, n4061, n4062, n4063, n4064,
         n4065, n4066, n4067, n4068, n4069, n4070, n4071, n4072, n4073, n4074,
         n4075, n4076, n4077, n4078, n4079, n4080, n4081, n4082, n4083, n4084,
         n4085, n4086, n4087, n4088, n4089, n4090, n4091, n4092, n4093, n4094,
         n4095, n4096, n4097, n4098, n4100, n4101, n4102, n4103, n4104, n4105,
         n4106, n4107, n4108, n4109, n4110, n4111, n4112, n4114, n4115, n4116,
         n4117, n4118, n4119, n4120, n4121, n4122, n4123, n4125, n4126, n4127,
         n4128, n4129, n4130, n4131, n4132, n4133, n4134, n4135, n4136, n4137,
         n4138, n4139, n4140, n4141, n4142, n4143, n4144, n4145, n4146, n4147,
         n4148, n4149, n4150, n4151, n4152, n4153, n4154, n4155, n4156, n4157,
         n4158, n4159, n4160, n4161, n4162, n4163, n4164, n4165, n4166, n4167,
         n4168, n4169, n4170, n4171, n4172, n4173, n4174, n4175, n4176, n4177,
         n4178, n4179, n4180, n4181, n4182, n4183, n4184, n4185, n4186, n4187,
         n4188, n4189, n4190, n4191, n4192, n4193, n4194, n4195, n4196, n4197,
         n4198, n4199, n4200, n4201, n4202, n4203, n4204, n4205, n4206, n4207,
         n4208, n4209, n4210, n4211, n4212, n4213, n4214, n4215, n4216, n4217,
         n4218, n4219, n4220, n4221, n4222, n4223, n4224, n4225, n4227, n4228,
         n4229, n4230, n4231, n4232, n4233, n4234, n4235, n4236, n4237, n4238,
         n4239, n4240, n4241, n4242, n4243, n4244, n4245, n4246, n4247, n4248,
         n4249, n4250, n4251, n4252, n4253, n4254, n4255, n4256, n4257, n4258,
         n4259, n4260, n4261, n4262, n4263, n4264, n4265, n4266, n4267, n4268,
         n4269, n4270, n4271, n4272, n4273, n4274, n4275, n4276, n4277, n4278,
         n4279, n4280, n4281, n4282, n4283, n4284, n4285, n4286, n4287, n4288,
         n4289, n4290, n4291, n4292, n4293, n4294, n4295, n4296, n4297, n4298,
         n4299, n4300, n4301, n4302, n4303, n4304, n4305, n4306, n4307, n4308,
         n4309, n4310, n4311, n4312, n4313, n4314, n4315, n4316, n4317, n4318,
         n4319, n4320, n4321, n4322, n4323, n4324, n4325, n4326, n4327, n4328,
         n4329, n4330, n4331, n4332, n4333, n4334, n4335, n4336, n4337, n4338,
         n4339, n4340, n4341, n4342, n4343, n4344, n4345, n4346, n4347, n4348,
         n4349, n4350, n4351, n4352, n4353, n4354, n4355, n4356, n4357, n4358,
         n4359, n4360, n4361, n4362, n4363, n4364, n4365, n4366, n4367, n4368,
         n4369, n4370, n4371, n4372, n4373, n4374, n4375, n4376, n4377, n4378,
         n4379, n4380, n4381, n4382, n4383, n4384, n4385, n4386, n4387, n4388,
         n4389, n4390, n4391, n4392, n4393, n4394, n4395, n4396, n4397, n4398,
         n4399, n4400, n4401, n4402, n4403, n4404, n4405, n4407, n4408, n4409,
         n4410, n4411, n4412, n4413, n4414, n4415, n4416, n4417, n4418, n4419,
         n4420, n4421, n4422, n4423, n4424, n4425, n4426, n4427, n4428, n4429,
         n4430, n4431, n4432, n4433, n4434, n4435, n4436, n4437, n4438, n4439,
         n4440, n4441, n4442, n4443, n4444, n4445, n4446, n4447, n4448, n4449,
         n4450, n4451, n4452, n4453, n4454, n4455, n4456, n4457, n4458, n4459,
         n4460, n4461, n4462, n4463, n4464, n4465, n4466, n4467, n4468, n4469,
         n4470, n4471, n4472, n4473, n4474, n4475, n4476, n4477, n4478, n4479,
         n4480, n4481, n4482, n4483, n4484, n4485, n4486, n4487, n4488, n4489,
         n4490, n4491, n4492, n4493, n4494, n4495, n4496, n4497, n4498, n4499,
         n4500, n4501, n4502, n4503, n4504, n4505, n4506, n4507, n4508, n4509,
         n4510, n4511, n4512, n4513, n4514, n4515, n4516, n4517, n4518, n4519,
         n4520, n4521, n4522, n4523, n4524, n4525, n4526, n4527, n4528, n4529,
         n4530, n4531, n4532, n4533, n4534, n4535, n4536, n4537, n4538, n4539,
         n4540, n4541, n4542, n4543, n4544, n4545, n4546, n4547, n4548, n4549,
         n4550, n4551, n4552, n4553, n4554, n4555, n4556, n4557, n4558, n4559,
         n4560, n4561, n4562, n4563, n4564, n4565, n4566, n4567, n4568, n4569,
         n4570, n4571, n4572, n4573, n4574, n4575, n4576, n4577, n4578, n4579,
         n4580, n4581, n4582, n4583, n4584, n4585, n4586, n4587, n4589, n4590,
         n4591, n4592, n4593, n4594, n4595, n4596, n4597, n4598, n4599, n4600,
         n4601, n4602, n4603, n4604, n4605, n4606, n4607, n4608, n4609, n4610,
         n4611, n4612, n4613, n4614, n4615, n4616, n4617, n4618, n4619, n4620,
         n4621, n4622, n4623, n4624, n4625, n4626, n4627, n4628, n4629, n4630,
         n4631, n4632, n4633, n4634, n4635, n4636, n4637, n4638, n4639, n4640,
         n4641, n4642, n4643, n4644, n4645, n4646, n4647, n4648, n4649, n4650,
         n4651, n4652, n4653, n4654, n4655, n4656, n4657, n4658, n4659, n4660,
         n4661, n4662, n4663, n4664, n4665, n4666, n4667, n4668, n4669, n4670,
         n4671, n4672, n4673, n4674, n4675, n4676, n4677, n4678, n4679, n4680,
         n4681, n4682, n4683, n4684, n4685, n4686, n4687, n4688, n4689, n4690,
         n4691, n4692, n4693, n4694, n4695, n4696, n4697, n4698, n4699, n4700,
         n4701, n4702, n4703, n4704, n4705, n4706, n4707, n4708, n4709, n4710,
         n4711, n4712, n4713, n4714, n4715, n4716, n4717, n4720, n4721, n4722,
         n4723, n4724, n4725, n4726, n4727, n4728, n4729, n4730, n4731, n4732,
         n4733, n4734, n4735, n4736, n4737, n4738, n4739, n4740, n4741, n4742,
         n4743, n4744, n4745, n4746, n4747, n4748, n4749, n4750, n4751, n4752,
         n4753, n4754, n4756, n4757, n4758, n4759, n4760, n4761, n4762, n4763,
         n4764, n4765, n4766, n4767, n4768, n4769, n4770, n4771, n4772, n4773,
         n4774, n4775, n4776, n4777, n4778, n4779, n4780, n4781, n4782, n4783,
         n4784, n4785, n4786, n4787, n4788, n4789, n4790, n4791, n4792, n4793,
         n4794, n4795, n4796, n4797, n4798, n4799, n4800, n4801, n4802, n4803,
         n4804, n4805, n4806, n4807, n4808, n4809, n4810, n4811, n4812, n4813,
         n4814, n4815, n4816, n4817, n4818, n4819, n4820, n4821, n4822, n4823,
         n4824, n4825, n4826, n4827, n4828, n4829, n4830, n4831, n4832, n4833,
         n4834, n4835, n4836, n4837, n4838, n4839, n4840, n4841, n4842, n4843,
         n4844, n4845, n4846, n4847, n4848, n4849, n4850, n4851, n4852, n4853,
         n4855, n4856, n4857, n4858, n4859, n4860, n4861, n4862, n4863, n4864,
         n4865, n4866, n4867, n4868, n4869, n4870, n4871, n4873, n4874, n4875,
         n4876, n4877, n4878, n4879, n4880, n4881, n4882, n4883, n4884, n4885,
         n4886, n4888, n4889, n4890, n4891, n4892, n4893, n4894, n4895, n4896,
         n4897, n4898, n4899, n4900, n4901, n4902, n4903, n4904, n4905, n4906,
         n4907, n4908, n4909, n4910, n4911, n4912, n4913, n4914, n4915, n4916,
         n4917, n4918, n4919, n4920, n4921, n4922, n4923, n4924, n4925, n4926,
         n4927, n4928, n4929, n4930, n4931, n4932, n4933, n4934, n4935, n4936,
         n4937, n4938, n4939, n4940, n4941, n4942, n4943, n4944, n4945, n4946,
         n4947, n4948, n4949, n4950, n4951, n4952, n4953, n4954, n4955, n4956,
         n4957, n4958, n4959, n4960, n4961, n4962, n4963, n4964, n4965, n4966,
         n4967, n4968, n4969, n4970, n4971, n4972, n4973, n4974, n4975, n4976,
         n4977, n4978, n4979, n4980, n4981, n4982, n4983, n4984, n4985, n4986,
         n4987, n4988, n4989, n4990, n4991, n4992, n4993, n4994, n4995, n4996,
         n4997, n4998, n4999, n5000, n5001, n5002, n5003, n5004, n5005, n5006,
         n5007, n5008, n5009, n5010, n5011, n5012, n5013, n5014, n5015, n5016,
         n5017, n5018, n5019, n5020, n5021, n5022, n5023, n5024, n5025, n5026,
         n5027, n5028, n5029, n5030, n5031, n5032, n5033, n5034, n5035, n5036,
         n5037, n5038, n5039, n5040, n5041, n5042, n5043, n5044, n5045, n5046,
         n5047, n5048, n5049, n5050, n5052, n5053, n5054, n5055, n5056, n5057,
         n5058, n5059, n5060, n5061, n5062, n5063, n5064, n5065, n5066, n5067,
         n5068, n5069, n5070, n5071, n5072, n5073, n5074, n5075, n5076, n5077,
         n5078, n5079, n5080, n5081, n5082, n5083, n5084, n5085, n5086, n5087,
         n5088, n5089, n5090, n5091, n5092, n5093, n5094, n5095, n5096, n5097,
         n5098, n5099, n5100, n5102, n5103, n5104, n5105, n5106, n5107, n5108,
         n5109, n5110, n5111, n5112, n5113, n5114, n5115, n5116, n5117, n5118,
         n5119, n5120, n5121, n5122, n5123, n5124, n5125, n5126, n5127, n5128,
         n5129, n5130, n5131, n5132, n5133, n5134, n5135, n5136, n5137, n5138,
         n5139, n5140, n5141, n5142, n5143, n5144, n5145, n5146, n5147, n5148,
         n5149, n5150, n5151, n5152, n5153, n5154, n5155, n5156, n5157, n5158,
         n5159, n5160, n5161, n5162, n5163, n5164, n5165, n5166, n5167, n5168,
         n5169, n5170, n5171, n5172, n5173, n5174, n5175, n5176, n5177, n5178,
         n5179, n5180, n5181, n5182, n5183, n5184, n5185, n5186, n5187, n5188,
         n5189, n5190, n5191, n5192, n5193, n5194, n5195, n5196, n5197, n5198,
         n5199, n5200, n5201, n5202, n5203, n5204, n5205, n5206, n5207, n5208,
         n5209, n5210, n5211, n5212, n5213, n5214, n5215, n5216, n5217, n5218,
         n5219, n5220, n5221, n5222, n5223, n5224, n5225, n5226, n5227, n5228,
         n5229, n5230, n5231, n5232, n5233, n5234, n5235, n5236, n5237, n5238,
         n5239, n5240, n5241, n5242, n5243, n5244, n5245, n5246, n5247, n5248,
         n5249, n5250, n5251, n5252, n5253, n5254, n5255, n5256, n5257, n5258,
         n5259, n5260, n5261, n5262, n5263, n5264, n5265, n5266, n5267, n5268,
         n5269, n5270, n5271, n5272, n5273, n5274, n5275, n5276, n5277, n5278,
         n5279, n5280, n5281, n5282, n5283, n5284, n5285, n5286, n5287, n5288,
         n5289, n5290, n5291, n5292, n5293, n5294, n5295, n5296, n5297, n5298,
         n5299, n5300, n5301, n5302, n5303, n5304, n5305, n5306, n5307, n5308,
         n5309, n5310, n5311, n5312, n5313, n5314, n5315, n5316, n5317, n5318,
         n5319, n5320, n5321, n5322, n5323, n5324, n5325, n5326, n5327, n5328,
         n5329, n5330, n5331, n5332, n5333, n5334, n5335, n5336, n5337, n5338,
         n5339, n5340, n5341, n5342, n5343, n5344, n5345, n5346, n5347, n5348,
         n5349, n5350, n5351, n5352, n5353, n5354, n5355, n5356, n5357, n5358,
         n5359, n5360, n5361, n5362, n5363, n5364, n5365, n5366, n5367, n5368,
         n5369, n5370, n5371, n5372, n5373, n5374, n5375, n5376, n5377, n5378,
         n5379, n5380, n5381, n5382, n5383, n5384, n5385, n5386, n5387, n5388,
         n5389, n5390, n5391, n5392, n5393, n5394, n5396, n5397, n5398, n5399,
         n5400, n5401, n5402, n5403, n5404, n5405, n5406, n5407, n5408, n5409,
         n5410, n5411, n5412, n5413, n5414, n5415, n5416, n5417, n5418, n5419,
         n5420, n5421, n5422, n5423, n5424, n5425, n5426;

  DFFSSRX1_RVT i_tv80_core_INT_s_reg ( .D(int_n), .SETB(reset_n), .RSTB(1'b1), 
        .CLK(MY_CLK), .QN(i_tv80_core_INT_s) );
  DFFSSRX1_RVT i_tv80_core_BusReq_s_reg ( .D(busrq_n), .SETB(reset_n), .RSTB(
        1'b1), .CLK(MY_CLK), .Q(n281), .QN(i_tv80_core_BusReq_s) );
  DFFSSRX1_RVT i_tv80_core_Oldnmi_n_reg ( .D(nmi_n), .SETB(1'b1), .RSTB(
        reset_n), .CLK(MY_CLK), .Q(i_tv80_core_Oldnmi_n) );
  DFFSSRX1_RVT i_tv80_core_No_BTR_reg ( .D(n3156), .SETB(1'b1), .RSTB(n1604), 
        .CLK(MY_CLK), .QN(n120) );
  DFFSSRX1_RVT i_tv80_core_Auto_Wait_t1_reg ( .D(n5380), .SETB(1'b1), .RSTB(
        n1602), .CLK(MY_CLK), .Q(i_tv80_core_Auto_Wait_t1), .QN(n2408) );
  DFFX1_RVT i_tv80_core_tstate_reg_1_ ( .D(n2182), .CLK(net1620), .Q(tstate_1_), .QN(n194) );
  DFFX1_RVT i_tv80_core_tstate_reg_0_ ( .D(n2181), .CLK(net1620), .Q(tstate_0_), .QN(n192) );
  DFFX1_RVT i_tv80_core_tstate_reg_2_ ( .D(n2180), .CLK(MY_CLK), .Q(tstate_2_), 
        .QN(n197) );
  DFFX1_RVT di_reg_reg_0_ ( .D(n2179), .CLK(MY_CLK), .Q(di_reg_0_), .QN(n114)
         );
  DFFX1_RVT di_reg_reg_1_ ( .D(n2178), .CLK(MY_CLK), .Q(di_reg_1_), .QN(n113)
         );
  DFFX1_RVT di_reg_reg_3_ ( .D(n2176), .CLK(MY_CLK), .Q(di_reg_3_), .QN(n111)
         );
  DFFX1_RVT di_reg_reg_4_ ( .D(n2175), .CLK(MY_CLK), .Q(di_reg_4_), .QN(n110)
         );
  DFFX1_RVT di_reg_reg_5_ ( .D(n2174), .CLK(MY_CLK), .Q(di_reg_5_), .QN(n109)
         );
  DFFX1_RVT i_tv80_core_BusB_reg_0_ ( .D(i_tv80_core_N1215), .CLK(net1618), 
        .Q(i_tv80_core_BusB_0_), .QN(n303) );
  DFFX1_RVT i_tv80_core_BusB_reg_4_ ( .D(i_tv80_core_N1219), .CLK(net1618), 
        .Q(i_tv80_core_BusB_4_), .QN(n308) );
  DFFSSRX1_RVT i_tv80_core_Halt_FF_reg ( .D(n1287), .SETB(1'b1), .RSTB(n1288), 
        .CLK(MY_CLK), .Q(halt_n), .QN(i_tv80_core_Halt_FF) );
  DFFX1_RVT i_tv80_core_ISet_reg_1_ ( .D(n2160), .CLK(n5394), .Q(
        i_tv80_core_ISet_1_), .QN(n489) );
  DFFX1_RVT i_tv80_core_NMI_s_reg ( .D(n2099), .CLK(MY_CLK), .Q(
        i_tv80_core_NMI_s) );
  DFFX1_RVT i_tv80_core_Alternate_reg ( .D(n2136), .CLK(n5394), .Q(
        i_tv80_core_Alternate), .QN(n2409) );
  DFFX1_RVT i_tv80_core_XY_State_reg_0_ ( .D(n2101), .CLK(n5394), .Q(
        i_tv80_core_XY_State_0_) );
  DFFX1_RVT i_tv80_core_XY_State_reg_1_ ( .D(n2100), .CLK(n5394), .Q(
        i_tv80_core_XY_State_1_) );
  DFFX1_RVT i_tv80_core_RegAddrC_reg_2_ ( .D(i_tv80_core_N1117), .CLK(net1618), 
        .Q(i_tv80_core_i_reg_N22), .QN(n2397) );
  DFFSSRX1_RVT wr_n_reg ( .D(n1835), .SETB(reset_n), .RSTB(1'b1), .CLK(MY_CLK), 
        .Q(wr_n) );
  DFFSSRX1_RVT i_tv80_core_RegAddrA_r_reg_0_ ( .D(n1411), .SETB(
        i_tv80_core_N1102), .RSTB(n2336), .CLK(net1618), .QN(
        i_tv80_core_RegAddrA_r_0_) );
  DFFSSRX1_RVT i_tv80_core_RegAddrB_r_reg_0_ ( .D(n3101), .SETB(n5379), .RSTB(
        n5376), .CLK(net1618), .QN(i_tv80_core_RegAddrB_r_0_) );
  DFFX1_RVT i_tv80_core_ALU_Op_r_reg_0_ ( .D(n5386), .CLK(n5394), .Q(
        i_tv80_core_ALU_Op_r_0_), .QN(n509) );
  DFFX1_RVT i_tv80_core_F_reg_0_ ( .D(n2118), .CLK(net1620), .Q(
        i_tv80_core_F_0_), .QN(n329) );
  DFFSSRX1_RVT i_tv80_core_RegAddrC_reg_0_ ( .D(n5397), .SETB(n5377), .RSTB(
        n2733), .CLK(net1618), .Q(n2379), .QN(i_tv80_core_i_reg_N20) );
  DFFX1_RVT i_tv80_core_mcycles_reg_2_ ( .D(n5391), .CLK(n5394), .Q(n2542) );
  DFFX2_RVT i_tv80_core_IR_reg_2_ ( .D(n2157), .CLK(n5394), .Q(
        i_tv80_core_IR_2_), .QN(n435) );
  DFFX1_RVT i_tv80_core_PC_reg_13_ ( .D(n2025), .CLK(net1620), .Q(
        i_tv80_core_PC_13_), .QN(n5013) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__0_ ( .D(n1983), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__0_ ( .D(n1999), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__0_ ( .D(n2007), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__0_ ( .D(n1959), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__0_ ( .D(n1951), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__0_ ( .D(n1991), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__0_ ( .D(n1975), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__0_ ( .D(n1967), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__5_ ( .D(n1882), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__5_ ( .D(n1906), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__5_ ( .D(n1898), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__5_ ( .D(n1890), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__5_ ( .D(n1938), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__5_ ( .D(n1930), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__5_ ( .D(n1922), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__5_ ( .D(n1914), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__5_) );
  DFFX1_RVT i_tv80_core_PC_reg_15_ ( .D(n2039), .CLK(net1620), .Q(
        i_tv80_core_PC_15_), .QN(n5042) );
  DFFX1_RVT i_tv80_core_A_reg_6_ ( .D(n2017), .CLK(n5394), .Q(A_6_), .QN(n5207) );
  DFFX1_RVT i_tv80_core_A_reg_5_ ( .D(n2018), .CLK(n5394), .Q(A_5_), .QN(n5196) );
  DFFX1_RVT i_tv80_core_A_reg_2_ ( .D(n2021), .CLK(n5394), .Q(A_2_), .QN(n5174) );
  DFFX1_RVT i_tv80_core_A_reg_1_ ( .D(n2022), .CLK(n5394), .Q(A_1_), .QN(n5164) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__6_ ( .D(n1969), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__6_ ( .D(n1961), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__6_ ( .D(n2001), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__6_ ( .D(n1993), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__6_ ( .D(n1985), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__6_ ( .D(n1977), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__6_ ( .D(n1953), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__6_ ( .D(n1945), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__4_ ( .D(n1939), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__4_ ( .D(n1931), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__4_ ( .D(n1923), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__4_ ( .D(n1915), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__4_ ( .D(n1907), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__4_ ( .D(n1899), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__4_ ( .D(n1891), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__4_ ( .D(n1883), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__7_ ( .D(n1904), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__7_ ( .D(n1896), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__7_ ( .D(n1888), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__7_ ( .D(n1936), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__7_ ( .D(n1928), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__7_ ( .D(n1920), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__7_ ( .D(n1912), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__6_ ( .D(n1937), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__6_ ( .D(n1929), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__6_ ( .D(n1921), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__6_ ( .D(n1913), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__6_ ( .D(n1905), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__6_ ( .D(n1897), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__6_ ( .D(n1889), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__6_ ( .D(n1881), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__6_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__5_ ( .D(n1970), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__5_ ( .D(n1962), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__5_ ( .D(n2002), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__5_ ( .D(n1994), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__5_ ( .D(n1986), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__5_ ( .D(n1978), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__5_ ( .D(n1954), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__5_ ( .D(n1946), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__5_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__7_ ( .D(n1880), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__7_), .QN(n2737) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__1_ ( .D(n1974), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__1_ ( .D(n1966), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__1_ ( .D(n2006), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__1_ ( .D(n1998), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__1_ ( .D(n1990), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__1_ ( .D(n1982), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__1_ ( .D(n1958), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__1_ ( .D(n1950), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__7_ ( .D(n1976), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__7_ ( .D(n1992), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__7_ ( .D(n2000), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__7_ ( .D(n1952), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__7_ ( .D(n1944), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__7_ ( .D(n1984), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__7_ ( .D(n1968), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__7_ ( .D(n1960), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__7_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__4_ ( .D(n2003), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__2_ ( .D(n2005), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__4_ ( .D(n1995), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__2_ ( .D(n1997), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__4_ ( .D(n1987), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__2_ ( .D(n1989), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__4_ ( .D(n1979), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__2_ ( .D(n1981), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__4_ ( .D(n1971), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__2_ ( .D(n1973), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__4_ ( .D(n1963), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__2_ ( .D(n1965), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__4_ ( .D(n1955), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__2_ ( .D(n1957), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__4_ ( .D(n1947), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__4_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__2_ ( .D(n1949), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__2_) );
  DFFX1_RVT i_tv80_core_A_reg_15_ ( .D(n2008), .CLK(net1620), .Q(A_15_), .QN(
        n5293) );
  DFFX1_RVT i_tv80_core_A_reg_14_ ( .D(n2009), .CLK(net1620), .Q(A_14_), .QN(
        n5279) );
  DFFX1_RVT i_tv80_core_A_reg_13_ ( .D(n2010), .CLK(net1620), .Q(A_13_), .QN(
        n5270) );
  DFFX1_RVT i_tv80_core_A_reg_12_ ( .D(n2011), .CLK(net1620), .Q(A_12_), .QN(
        n5262) );
  DFFX1_RVT i_tv80_core_A_reg_11_ ( .D(n2012), .CLK(net1620), .Q(A_11_), .QN(
        n5254) );
  DFFX1_RVT i_tv80_core_A_reg_10_ ( .D(n2013), .CLK(net1620), .Q(A_10_), .QN(
        n5246) );
  DFFX1_RVT i_tv80_core_A_reg_9_ ( .D(n2014), .CLK(net1620), .Q(A_9_), .QN(
        n5238) );
  DFFX1_RVT i_tv80_core_A_reg_8_ ( .D(n2015), .CLK(net1620), .Q(A_8_), .QN(
        n5230) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_2__3_ ( .D(n1964), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_2__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_6__3_ ( .D(n1996), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_6__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_5__3_ ( .D(n1988), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_5__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_4__3_ ( .D(n1980), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_4__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_1__3_ ( .D(n1956), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_1__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_0__3_ ( .D(n1948), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_0__3_) );
  DFFX1_RVT i_tv80_core_IntE_FF1_reg ( .D(n3111), .CLK(MY_CLK), .Q(
        i_tv80_core_IntE) );
  DFFX1_RVT i_tv80_core_SP_reg_15_ ( .D(n2080), .CLK(n5394), .Q(
        i_tv80_core_SP_15_), .QN(n484) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_15_ ( .D(n2064), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_15_), .QN(n346) );
  DFFSSRX1_RVT i_tv80_core_ALU_Op_r_reg_2_ ( .D(1'b0), .SETB(n2771), .RSTB(
        n2402), .CLK(n5394), .Q(i_tv80_core_ALU_Op_r_2_), .QN(n4202) );
  DFFX1_RVT i_tv80_core_IR_reg_5_ ( .D(n2154), .CLK(n5394), .Q(
        i_tv80_core_IR_5_), .QN(n4763) );
  DFFX2_RVT i_tv80_core_IR_reg_4_ ( .D(n2155), .CLK(n5394), .Q(
        i_tv80_core_IR_4_), .QN(n460) );
  DFFX2_RVT i_tv80_core_ALU_Op_r_reg_1_ ( .D(n5385), .CLK(n5394), .Q(
        i_tv80_core_ALU_Op_r_1_), .QN(n514) );
  DFFSSRX1_RVT i_tv80_core_Auto_Wait_t2_reg ( .D(1'b0), .SETB(n3159), .RSTB(
        i_tv80_core_Auto_Wait_t1), .CLK(MY_CLK), .Q(i_tv80_core_Auto_Wait_t2)
         );
  DFFX1_RVT i_tv80_core_PreserveC_r_reg ( .D(n5383), .CLK(n5394), .QN(n357) );
  DFFX1_RVT i_tv80_core_Arith16_r_reg ( .D(n5382), .CLK(n5394), .Q(n4147), 
        .QN(n348) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_5_ ( .D(n4644), .CLK(net1618), .QN(
        i_tv80_core_RegBusA_r_5_) );
  DFFX1_RVT i_tv80_core_RegAddrB_r_reg_1_ ( .D(n3101), .CLK(net1618), .QN(
        i_tv80_core_RegAddrB_r_1_) );
  DFFX1_RVT i_tv80_core_BusAck_reg ( .D(i_tv80_core_N1441), .CLK(net1620), .Q(
        i_tv80_core_BusAck), .QN(busak_n) );
  DFFX1_RVT i_tv80_core_Save_ALU_r_reg ( .D(n5384), .CLK(n5394), .Q(
        i_tv80_core_Save_ALU_r), .QN(n3537) );
  DFFX1_RVT i_tv80_core_Read_To_Reg_r_reg_3_ ( .D(n5390), .CLK(n5394), .Q(
        i_tv80_core_Read_To_Reg_r_3_), .QN(n499) );
  DFFX1_RVT i_tv80_core_IStatus_reg_0_ ( .D(n2120), .CLK(n5394), .Q(
        i_tv80_core_IStatus_0_), .QN(n335) );
  DFFX1_RVT i_tv80_core_IStatus_reg_1_ ( .D(n2119), .CLK(n5394), .Q(
        i_tv80_core_IStatus_1_), .QN(n336) );
  DFFX1_RVT i_tv80_core_BTR_r_reg ( .D(n2111), .CLK(n5394), .Q(
        i_tv80_core_BTR_r), .QN(n358) );
  DFFX1_RVT i_tv80_core_Read_To_Reg_r_reg_0_ ( .D(n5389), .CLK(n5394), .Q(
        i_tv80_core_Read_To_Reg_r_0_), .QN(n493) );
  DFFX1_RVT i_tv80_core_Read_To_Reg_r_reg_2_ ( .D(n5388), .CLK(n5394), .Q(
        i_tv80_core_Read_To_Reg_r_2_), .QN(n498) );
  DFFX1_RVT i_tv80_core_Read_To_Reg_r_reg_1_ ( .D(n2140), .CLK(net1620), .Q(
        i_tv80_core_Read_To_Reg_r_1_), .QN(n497) );
  DFFX1_RVT i_tv80_core_SP_reg_1_ ( .D(n2094), .CLK(n5394), .Q(
        i_tv80_core_SP_1_), .QN(n3658) );
  DFFX1_RVT i_tv80_core_SP_reg_0_ ( .D(n2095), .CLK(n5394), .Q(
        i_tv80_core_SP_0_), .QN(n3634) );
  DFFX1_RVT i_tv80_core_SP_reg_2_ ( .D(n2093), .CLK(n5394), .Q(
        i_tv80_core_SP_2_), .QN(n3700) );
  DFFX1_RVT i_tv80_core_SP_reg_4_ ( .D(n2091), .CLK(n5394), .Q(
        i_tv80_core_SP_4_), .QN(n3754) );
  DFFX1_RVT i_tv80_core_SP_reg_5_ ( .D(n2090), .CLK(n5394), .Q(
        i_tv80_core_SP_5_), .QN(n3771) );
  DFFX1_RVT i_tv80_core_SP_reg_3_ ( .D(n2092), .CLK(n5394), .Q(
        i_tv80_core_SP_3_), .QN(n3728) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_10_ ( .D(n2069), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_10_), .QN(n341) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_8_ ( .D(n2071), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_8_), .QN(n339) );
  DFFX1_RVT i_tv80_core_SP_reg_7_ ( .D(n2088), .CLK(n5394), .Q(
        i_tv80_core_SP_7_), .QN(n3845) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_9_ ( .D(n2070), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_9_), .QN(n340) );
  DFFX1_RVT i_tv80_core_SP_reg_10_ ( .D(n2085), .CLK(n5394), .Q(
        i_tv80_core_SP_10_), .QN(n3906) );
  DFFX1_RVT i_tv80_core_SP_reg_8_ ( .D(n2087), .CLK(n5394), .Q(
        i_tv80_core_SP_8_), .QN(n3908) );
  DFFX1_RVT i_tv80_core_SP_reg_9_ ( .D(n2086), .CLK(n5394), .Q(
        i_tv80_core_SP_9_), .QN(n3907) );
  DFFX1_RVT i_tv80_core_SP_reg_6_ ( .D(n2089), .CLK(n5394), .Q(
        i_tv80_core_SP_6_), .QN(n3813) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_13_ ( .D(n2066), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_13_), .QN(n344) );
  DFFX1_RVT i_tv80_core_BusB_reg_7_ ( .D(i_tv80_core_N1222), .CLK(net1618), 
        .Q(i_tv80_core_BusB_7_), .QN(n311) );
  DFFX1_RVT i_tv80_core_BusB_reg_2_ ( .D(i_tv80_core_N1217), .CLK(net1618), 
        .Q(i_tv80_core_BusB_2_), .QN(n306) );
  DFFX1_RVT i_tv80_core_BusB_reg_6_ ( .D(i_tv80_core_N1221), .CLK(net1618), 
        .Q(i_tv80_core_BusB_6_), .QN(n310) );
  DFFX1_RVT i_tv80_core_SP_reg_13_ ( .D(n2082), .CLK(n5394), .Q(
        i_tv80_core_SP_13_), .QN(n4021) );
  DFFX1_RVT i_tv80_core_BusB_reg_5_ ( .D(i_tv80_core_N1220), .CLK(net1618), 
        .Q(i_tv80_core_BusB_5_), .QN(n4785) );
  DFFX1_RVT i_tv80_core_BusB_reg_1_ ( .D(i_tv80_core_N1216), .CLK(net1618), 
        .Q(i_tv80_core_BusB_1_), .QN(n304) );
  DFFX1_RVT i_tv80_core_PC_reg_7_ ( .D(n2031), .CLK(net1620), .Q(
        i_tv80_core_PC_7_), .QN(n5216) );
  DFFX1_RVT i_tv80_core_F_reg_4_ ( .D(n2116), .CLK(net1620), .Q(
        i_tv80_core_F_4_), .QN(n3503) );
  DFFX1_RVT i_tv80_core_F_reg_7_ ( .D(n2191), .CLK(net1620), .Q(
        i_tv80_core_F_7_), .QN(n4266) );
  DFFX1_RVT i_tv80_core_PC_reg_0_ ( .D(n2038), .CLK(net1620), .Q(
        i_tv80_core_PC_0_), .QN(n5145) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_11_ ( .D(n2068), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_11_), .QN(n342) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_12_ ( .D(n2067), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_12_), .QN(n343) );
  DFFX1_RVT i_tv80_core_F_reg_6_ ( .D(n2112), .CLK(net1620), .Q(
        i_tv80_core_F_6_), .QN(n4358) );
  DFFX1_RVT i_tv80_core_ACC_reg_7_ ( .D(n2190), .CLK(n5394), .Q(
        i_tv80_core_ACC_7_), .QN(n4037) );
  DFFX1_RVT i_tv80_core_ACC_reg_6_ ( .D(n2189), .CLK(n5394), .Q(
        i_tv80_core_ACC_6_), .QN(n3940) );
  DFFX1_RVT i_tv80_core_ACC_reg_4_ ( .D(n2167), .CLK(n5394), .Q(
        i_tv80_core_ACC_4_), .QN(n3958) );
  DFFX1_RVT i_tv80_core_ACC_reg_2_ ( .D(n2169), .CLK(n5394), .Q(
        i_tv80_core_ACC_2_), .QN(n3965) );
  DFFX1_RVT i_tv80_core_ACC_reg_1_ ( .D(n2170), .CLK(n5394), .Q(
        i_tv80_core_ACC_1_), .QN(n3971) );
  DFFX1_RVT i_tv80_core_ACC_reg_0_ ( .D(n2171), .CLK(n5394), .Q(
        i_tv80_core_ACC_0_), .QN(n3979) );
  DFFX1_RVT i_tv80_core_ACC_reg_5_ ( .D(n2166), .CLK(n5394), .Q(
        i_tv80_core_ACC_5_), .QN(n3950) );
  DFFX1_RVT i_tv80_core_ACC_reg_3_ ( .D(n2168), .CLK(n5394), .Q(
        i_tv80_core_ACC_3_), .QN(n3987) );
  DFFX1_RVT i_tv80_core_PC_reg_4_ ( .D(n2034), .CLK(net1620), .Q(
        i_tv80_core_PC_4_), .QN(n5188) );
  DFFX1_RVT i_tv80_core_PC_reg_3_ ( .D(n2035), .CLK(net1620), .Q(
        i_tv80_core_PC_3_), .QN(n5182) );
  DFFX1_RVT i_tv80_core_SP_reg_11_ ( .D(n2084), .CLK(n5394), .Q(
        i_tv80_core_SP_11_), .QN(n3905) );
  DFFX1_RVT i_tv80_core_SP_reg_12_ ( .D(n2083), .CLK(n5394), .Q(
        i_tv80_core_SP_12_), .QN(n4001) );
  DFFX1_RVT i_tv80_core_IntCycle_reg ( .D(n2183), .CLK(MY_CLK), .Q(
        i_tv80_core_IntCycle), .QN(n277) );
  DFFX1_RVT i_tv80_core_BusA_reg_0_ ( .D(n2148), .CLK(net1618), .Q(
        i_tv80_core_i_alu_N185), .QN(n3683) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_14_ ( .D(n2065), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_14_), .QN(n345) );
  DFFX1_RVT i_tv80_core_SP_reg_14_ ( .D(n2081), .CLK(n5394), .Q(
        i_tv80_core_SP_14_), .QN(n4020) );
  DFFX1_RVT i_tv80_core_F_reg_2_ ( .D(n2115), .CLK(n5394), .Q(i_tv80_core_F_2_), .QN(n4176) );
  DFFX1_RVT i_tv80_core_IntE_FF2_reg ( .D(n2185), .CLK(MY_CLK), .Q(
        i_tv80_core_IntE_FF2), .QN(n273) );
  DFFX1_RVT i_tv80_core_PC_reg_11_ ( .D(n2027), .CLK(net1620), .Q(
        i_tv80_core_PC_11_), .QN(n5001) );
  DFFX1_RVT i_tv80_core_PC_reg_12_ ( .D(n2026), .CLK(net1620), .Q(
        i_tv80_core_PC_12_), .QN(n5008) );
  DFFX1_RVT i_tv80_core_PC_reg_10_ ( .D(n2028), .CLK(net1620), .Q(
        i_tv80_core_PC_10_), .QN(n4986) );
  DFFX1_RVT i_tv80_core_PC_reg_9_ ( .D(n2029), .CLK(net1620), .Q(
        i_tv80_core_PC_9_), .QN(n4977) );
  DFFX1_RVT i_tv80_core_PC_reg_8_ ( .D(n2030), .CLK(net1620), .Q(
        i_tv80_core_PC_8_), .QN(n4970) );
  DFFX1_RVT mreq_n_reg ( .D(N36), .CLK(MY_CLK), .Q(mreq_n) );
  DFFX1_RVT i_tv80_core_do_reg_3_ ( .D(n2044), .CLK(n5394), .Q(do_3_) );
  DFFX1_RVT i_tv80_core_mcycles_reg_1_ ( .D(n5392), .CLK(n5394), .Q(
        i_tv80_core_mcycles_1_) );
  DFFX1_RVT i_tv80_core_do_reg_5_ ( .D(n2042), .CLK(n5394), .Q(do_5_) );
  DFFX1_RVT i_tv80_core_RegAddrB_r_reg_2_ ( .D(i_tv80_core_N1108), .CLK(
        net1618), .Q(i_tv80_core_RegAddrB_r_2_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_2_ ( .D(n2077), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_2_), .QN(n5173) );
  DFFX1_RVT i_tv80_core_RegAddrA_r_reg_2_ ( .D(i_tv80_core_N1103), .CLK(
        net1618), .Q(i_tv80_core_RegAddrA_r_2_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_4_ ( .D(n2075), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_4_) );
  DFFX1_RVT i_tv80_core_F_reg_3_ ( .D(n2114), .CLK(n5394), .Q(i_tv80_core_F_3_), .QN(n4802) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__0_ ( .D(n1927), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__0_ ( .D(n1911), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__0_ ( .D(n1903), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__0_ ( .D(n1887), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__0_ ( .D(n1943), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__0_ ( .D(n1935), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__0_ ( .D(n1919), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__0_ ( .D(n1895), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__0_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_3_ ( .D(n2076), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_3_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_6_ ( .D(n2073), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_6_), .QN(n5205) );
  DFFX1_RVT i_tv80_core_do_reg_7_ ( .D(n2040), .CLK(n5394), .Q(do_7_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_5_ ( .D(n2074), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_5_), .QN(n5195) );
  DFFX1_RVT i_tv80_core_do_reg_6_ ( .D(n2041), .CLK(n5394), .Q(do_6_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_7_ ( .D(n2072), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_7_) );
  DFFX1_RVT i_tv80_core_F_reg_5_ ( .D(n2113), .CLK(n5394), .Q(i_tv80_core_F_5_), .QN(n4786) );
  DFFX1_RVT i_tv80_core_PC_reg_6_ ( .D(n2032), .CLK(net1620), .Q(
        i_tv80_core_PC_6_) );
  DFFX1_RVT i_tv80_core_PC_reg_5_ ( .D(n2033), .CLK(net1620), .Q(
        i_tv80_core_PC_5_), .QN(n4937) );
  DFFX1_RVT i_tv80_core_PC_reg_2_ ( .D(n2036), .CLK(net1620), .Q(
        i_tv80_core_PC_2_) );
  DFFX1_RVT i_tv80_core_PC_reg_1_ ( .D(n2037), .CLK(net1620), .Q(
        i_tv80_core_PC_1_), .QN(n4903) );
  DFFX1_RVT i_tv80_core_Pre_XY_F_M_reg_1_ ( .D(n2150), .CLK(MY_CLK), .Q(
        i_tv80_core_Pre_XY_F_M_1_) );
  DFFX1_RVT i_tv80_core_Pre_XY_F_M_reg_2_ ( .D(n2151), .CLK(MY_CLK), .Q(
        i_tv80_core_Pre_XY_F_M_2_) );
  DFFX1_RVT i_tv80_core_Pre_XY_F_M_reg_0_ ( .D(n2152), .CLK(MY_CLK), .Q(
        i_tv80_core_Pre_XY_F_M_0_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__3_ ( .D(n1916), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__3_ ( .D(n1932), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__3_ ( .D(n1940), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__3_ ( .D(n1892), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__3_ ( .D(n1884), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__3_ ( .D(n1924), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__3_ ( .D(n1908), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__3_ ( .D(n1900), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__3_) );
  DFFX1_RVT i_tv80_core_IncDecZ_reg ( .D(n2187), .CLK(net1618), .Q(
        i_tv80_core_IncDecZ) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__1_ ( .D(n1918), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__1_ ( .D(n1934), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__1_ ( .D(n1942), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__1_ ( .D(n1894), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__1_ ( .D(n1926), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__1_ ( .D(n1910), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__1_ ( .D(n1902), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__1_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__1_ ( .D(n1886), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__1_) );
  DFFX1_RVT i_tv80_core_m1_n_reg ( .D(n2149), .CLK(MY_CLK), .Q(m1_n) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_7__2_ ( .D(n1941), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_7__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_6__2_ ( .D(n1933), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_6__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_5__2_ ( .D(n1925), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_5__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_4__2_ ( .D(n1917), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_4__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_3__2_ ( .D(n1909), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_3__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_2__2_ ( .D(n1901), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_2__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_1__2_ ( .D(n1893), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_1__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsL_reg_0__2_ ( .D(n1885), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsL_0__2_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_7__3_ ( .D(n2004), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_7__3_) );
  DFFX1_RVT i_tv80_core_i_reg_RegsH_reg_3__3_ ( .D(n1972), .CLK(net1618), .Q(
        i_tv80_core_i_reg_RegsH_3__3_) );
  DFFX1_RVT i_tv80_core_PC_reg_14_ ( .D(n2024), .CLK(net1620), .Q(
        i_tv80_core_PC_14_) );
  DFFX1_RVT i_tv80_core_A_reg_4_ ( .D(n2019), .CLK(n5394), .Q(A_4_) );
  DFFX1_RVT i_tv80_core_A_reg_3_ ( .D(n2020), .CLK(n5394), .Q(A_3_) );
  DFFX1_RVT i_tv80_core_A_reg_7_ ( .D(n2016), .CLK(n5394), .Q(A_7_) );
  DFFX1_RVT i_tv80_core_A_reg_0_ ( .D(n2023), .CLK(n5394), .Q(A_0_) );
  DFFX1_RVT i_tv80_core_BusB_reg_3_ ( .D(i_tv80_core_N1218), .CLK(net1618), 
        .Q(i_tv80_core_BusB_3_), .QN(n4801) );
  DFFX1_RVT i_tv80_core_mcycle_reg_2_ ( .D(n2486), .CLK(MY_CLK), .Q(mcycle_2_), 
        .QN(n3327) );
  DFFX1_RVT i_tv80_core_rfsh_n_reg ( .D(i_tv80_core_N1294), .CLK(MY_CLK), .Q(
        rfsh_n) );
  DFFX1_RVT i_tv80_core_XY_Ind_reg ( .D(n2102), .CLK(n5394), .Q(
        i_tv80_core_XY_Ind), .QN(n3324) );
  DFFX1_RVT i_tv80_core_R_reg_7_ ( .D(n2048), .CLK(n5394), .Q(i_tv80_core_R_7_), .QN(n4034) );
  DFFX1_RVT i_tv80_core_Fp_reg_1_ ( .D(n2109), .CLK(n5394), .QN(n4260) );
  DFFX1_RVT i_tv80_core_Fp_reg_4_ ( .D(n2106), .CLK(n5394), .Q(
        i_tv80_core_Fp_4_), .QN(n3504) );
  DFFX1_RVT i_tv80_core_Ap_reg_7_ ( .D(n2122), .CLK(n5394), .QN(n4036) );
  DFFX1_RVT i_tv80_core_Ap_reg_6_ ( .D(n2123), .CLK(n5394), .QN(n3939) );
  DFFX1_RVT i_tv80_core_Ap_reg_5_ ( .D(n2124), .CLK(n5394), .QN(n3949) );
  DFFX1_RVT i_tv80_core_Ap_reg_4_ ( .D(n2125), .CLK(n5394), .QN(n3957) );
  DFFX1_RVT i_tv80_core_Ap_reg_3_ ( .D(n2126), .CLK(n5394), .QN(n3986) );
  DFFX1_RVT i_tv80_core_Ap_reg_2_ ( .D(n2127), .CLK(n5394), .QN(n3964) );
  DFFX1_RVT i_tv80_core_Ap_reg_1_ ( .D(n2128), .CLK(n5394), .QN(n3970) );
  DFFX1_RVT i_tv80_core_Ap_reg_0_ ( .D(n2129), .CLK(n5394), .QN(n3978) );
  DFFX1_RVT i_tv80_core_Fp_reg_7_ ( .D(n2103), .CLK(n5394), .Q(
        i_tv80_core_Fp_7_), .QN(n4267) );
  DFFX1_RVT i_tv80_core_Fp_reg_2_ ( .D(n2108), .CLK(n5394), .Q(
        i_tv80_core_Fp_2_), .QN(n4168) );
  DFFX1_RVT i_tv80_core_Fp_reg_0_ ( .D(n2110), .CLK(n5394), .Q(
        i_tv80_core_Fp_0_), .QN(n4046) );
  DFFX1_RVT i_tv80_core_Fp_reg_5_ ( .D(n2105), .CLK(n5394), .QN(n4790) );
  DFFX1_RVT i_tv80_core_Fp_reg_3_ ( .D(n2107), .CLK(n5394), .QN(n4810) );
  DFFX1_RVT i_tv80_core_Fp_reg_6_ ( .D(n2104), .CLK(n5394), .QN(n4366) );
  DFFX1_RVT i_tv80_core_I_reg_7_ ( .D(n2056), .CLK(n5394), .Q(i_tv80_core_I_7_), .QN(n5037) );
  DFFX1_RVT i_tv80_core_I_reg_6_ ( .D(n2057), .CLK(n5394), .Q(i_tv80_core_I_6_), .QN(n5280) );
  DFFX1_RVT i_tv80_core_I_reg_5_ ( .D(n2058), .CLK(n5394), .Q(i_tv80_core_I_5_), .QN(n5271) );
  DFFX1_RVT i_tv80_core_I_reg_3_ ( .D(n2060), .CLK(n5394), .Q(i_tv80_core_I_3_), .QN(n5255) );
  DFFX1_RVT i_tv80_core_I_reg_2_ ( .D(n2061), .CLK(n5394), .Q(i_tv80_core_I_2_), .QN(n5247) );
  DFFX1_RVT i_tv80_core_I_reg_1_ ( .D(n2062), .CLK(n5394), .Q(i_tv80_core_I_1_), .QN(n5239) );
  DFFX1_RVT i_tv80_core_I_reg_0_ ( .D(n2063), .CLK(n5394), .Q(i_tv80_core_I_0_), .QN(n5231) );
  DFFX1_RVT i_tv80_core_I_reg_4_ ( .D(n2059), .CLK(n5394), .Q(i_tv80_core_I_4_), .QN(n5263) );
  DFFX1_RVT i_tv80_core_mcycles_reg_0_ ( .D(n5393), .CLK(n5394), .Q(
        i_tv80_core_mcycles_0_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_3_ ( .D(i_tv80_core_RegBusA_3_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_3_) );
  DFFX1_RVT i_tv80_core_R_reg_6_ ( .D(n2049), .CLK(n5394), .Q(i_tv80_core_R_6_), .QN(n5208) );
  DFFX1_RVT i_tv80_core_R_reg_4_ ( .D(n2051), .CLK(n5394), .Q(i_tv80_core_R_4_), .QN(n3956) );
  DFFX1_RVT i_tv80_core_R_reg_2_ ( .D(n2053), .CLK(n5394), .Q(i_tv80_core_R_2_), .QN(n5175) );
  DFFX1_RVT i_tv80_core_R_reg_1_ ( .D(n2054), .CLK(n5394), .Q(i_tv80_core_R_1_), .QN(n5165) );
  DFFX1_RVT i_tv80_core_R_reg_0_ ( .D(n2055), .CLK(n5394), .Q(i_tv80_core_R_0_), .QN(n3977) );
  DFFX1_RVT i_tv80_core_R_reg_5_ ( .D(n2050), .CLK(n5394), .Q(i_tv80_core_R_5_), .QN(n5197) );
  DFFX1_RVT i_tv80_core_R_reg_3_ ( .D(n2052), .CLK(n5394), .Q(i_tv80_core_R_3_), .QN(n3985) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_1_ ( .D(i_tv80_core_RegBusA_1_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_1_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_6_ ( .D(i_tv80_core_RegBusA_6_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_6_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_9_ ( .D(i_tv80_core_RegBusA_9_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_9_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_2_ ( .D(n2474), .CLK(net1618), .Q(
        i_tv80_core_RegBusA_r_2_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_0_ ( .D(i_tv80_core_RegBusA_0_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_0_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_4_ ( .D(i_tv80_core_RegBusA_4_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_4_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_7_ ( .D(i_tv80_core_RegBusA_7_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_7_) );
  DFFX1_RVT rd_n_reg ( .D(N33), .CLK(MY_CLK), .Q(rd_n) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_12_ ( .D(i_tv80_core_RegBusA_12_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_12_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_13_ ( .D(i_tv80_core_RegBusA_13_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_13_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_11_ ( .D(i_tv80_core_RegBusA_11_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_11_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_8_ ( .D(i_tv80_core_RegBusA_8_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_8_) );
  DFFX1_RVT i_tv80_core_do_reg_1_ ( .D(n2046), .CLK(n5394), .Q(do_1_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_15_ ( .D(i_tv80_core_RegBusA_15_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_15_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_10_ ( .D(i_tv80_core_RegBusA_10_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_10_) );
  DFFX1_RVT i_tv80_core_RegAddrA_r_reg_1_ ( .D(i_tv80_core_N1102), .CLK(
        net1618), .Q(i_tv80_core_RegAddrA_r_1_) );
  DFFX1_RVT i_tv80_core_RegBusA_r_reg_14_ ( .D(i_tv80_core_RegBusA_14_), .CLK(
        net1618), .Q(i_tv80_core_RegBusA_r_14_) );
  DFFX1_RVT i_tv80_core_do_reg_4_ ( .D(n2043), .CLK(n5394), .Q(do_4_) );
  DFFX1_RVT i_tv80_core_do_reg_0_ ( .D(n2047), .CLK(n5394), .Q(do_0_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_0_ ( .D(n2079), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_0_) );
  DFFX1_RVT i_tv80_core_TmpAddr_reg_1_ ( .D(n2078), .CLK(n5394), .Q(
        i_tv80_core_TmpAddr_1_), .QN(n5163) );
  DFFX1_RVT i_tv80_core_Read_To_Reg_r_reg_4_ ( .D(n5387), .CLK(n5394), .Q(
        i_tv80_core_Read_To_Reg_r_4_) );
  DFFX1_RVT i_tv80_core_do_reg_2_ ( .D(n2045), .CLK(n5394), .Q(do_2_) );
  DFFX1_RVT iorq_n_reg ( .D(N35), .CLK(MY_CLK), .Q(iorq_n) );
  DFFX1_RVT i_tv80_core_Z16_r_reg ( .D(n2133), .CLK(n5394), .QN(n500) );
  DFFX1_RVT i_tv80_core_RegAddrC_reg_1_ ( .D(n5378), .CLK(net1618), .Q(n2880), 
        .QN(i_tv80_core_i_reg_N21) );
  DFFX1_RVT i_tv80_core_ISet_reg_0_ ( .D(n2161), .CLK(n5394), .Q(n4342), .QN(
        n488) );
  DFFX2_RVT i_tv80_core_F_reg_1_ ( .D(n2117), .CLK(net1620), .Q(
        i_tv80_core_F_1_), .QN(n4257) );
  DFFX2_RVT i_tv80_core_BusA_reg_7_ ( .D(n2188), .CLK(net1618), .Q(
        i_tv80_core_BusA_7_), .QN(n3881) );
  DFFX2_RVT di_reg_reg_7_ ( .D(n2172), .CLK(MY_CLK), .Q(di_reg_7_), .QN(n107)
         );
  DFFX2_RVT i_tv80_core_BusA_reg_6_ ( .D(n2142), .CLK(net1618), .Q(
        i_tv80_core_BusA_6_), .QN(n3887) );
  DFFX2_RVT di_reg_reg_6_ ( .D(n2173), .CLK(MY_CLK), .Q(di_reg_6_), .QN(n108)
         );
  DFFX2_RVT i_tv80_core_BusA_reg_3_ ( .D(n2145), .CLK(net1618), .Q(
        i_tv80_core_BusA_3_), .QN(n3708) );
  DFFX2_RVT i_tv80_core_BusA_reg_4_ ( .D(n2144), .CLK(net1618), .Q(
        i_tv80_core_BusA_4_), .QN(n3795) );
  DFFX2_RVT di_reg_reg_2_ ( .D(n2177), .CLK(MY_CLK), .Q(di_reg_2_), .QN(n112)
         );
  DFFX2_RVT i_tv80_core_BusA_reg_5_ ( .D(n2143), .CLK(net1618), .Q(
        i_tv80_core_BusA_5_), .QN(n3831) );
  DFFSSRX2_RVT i_tv80_core_mcycle_reg_1_ ( .D(1'b0), .SETB(n2682), .RSTB(n4429), .CLK(net1620), .Q(mcycle_1_), .QN(n3328) );
  AND2X1_RVT U2212 ( .A1(reset_n), .A2(n4286), .Y(n2295) );
  AND4X1_RVT U2214 ( .A1(n3185), .A2(n3184), .A3(n3183), .A4(n3182), .Y(n2296)
         );
  AND4X1_RVT U2215 ( .A1(n3184), .A2(n3185), .A3(n3183), .A4(n3182), .Y(n2440)
         );
  AOI21X1_RVT U2217 ( .A1(n2723), .A2(n2726), .A3(n3936), .Y(n2298) );
  AND2X2_RVT U2218 ( .A1(n3147), .A2(n2296), .Y(n2402) );
  AO21X1_RVT U2220 ( .A1(n2723), .A2(n2726), .A3(n3936), .Y(n2422) );
  AND3X1_RVT U2222 ( .A1(n460), .A2(n3103), .A3(n2533), .Y(n2299) );
  AO21X1_RVT U2228 ( .A1(n2527), .A2(n3347), .A3(n3364), .Y(n3406) );
  OA21X1_RVT U2235 ( .A1(n2681), .A2(n2595), .A3(n4003), .Y(n2335) );
  XOR3X1_RVT U2236 ( .A1(n4248), .A2(n4005), .A3(n2335), .Y(n2597) );
  XOR3X1_RVT U2248 ( .A1(n4248), .A2(n4011), .A3(n2310), .Y(n2594) );
  OA21X1_RVT U2249 ( .A1(n4012), .A2(n2595), .A3(n2401), .Y(n2310) );
  AO21X1_RVT U2254 ( .A1(i_tv80_core_BusA_3_), .A2(n3542), .A3(
        i_tv80_core_F_4_), .Y(n2313) );
  AO21X1_RVT U2255 ( .A1(i_tv80_core_BusA_3_), .A2(n3542), .A3(
        i_tv80_core_F_4_), .Y(n2314) );
  AO21X1_RVT U2258 ( .A1(i_tv80_core_BusA_3_), .A2(n3542), .A3(
        i_tv80_core_F_4_), .Y(n3776) );
  INVX1_RVT U2261 ( .A(n4737), .Y(n4726) );
  OR2X1_RVT U2263 ( .A1(n3352), .A2(n3405), .Y(n3348) );
  NAND3X0_RVT U2265 ( .A1(n3103), .A2(n468), .A3(i_tv80_core_IR_6_), .Y(n3262)
         );
  NAND2X0_RVT U2266 ( .A1(n2447), .A2(n3831), .Y(n2317) );
  NAND2X0_RVT U2267 ( .A1(n2666), .A2(n2340), .Y(n2318) );
  NAND2X0_RVT U2269 ( .A1(n5345), .A2(n5329), .Y(n2320) );
  NAND2X0_RVT U2270 ( .A1(n5345), .A2(n5329), .Y(n2321) );
  NAND2X0_RVT U2271 ( .A1(n5345), .A2(n5329), .Y(n4321) );
  AND4X1_RVT U2272 ( .A1(n3234), .A2(n3424), .A3(n3589), .A4(n3609), .Y(n3231)
         );
  AND3X1_RVT U2273 ( .A1(n4403), .A2(n4401), .A3(n3578), .Y(n2322) );
  NAND2X0_RVT U2274 ( .A1(n2322), .A2(n2492), .Y(n2323) );
  NAND2X0_RVT U2275 ( .A1(n2322), .A2(n2492), .Y(n2324) );
  NAND2X0_RVT U2276 ( .A1(n2322), .A2(n2492), .Y(n3677) );
  AOI22X1_RVT U2278 ( .A1(n3765), .A2(n3764), .A3(n3763), .A4(n3762), .Y(n2325) );
  AND2X1_RVT U2282 ( .A1(n5160), .A2(n2462), .Y(n2328) );
  NAND3X0_RVT U2284 ( .A1(n5366), .A2(n3152), .A3(n4321), .Y(n4110) );
  INVX0_RVT U2285 ( .A(n2416), .Y(n3290) );
  AND2X1_RVT U2297 ( .A1(n3169), .A2(n2527), .Y(n2330) );
  AND2X1_RVT U2298 ( .A1(n3819), .A2(n3815), .Y(n2331) );
  AO21X1_RVT U2300 ( .A1(n3140), .A2(di_reg_5_), .A3(n2438), .Y(n3817) );
  AND3X1_RVT U2302 ( .A1(n3995), .A2(i_tv80_core_N1102), .A3(n5422), .Y(n2555)
         );
  AND2X1_RVT U2303 ( .A1(n4351), .A2(n3450), .Y(n2333) );
  OR2X1_RVT U2315 ( .A1(n2450), .A2(n4433), .Y(n5372) );
  NBUFFX2_RVT U2317 ( .A(n2394), .Y(n2340) );
  AND4X1_RVT U2318 ( .A1(n3460), .A2(n3459), .A3(n3458), .A4(n4770), .Y(n2336)
         );
  INVX0_RVT U2323 ( .A(n5120), .Y(n4368) );
  INVX0_RVT U2328 ( .A(n4378), .Y(n3292) );
  NAND4X0_RVT U2345 ( .A1(n2577), .A2(n3579), .A3(n4871), .A4(n4870), .Y(n4880) );
  MUX21X1_RVT U2349 ( .A1(i_tv80_core_i_reg_RegsH_5__7_), .A2(n2534), .S0(
        n2651), .Y(n1984) );
  MUX21X1_RVT U2352 ( .A1(n4711), .A2(i_tv80_core_i_reg_RegsH_2__6_), .S0(
        n2529), .Y(n1961) );
  MUX21X1_RVT U2354 ( .A1(n2459), .A2(i_tv80_core_i_reg_RegsH_3__6_), .S0(
        n2504), .Y(n1969) );
  INVX1_RVT U2358 ( .A(n4581), .Y(n4582) );
  OR3X2_RVT U2367 ( .A1(n2457), .A2(n2371), .A3(n2458), .Y(n2459) );
  NAND2X0_RVT U2385 ( .A1(n2352), .A2(n3525), .Y(n5318) );
  NAND3X0_RVT U2386 ( .A1(n4750), .A2(n4749), .A3(n4748), .Y(n5061) );
  AND2X1_RVT U2387 ( .A1(n2672), .A2(n3913), .Y(n2601) );
  INVX1_RVT U2390 ( .A(n5351), .Y(n5091) );
  NBUFFX2_RVT U2391 ( .A(n5091), .Y(n3144) );
  NAND2X2_RVT U2393 ( .A1(n489), .A2(n488), .Y(n5351) );
  AND2X2_RVT U2394 ( .A1(n2770), .A2(n2397), .Y(n2346) );
  AND3X2_RVT U2395 ( .A1(i_tv80_core_i_reg_N22), .A2(i_tv80_core_i_reg_N20), 
        .A3(n2880), .Y(n2347) );
  AND4X1_RVT U2396 ( .A1(n2583), .A2(n3266), .A3(n2677), .A4(n3267), .Y(n2348)
         );
  AND2X1_RVT U2397 ( .A1(n3773), .A2(n3772), .Y(n2349) );
  AND2X1_RVT U2398 ( .A1(n4590), .A2(n4605), .Y(n2350) );
  AND2X1_RVT U2399 ( .A1(n2525), .A2(n3142), .Y(n2351) );
  AND2X1_RVT U2400 ( .A1(n3202), .A2(n2533), .Y(n2352) );
  AND2X1_RVT U2401 ( .A1(n4589), .A2(n4604), .Y(n2353) );
  AND2X2_RVT U2402 ( .A1(n2705), .A2(n2945), .Y(n2354) );
  AND3X2_RVT U2403 ( .A1(i_tv80_core_i_reg_N17), .A2(n2947), .A3(n2945), .Y(
        n2355) );
  AND2X1_RVT U2404 ( .A1(n3451), .A2(n2535), .Y(n2356) );
  INVX1_RVT U2405 ( .A(n4330), .Y(n5226) );
  INVX1_RVT U2406 ( .A(n2488), .Y(n2524) );
  NAND2X0_RVT U2407 ( .A1(n2550), .A2(n5132), .Y(n5294) );
  INVX1_RVT U2408 ( .A(n5294), .Y(n2441) );
  AND2X1_RVT U2410 ( .A1(n5135), .A2(n5149), .Y(n2358) );
  AND2X2_RVT U2411 ( .A1(n2770), .A2(i_tv80_core_i_reg_N22), .Y(n2359) );
  AND3X2_RVT U2412 ( .A1(i_tv80_core_i_reg_N21), .A2(i_tv80_core_i_reg_N22), 
        .A3(n2379), .Y(n2360) );
  AND3X2_RVT U2413 ( .A1(i_tv80_core_i_reg_N22), .A2(n2880), .A3(n2379), .Y(
        n2361) );
  AND2X1_RVT U2414 ( .A1(n4555), .A2(n4556), .Y(n2362) );
  AND2X1_RVT U2415 ( .A1(i_tv80_core_BusA_3_), .A2(n3733), .Y(n2363) );
  AND3X1_RVT U2416 ( .A1(n3897), .A2(n2410), .A3(n3896), .Y(n2364) );
  AND2X1_RVT U2419 ( .A1(n4994), .A2(n4996), .Y(n2366) );
  AND2X1_RVT U2422 ( .A1(n4500), .A2(n2553), .Y(n2367) );
  AND2X1_RVT U2428 ( .A1(n4629), .A2(n2388), .Y(n2369) );
  AND2X1_RVT U2429 ( .A1(n3135), .A2(n4637), .Y(n2370) );
  INVX0_RVT U2432 ( .A(n5410), .Y(n2373) );
  AND3X2_RVT U2434 ( .A1(n4708), .A2(n3056), .A3(i_tv80_core_i_reg_N15), .Y(
        n2389) );
  NAND3X0_RVT U2438 ( .A1(n4458), .A2(n4447), .A3(n4459), .Y(n4489) );
  NAND3X0_RVT U2442 ( .A1(n4443), .A2(n3148), .A3(n2385), .Y(n4482) );
  INVX1_RVT U2443 ( .A(n2721), .Y(n2463) );
  XNOR3X1_RVT U2445 ( .A1(n3876), .A2(n3877), .A3(n3825), .Y(n3826) );
  INVX0_RVT U2446 ( .A(n2411), .Y(n3551) );
  INVX1_RVT U2447 ( .A(n3994), .Y(n3997) );
  NAND2X0_RVT U2448 ( .A1(n5422), .A2(i_tv80_core_N1102), .Y(n3994) );
  INVX0_RVT U2449 ( .A(n2439), .Y(n4309) );
  AO21X1_RVT U2451 ( .A1(n3636), .A2(n3904), .A3(n4330), .Y(n3901) );
  INVX0_RVT U2453 ( .A(n2527), .Y(n3600) );
  NAND2X0_RVT U2455 ( .A1(n2536), .A2(n3661), .Y(n4483) );
  AO21X1_RVT U2456 ( .A1(n4442), .A2(n4475), .A3(n2565), .Y(n4535) );
  NAND2X0_RVT U2459 ( .A1(n4845), .A2(n3579), .Y(n4378) );
  AND2X1_RVT U2460 ( .A1(n435), .A2(n444), .Y(n2503) );
  INVX0_RVT U2462 ( .A(n2451), .Y(n3816) );
  AO22X1_RVT U2463 ( .A1(n3243), .A2(n3525), .A3(n2522), .A4(n3245), .Y(n3397)
         );
  INVX0_RVT U2464 ( .A(n2593), .Y(n2500) );
  INVX0_RVT U2465 ( .A(n2605), .Y(n2510) );
  NAND2X0_RVT U2466 ( .A1(n2586), .A2(n2515), .Y(n4568) );
  INVX0_RVT U2467 ( .A(n4648), .Y(n2478) );
  AO21X1_RVT U2468 ( .A1(n4683), .A2(n3135), .A3(n4682), .Y(n4721) );
  AO21X1_RVT U2469 ( .A1(di_reg_5_), .A2(n2342), .A3(n2736), .Y(n4928) );
  AO21X1_RVT U2470 ( .A1(di_reg_6_), .A2(n2342), .A3(n2736), .Y(n4954) );
  AO21X1_RVT U2471 ( .A1(di_reg_3_), .A2(n2342), .A3(n2736), .Y(n4916) );
  AO21X1_RVT U2472 ( .A1(di_reg_4_), .A2(n2342), .A3(n2736), .Y(n4922) );
  NAND2X0_RVT U2473 ( .A1(n4254), .A2(n4261), .Y(n4367) );
  AO21X1_RVT U2474 ( .A1(n4271), .A2(n4270), .A3(n4269), .Y(n4272) );
  NAND2X0_RVT U2475 ( .A1(n4314), .A2(n4419), .Y(n4318) );
  MUX21X1_RVT U2476 ( .A1(i_tv80_core_i_reg_RegsH_5__3_), .A2(n4694), .S0(
        n2651), .Y(n1988) );
  OA22X1_RVT U2477 ( .A1(n2792), .A2(n5295), .A3(n5294), .A4(n5293), .Y(n5296)
         );
  MUX21X1_RVT U2478 ( .A1(i_tv80_core_i_reg_RegsL_2__6_), .A2(n4717), .S0(
        n2637), .Y(n1897) );
  MUX21X1_RVT U2479 ( .A1(i_tv80_core_i_reg_RegsL_6__6_), .A2(n4717), .S0(
        n2642), .Y(n1929) );
  AND3X2_RVT U2480 ( .A1(n2397), .A2(n2880), .A3(n2379), .Y(n2376) );
  AND2X1_RVT U2481 ( .A1(n460), .A2(i_tv80_core_IR_6_), .Y(n2377) );
  AND3X1_RVT U2482 ( .A1(n3151), .A2(n3588), .A3(n3612), .Y(n2378) );
  AND3X2_RVT U2483 ( .A1(i_tv80_core_i_reg_N21), .A2(n2397), .A3(n2379), .Y(
        n2380) );
  AND3X2_RVT U2484 ( .A1(n2945), .A2(n2947), .A3(n2946), .Y(n2381) );
  INVX1_RVT U2486 ( .A(n4653), .Y(n4649) );
  AND2X1_RVT U2487 ( .A1(n2535), .A2(mcycle_0_), .Y(n2383) );
  AND2X1_RVT U2488 ( .A1(n3603), .A2(n3602), .Y(n2384) );
  AND3X1_RVT U2489 ( .A1(n3574), .A2(n2734), .A3(n5091), .Y(n2385) );
  AND2X1_RVT U2490 ( .A1(n4532), .A2(n4531), .Y(n2386) );
  AND3X1_RVT U2491 ( .A1(n3135), .A2(n4566), .A3(n2475), .Y(n2387) );
  AND2X1_RVT U2492 ( .A1(n4630), .A2(n4641), .Y(n2388) );
  AOI21X1_RVT U2495 ( .A1(n2605), .A2(n4570), .A3(n4569), .Y(n2392) );
  AND2X1_RVT U2496 ( .A1(n4523), .A2(n4522), .Y(n2393) );
  AOI21X1_RVT U2497 ( .A1(n4247), .A2(n4023), .A3(n3912), .Y(n2395) );
  AND3X2_RVT U2500 ( .A1(i_tv80_core_i_reg_N18), .A2(n2945), .A3(n2946), .Y(
        n2399) );
  AOI21X1_RVT U2501 ( .A1(n3208), .A2(n2535), .A3(n3207), .Y(n2400) );
  INVX1_RVT U2502 ( .A(n2616), .Y(n3133) );
  AOI21X1_RVT U2503 ( .A1(n4005), .A2(n4023), .A3(n4004), .Y(n2401) );
  INVX1_RVT U2504 ( .A(n2776), .Y(n2450) );
  AND3X2_RVT U2505 ( .A1(i_tv80_core_i_reg_N18), .A2(i_tv80_core_i_reg_N19), 
        .A3(n2946), .Y(n2403) );
  AOI21X1_RVT U2506 ( .A1(n3732), .A2(i_tv80_core_BusA_1_), .A3(n3705), .Y(
        n2404) );
  INVX1_RVT U2511 ( .A(n4948), .Y(n4949) );
  OA221X1_RVT U2516 ( .A1(n2760), .A2(n4067), .A3(n3881), .A4(n4069), .A5(
        n3880), .Y(n2410) );
  OA21X1_RVT U2522 ( .A1(n2349), .A2(n2622), .A3(n3816), .Y(n2412) );
  XOR3X1_RVT U2526 ( .A1(n2437), .A2(n3818), .A3(n2412), .Y(n2625) );
  AO21X1_RVT U2529 ( .A1(n3138), .A2(di_reg_6_), .A3(n2438), .Y(n3848) );
  INVX1_RVT U2533 ( .A(n4055), .Y(n4180) );
  MUX21X1_RVT U2534 ( .A1(i_tv80_core_i_reg_RegsL_4__0_), .A2(n4723), .S0(
        n2568), .Y(n1919) );
  MUX21X1_RVT U2535 ( .A1(i_tv80_core_i_reg_RegsL_6__0_), .A2(n4723), .S0(
        n2642), .Y(n1935) );
  MUX21X1_RVT U2536 ( .A1(i_tv80_core_i_reg_RegsL_7__0_), .A2(n4723), .S0(
        n2643), .Y(n1943) );
  INVX0_RVT U2537 ( .A(n4077), .Y(n4079) );
  MUX21X1_RVT U2543 ( .A1(i_tv80_core_i_reg_RegsL_1__0_), .A2(n4723), .S0(
        n2640), .Y(n1895) );
  AND2X1_RVT U2544 ( .A1(n3755), .A2(n3729), .Y(n2414) );
  NAND4X0_RVT U2547 ( .A1(n3233), .A2(n2426), .A3(n3446), .A4(n3429), .Y(n2416) );
  AND2X1_RVT U2548 ( .A1(n4254), .A2(n4261), .Y(n2417) );
  AOI21X1_RVT U2554 ( .A1(n2723), .A2(n2726), .A3(n3936), .Y(n2428) );
  AND4X1_RVT U2555 ( .A1(i_tv80_core_BusA_4_), .A2(i_tv80_core_BusA_5_), .A3(
        n2363), .A4(n3776), .Y(n2419) );
  NAND3X0_RVT U2556 ( .A1(n3897), .A2(n2410), .A3(n3896), .Y(n2420) );
  NAND2X0_RVT U2558 ( .A1(n3938), .A2(n4239), .Y(n2421) );
  AO21X1_RVT U2561 ( .A1(di_reg_2_), .A2(n2342), .A3(n2736), .Y(n4910) );
  OR3X2_RVT U2562 ( .A1(i_tv80_core_IR_2_), .A2(n434), .A3(n3163), .Y(n3255)
         );
  NAND2X0_RVT U2563 ( .A1(n3202), .A2(n2533), .Y(n2423) );
  AO22X1_RVT U2564 ( .A1(n4760), .A2(n2711), .A3(n2472), .A4(n4769), .Y(n2424)
         );
  NAND2X0_RVT U2565 ( .A1(n3202), .A2(n3150), .Y(n2425) );
  NAND2X0_RVT U2566 ( .A1(n3202), .A2(n3150), .Y(n2426) );
  NAND2X0_RVT U2567 ( .A1(n3202), .A2(n3150), .Y(n3448) );
  NAND3X0_RVT U2570 ( .A1(n2425), .A2(n3447), .A3(n3446), .Y(n3449) );
  INVX0_RVT U2571 ( .A(n3461), .Y(n3465) );
  AND3X1_RVT U2573 ( .A1(n4750), .A2(n4749), .A3(n4748), .Y(n2427) );
  AND2X1_RVT U2580 ( .A1(i_tv80_core_IR_1_), .A2(n433), .Y(n2431) );
  NAND4X0_RVT U2584 ( .A1(n3185), .A2(n3184), .A3(n3183), .A4(n3182), .Y(n4312) );
  NAND2X0_RVT U2586 ( .A1(n2776), .A2(n2455), .Y(n2448) );
  INVX1_RVT U2587 ( .A(n2455), .Y(n4433) );
  OR3X1_RVT U2590 ( .A1(n277), .A2(i_tv80_core_NMICycle), .A3(n4394), .Y(n4832) );
  AND2X1_RVT U2591 ( .A1(n4865), .A2(n4864), .Y(n2432) );
  AND2X2_RVT U2594 ( .A1(n5322), .A2(n3152), .Y(n2536) );
  INVX0_RVT U2595 ( .A(n2474), .Y(n2446) );
  NOR4X1_RVT U2596 ( .A1(n2433), .A2(n2434), .A3(n2435), .A4(n2436), .Y(n2763)
         );
  AND4X1_RVT U2597 ( .A1(n4209), .A2(n4215), .A3(n4135), .A4(n4134), .Y(n2433)
         );
  AND4X1_RVT U2598 ( .A1(n4184), .A2(n4185), .A3(n4138), .A4(n4137), .Y(n2434)
         );
  AND3X1_RVT U2605 ( .A1(n3679), .A2(n5365), .A3(n3680), .Y(n2438) );
  AND2X1_RVT U2607 ( .A1(n5319), .A2(n3461), .Y(n2439) );
  INVX1_RVT U2609 ( .A(n3576), .Y(n3209) );
  INVX1_RVT U2611 ( .A(n5329), .Y(n3661) );
  OA22X1_RVT U2613 ( .A1(n5228), .A2(n5197), .A3(n2442), .A4(n5196), .Y(n5198)
         );
  OA22X1_RVT U2614 ( .A1(n5228), .A2(n5208), .A3(n2442), .A4(n5207), .Y(n5209)
         );
  OA22X1_RVT U2617 ( .A1(n5228), .A2(n5165), .A3(n2442), .A4(n5164), .Y(n5166)
         );
  OA22X1_RVT U2618 ( .A1(n5228), .A2(n5175), .A3(n2442), .A4(n5174), .Y(n5176)
         );
  INVX0_RVT U2619 ( .A(n3850), .Y(n3820) );
  AND2X1_RVT U2620 ( .A1(n4421), .A2(n2584), .Y(n2443) );
  AND2X1_RVT U2621 ( .A1(n2489), .A2(n2394), .Y(n2584) );
  AND2X1_RVT U2625 ( .A1(n5133), .A2(n2296), .Y(n2444) );
  MUX21X1_RVT U2627 ( .A1(i_tv80_core_i_reg_RegsL_5__1_), .A2(n4722), .S0(
        n2641), .Y(n1926) );
  OA22X1_RVT U2628 ( .A1(n2499), .A2(n2446), .A3(n2446), .A4(n2616), .Y(n2445)
         );
  MUX21X1_RVT U2629 ( .A1(i_tv80_core_i_reg_RegsL_2__1_), .A2(n4722), .S0(
        n2637), .Y(n1902) );
  INVX0_RVT U2630 ( .A(n4684), .Y(n4125) );
  AND2X1_RVT U2631 ( .A1(n3800), .A2(n3801), .Y(n2447) );
  XNOR2X1_RVT U2632 ( .A1(n514), .A2(n308), .Y(n2750) );
  XOR2X1_RVT U2635 ( .A1(n514), .A2(n306), .Y(n3516) );
  XOR2X1_RVT U2636 ( .A1(n514), .A2(n4785), .Y(n3885) );
  OA21X1_RVT U2637 ( .A1(n2448), .A2(n3341), .A3(n4300), .Y(n3342) );
  INVX0_RVT U2638 ( .A(n3288), .Y(n3289) );
  AND2X1_RVT U2639 ( .A1(n3775), .A2(n3774), .Y(n2451) );
  INVX1_RVT U2642 ( .A(n2431), .Y(n2452) );
  NAND2X0_RVT U2646 ( .A1(n2437), .A2(n3814), .Y(n2453) );
  OR2X1_RVT U2658 ( .A1(n2454), .A2(n4618), .Y(n4619) );
  NAND3X0_RVT U2659 ( .A1(n4111), .A2(n4110), .A3(n5351), .Y(n3680) );
  AND3X1_RVT U2660 ( .A1(n4112), .A2(n4111), .A3(n4110), .Y(n2616) );
  AND3X1_RVT U2664 ( .A1(n2394), .A2(n2489), .A3(n4290), .Y(n2455) );
  OA22X1_RVT U2665 ( .A1(i_tv80_core_F_0_), .A2(n2492), .A3(i_tv80_core_F_6_), 
        .A4(n4403), .Y(n4407) );
  NOR2X1_RVT U2670 ( .A1(i_tv80_core_IR_1_), .A2(n435), .Y(n3119) );
  OR3X2_RVT U2671 ( .A1(n3046), .A2(n3047), .A3(n3048), .Y(
        i_tv80_core_RegBusA_14_) );
  OR3X2_RVT U2676 ( .A1(n2457), .A2(n2371), .A3(n2458), .Y(n4711) );
  INVX0_RVT U2695 ( .A(n4664), .Y(n4627) );
  MUX21X1_RVT U2696 ( .A1(i_tv80_core_i_reg_RegsL_7__6_), .A2(n4697), .S0(
        n2643), .Y(n1937) );
  MUX21X1_RVT U2697 ( .A1(i_tv80_core_i_reg_RegsL_3__6_), .A2(n4697), .S0(
        n2638), .Y(n1905) );
  NAND2X0_RVT U2698 ( .A1(n4626), .A2(n4674), .Y(n4664) );
  AND4X1_RVT U2699 ( .A1(n4646), .A2(n4647), .A3(n4667), .A4(n4645), .Y(n2479)
         );
  INVX1_RVT U2700 ( .A(n4608), .Y(n4609) );
  INVX0_RVT U2701 ( .A(n4583), .Y(n4579) );
  NOR2X1_RVT U2712 ( .A1(i_tv80_core_IR_1_), .A2(n433), .Y(n3110) );
  AND3X1_RVT U2714 ( .A1(n4568), .A2(n2475), .A3(n4565), .Y(n2457) );
  OAI221X1_RVT U2715 ( .A1(n4562), .A2(n2475), .A3(n4564), .A4(n4555), .A5(
        n4554), .Y(n2458) );
  AOI21X1_RVT U2720 ( .A1(n4782), .A2(n4781), .A3(n2791), .Y(n2732) );
  INVX2_RVT U2724 ( .A(n3114), .Y(n3150) );
  INVX4_RVT U2725 ( .A(n444), .Y(n3592) );
  NAND3X0_RVT U2727 ( .A1(n2444), .A2(n5130), .A3(n5129), .Y(n2464) );
  OAI221X1_RVT U2731 ( .A1(n4650), .A2(n4648), .A3(i_tv80_core_RegBusA_6_), 
        .A4(n4651), .A5(n3137), .Y(n2480) );
  XOR2X1_RVT U2732 ( .A1(i_tv80_core_RegBusA_6_), .A2(n3130), .Y(n4643) );
  AO221X1_RVT U2733 ( .A1(n4653), .A2(n2478), .A3(n4649), .A4(n2479), .A5(
        n2480), .Y(n4710) );
  AND2X1_RVT U2740 ( .A1(n4526), .A2(n2391), .Y(n2469) );
  NAND2X0_RVT U2741 ( .A1(n2386), .A2(n4530), .Y(n2470) );
  OR3X2_RVT U2743 ( .A1(n3053), .A2(n3054), .A3(n3055), .Y(
        i_tv80_core_RegBusA_15_) );
  NAND4X0_RVT U2744 ( .A1(n3198), .A2(n3216), .A3(n3199), .A4(n3571), .Y(n3259) );
  AND2X1_RVT U2745 ( .A1(n3056), .A2(i_tv80_core_i_reg_N15), .Y(n2715) );
  INVX1_RVT U2746 ( .A(i_tv80_core_RegBusA_1_), .Y(n4123) );
  NAND2X0_RVT U2747 ( .A1(n2385), .A2(n2471), .Y(n4460) );
  AND2X1_RVT U2748 ( .A1(n4443), .A2(n3126), .Y(n2471) );
  NAND2X0_RVT U2751 ( .A1(n4525), .A2(n2362), .Y(n4526) );
  OAI221X1_RVT U2752 ( .A1(n3143), .A2(n3278), .A3(n3277), .A4(n3276), .A5(
        n4860), .Y(n3279) );
  OR3X2_RVT U2754 ( .A1(n2965), .A2(n2967), .A3(n2966), .Y(n2474) );
  AND2X1_RVT U2755 ( .A1(n4541), .A2(n5406), .Y(n2475) );
  OR2X1_RVT U2758 ( .A1(n434), .A2(n433), .Y(n2488) );
  OR3X2_RVT U2763 ( .A1(n3021), .A2(n3022), .A3(n3023), .Y(
        i_tv80_core_RegBusA_10_) );
  NAND3X0_RVT U2764 ( .A1(n4511), .A2(n3135), .A3(n4512), .Y(n4531) );
  NAND2X0_RVT U2765 ( .A1(n2367), .A2(n4475), .Y(n4476) );
  OA22X1_RVT U2778 ( .A1(n5066), .A2(n5050), .A3(n5049), .A4(n5048), .Y(n5052)
         );
  INVX1_RVT U2779 ( .A(n5050), .Y(n3436) );
  AND2X1_RVT U2789 ( .A1(n467), .A2(n468), .Y(n3193) );
  AND2X1_RVT U2796 ( .A1(n3663), .A2(n2536), .Y(n2493) );
  AND2X1_RVT U2797 ( .A1(n3209), .A2(n3193), .Y(n2494) );
  OR3X2_RVT U2802 ( .A1(n3025), .A2(n3026), .A3(n3027), .Y(
        i_tv80_core_RegBusA_11_) );
  NAND3X0_RVT U2804 ( .A1(n4705), .A2(n4704), .A3(n2753), .Y(n4715) );
  MUX21X1_RVT U2805 ( .A1(i_tv80_core_i_reg_RegsH_7__4_), .A2(n4693), .S0(
        n2652), .Y(n2003) );
  MUX21X1_RVT U2806 ( .A1(i_tv80_core_i_reg_RegsH_4__4_), .A2(n4693), .S0(
        n2569), .Y(n1979) );
  MUX21X1_RVT U2807 ( .A1(i_tv80_core_i_reg_RegsH_6__4_), .A2(n4693), .S0(
        n2653), .Y(n1995) );
  MUX21X1_RVT U2808 ( .A1(i_tv80_core_i_reg_RegsH_5__4_), .A2(n4693), .S0(
        n2651), .Y(n1987) );
  MUX21X1_RVT U2810 ( .A1(i_tv80_core_i_reg_RegsH_1__4_), .A2(n4713), .S0(
        n2649), .Y(n1955) );
  MUX21X1_RVT U2811 ( .A1(i_tv80_core_i_reg_RegsH_0__4_), .A2(n4713), .S0(
        n2570), .Y(n1947) );
  MUX21X1_RVT U2812 ( .A1(i_tv80_core_i_reg_RegsH_2__4_), .A2(n4713), .S0(
        n2646), .Y(n1963) );
  MUX21X1_RVT U2813 ( .A1(i_tv80_core_i_reg_RegsH_3__4_), .A2(n4713), .S0(
        n2647), .Y(n1971) );
  AND2X1_RVT U2815 ( .A1(n2754), .A2(n4116), .Y(n2497) );
  AND2X1_RVT U2817 ( .A1(n433), .A2(n435), .Y(n2758) );
  XOR2X1_RVT U2818 ( .A1(i_tv80_core_RegBusA_5_), .A2(n3129), .Y(n4651) );
  AND3X2_RVT U2819 ( .A1(n3056), .A2(n4692), .A3(n4708), .Y(n2498) );
  NAND2X0_RVT U2820 ( .A1(i_tv80_core_RegBusA_0_), .A2(i_tv80_core_RegBusA_1_), 
        .Y(n2499) );
  NAND2X0_RVT U2821 ( .A1(i_tv80_core_RegBusA_0_), .A2(i_tv80_core_RegBusA_1_), 
        .Y(n4674) );
  AO21X1_RVT U2822 ( .A1(i_tv80_core_RegBusA_5_), .A2(i_tv80_core_RegBusA_6_), 
        .A3(n3129), .Y(n4630) );
  NAND2X0_RVT U2823 ( .A1(n2366), .A2(n4995), .Y(n5002) );
  NAND3X0_RVT U2824 ( .A1(n4582), .A2(n3135), .A3(n4584), .Y(n2501) );
  INVX1_RVT U2826 ( .A(n2426), .Y(n3229) );
  AO21X1_RVT U2827 ( .A1(n3150), .A2(n2533), .A3(n4781), .Y(n3215) );
  AO21X1_RVT U2828 ( .A1(n2425), .A2(n3934), .A3(n3212), .Y(n3386) );
  AND2X1_RVT U2829 ( .A1(n2369), .A2(n4628), .Y(n4634) );
  NAND3X0_RVT U2831 ( .A1(n4521), .A2(n4556), .A3(n2393), .Y(n4530) );
  NAND2X0_RVT U2832 ( .A1(i_tv80_core_i_reg_RegsH_3__7_), .A2(n2504), .Y(n2505) );
  NAND2X0_RVT U2833 ( .A1(n2534), .A2(n2647), .Y(n2506) );
  NAND2X0_RVT U2834 ( .A1(n2505), .A2(n2506), .Y(n1968) );
  AND3X1_RVT U2840 ( .A1(n444), .A2(n3172), .A3(n435), .Y(n3591) );
  AO21X1_RVT U2841 ( .A1(n435), .A2(n3592), .A3(n2503), .Y(n4116) );
  AND2X1_RVT U2845 ( .A1(n4575), .A2(n4574), .Y(n2507) );
  NAND3X0_RVT U2848 ( .A1(n2384), .A2(n3604), .A3(n3672), .Y(n3605) );
  NAND3X0_RVT U2849 ( .A1(n2388), .A2(n4629), .A3(n4628), .Y(n4633) );
  NAND2X0_RVT U2850 ( .A1(n4568), .A2(n2387), .Y(n4700) );
  NAND2X0_RVT U2855 ( .A1(i_tv80_core_RegBusA_3_), .A2(i_tv80_core_RegBusA_2_), 
        .Y(n2509) );
  OR3X2_RVT U2857 ( .A1(n3007), .A2(n3008), .A3(n3009), .Y(
        i_tv80_core_RegBusA_8_) );
  NAND2X0_RVT U2859 ( .A1(n2752), .A2(n4710), .Y(n2512) );
  NAND2X0_RVT U2860 ( .A1(n2752), .A2(n4710), .Y(n2513) );
  OR3X2_RVT U2862 ( .A1(n3014), .A2(n3016), .A3(n3015), .Y(
        i_tv80_core_RegBusA_9_) );
  AO22X1_RVT U2863 ( .A1(n4674), .A2(n4626), .A3(n3132), .A4(n2509), .Y(n4560)
         );
  NAND4X0_RVT U2864 ( .A1(n4561), .A2(n4560), .A3(n4559), .A4(n4647), .Y(n2514) );
  NAND4X0_RVT U2865 ( .A1(n4561), .A2(n4560), .A3(n4647), .A4(n4559), .Y(n2515) );
  NAND4X0_RVT U2866 ( .A1(n4561), .A2(n4560), .A3(n4647), .A4(n4559), .Y(n4603) );
  INVX0_RVT U2871 ( .A(n3268), .Y(n3278) );
  MUX21X1_RVT U2872 ( .A1(i_tv80_core_i_reg_RegsH_1__2_), .A2(n4715), .S0(
        n2649), .Y(n1957) );
  MUX21X1_RVT U2873 ( .A1(i_tv80_core_i_reg_RegsH_0__2_), .A2(n4715), .S0(
        n2570), .Y(n1949) );
  MUX21X1_RVT U2874 ( .A1(i_tv80_core_i_reg_RegsH_3__2_), .A2(n4715), .S0(
        n2647), .Y(n1973) );
  MUX21X1_RVT U2875 ( .A1(i_tv80_core_i_reg_RegsH_2__2_), .A2(n4715), .S0(
        n2646), .Y(n1965) );
  NAND3X0_RVT U2878 ( .A1(n2350), .A2(n2353), .A3(n4603), .Y(n4594) );
  AND2X1_RVT U2881 ( .A1(n4473), .A2(n5365), .Y(n2518) );
  AND2X1_RVT U2884 ( .A1(i_tv80_core_IR_7_), .A2(i_tv80_core_IR_6_), .Y(n2520)
         );
  INVX0_RVT U2885 ( .A(n3797), .Y(n3799) );
  AND2X1_RVT U2890 ( .A1(n3580), .A2(n3579), .Y(n2521) );
  NAND2X0_RVT U2896 ( .A1(n3249), .A2(n3589), .Y(n2522) );
  NAND3X0_RVT U2897 ( .A1(n2520), .A2(n3148), .A3(n3127), .Y(n3170) );
  AND3X1_RVT U2898 ( .A1(n3127), .A2(n3148), .A3(n3610), .Y(n2525) );
  AND3X1_RVT U2899 ( .A1(i_tv80_core_i_reg_N16), .A2(n4692), .A3(
        i_tv80_core_i_reg_N14), .Y(n2526) );
  AND2X1_RVT U2902 ( .A1(n5410), .A2(n3610), .Y(n2528) );
  NAND2X0_RVT U2903 ( .A1(i_tv80_core_i_reg_RegsH_2__7_), .A2(n2529), .Y(n2530) );
  NAND2X0_RVT U2904 ( .A1(n2534), .A2(n2646), .Y(n2531) );
  NAND2X0_RVT U2905 ( .A1(n2531), .A2(n2530), .Y(n1960) );
  AND2X1_RVT U2906 ( .A1(i_tv80_core_i_reg_N14), .A2(i_tv80_core_i_reg_N15), 
        .Y(n2717) );
  INVX1_RVT U2910 ( .A(i_tv80_core_IR_3_), .Y(n2533) );
  NAND4X0_RVT U2918 ( .A1(n3592), .A2(n3103), .A3(n460), .A4(i_tv80_core_F_6_), 
        .Y(n3285) );
  INVX0_RVT U2920 ( .A(n5228), .Y(n5214) );
  AND2X2_RVT U2927 ( .A1(n2644), .A2(n2716), .Y(n2641) );
  AND2X2_RVT U2930 ( .A1(n2717), .A2(n2639), .Y(n2638) );
  AND2X2_RVT U2933 ( .A1(n2644), .A2(n2715), .Y(n2642) );
  AND2X2_RVT U2934 ( .A1(n2715), .A2(n2648), .Y(n2646) );
  AND2X2_RVT U2936 ( .A1(n2716), .A2(n2639), .Y(n2640) );
  AND2X2_RVT U2939 ( .A1(n2644), .A2(n2717), .Y(n2643) );
  AND2X2_RVT U2941 ( .A1(n2715), .A2(n2639), .Y(n2637) );
  AND2X2_RVT U2943 ( .A1(n2654), .A2(n2716), .Y(n2651) );
  AND2X2_RVT U2946 ( .A1(n2644), .A2(n2655), .Y(n2568) );
  OA22X1_RVT U2949 ( .A1(n3977), .A2(n4033), .A3(n3976), .A4(n4031), .Y(n3981)
         );
  OA22X1_RVT U2950 ( .A1(n5165), .A2(n4033), .A3(n4262), .A4(n4031), .Y(n3973)
         );
  OA22X1_RVT U2951 ( .A1(n5175), .A2(n4033), .A3(n3963), .A4(n4031), .Y(n3967)
         );
  OA22X1_RVT U2952 ( .A1(n3956), .A2(n4033), .A3(n3955), .A4(n4031), .Y(n3960)
         );
  OA22X1_RVT U2953 ( .A1(n5197), .A2(n4033), .A3(n4792), .A4(n4031), .Y(n3952)
         );
  OA22X1_RVT U2954 ( .A1(n5208), .A2(n4033), .A3(n4031), .A4(n4368), .Y(n3942)
         );
  AND2X2_RVT U2955 ( .A1(n2717), .A2(n2648), .Y(n2647) );
  AND2X2_RVT U2957 ( .A1(n2654), .A2(n2715), .Y(n2653) );
  AND2X2_RVT U2959 ( .A1(n2716), .A2(n2648), .Y(n2649) );
  AND2X2_RVT U2961 ( .A1(n2654), .A2(n2655), .Y(n2569) );
  NAND4X1_RVT U2963 ( .A1(n4685), .A2(n4687), .A3(n4686), .A4(n4688), .Y(n4722) );
  AND2X2_RVT U2964 ( .A1(n2612), .A2(n5422), .Y(n2687) );
  AND2X2_RVT U2966 ( .A1(n2654), .A2(n2717), .Y(n2652) );
  AND2X2_RVT U2967 ( .A1(n2648), .A2(n2655), .Y(n2570) );
  NAND4X1_RVT U2976 ( .A1(n2726), .A2(n2790), .A3(n3631), .A4(n3929), .Y(n4360) );
  INVX0_RVT U2979 ( .A(n3579), .Y(n3218) );
  INVX0_RVT U2990 ( .A(n4647), .Y(n4517) );
  NAND4X0_RVT U2991 ( .A1(n3368), .A2(n3367), .A3(n5050), .A4(n3263), .Y(n3264) );
  NAND3X2_RVT U2992 ( .A1(n5150), .A2(n5147), .A3(n2551), .Y(n2537) );
  INVX1_RVT U2993 ( .A(n3323), .Y(n2578) );
  INVX0_RVT U2995 ( .A(n3482), .Y(n3484) );
  NAND3X0_RVT U2996 ( .A1(n3142), .A2(n4724), .A3(n2523), .Y(n4895) );
  NAND2X0_RVT U2999 ( .A1(n5322), .A2(n3152), .Y(n5328) );
  XNOR3X1_RVT U3000 ( .A1(n2760), .A2(n4206), .A3(n2539), .Y(n4214) );
  XOR3X1_RVT U3001 ( .A1(n4213), .A2(n4212), .A3(n4211), .Y(n2539) );
  INVX0_RVT U3002 ( .A(n3711), .Y(n3712) );
  XNOR3X1_RVT U3004 ( .A1(n2540), .A2(n4193), .A3(n2722), .Y(n4194) );
  XOR2X1_RVT U3005 ( .A1(n4185), .A2(n4184), .Y(n2540) );
  INVX2_RVT U3010 ( .A(n489), .Y(n3152) );
  XNOR2X1_RVT U3011 ( .A1(mcycle_2_), .A2(n2542), .Y(n4875) );
  AND2X1_RVT U3013 ( .A1(n5311), .A2(n3299), .Y(n2543) );
  INVX4_RVT U3015 ( .A(n3133), .Y(n3132) );
  AND2X1_RVT U3016 ( .A1(n5129), .A2(n5130), .Y(n2544) );
  INVX2_RVT U3017 ( .A(n4499), .Y(n3137) );
  AND2X1_RVT U3019 ( .A1(n3147), .A2(n3142), .Y(n2545) );
  AND2X1_RVT U3020 ( .A1(n3201), .A2(n3399), .Y(n2547) );
  AND3X1_RVT U3021 ( .A1(n2579), .A2(n5068), .A3(n2600), .Y(n2548) );
  AND2X1_RVT U3022 ( .A1(n3239), .A2(n3196), .Y(n2549) );
  AND2X1_RVT U3023 ( .A1(reset_n), .A2(n5128), .Y(n2550) );
  AND2X1_RVT U3024 ( .A1(n2462), .A2(n5378), .Y(n2551) );
  AND2X1_RVT U3025 ( .A1(n4483), .A2(n4482), .Y(n2553) );
  AOI22X1_RVT U3026 ( .A1(n3229), .A2(n3214), .A3(n3526), .A4(n3258), .Y(n2554) );
  INVX1_RVT U3027 ( .A(n4170), .Y(n4171) );
  AND2X1_RVT U3028 ( .A1(n4351), .A2(n3450), .Y(n2556) );
  AND3X1_RVT U3029 ( .A1(n4400), .A2(n2598), .A3(n3371), .Y(n2557) );
  AOI21X1_RVT U3030 ( .A1(n3192), .A2(n4846), .A3(n2599), .Y(n2558) );
  AND2X1_RVT U3031 ( .A1(n5025), .A2(n5138), .Y(n2559) );
  AND2X1_RVT U3033 ( .A1(n5025), .A2(n5146), .Y(n2560) );
  INVX0_RVT U3034 ( .A(n3107), .Y(n4731) );
  AND2X1_RVT U3035 ( .A1(n3462), .A2(n4751), .Y(n2562) );
  AND4X1_RVT U3036 ( .A1(n3372), .A2(n4732), .A3(n2557), .A4(n4410), .Y(n2563)
         );
  AND2X1_RVT U3037 ( .A1(n3158), .A2(n5370), .Y(n2564) );
  AND2X1_RVT U3038 ( .A1(n2553), .A2(n4475), .Y(n2565) );
  AND2X1_RVT U3039 ( .A1(n3918), .A2(n2631), .Y(n2566) );
  AND2X1_RVT U3040 ( .A1(n2631), .A2(n4725), .Y(n2567) );
  AND3X1_RVT U3041 ( .A1(n4254), .A2(n3938), .A3(n4812), .Y(n2571) );
  AND2X1_RVT U3042 ( .A1(n2656), .A2(n3947), .Y(n2572) );
  AND2X1_RVT U3043 ( .A1(n5081), .A2(n5064), .Y(n2573) );
  AND2X1_RVT U3044 ( .A1(n4842), .A2(n4829), .Y(n2574) );
  INVX2_RVT U3045 ( .A(n4895), .Y(n5138) );
  NBUFFX2_RVT U3046 ( .A(n3147), .Y(n3146) );
  NBUFFX2_RVT U3047 ( .A(n5226), .Y(n3147) );
  AND2X1_RVT U3050 ( .A1(n5322), .A2(n5091), .Y(n2577) );
  OR2X1_RVT U3051 ( .A1(n2578), .A2(n5149), .Y(n3325) );
  AND2X1_RVT U3052 ( .A1(n2668), .A2(n2604), .Y(n2579) );
  AND2X1_RVT U3053 ( .A1(n4538), .A2(n4490), .Y(n2580) );
  AND2X1_RVT U3054 ( .A1(n3170), .A2(n3271), .Y(n2581) );
  AND2X1_RVT U3055 ( .A1(n3616), .A2(n3171), .Y(n2582) );
  NAND3X0_RVT U3056 ( .A1(n3323), .A2(n5127), .A3(n5348), .Y(n3326) );
  AND4X1_RVT U3057 ( .A1(n2554), .A2(n3446), .A3(n4328), .A4(n4333), .Y(n2585)
         );
  AND2X1_RVT U3058 ( .A1(n4556), .A2(n4605), .Y(n2586) );
  AND2X1_RVT U3059 ( .A1(n2448), .A2(reset_n), .Y(n2587) );
  AND2X1_RVT U3060 ( .A1(n5150), .A2(n5149), .Y(n2588) );
  AND3X1_RVT U3061 ( .A1(n4235), .A2(n4372), .A3(n4360), .Y(n2589) );
  AND2X1_RVT U3062 ( .A1(n4599), .A2(n3137), .Y(n2590) );
  INVX1_RVT U3063 ( .A(n5365), .Y(n3140) );
  AND3X1_RVT U3064 ( .A1(n4450), .A2(n3144), .A3(n2523), .Y(n2592) );
  AND2X1_RVT U3065 ( .A1(n4593), .A2(n3137), .Y(n2593) );
  AND2X1_RVT U3066 ( .A1(n4844), .A2(n4845), .Y(n2599) );
  AND2X1_RVT U3067 ( .A1(n3386), .A2(n5064), .Y(n2600) );
  AND2X1_RVT U3068 ( .A1(n4652), .A2(n3137), .Y(n2603) );
  AND2X1_RVT U3069 ( .A1(n3922), .A2(n3920), .Y(n2604) );
  AND2X1_RVT U3070 ( .A1(n4567), .A2(n3137), .Y(n2605) );
  AOI22X1_RVT U3071 ( .A1(n2523), .A2(n3252), .A3(n2525), .A4(n3250), .Y(n2606) );
  AND2X1_RVT U3072 ( .A1(n3102), .A2(n3099), .Y(n2607) );
  AND2X1_RVT U3073 ( .A1(n4614), .A2(n3137), .Y(n2609) );
  AND2X1_RVT U3074 ( .A1(reset_n), .A2(n4286), .Y(n2611) );
  AND2X1_RVT U3075 ( .A1(n3993), .A2(n3996), .Y(n2612) );
  AND2X1_RVT U3076 ( .A1(n2607), .A2(n5075), .Y(n2615) );
  NAND3X0_RVT U3077 ( .A1(n4864), .A2(n3144), .A3(n4861), .Y(n4863) );
  AND2X1_RVT U3078 ( .A1(n2670), .A2(n3193), .Y(n3116) );
  AND2X1_RVT U3079 ( .A1(n2686), .A2(n5075), .Y(n2618) );
  AND2X1_RVT U3080 ( .A1(n3098), .A2(n3099), .Y(n2619) );
  AND2X1_RVT U3081 ( .A1(n4949), .A2(n5038), .Y(n2624) );
  INVX2_RVT U3082 ( .A(n5038), .Y(n5011) );
  AOI21X1_RVT U3083 ( .A1(n3435), .A2(n5366), .A3(n4049), .Y(n2628) );
  XOR2X1_RVT U3085 ( .A1(n3714), .A2(n3689), .Y(n3691) );
  AOI22X1_RVT U3086 ( .A1(n5315), .A2(n2321), .A3(n2338), .A4(n3457), .Y(n2629) );
  AND2X1_RVT U3087 ( .A1(n3656), .A2(n3918), .Y(n2630) );
  AOI21X1_RVT U3088 ( .A1(n2724), .A2(n5095), .A3(n4250), .Y(n2631) );
  AND2X1_RVT U3089 ( .A1(n3638), .A2(n3637), .Y(n2632) );
  AND2X1_RVT U3090 ( .A1(n3656), .A2(n4725), .Y(n2633) );
  NAND4X0_RVT U3091 ( .A1(n4324), .A2(n2585), .A3(n2579), .A4(n3389), .Y(n3407) );
  NOR2X0_RVT U3093 ( .A1(n3917), .A2(n4250), .Y(n2634) );
  AOI21X1_RVT U3094 ( .A1(n3484), .A2(n5312), .A3(n3483), .Y(n2635) );
  AND3X1_RVT U3095 ( .A1(n5312), .A2(n4742), .A3(n4450), .Y(n2636) );
  AND2X1_RVT U3096 ( .A1(n4709), .A2(n4708), .Y(n2639) );
  AND2X1_RVT U3097 ( .A1(i_tv80_core_i_reg_N16), .A2(n4709), .Y(n2644) );
  AND2X1_RVT U3098 ( .A1(n3109), .A2(n4742), .Y(n2645) );
  AND2X1_RVT U3099 ( .A1(n4698), .A2(n4708), .Y(n2648) );
  AND4X1_RVT U3100 ( .A1(n3146), .A2(n4908), .A3(n4907), .A4(n4906), .Y(n2650)
         );
  AND2X1_RVT U3101 ( .A1(n4698), .A2(i_tv80_core_i_reg_N16), .Y(n2654) );
  AND3X1_RVT U3102 ( .A1(n2583), .A2(n3117), .A3(n4400), .Y(n4412) );
  AND2X1_RVT U3103 ( .A1(n3928), .A2(n3147), .Y(n2656) );
  NAND4X0_RVT U3104 ( .A1(n2565), .A2(n4442), .A3(n4484), .A4(n4536), .Y(n4163) );
  OR2X1_RVT U3105 ( .A1(n4338), .A2(n2657), .Y(n3337) );
  AND4X1_RVT U3106 ( .A1(n5133), .A2(n4416), .A3(n4886), .A4(n4857), .Y(n2657)
         );
  AND2X1_RVT U3107 ( .A1(n3147), .A2(n3925), .Y(n2658) );
  AND2X1_RVT U3108 ( .A1(n3525), .A2(n3143), .Y(n2659) );
  AND2X1_RVT U3109 ( .A1(n2723), .A2(n3929), .Y(n2660) );
  AO21X1_RVT U3110 ( .A1(n3143), .A2(n4861), .A3(n5142), .Y(n4824) );
  AND2X1_RVT U3111 ( .A1(n5104), .A2(n5103), .Y(n2661) );
  AOI21X1_RVT U3112 ( .A1(n4341), .A2(n4826), .A3(n4338), .Y(n2662) );
  AND2X1_RVT U3113 ( .A1(n2729), .A2(n5106), .Y(n2663) );
  AND2X1_RVT U3114 ( .A1(n4280), .A2(n3147), .Y(n2664) );
  AND2X1_RVT U3115 ( .A1(n3158), .A2(n3564), .Y(n2665) );
  INVX2_RVT U3116 ( .A(n3159), .Y(n3158) );
  INVX2_RVT U3117 ( .A(n3159), .Y(n3156) );
  AND2X1_RVT U3118 ( .A1(n2358), .A2(n5151), .Y(n2666) );
  NOR2X0_RVT U3119 ( .A1(i_tv80_core_RegBusA_3_), .A2(i_tv80_core_RegBusA_7_), 
        .Y(n2667) );
  OA21X1_RVT U3120 ( .A1(i_tv80_core_RegBusA_1_), .A2(i_tv80_core_RegBusA_0_), 
        .A3(n3130), .Y(n4519) );
  AND4X1_RVT U3121 ( .A1(n3220), .A2(n3221), .A3(n3222), .A4(n3219), .Y(n2668)
         );
  AND4X1_RVT U3122 ( .A1(n2548), .A2(n2585), .A3(n3316), .A4(n3315), .Y(n2669)
         );
  INVX0_RVT U3123 ( .A(n2503), .Y(n3189) );
  AND2X1_RVT U3124 ( .A1(n460), .A2(n4763), .Y(n2670) );
  AND4X1_RVT U3125 ( .A1(n4017), .A2(n4019), .A3(n4018), .A4(n2401), .Y(n2671)
         );
  AOI22X1_RVT U3126 ( .A1(n3850), .A2(n3856), .A3(n3849), .A4(n3848), .Y(n2672) );
  AND3X1_RVT U3127 ( .A1(n4466), .A2(n4121), .A3(n4467), .Y(n2673) );
  AO21X1_RVT U3128 ( .A1(n3666), .A2(n3583), .A3(n5303), .Y(n3586) );
  AO21X1_RVT U3129 ( .A1(n3262), .A2(n3261), .A3(n3260), .Y(n3368) );
  OR2X1_RVT U3130 ( .A1(n3130), .A2(i_tv80_core_RegBusA_10_), .Y(n4590) );
  AND2X1_RVT U3131 ( .A1(n4248), .A2(n3909), .Y(n2675) );
  AOI21X1_RVT U3132 ( .A1(n4248), .A2(n3914), .A3(n4081), .Y(n2676) );
  XOR2X1_RVT U3133 ( .A1(i_tv80_core_RegBusA_15_), .A2(n3132), .Y(n4523) );
  AND4X1_RVT U3134 ( .A1(n3117), .A2(n2558), .A3(n3237), .A4(n4413), .Y(n2677)
         );
  XOR2X1_RVT U3135 ( .A1(n3130), .A2(i_tv80_core_RegBusA_10_), .Y(n4598) );
  AND2X1_RVT U3136 ( .A1(n3756), .A2(n3729), .Y(n2678) );
  AND2X1_RVT U3137 ( .A1(n4967), .A2(n4966), .Y(n2679) );
  AOI21X1_RVT U3138 ( .A1(n5015), .A2(n5016), .A3(n2787), .Y(n2680) );
  INVX1_RVT U3139 ( .A(n4983), .Y(n4984) );
  AND2X1_RVT U3140 ( .A1(n4248), .A2(n3916), .Y(n2681) );
  AND3X1_RVT U3141 ( .A1(n4428), .A2(n4427), .A3(n4426), .Y(n2682) );
  XOR2X1_RVT U3142 ( .A1(n3129), .A2(i_tv80_core_RegBusA_12_), .Y(n4580) );
  XOR2X1_RVT U3143 ( .A1(n3129), .A2(i_tv80_core_RegBusA_4_), .Y(n4666) );
  AOI21X1_RVT U3144 ( .A1(n4979), .A2(n4985), .A3(n4978), .Y(n2684) );
  AND3X1_RVT U3145 ( .A1(n3100), .A2(i_tv80_core_Set_BusB_To_3_), .A3(
        i_tv80_core_Set_BusB_To_2_), .Y(n2686) );
  XOR2X1_RVT U3146 ( .A1(n2447), .A2(n3885), .Y(n3803) );
  AND2X1_RVT U3147 ( .A1(n2368), .A2(n5118), .Y(n2688) );
  XOR2X1_RVT U3148 ( .A1(n2751), .A2(n2766), .Y(n4225) );
  AO21X1_RVT U3149 ( .A1(n3601), .A2(n3148), .A3(n5050), .Y(n5055) );
  AND2X1_RVT U3150 ( .A1(i_tv80_core_Set_BusB_To_3_), .A2(n3101), .Y(n2689) );
  XOR2X1_RVT U3151 ( .A1(n3133), .A2(i_tv80_core_RegBusA_7_), .Y(n4635) );
  AND2X1_RVT U3152 ( .A1(n2368), .A2(n5114), .Y(n2690) );
  AND3X1_RVT U3153 ( .A1(n2689), .A2(n2424), .A3(n5075), .Y(n2692) );
  AND2X1_RVT U3154 ( .A1(n3282), .A2(n3583), .Y(n2693) );
  AOI21X1_RVT U3155 ( .A1(n4962), .A2(n4968), .A3(n4961), .Y(n2694) );
  AND3X1_RVT U3156 ( .A1(n2689), .A2(n5396), .A3(n3100), .Y(n2695) );
  AOI22X1_RVT U3157 ( .A1(n3704), .A2(n3703), .A3(n3702), .A4(n3701), .Y(n2696) );
  INVX0_RVT U3159 ( .A(n4745), .Y(n3673) );
  AND2X1_RVT U3160 ( .A1(n3582), .A2(n3581), .Y(n2699) );
  AND2X1_RVT U3161 ( .A1(n2368), .A2(n5112), .Y(n2700) );
  AND2X1_RVT U3162 ( .A1(n4248), .A2(n4022), .Y(n2701) );
  XOR2X1_RVT U3163 ( .A1(n4224), .A2(n2765), .Y(n4228) );
  AOI22X1_RVT U3164 ( .A1(n3143), .A2(n3398), .A3(n3151), .A4(n3391), .Y(n2702) );
  XOR2X1_RVT U3165 ( .A1(n3716), .A2(n3715), .Y(n3718) );
  XNOR3X1_RVT U3166 ( .A1(n3758), .A2(n2678), .A3(n2696), .Y(n2703) );
  AND2X1_RVT U3167 ( .A1(n2368), .A2(n5108), .Y(n2704) );
  AND2X1_RVT U3168 ( .A1(i_tv80_core_i_reg_N18), .A2(i_tv80_core_i_reg_N17), 
        .Y(n2705) );
  AND4X1_RVT U3169 ( .A1(n5344), .A2(n3303), .A3(n4114), .A4(n3617), .Y(n2706)
         );
  INVX0_RVT U3170 ( .A(n4940), .Y(n4917) );
  XOR3X1_RVT U3171 ( .A1(n2779), .A2(n4207), .A3(n2783), .Y(n4208) );
  AND2X1_RVT U3172 ( .A1(n4931), .A2(n4930), .Y(n2707) );
  AND3X1_RVT U3173 ( .A1(n2708), .A2(n5317), .A3(n2709), .Y(n5327) );
  AOI222X1_RVT U3174 ( .A1(n2713), .A2(n5316), .A3(n5315), .A4(n5314), .A5(
        n5313), .A6(n5312), .Y(n2708) );
  AOI22X1_RVT U3175 ( .A1(n5324), .A2(n5323), .A3(n2338), .A4(n5321), .Y(n2709) );
  XOR2X1_RVT U3176 ( .A1(n4181), .A2(n4180), .Y(n4182) );
  AND2X1_RVT U3177 ( .A1(n3353), .A2(n4860), .Y(n2711) );
  AOI222X1_RVT U3178 ( .A1(n4146), .A2(n3740), .A3(n4215), .A4(n4131), .A5(
        n4201), .A6(n4139), .Y(n2712) );
  XOR2X1_RVT U3179 ( .A1(n2778), .A2(n2788), .Y(n4227) );
  AND2X1_RVT U3180 ( .A1(n5407), .A2(n3588), .Y(n2713) );
  AND3X1_RVT U3181 ( .A1(n3356), .A2(n3430), .A3(n3420), .Y(n2714) );
  INVX1_RVT U3182 ( .A(n3425), .Y(n3426) );
  XNOR2X1_RVT U3183 ( .A1(n3645), .A2(n3687), .Y(n3647) );
  AND2X1_RVT U3184 ( .A1(n4692), .A2(i_tv80_core_i_reg_N14), .Y(n2716) );
  MUX21X1_RVT U3185 ( .A1(n4256), .A2(n3551), .S0(n3550), .Y(n3521) );
  AND3X1_RVT U3186 ( .A1(n3146), .A2(n4239), .A3(n3947), .Y(n2718) );
  AND2X1_RVT U3187 ( .A1(n3148), .A2(n3601), .Y(n2719) );
  AND2X1_RVT U3188 ( .A1(n3500), .A2(i_tv80_core_ISet_1_), .Y(n2720) );
  MUX21X1_RVT U3189 ( .A1(n4068), .A2(n3863), .S0(n4151), .Y(n3545) );
  MUX21X1_RVT U3190 ( .A1(n4068), .A2(n3863), .S0(n4153), .Y(n3707) );
  INVX2_RVT U3191 ( .A(n4847), .Y(n4416) );
  AND2X1_RVT U3192 ( .A1(n4893), .A2(n4895), .Y(n2721) );
  XNOR3X1_RVT U3193 ( .A1(n4192), .A2(n4191), .A3(n4190), .Y(n2722) );
  XNOR2X1_RVT U3194 ( .A1(n4187), .A2(n4186), .Y(n4193) );
  AND3X1_RVT U3195 ( .A1(n2790), .A2(n3632), .A3(n3631), .Y(n2723) );
  MUX21X1_RVT U3196 ( .A1(n4068), .A2(n3863), .S0(n4150), .Y(n3790) );
  AND2X1_RVT U3197 ( .A1(n2660), .A2(n3902), .Y(n2724) );
  AND3X1_RVT U3198 ( .A1(n3358), .A2(n5358), .A3(n4422), .Y(n2725) );
  AND3X1_RVT U3199 ( .A1(n3902), .A2(n5095), .A3(n5099), .Y(n2726) );
  AND2X1_RVT U3200 ( .A1(n4146), .A2(n5351), .Y(n2727) );
  AND2X1_RVT U3201 ( .A1(n2790), .A2(n4533), .Y(n2728) );
  AND2X1_RVT U3202 ( .A1(n2790), .A2(n5096), .Y(n2729) );
  AOI21X1_RVT U3203 ( .A1(n2724), .A2(n5099), .A3(n5105), .Y(n2730) );
  AND2X1_RVT U3204 ( .A1(n4803), .A2(n4067), .Y(n2731) );
  OA21X1_RVT U3205 ( .A1(n4395), .A2(n5048), .A3(n4832), .Y(n4396) );
  XOR2X1_RVT U3206 ( .A1(n2797), .A2(n2799), .Y(n4198) );
  XOR2X1_RVT U3207 ( .A1(n3660), .A2(n3659), .Y(n4843) );
  XNOR2X1_RVT U3208 ( .A1(n4189), .A2(n4188), .Y(n4190) );
  AOI21X1_RVT U3209 ( .A1(n5397), .A2(n5151), .A3(n4826), .Y(n2733) );
  INVX4_RVT U3210 ( .A(reset_n), .Y(n3159) );
  AND2X1_RVT U3211 ( .A1(i_tv80_core_IR_0_), .A2(i_tv80_core_IR_1_), .Y(n2734)
         );
  AOI221X1_RVT U3212 ( .A1(i_tv80_core_RegBusA_r_12_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_12_), .A4(n4778), .A5(n4586), .Y(n2735) );
  OR2X1_RVT U3213 ( .A1(n2737), .A2(n2406), .Y(n3123) );
  NOR2X0_RVT U3214 ( .A1(n4910), .A2(i_tv80_core_PC_2_), .Y(n2738) );
  AOI21X1_RVT U3215 ( .A1(n4915), .A2(n5182), .A3(n2738), .Y(n2739) );
  AND2X1_RVT U3216 ( .A1(n3127), .A2(i_tv80_core_IR_7_), .Y(n2741) );
  MUX21X1_RVT U3217 ( .A1(m1_n), .A2(n5375), .S0(n2742), .Y(n2149) );
  NAND4X0_RVT U3218 ( .A1(n5372), .A2(n5374), .A3(n5373), .A4(n3156), .Y(n2742) );
  AND4X1_RVT U3219 ( .A1(n3174), .A2(n3173), .A3(n4763), .A4(n460), .Y(n2744)
         );
  NAND4X0_RVT U3221 ( .A1(n3127), .A2(i_tv80_core_IR_3_), .A3(n460), .A4(
        i_tv80_core_F_2_), .Y(n3283) );
  AND2X1_RVT U3222 ( .A1(n2533), .A2(n460), .Y(n2746) );
  AND2X1_RVT U3223 ( .A1(n3592), .A2(i_tv80_core_IR_1_), .Y(n2747) );
  AND2X1_RVT U3224 ( .A1(n433), .A2(n434), .Y(n2748) );
  OR2X1_RVT U3225 ( .A1(n4922), .A2(i_tv80_core_PC_4_), .Y(n4929) );
  AOI21X1_RVT U3226 ( .A1(i_tv80_core_BusB_6_), .A2(n3840), .A3(n3839), .Y(
        n2751) );
  AOI222X1_RVT U3227 ( .A1(i_tv80_core_RegBusA_r_6_), .A2(n4691), .A3(n2368), 
        .A4(n5120), .A5(i_tv80_core_RegBusB_6_), .A6(n4778), .Y(n2752) );
  MUX21X1_RVT U3228 ( .A1(n3343), .A2(i_tv80_core_IntE_FF2), .S0(n3342), .Y(
        n2185) );
  XOR2X1_RVT U3229 ( .A1(i_tv80_core_Pre_XY_F_M_2_), .A2(n4288), .Y(n4292) );
  AOI221X1_RVT U3230 ( .A1(i_tv80_core_RegBusA_r_10_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_10_), .A4(n4778), .A5(n4602), .Y(n2753) );
  NAND4X0_RVT U3231 ( .A1(n3148), .A2(n329), .A3(n3114), .A4(n3103), .Y(n3281)
         );
  NAND3X0_RVT U3232 ( .A1(n3119), .A2(i_tv80_core_IR_0_), .A3(
        i_tv80_core_IR_3_), .Y(n3613) );
  AND2X1_RVT U3233 ( .A1(n434), .A2(i_tv80_core_IR_0_), .Y(n2754) );
  AND2X1_RVT U3234 ( .A1(n468), .A2(i_tv80_core_IR_6_), .Y(n2755) );
  AND2X1_RVT U3235 ( .A1(n3451), .A2(mcycle_2_), .Y(n2756) );
  AOI21X1_RVT U3236 ( .A1(n3715), .A2(n3730), .A3(n3511), .Y(n2757) );
  OR2X1_RVT U3237 ( .A1(n3645), .A2(i_tv80_core_i_alu_N185), .Y(n3688) );
  AND2X1_RVT U3238 ( .A1(n194), .A2(n192), .Y(n2759) );
  OA22X1_RVT U3239 ( .A1(n4257), .A2(n2761), .A3(i_tv80_core_F_1_), .A4(n2762), 
        .Y(n2760) );
  XNOR2X1_RVT U3240 ( .A1(n4061), .A2(n4064), .Y(n2761) );
  XOR2X1_RVT U3241 ( .A1(i_tv80_core_PC_0_), .A2(n2743), .Y(n4897) );
  XOR2X1_RVT U3242 ( .A1(n3823), .A2(n3822), .Y(n3827) );
  AND2X1_RVT U3243 ( .A1(n3784), .A2(n3831), .Y(n2764) );
  AOI21X1_RVT U3244 ( .A1(i_tv80_core_BusB_3_), .A2(n3750), .A3(n3749), .Y(
        n2766) );
  XOR2X1_RVT U3245 ( .A1(n3876), .A2(n3875), .Y(n3789) );
  AOI222X1_RVT U3246 ( .A1(n4146), .A2(n4191), .A3(n4215), .A4(n4132), .A5(
        n4201), .A6(i_tv80_core_BusA_5_), .Y(n2767) );
  OR2X1_RVT U3247 ( .A1(n4954), .A2(i_tv80_core_PC_6_), .Y(n4988) );
  XOR3X1_RVT U3248 ( .A1(i_tv80_core_PC_6_), .A2(n4989), .A3(n4954), .Y(n4943)
         );
  AND2X1_RVT U3249 ( .A1(n3537), .A2(n3557), .Y(n2768) );
  AND2X1_RVT U3250 ( .A1(i_tv80_core_Save_ALU_r), .A2(n3557), .Y(n2769) );
  AND2X1_RVT U3251 ( .A1(i_tv80_core_i_reg_N21), .A2(i_tv80_core_i_reg_N20), 
        .Y(n2770) );
  OA221X1_RVT U3252 ( .A1(n3424), .A2(n3423), .A3(n3422), .A4(n3103), .A5(
        n3438), .Y(n2771) );
  AOI21X1_RVT U3253 ( .A1(i_tv80_core_BusB_2_), .A2(n3723), .A3(n3722), .Y(
        n2772) );
  AOI222X1_RVT U3254 ( .A1(i_tv80_core_BusA_4_), .A2(n3554), .A3(
        i_tv80_core_BusB_4_), .A4(n3553), .A5(n3552), .A6(n3892), .Y(n2773) );
  NAND2X0_RVT U3255 ( .A1(n357), .A2(n4183), .Y(n2774) );
  MUX21X1_RVT U3256 ( .A1(i_tv80_core_F_0_), .A2(n4080), .S0(n2775), .Y(n2118)
         );
  NAND3X0_RVT U3257 ( .A1(n4079), .A2(n4173), .A3(n4078), .Y(n2775) );
  AND2X1_RVT U3258 ( .A1(n281), .A2(n2440), .Y(n2776) );
  AND2X1_RVT U3259 ( .A1(n467), .A2(i_tv80_core_IR_7_), .Y(n2777) );
  AOI21X1_RVT U3260 ( .A1(i_tv80_core_BusB_1_), .A2(n3696), .A3(n3695), .Y(
        n2778) );
  OA22X1_RVT U3261 ( .A1(n2404), .A2(i_tv80_core_F_1_), .A3(n2404), .A4(n4257), 
        .Y(n2779) );
  MUX21X1_RVT U3262 ( .A1(i_tv80_core_XY_State_1_), .A2(i_tv80_core_Alternate), 
        .S0(n2780), .Y(i_tv80_core_N1103) );
  NAND3X0_RVT U3263 ( .A1(n2336), .A2(n5379), .A3(i_tv80_core_N1102), .Y(n2780) );
  OA22X1_RVT U3264 ( .A1(n4257), .A2(n2781), .A3(n2782), .A4(i_tv80_core_F_1_), 
        .Y(n4210) );
  AOI21X1_RVT U3265 ( .A1(i_tv80_core_BusA_4_), .A2(n3544), .A3(n3784), .Y(
        n2781) );
  XOR2X1_RVT U3266 ( .A1(n3777), .A2(i_tv80_core_BusA_4_), .Y(n2782) );
  NAND2X2_RVT U3267 ( .A1(n3451), .A2(n3207), .Y(n4860) );
  MUX21X1_RVT U3268 ( .A1(n2784), .A2(n2785), .S0(n3706), .Y(n2783) );
  NAND2X0_RVT U3269 ( .A1(i_tv80_core_F_1_), .A2(n2313), .Y(n2784) );
  AOI21X1_RVT U3270 ( .A1(n3732), .A2(i_tv80_core_F_1_), .A3(n4257), .Y(n2785)
         );
  XOR2X1_RVT U3271 ( .A1(i_tv80_core_BusA_2_), .A2(n3705), .Y(n3706) );
  MUX21X1_RVT U3272 ( .A1(i_tv80_core_XY_State_1_), .A2(i_tv80_core_Alternate), 
        .S0(n2786), .Y(i_tv80_core_N1108) );
  NAND3X0_RVT U3273 ( .A1(n5379), .A2(n5376), .A3(i_tv80_core_Set_BusB_To_2_), 
        .Y(n2786) );
  AND2X1_RVT U3274 ( .A1(i_tv80_core_PC_12_), .A2(n5031), .Y(n2787) );
  XOR2X1_RVT U3275 ( .A1(n514), .A2(n310), .Y(n3890) );
  AOI21X1_RVT U3276 ( .A1(i_tv80_core_BusB_0_), .A2(n3652), .A3(n3651), .Y(
        n2788) );
  AND2X1_RVT U3277 ( .A1(n5226), .A2(n197), .Y(n2789) );
  XOR2X1_RVT U3278 ( .A1(n514), .A2(n311), .Y(n4054) );
  AND2X1_RVT U3279 ( .A1(i_tv80_core_Read_To_Reg_r_4_), .A2(n3538), .Y(n2790)
         );
  AND2X1_RVT U3280 ( .A1(n3535), .A2(n4148), .Y(n2791) );
  AOI222X1_RVT U3281 ( .A1(n5138), .A2(i_tv80_core_RegBusC_15_), .A3(di_reg_7_), .A4(n5034), .A5(i_tv80_core_TmpAddr_15_), .A6(n5033), .Y(n2792) );
  AND3X1_RVT U3282 ( .A1(i_tv80_core_ALU_Op_r_1_), .A2(i_tv80_core_ALU_Op_r_3_), .A3(n4202), .Y(n2793) );
  NAND2X1_RVT U3283 ( .A1(i_tv80_core_ALU_Op_r_0_), .A2(n2793), .Y(n3863) );
  NAND3X0_RVT U3284 ( .A1(n2533), .A2(n3103), .A3(n3148), .Y(n4153) );
  XOR2X1_RVT U3285 ( .A1(n3328), .A2(i_tv80_core_mcycles_1_), .Y(n4877) );
  XOR2X1_RVT U3286 ( .A1(n3451), .A2(i_tv80_core_mcycles_0_), .Y(n4876) );
  NAND2X2_RVT U3287 ( .A1(n509), .A2(n2793), .Y(n3866) );
  AND2X1_RVT U3288 ( .A1(i_tv80_core_Read_To_Reg_r_3_), .A2(n498), .Y(n2794)
         );
  AND2X1_RVT U3289 ( .A1(n499), .A2(n493), .Y(n2795) );
  AND2X1_RVT U3290 ( .A1(i_tv80_core_Read_To_Reg_r_0_), .A2(n499), .Y(n2796)
         );
  AOI22X1_RVT U3291 ( .A1(n509), .A2(i_tv80_core_BusB_1_), .A3(n4203), .A4(
        i_tv80_core_BusB_5_), .Y(n2797) );
  AOI22X1_RVT U3292 ( .A1(n509), .A2(i_tv80_core_BusB_2_), .A3(n4203), .A4(
        i_tv80_core_BusB_6_), .Y(n2798) );
  XOR2X1_RVT U3293 ( .A1(n4195), .A2(n2798), .Y(n4199) );
  AOI22X1_RVT U3294 ( .A1(n509), .A2(i_tv80_core_BusB_0_), .A3(n4203), .A4(
        i_tv80_core_BusB_4_), .Y(n2799) );
  MUX21X1_RVT U3295 ( .A1(i_tv80_core_Alternate), .A2(n4481), .S0(n2800), .Y(
        n2136) );
  NAND2X0_RVT U3296 ( .A1(n3156), .A2(n4480), .Y(n2800) );
  XOR2X1_RVT U3297 ( .A1(n3881), .A2(i_tv80_core_BusA_6_), .Y(n4196) );
  XNOR3X1_RVT U3298 ( .A1(n2801), .A2(n2802), .A3(n4237), .Y(n4241) );
  XNOR2X1_RVT U3299 ( .A1(n109), .A2(n110), .Y(n2801) );
  XOR2X1_RVT U3300 ( .A1(n113), .A2(n114), .Y(n4236) );
  MUX21X1_RVT U3301 ( .A1(i_tv80_core_NMI_s), .A2(n3162), .S0(n2803), .Y(n2099) );
  AO21X1_RVT U3302 ( .A1(i_tv80_core_Oldnmi_n), .A2(n3161), .A3(n3160), .Y(
        n2803) );
  NAND3X0_RVT U3307 ( .A1(n3611), .A2(n2520), .A3(n3612), .Y(n3621) );
  NAND2X0_RVT U3308 ( .A1(n3127), .A2(n2755), .Y(n3200) );
  NAND4X0_RVT U3309 ( .A1(n2808), .A2(n2809), .A3(n2810), .A4(n2811), .Y(
        i_tv80_core_RegBusC_0_) );
  AND2X1_RVT U3310 ( .A1(n2812), .A2(n2813), .Y(n2811) );
  NAND2X0_RVT U3311 ( .A1(i_tv80_core_i_reg_RegsL_3__0_), .A2(n2346), .Y(n2813) );
  NAND2X0_RVT U3312 ( .A1(i_tv80_core_i_reg_RegsL_1__0_), .A2(n2398), .Y(n2812) );
  AND2X1_RVT U3313 ( .A1(n2814), .A2(n2815), .Y(n2810) );
  NAND2X0_RVT U3314 ( .A1(i_tv80_core_i_reg_RegsL_5__0_), .A2(n2347), .Y(n2815) );
  NAND2X0_RVT U3315 ( .A1(i_tv80_core_i_reg_RegsL_7__0_), .A2(n2359), .Y(n2814) );
  AND2X1_RVT U3316 ( .A1(n2816), .A2(n2817), .Y(n2809) );
  NAND2X0_RVT U3317 ( .A1(i_tv80_core_i_reg_RegsL_2__0_), .A2(n2380), .Y(n2817) );
  NAND2X0_RVT U3318 ( .A1(i_tv80_core_i_reg_RegsL_0__0_), .A2(n2376), .Y(n2816) );
  AND2X1_RVT U3319 ( .A1(n2818), .A2(n2819), .Y(n2808) );
  NAND2X0_RVT U3320 ( .A1(i_tv80_core_i_reg_RegsL_6__0_), .A2(n2360), .Y(n2819) );
  NAND2X0_RVT U3321 ( .A1(i_tv80_core_i_reg_RegsL_4__0_), .A2(n2361), .Y(n2818) );
  OR3X1_RVT U3322 ( .A1(n2820), .A2(n2821), .A3(n2822), .Y(
        i_tv80_core_RegBusC_1_) );
  AO221X1_RVT U3323 ( .A1(i_tv80_core_i_reg_RegsL_4__1_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__1_), .A4(n2360), .A5(n2823), .Y(n2822) );
  AO22X1_RVT U3324 ( .A1(i_tv80_core_i_reg_RegsL_0__1_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__1_), .A4(n2380), .Y(n2823) );
  AO22X1_RVT U3325 ( .A1(i_tv80_core_i_reg_RegsL_7__1_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__1_), .A4(n2347), .Y(n2821) );
  AO22X1_RVT U3326 ( .A1(i_tv80_core_i_reg_RegsL_1__1_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__1_), .A4(n2346), .Y(n2820) );
  OR3X1_RVT U3327 ( .A1(n2824), .A2(n2825), .A3(n2826), .Y(
        i_tv80_core_RegBusC_2_) );
  AO221X1_RVT U3328 ( .A1(i_tv80_core_i_reg_RegsL_4__2_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__2_), .A4(n2360), .A5(n2827), .Y(n2826) );
  AO22X1_RVT U3329 ( .A1(i_tv80_core_i_reg_RegsL_0__2_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__2_), .A4(n2380), .Y(n2827) );
  AO22X1_RVT U3330 ( .A1(i_tv80_core_i_reg_RegsL_7__2_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__2_), .A4(n2347), .Y(n2825) );
  AO22X1_RVT U3331 ( .A1(i_tv80_core_i_reg_RegsL_1__2_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__2_), .A4(n2346), .Y(n2824) );
  OR3X1_RVT U3332 ( .A1(n2828), .A2(n2829), .A3(n2830), .Y(
        i_tv80_core_RegBusC_3_) );
  AO221X1_RVT U3333 ( .A1(i_tv80_core_i_reg_RegsL_4__3_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__3_), .A4(n2360), .A5(n2831), .Y(n2830) );
  AO22X1_RVT U3334 ( .A1(i_tv80_core_i_reg_RegsL_0__3_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__3_), .A4(n2380), .Y(n2831) );
  AO22X1_RVT U3335 ( .A1(i_tv80_core_i_reg_RegsL_7__3_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__3_), .A4(n2347), .Y(n2829) );
  AO22X1_RVT U3336 ( .A1(i_tv80_core_i_reg_RegsL_1__3_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__3_), .A4(n2346), .Y(n2828) );
  OR3X1_RVT U3337 ( .A1(n2832), .A2(n2833), .A3(n2834), .Y(
        i_tv80_core_RegBusC_4_) );
  AO221X1_RVT U3338 ( .A1(i_tv80_core_i_reg_RegsL_4__4_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__4_), .A4(n2360), .A5(n2835), .Y(n2834) );
  AO22X1_RVT U3339 ( .A1(i_tv80_core_i_reg_RegsL_0__4_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__4_), .A4(n2380), .Y(n2835) );
  AO22X1_RVT U3340 ( .A1(i_tv80_core_i_reg_RegsL_7__4_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__4_), .A4(n2347), .Y(n2833) );
  AO22X1_RVT U3341 ( .A1(i_tv80_core_i_reg_RegsL_1__4_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__4_), .A4(n2346), .Y(n2832) );
  OR3X1_RVT U3342 ( .A1(n2836), .A2(n2837), .A3(n2838), .Y(
        i_tv80_core_RegBusC_5_) );
  AO221X1_RVT U3343 ( .A1(i_tv80_core_i_reg_RegsL_4__5_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__5_), .A4(n2360), .A5(n2839), .Y(n2838) );
  AO22X1_RVT U3344 ( .A1(i_tv80_core_i_reg_RegsL_0__5_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__5_), .A4(n2380), .Y(n2839) );
  AO22X1_RVT U3345 ( .A1(i_tv80_core_i_reg_RegsL_7__5_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__5_), .A4(n2347), .Y(n2837) );
  AO22X1_RVT U3346 ( .A1(i_tv80_core_i_reg_RegsL_1__5_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__5_), .A4(n2346), .Y(n2836) );
  OR3X1_RVT U3347 ( .A1(n2840), .A2(n2841), .A3(n2842), .Y(
        i_tv80_core_RegBusC_6_) );
  AO221X1_RVT U3348 ( .A1(i_tv80_core_i_reg_RegsL_4__6_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__6_), .A4(n2360), .A5(n2843), .Y(n2842) );
  AO22X1_RVT U3349 ( .A1(i_tv80_core_i_reg_RegsL_0__6_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__6_), .A4(n2380), .Y(n2843) );
  AO22X1_RVT U3350 ( .A1(i_tv80_core_i_reg_RegsL_7__6_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__6_), .A4(n2347), .Y(n2841) );
  AO22X1_RVT U3351 ( .A1(i_tv80_core_i_reg_RegsL_1__6_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__6_), .A4(n2346), .Y(n2840) );
  OR3X1_RVT U3352 ( .A1(n2844), .A2(n2845), .A3(n2846), .Y(
        i_tv80_core_RegBusC_7_) );
  AO221X1_RVT U3353 ( .A1(i_tv80_core_i_reg_RegsL_4__7_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsL_6__7_), .A4(n2360), .A5(n2847), .Y(n2846) );
  AO22X1_RVT U3354 ( .A1(i_tv80_core_i_reg_RegsL_0__7_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsL_2__7_), .A4(n2380), .Y(n2847) );
  AO22X1_RVT U3355 ( .A1(i_tv80_core_i_reg_RegsL_7__7_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsL_5__7_), .A4(n2347), .Y(n2845) );
  AO22X1_RVT U3356 ( .A1(i_tv80_core_i_reg_RegsL_1__7_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsL_3__7_), .A4(n2346), .Y(n2844) );
  OR3X1_RVT U3357 ( .A1(n2848), .A2(n2849), .A3(n2850), .Y(
        i_tv80_core_RegBusC_8_) );
  AO221X1_RVT U3358 ( .A1(i_tv80_core_i_reg_RegsH_4__0_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__0_), .A4(n2360), .A5(n2851), .Y(n2850) );
  AO22X1_RVT U3359 ( .A1(i_tv80_core_i_reg_RegsH_0__0_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__0_), .A4(n2380), .Y(n2851) );
  AO22X1_RVT U3360 ( .A1(i_tv80_core_i_reg_RegsH_7__0_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__0_), .A4(n2347), .Y(n2849) );
  AO22X1_RVT U3361 ( .A1(i_tv80_core_i_reg_RegsH_1__0_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__0_), .A4(n2346), .Y(n2848) );
  OR3X1_RVT U3362 ( .A1(n2852), .A2(n2853), .A3(n2854), .Y(
        i_tv80_core_RegBusC_9_) );
  AO221X1_RVT U3363 ( .A1(i_tv80_core_i_reg_RegsH_4__1_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__1_), .A4(n2360), .A5(n2855), .Y(n2854) );
  AO22X1_RVT U3364 ( .A1(i_tv80_core_i_reg_RegsH_0__1_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__1_), .A4(n2380), .Y(n2855) );
  AO22X1_RVT U3365 ( .A1(i_tv80_core_i_reg_RegsH_7__1_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__1_), .A4(n2347), .Y(n2853) );
  AO22X1_RVT U3366 ( .A1(i_tv80_core_i_reg_RegsH_1__1_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__1_), .A4(n2346), .Y(n2852) );
  OR3X1_RVT U3367 ( .A1(n2856), .A2(n2857), .A3(n2858), .Y(
        i_tv80_core_RegBusC_10_) );
  AO221X1_RVT U3368 ( .A1(i_tv80_core_i_reg_RegsH_4__2_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__2_), .A4(n2360), .A5(n2859), .Y(n2858) );
  AO22X1_RVT U3369 ( .A1(i_tv80_core_i_reg_RegsH_0__2_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__2_), .A4(n2380), .Y(n2859) );
  AO22X1_RVT U3370 ( .A1(i_tv80_core_i_reg_RegsH_7__2_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__2_), .A4(n2347), .Y(n2857) );
  AO22X1_RVT U3371 ( .A1(i_tv80_core_i_reg_RegsH_1__2_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__2_), .A4(n2346), .Y(n2856) );
  OR3X1_RVT U3372 ( .A1(n2860), .A2(n2861), .A3(n2862), .Y(
        i_tv80_core_RegBusC_11_) );
  AO221X1_RVT U3373 ( .A1(i_tv80_core_i_reg_RegsH_4__3_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__3_), .A4(n2360), .A5(n2863), .Y(n2862) );
  AO22X1_RVT U3374 ( .A1(i_tv80_core_i_reg_RegsH_0__3_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__3_), .A4(n2380), .Y(n2863) );
  AO22X1_RVT U3375 ( .A1(i_tv80_core_i_reg_RegsH_7__3_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__3_), .A4(n2347), .Y(n2861) );
  AO22X1_RVT U3376 ( .A1(i_tv80_core_i_reg_RegsH_1__3_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__3_), .A4(n2346), .Y(n2860) );
  OR3X1_RVT U3377 ( .A1(n2864), .A2(n2865), .A3(n2866), .Y(
        i_tv80_core_RegBusC_12_) );
  AO221X1_RVT U3378 ( .A1(i_tv80_core_i_reg_RegsH_4__4_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__4_), .A4(n2360), .A5(n2867), .Y(n2866) );
  AO22X1_RVT U3379 ( .A1(i_tv80_core_i_reg_RegsH_0__4_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__4_), .A4(n2380), .Y(n2867) );
  AO22X1_RVT U3380 ( .A1(i_tv80_core_i_reg_RegsH_7__4_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__4_), .A4(n2347), .Y(n2865) );
  AO22X1_RVT U3381 ( .A1(i_tv80_core_i_reg_RegsH_1__4_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__4_), .A4(n2346), .Y(n2864) );
  OR3X1_RVT U3382 ( .A1(n2868), .A2(n2869), .A3(n2870), .Y(
        i_tv80_core_RegBusC_13_) );
  AO221X1_RVT U3383 ( .A1(i_tv80_core_i_reg_RegsH_4__5_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__5_), .A4(n2360), .A5(n2871), .Y(n2870) );
  AO22X1_RVT U3384 ( .A1(i_tv80_core_i_reg_RegsH_0__5_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__5_), .A4(n2380), .Y(n2871) );
  AO22X1_RVT U3385 ( .A1(i_tv80_core_i_reg_RegsH_7__5_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__5_), .A4(n2347), .Y(n2869) );
  AO22X1_RVT U3386 ( .A1(i_tv80_core_i_reg_RegsH_1__5_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__5_), .A4(n2346), .Y(n2868) );
  OR3X1_RVT U3387 ( .A1(n2872), .A2(n2873), .A3(n2874), .Y(
        i_tv80_core_RegBusC_14_) );
  AO221X1_RVT U3388 ( .A1(i_tv80_core_i_reg_RegsH_4__6_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__6_), .A4(n2360), .A5(n2875), .Y(n2874) );
  AO22X1_RVT U3389 ( .A1(i_tv80_core_i_reg_RegsH_0__6_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__6_), .A4(n2380), .Y(n2875) );
  AO22X1_RVT U3390 ( .A1(i_tv80_core_i_reg_RegsH_7__6_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__6_), .A4(n2347), .Y(n2873) );
  AO22X1_RVT U3391 ( .A1(i_tv80_core_i_reg_RegsH_1__6_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__6_), .A4(n2346), .Y(n2872) );
  OR3X1_RVT U3392 ( .A1(n2876), .A2(n2877), .A3(n2878), .Y(
        i_tv80_core_RegBusC_15_) );
  AO221X1_RVT U3393 ( .A1(i_tv80_core_i_reg_RegsH_4__7_), .A2(n2361), .A3(
        i_tv80_core_i_reg_RegsH_6__7_), .A4(n2360), .A5(n2879), .Y(n2878) );
  AO22X1_RVT U3394 ( .A1(i_tv80_core_i_reg_RegsH_0__7_), .A2(n2376), .A3(
        i_tv80_core_i_reg_RegsH_2__7_), .A4(n2380), .Y(n2879) );
  AO22X1_RVT U3395 ( .A1(i_tv80_core_i_reg_RegsH_7__7_), .A2(n2359), .A3(
        i_tv80_core_i_reg_RegsH_5__7_), .A4(n2347), .Y(n2877) );
  AO22X1_RVT U3396 ( .A1(i_tv80_core_i_reg_RegsH_1__7_), .A2(n2398), .A3(
        i_tv80_core_i_reg_RegsH_3__7_), .A4(n2346), .Y(n2876) );
  OR3X1_RVT U3397 ( .A1(n2881), .A2(n2882), .A3(n2883), .Y(
        i_tv80_core_RegBusB_0_) );
  AO221X1_RVT U3398 ( .A1(i_tv80_core_i_reg_RegsL_4__0_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__0_), .A4(n2403), .A5(n2884), .Y(n2883) );
  AO22X1_RVT U3399 ( .A1(i_tv80_core_i_reg_RegsL_0__0_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__0_), .A4(n2399), .Y(n2884) );
  AO22X1_RVT U3400 ( .A1(i_tv80_core_i_reg_RegsL_7__0_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__0_), .A4(n2405), .Y(n2882) );
  AO22X1_RVT U3401 ( .A1(i_tv80_core_i_reg_RegsL_1__0_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__0_), .A4(n2354), .Y(n2881) );
  OR3X1_RVT U3402 ( .A1(n2885), .A2(n2886), .A3(n2887), .Y(
        i_tv80_core_RegBusB_1_) );
  AO221X1_RVT U3403 ( .A1(i_tv80_core_i_reg_RegsL_4__1_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__1_), .A4(n2403), .A5(n2888), .Y(n2887) );
  AO22X1_RVT U3404 ( .A1(i_tv80_core_i_reg_RegsL_0__1_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__1_), .A4(n2399), .Y(n2888) );
  AO22X1_RVT U3405 ( .A1(i_tv80_core_i_reg_RegsL_7__1_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__1_), .A4(n2405), .Y(n2886) );
  AO22X1_RVT U3406 ( .A1(i_tv80_core_i_reg_RegsL_1__1_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__1_), .A4(n2354), .Y(n2885) );
  OR3X1_RVT U3407 ( .A1(n2889), .A2(n2890), .A3(n2891), .Y(
        i_tv80_core_RegBusB_2_) );
  AO221X1_RVT U3408 ( .A1(i_tv80_core_i_reg_RegsL_4__2_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__2_), .A4(n2403), .A5(n2892), .Y(n2891) );
  AO22X1_RVT U3409 ( .A1(i_tv80_core_i_reg_RegsL_0__2_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__2_), .A4(n2399), .Y(n2892) );
  AO22X1_RVT U3410 ( .A1(i_tv80_core_i_reg_RegsL_7__2_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__2_), .A4(n2405), .Y(n2890) );
  AO22X1_RVT U3411 ( .A1(i_tv80_core_i_reg_RegsL_1__2_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__2_), .A4(n2354), .Y(n2889) );
  OR3X1_RVT U3412 ( .A1(n2893), .A2(n2894), .A3(n2895), .Y(
        i_tv80_core_RegBusB_3_) );
  AO221X1_RVT U3413 ( .A1(i_tv80_core_i_reg_RegsL_4__3_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__3_), .A4(n2403), .A5(n2896), .Y(n2895) );
  AO22X1_RVT U3414 ( .A1(i_tv80_core_i_reg_RegsL_0__3_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__3_), .A4(n2399), .Y(n2896) );
  AO22X1_RVT U3415 ( .A1(i_tv80_core_i_reg_RegsL_7__3_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__3_), .A4(n2405), .Y(n2894) );
  AO22X1_RVT U3416 ( .A1(i_tv80_core_i_reg_RegsL_1__3_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__3_), .A4(n2354), .Y(n2893) );
  OR3X1_RVT U3417 ( .A1(n2897), .A2(n2898), .A3(n2899), .Y(
        i_tv80_core_RegBusB_4_) );
  AO221X1_RVT U3418 ( .A1(i_tv80_core_i_reg_RegsL_4__4_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__4_), .A4(n2403), .A5(n2900), .Y(n2899) );
  AO22X1_RVT U3419 ( .A1(i_tv80_core_i_reg_RegsL_0__4_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__4_), .A4(n2399), .Y(n2900) );
  AO22X1_RVT U3420 ( .A1(i_tv80_core_i_reg_RegsL_7__4_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__4_), .A4(n2405), .Y(n2898) );
  AO22X1_RVT U3421 ( .A1(i_tv80_core_i_reg_RegsL_1__4_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__4_), .A4(n2354), .Y(n2897) );
  OR3X1_RVT U3422 ( .A1(n2901), .A2(n2902), .A3(n2903), .Y(
        i_tv80_core_RegBusB_5_) );
  AO221X1_RVT U3423 ( .A1(i_tv80_core_i_reg_RegsL_4__5_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__5_), .A4(n2403), .A5(n2904), .Y(n2903) );
  AO22X1_RVT U3424 ( .A1(i_tv80_core_i_reg_RegsL_0__5_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__5_), .A4(n2399), .Y(n2904) );
  AO22X1_RVT U3425 ( .A1(i_tv80_core_i_reg_RegsL_7__5_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__5_), .A4(n2405), .Y(n2902) );
  AO22X1_RVT U3426 ( .A1(i_tv80_core_i_reg_RegsL_1__5_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__5_), .A4(n2354), .Y(n2901) );
  OR3X1_RVT U3427 ( .A1(n2905), .A2(n2906), .A3(n2907), .Y(
        i_tv80_core_RegBusB_6_) );
  AO221X1_RVT U3428 ( .A1(i_tv80_core_i_reg_RegsL_4__6_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__6_), .A4(n2403), .A5(n2908), .Y(n2907) );
  AO22X1_RVT U3429 ( .A1(i_tv80_core_i_reg_RegsL_0__6_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__6_), .A4(n2399), .Y(n2908) );
  AO22X1_RVT U3430 ( .A1(i_tv80_core_i_reg_RegsL_7__6_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__6_), .A4(n2405), .Y(n2906) );
  AO22X1_RVT U3431 ( .A1(i_tv80_core_i_reg_RegsL_1__6_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__6_), .A4(n2354), .Y(n2905) );
  OR3X1_RVT U3432 ( .A1(n2909), .A2(n2910), .A3(n2911), .Y(
        i_tv80_core_RegBusB_7_) );
  AO221X1_RVT U3433 ( .A1(i_tv80_core_i_reg_RegsL_4__7_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsL_6__7_), .A4(n2403), .A5(n2912), .Y(n2911) );
  AO22X1_RVT U3434 ( .A1(i_tv80_core_i_reg_RegsL_0__7_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsL_2__7_), .A4(n2399), .Y(n2912) );
  AO22X1_RVT U3435 ( .A1(i_tv80_core_i_reg_RegsL_7__7_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsL_5__7_), .A4(n2405), .Y(n2910) );
  AO22X1_RVT U3436 ( .A1(i_tv80_core_i_reg_RegsL_1__7_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsL_3__7_), .A4(n2354), .Y(n2909) );
  OR3X1_RVT U3437 ( .A1(n2913), .A2(n2914), .A3(n2915), .Y(
        i_tv80_core_RegBusB_8_) );
  AO221X1_RVT U3438 ( .A1(i_tv80_core_i_reg_RegsH_4__0_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__0_), .A4(n2403), .A5(n2916), .Y(n2915) );
  AO22X1_RVT U3439 ( .A1(i_tv80_core_i_reg_RegsH_0__0_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__0_), .A4(n2399), .Y(n2916) );
  AO22X1_RVT U3440 ( .A1(i_tv80_core_i_reg_RegsH_7__0_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__0_), .A4(n2405), .Y(n2914) );
  AO22X1_RVT U3441 ( .A1(i_tv80_core_i_reg_RegsH_1__0_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__0_), .A4(n2354), .Y(n2913) );
  OR3X1_RVT U3442 ( .A1(n2917), .A2(n2918), .A3(n2919), .Y(
        i_tv80_core_RegBusB_9_) );
  AO221X1_RVT U3443 ( .A1(i_tv80_core_i_reg_RegsH_4__1_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__1_), .A4(n2403), .A5(n2920), .Y(n2919) );
  AO22X1_RVT U3444 ( .A1(i_tv80_core_i_reg_RegsH_0__1_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__1_), .A4(n2399), .Y(n2920) );
  AO22X1_RVT U3445 ( .A1(i_tv80_core_i_reg_RegsH_7__1_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__1_), .A4(n2405), .Y(n2918) );
  AO22X1_RVT U3446 ( .A1(i_tv80_core_i_reg_RegsH_1__1_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__1_), .A4(n2354), .Y(n2917) );
  OR3X1_RVT U3447 ( .A1(n2921), .A2(n2922), .A3(n2923), .Y(
        i_tv80_core_RegBusB_10_) );
  AO221X1_RVT U3448 ( .A1(i_tv80_core_i_reg_RegsH_4__2_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__2_), .A4(n2403), .A5(n2924), .Y(n2923) );
  AO22X1_RVT U3449 ( .A1(i_tv80_core_i_reg_RegsH_0__2_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__2_), .A4(n2399), .Y(n2924) );
  AO22X1_RVT U3450 ( .A1(i_tv80_core_i_reg_RegsH_7__2_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__2_), .A4(n2405), .Y(n2922) );
  AO22X1_RVT U3451 ( .A1(i_tv80_core_i_reg_RegsH_1__2_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__2_), .A4(n2354), .Y(n2921) );
  OR3X1_RVT U3452 ( .A1(n2925), .A2(n2926), .A3(n2927), .Y(
        i_tv80_core_RegBusB_11_) );
  AO221X1_RVT U3453 ( .A1(i_tv80_core_i_reg_RegsH_4__3_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__3_), .A4(n2403), .A5(n2928), .Y(n2927) );
  AO22X1_RVT U3454 ( .A1(i_tv80_core_i_reg_RegsH_0__3_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__3_), .A4(n2399), .Y(n2928) );
  AO22X1_RVT U3455 ( .A1(i_tv80_core_i_reg_RegsH_7__3_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__3_), .A4(n2405), .Y(n2926) );
  AO22X1_RVT U3456 ( .A1(i_tv80_core_i_reg_RegsH_1__3_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__3_), .A4(n2354), .Y(n2925) );
  OR3X1_RVT U3457 ( .A1(n2929), .A2(n2930), .A3(n2931), .Y(
        i_tv80_core_RegBusB_12_) );
  AO221X1_RVT U3458 ( .A1(i_tv80_core_i_reg_RegsH_4__4_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__4_), .A4(n2403), .A5(n2932), .Y(n2931) );
  AO22X1_RVT U3459 ( .A1(i_tv80_core_i_reg_RegsH_0__4_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__4_), .A4(n2399), .Y(n2932) );
  AO22X1_RVT U3460 ( .A1(i_tv80_core_i_reg_RegsH_7__4_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__4_), .A4(n2405), .Y(n2930) );
  AO22X1_RVT U3461 ( .A1(i_tv80_core_i_reg_RegsH_1__4_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__4_), .A4(n2354), .Y(n2929) );
  OR3X1_RVT U3462 ( .A1(n2933), .A2(n2934), .A3(n2935), .Y(
        i_tv80_core_RegBusB_13_) );
  AO221X1_RVT U3463 ( .A1(i_tv80_core_i_reg_RegsH_4__5_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__5_), .A4(n2403), .A5(n2936), .Y(n2935) );
  AO22X1_RVT U3464 ( .A1(i_tv80_core_i_reg_RegsH_0__5_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__5_), .A4(n2399), .Y(n2936) );
  AO22X1_RVT U3465 ( .A1(i_tv80_core_i_reg_RegsH_7__5_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__5_), .A4(n2405), .Y(n2934) );
  AO22X1_RVT U3466 ( .A1(i_tv80_core_i_reg_RegsH_1__5_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__5_), .A4(n2354), .Y(n2933) );
  OR3X1_RVT U3467 ( .A1(n2937), .A2(n2938), .A3(n2939), .Y(
        i_tv80_core_RegBusB_14_) );
  AO221X1_RVT U3468 ( .A1(i_tv80_core_i_reg_RegsH_4__6_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__6_), .A4(n2403), .A5(n2940), .Y(n2939) );
  AO22X1_RVT U3469 ( .A1(i_tv80_core_i_reg_RegsH_0__6_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__6_), .A4(n2399), .Y(n2940) );
  AO22X1_RVT U3470 ( .A1(i_tv80_core_i_reg_RegsH_7__6_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__6_), .A4(n2405), .Y(n2938) );
  AO22X1_RVT U3471 ( .A1(i_tv80_core_i_reg_RegsH_1__6_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__6_), .A4(n2354), .Y(n2937) );
  OR3X1_RVT U3472 ( .A1(n2941), .A2(n2942), .A3(n2943), .Y(
        i_tv80_core_RegBusB_15_) );
  AO221X1_RVT U3473 ( .A1(i_tv80_core_i_reg_RegsH_4__7_), .A2(n2382), .A3(
        i_tv80_core_i_reg_RegsH_6__7_), .A4(n2403), .A5(n2944), .Y(n2943) );
  AO22X1_RVT U3474 ( .A1(i_tv80_core_i_reg_RegsH_0__7_), .A2(n2381), .A3(
        i_tv80_core_i_reg_RegsH_2__7_), .A4(n2399), .Y(n2944) );
  INVX1_RVT U3475 ( .A(i_tv80_core_i_reg_N17), .Y(n2946) );
  AO22X1_RVT U3476 ( .A1(i_tv80_core_i_reg_RegsH_7__7_), .A2(n2365), .A3(
        i_tv80_core_i_reg_RegsH_5__7_), .A4(n2405), .Y(n2942) );
  AO22X1_RVT U3477 ( .A1(i_tv80_core_i_reg_RegsH_1__7_), .A2(n2355), .A3(
        i_tv80_core_i_reg_RegsH_3__7_), .A4(n2354), .Y(n2941) );
  INVX1_RVT U3478 ( .A(i_tv80_core_i_reg_N19), .Y(n2945) );
  INVX1_RVT U3479 ( .A(i_tv80_core_i_reg_N18), .Y(n2947) );
  AO22X1_RVT U3480 ( .A1(i_tv80_core_i_reg_RegsL_6__0_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__0_), .A4(n2389), .Y(n2950) );
  NAND4X0_RVT U3481 ( .A1(n2952), .A2(n2953), .A3(n2954), .A4(n2955), .Y(n2949) );
  NAND2X0_RVT U3482 ( .A1(i_tv80_core_i_reg_RegsL_3__0_), .A2(n5398), .Y(n2955) );
  NAND2X0_RVT U3483 ( .A1(i_tv80_core_i_reg_RegsL_7__0_), .A2(n5405), .Y(n2954) );
  NAND2X0_RVT U3484 ( .A1(i_tv80_core_i_reg_RegsL_5__0_), .A2(n2495), .Y(n2953) );
  NAND2X0_RVT U3485 ( .A1(i_tv80_core_i_reg_RegsL_1__0_), .A2(n5399), .Y(n2952) );
  AO22X1_RVT U3486 ( .A1(i_tv80_core_i_reg_RegsL_4__0_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__0_), .A4(n2498), .Y(n2948) );
  AO22X1_RVT U3487 ( .A1(i_tv80_core_i_reg_RegsL_6__1_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__1_), .A4(n2389), .Y(n2960) );
  NAND4X0_RVT U3488 ( .A1(n2961), .A2(n2962), .A3(n2963), .A4(n2964), .Y(n2959) );
  NAND2X0_RVT U3489 ( .A1(i_tv80_core_i_reg_RegsL_3__1_), .A2(n5398), .Y(n2964) );
  NAND2X0_RVT U3490 ( .A1(i_tv80_core_i_reg_RegsL_7__1_), .A2(n5405), .Y(n2963) );
  NAND2X0_RVT U3491 ( .A1(i_tv80_core_i_reg_RegsL_5__1_), .A2(n2495), .Y(n2962) );
  NAND2X0_RVT U3492 ( .A1(i_tv80_core_i_reg_RegsL_1__1_), .A2(n5399), .Y(n2961) );
  AO22X1_RVT U3493 ( .A1(i_tv80_core_i_reg_RegsL_4__1_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__1_), .A4(n2498), .Y(n2958) );
  AO22X1_RVT U3494 ( .A1(i_tv80_core_i_reg_RegsL_6__2_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__2_), .A4(n2389), .Y(n2967) );
  NAND4X0_RVT U3495 ( .A1(n2968), .A2(n2969), .A3(n2970), .A4(n2971), .Y(n2966) );
  NAND2X0_RVT U3496 ( .A1(i_tv80_core_i_reg_RegsL_3__2_), .A2(n5398), .Y(n2971) );
  NAND2X0_RVT U3497 ( .A1(i_tv80_core_i_reg_RegsL_7__2_), .A2(n5405), .Y(n2970) );
  NAND2X0_RVT U3498 ( .A1(i_tv80_core_i_reg_RegsL_5__2_), .A2(n2495), .Y(n2969) );
  NAND2X0_RVT U3499 ( .A1(i_tv80_core_i_reg_RegsL_1__2_), .A2(n5399), .Y(n2968) );
  AO22X1_RVT U3500 ( .A1(i_tv80_core_i_reg_RegsL_4__2_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__2_), .A4(n2498), .Y(n2965) );
  AO22X1_RVT U3501 ( .A1(i_tv80_core_i_reg_RegsL_6__3_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__3_), .A4(n2389), .Y(n2974) );
  NAND4X0_RVT U3502 ( .A1(n2975), .A2(n2976), .A3(n2977), .A4(n2978), .Y(n2973) );
  NAND2X0_RVT U3503 ( .A1(i_tv80_core_i_reg_RegsL_3__3_), .A2(n5398), .Y(n2978) );
  NAND2X0_RVT U3504 ( .A1(i_tv80_core_i_reg_RegsL_7__3_), .A2(n5405), .Y(n2977) );
  NAND2X0_RVT U3505 ( .A1(i_tv80_core_i_reg_RegsL_5__3_), .A2(n2495), .Y(n2976) );
  NAND2X0_RVT U3506 ( .A1(i_tv80_core_i_reg_RegsL_1__3_), .A2(n5399), .Y(n2975) );
  AO22X1_RVT U3507 ( .A1(i_tv80_core_i_reg_RegsL_4__3_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__3_), .A4(n2498), .Y(n2972) );
  AO22X1_RVT U3508 ( .A1(i_tv80_core_i_reg_RegsL_6__4_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__4_), .A4(n2389), .Y(n2981) );
  NAND4X0_RVT U3509 ( .A1(n2982), .A2(n2983), .A3(n2984), .A4(n2985), .Y(n2980) );
  NAND2X0_RVT U3510 ( .A1(i_tv80_core_i_reg_RegsL_3__4_), .A2(n5398), .Y(n2985) );
  NAND2X0_RVT U3511 ( .A1(i_tv80_core_i_reg_RegsL_7__4_), .A2(n5405), .Y(n2984) );
  NAND2X0_RVT U3512 ( .A1(i_tv80_core_i_reg_RegsL_5__4_), .A2(n2495), .Y(n2983) );
  NAND2X0_RVT U3513 ( .A1(i_tv80_core_i_reg_RegsL_1__4_), .A2(n5399), .Y(n2982) );
  AO22X1_RVT U3514 ( .A1(i_tv80_core_i_reg_RegsL_4__4_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__4_), .A4(n2498), .Y(n2979) );
  AO22X1_RVT U3515 ( .A1(i_tv80_core_i_reg_RegsL_6__5_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__5_), .A4(n2389), .Y(n2988) );
  NAND4X0_RVT U3516 ( .A1(n2989), .A2(n2990), .A3(n2991), .A4(n2992), .Y(n2987) );
  NAND2X0_RVT U3517 ( .A1(i_tv80_core_i_reg_RegsL_3__5_), .A2(n5398), .Y(n2992) );
  NAND2X0_RVT U3518 ( .A1(i_tv80_core_i_reg_RegsL_7__5_), .A2(n5405), .Y(n2991) );
  NAND2X0_RVT U3519 ( .A1(i_tv80_core_i_reg_RegsL_5__5_), .A2(n2495), .Y(n2990) );
  NAND2X0_RVT U3520 ( .A1(i_tv80_core_i_reg_RegsL_1__5_), .A2(n5399), .Y(n2989) );
  AO22X1_RVT U3521 ( .A1(i_tv80_core_i_reg_RegsL_4__5_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__5_), .A4(n2498), .Y(n2986) );
  AO22X1_RVT U3522 ( .A1(i_tv80_core_i_reg_RegsL_6__6_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__6_), .A4(n2389), .Y(n2995) );
  NAND4X0_RVT U3523 ( .A1(n2996), .A2(n2997), .A3(n2998), .A4(n2999), .Y(n2994) );
  NAND2X0_RVT U3524 ( .A1(i_tv80_core_i_reg_RegsL_3__6_), .A2(n5398), .Y(n2999) );
  NAND2X0_RVT U3525 ( .A1(i_tv80_core_i_reg_RegsL_7__6_), .A2(n5405), .Y(n2998) );
  NAND2X0_RVT U3526 ( .A1(i_tv80_core_i_reg_RegsL_5__6_), .A2(n2495), .Y(n2997) );
  NAND2X0_RVT U3527 ( .A1(i_tv80_core_i_reg_RegsL_1__6_), .A2(n5399), .Y(n2996) );
  AO22X1_RVT U3528 ( .A1(i_tv80_core_i_reg_RegsL_4__6_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__6_), .A4(n2498), .Y(n2993) );
  AO22X1_RVT U3529 ( .A1(i_tv80_core_i_reg_RegsL_6__7_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsL_2__7_), .A4(n2389), .Y(n3002) );
  NAND4X0_RVT U3530 ( .A1(n3003), .A2(n3004), .A3(n3005), .A4(n3006), .Y(n3001) );
  NAND2X0_RVT U3531 ( .A1(i_tv80_core_i_reg_RegsL_3__7_), .A2(n5398), .Y(n3006) );
  NAND2X0_RVT U3532 ( .A1(i_tv80_core_i_reg_RegsL_7__7_), .A2(n5405), .Y(n3005) );
  NAND2X0_RVT U3533 ( .A1(i_tv80_core_i_reg_RegsL_5__7_), .A2(n2495), .Y(n3004) );
  NAND2X0_RVT U3534 ( .A1(i_tv80_core_i_reg_RegsL_1__7_), .A2(n5399), .Y(n3003) );
  AO22X1_RVT U3535 ( .A1(i_tv80_core_i_reg_RegsL_4__7_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsL_0__7_), .A4(n2498), .Y(n3000) );
  AO22X1_RVT U3536 ( .A1(i_tv80_core_i_reg_RegsH_6__0_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__0_), .A4(n2389), .Y(n3009) );
  NAND4X0_RVT U3537 ( .A1(n3010), .A2(n3011), .A3(n3012), .A4(n3013), .Y(n3008) );
  NAND2X0_RVT U3538 ( .A1(i_tv80_core_i_reg_RegsH_3__0_), .A2(n5398), .Y(n3013) );
  NAND2X0_RVT U3539 ( .A1(i_tv80_core_i_reg_RegsH_7__0_), .A2(n5405), .Y(n3012) );
  NAND2X0_RVT U3540 ( .A1(i_tv80_core_i_reg_RegsH_5__0_), .A2(n2495), .Y(n3011) );
  NAND2X0_RVT U3541 ( .A1(i_tv80_core_i_reg_RegsH_1__0_), .A2(n5399), .Y(n3010) );
  AO22X1_RVT U3542 ( .A1(i_tv80_core_i_reg_RegsH_4__0_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__0_), .A4(n2498), .Y(n3007) );
  AO22X1_RVT U3543 ( .A1(i_tv80_core_i_reg_RegsH_6__1_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__1_), .A4(n2389), .Y(n3016) );
  NAND4X0_RVT U3544 ( .A1(n3017), .A2(n3018), .A3(n3019), .A4(n3020), .Y(n3015) );
  NAND2X0_RVT U3545 ( .A1(i_tv80_core_i_reg_RegsH_3__1_), .A2(n5398), .Y(n3020) );
  NAND2X0_RVT U3546 ( .A1(i_tv80_core_i_reg_RegsH_7__1_), .A2(n5405), .Y(n3019) );
  NAND2X0_RVT U3547 ( .A1(i_tv80_core_i_reg_RegsH_5__1_), .A2(n2495), .Y(n3018) );
  NAND2X0_RVT U3548 ( .A1(i_tv80_core_i_reg_RegsH_1__1_), .A2(n5399), .Y(n3017) );
  AO22X1_RVT U3549 ( .A1(i_tv80_core_i_reg_RegsH_4__1_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__1_), .A4(n2498), .Y(n3014) );
  AO221X1_RVT U3550 ( .A1(i_tv80_core_i_reg_RegsH_1__2_), .A2(n5399), .A3(
        i_tv80_core_i_reg_RegsH_5__2_), .A4(n2495), .A5(n3024), .Y(n3023) );
  AO22X1_RVT U3551 ( .A1(i_tv80_core_i_reg_RegsH_7__2_), .A2(n5405), .A3(
        i_tv80_core_i_reg_RegsH_3__2_), .A4(n5398), .Y(n3024) );
  AO22X1_RVT U3552 ( .A1(i_tv80_core_i_reg_RegsH_4__2_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__2_), .A4(n2498), .Y(n3022) );
  AO22X1_RVT U3553 ( .A1(i_tv80_core_i_reg_RegsH_6__2_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__2_), .A4(n2389), .Y(n3021) );
  AO22X1_RVT U3554 ( .A1(i_tv80_core_i_reg_RegsH_6__3_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__3_), .A4(n2389), .Y(n3027) );
  NAND4X0_RVT U3555 ( .A1(n3028), .A2(n3029), .A3(n3030), .A4(n3031), .Y(n3026) );
  NAND2X0_RVT U3556 ( .A1(i_tv80_core_i_reg_RegsH_3__3_), .A2(n5398), .Y(n3031) );
  NAND2X0_RVT U3557 ( .A1(i_tv80_core_i_reg_RegsH_7__3_), .A2(n5405), .Y(n3030) );
  NAND2X0_RVT U3558 ( .A1(i_tv80_core_i_reg_RegsH_5__3_), .A2(n2495), .Y(n3029) );
  NAND2X0_RVT U3559 ( .A1(i_tv80_core_i_reg_RegsH_1__3_), .A2(n5399), .Y(n3028) );
  AO22X1_RVT U3560 ( .A1(i_tv80_core_i_reg_RegsH_4__3_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__3_), .A4(n2498), .Y(n3025) );
  OR3X1_RVT U3561 ( .A1(n3032), .A2(n3033), .A3(n3034), .Y(
        i_tv80_core_RegBusA_12_) );
  AO22X1_RVT U3562 ( .A1(i_tv80_core_i_reg_RegsH_6__4_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__4_), .A4(n2389), .Y(n3034) );
  NAND4X0_RVT U3563 ( .A1(n3035), .A2(n3036), .A3(n3037), .A4(n3038), .Y(n3033) );
  NAND2X0_RVT U3564 ( .A1(i_tv80_core_i_reg_RegsH_3__4_), .A2(n5398), .Y(n3038) );
  NAND2X0_RVT U3565 ( .A1(i_tv80_core_i_reg_RegsH_7__4_), .A2(n5405), .Y(n3037) );
  NAND2X0_RVT U3566 ( .A1(i_tv80_core_i_reg_RegsH_5__4_), .A2(n2495), .Y(n3036) );
  NAND2X0_RVT U3567 ( .A1(i_tv80_core_i_reg_RegsH_1__4_), .A2(n5399), .Y(n3035) );
  AO22X1_RVT U3568 ( .A1(i_tv80_core_i_reg_RegsH_4__4_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__4_), .A4(n2498), .Y(n3032) );
  OR3X1_RVT U3569 ( .A1(n3039), .A2(n3040), .A3(n3041), .Y(
        i_tv80_core_RegBusA_13_) );
  AO22X1_RVT U3570 ( .A1(i_tv80_core_i_reg_RegsH_6__5_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__5_), .A4(n2389), .Y(n3041) );
  NAND4X0_RVT U3571 ( .A1(n3042), .A2(n3043), .A3(n3044), .A4(n3045), .Y(n3040) );
  NAND2X0_RVT U3572 ( .A1(i_tv80_core_i_reg_RegsH_3__5_), .A2(n5398), .Y(n3045) );
  NAND2X0_RVT U3573 ( .A1(i_tv80_core_i_reg_RegsH_7__5_), .A2(n5405), .Y(n3044) );
  NAND2X0_RVT U3574 ( .A1(i_tv80_core_i_reg_RegsH_5__5_), .A2(n2495), .Y(n3043) );
  NAND2X0_RVT U3575 ( .A1(i_tv80_core_i_reg_RegsH_1__5_), .A2(n5399), .Y(n3042) );
  AO22X1_RVT U3576 ( .A1(i_tv80_core_i_reg_RegsH_4__5_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__5_), .A4(n2498), .Y(n3039) );
  AO22X1_RVT U3577 ( .A1(i_tv80_core_i_reg_RegsH_6__6_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__6_), .A4(n2389), .Y(n3048) );
  NAND4X0_RVT U3578 ( .A1(n3049), .A2(n3050), .A3(n3051), .A4(n3052), .Y(n3047) );
  NAND2X0_RVT U3579 ( .A1(i_tv80_core_i_reg_RegsH_3__6_), .A2(n5398), .Y(n3052) );
  NAND2X0_RVT U3580 ( .A1(i_tv80_core_i_reg_RegsH_7__6_), .A2(n5405), .Y(n3051) );
  NAND2X0_RVT U3581 ( .A1(i_tv80_core_i_reg_RegsH_5__6_), .A2(n2495), .Y(n3050) );
  NAND2X0_RVT U3582 ( .A1(i_tv80_core_i_reg_RegsH_1__6_), .A2(n5399), .Y(n3049) );
  AO22X1_RVT U3583 ( .A1(i_tv80_core_i_reg_RegsH_4__6_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__6_), .A4(n2498), .Y(n3046) );
  AO22X1_RVT U3584 ( .A1(i_tv80_core_i_reg_RegsH_6__7_), .A2(n5401), .A3(
        i_tv80_core_i_reg_RegsH_2__7_), .A4(n2389), .Y(n3055) );
  NAND4X0_RVT U3585 ( .A1(n3058), .A2(n3059), .A3(n3060), .A4(n3061), .Y(n3054) );
  NAND2X0_RVT U3586 ( .A1(i_tv80_core_i_reg_RegsH_3__7_), .A2(n5398), .Y(n3061) );
  NAND2X0_RVT U3587 ( .A1(i_tv80_core_i_reg_RegsH_7__7_), .A2(n5405), .Y(n3060) );
  NAND2X0_RVT U3588 ( .A1(i_tv80_core_i_reg_RegsH_5__7_), .A2(n2495), .Y(n3059) );
  NAND2X0_RVT U3589 ( .A1(i_tv80_core_i_reg_RegsH_1__7_), .A2(n5399), .Y(n3058) );
  AO22X1_RVT U3590 ( .A1(i_tv80_core_i_reg_RegsH_4__7_), .A2(n5400), .A3(
        i_tv80_core_i_reg_RegsH_0__7_), .A4(n2498), .Y(n3053) );
  OR3X2_RVT U3591 ( .A1(n2948), .A2(n2950), .A3(n2949), .Y(
        i_tv80_core_RegBusA_0_) );
  OR3X2_RVT U3592 ( .A1(n2958), .A2(n2960), .A3(n2959), .Y(
        i_tv80_core_RegBusA_1_) );
  OR3X2_RVT U3593 ( .A1(n2965), .A2(n2967), .A3(n2966), .Y(
        i_tv80_core_RegBusA_2_) );
  OR3X2_RVT U3595 ( .A1(n2986), .A2(n2988), .A3(n2987), .Y(
        i_tv80_core_RegBusA_5_) );
  OR3X2_RVT U3596 ( .A1(n2972), .A2(n2974), .A3(n2973), .Y(
        i_tv80_core_RegBusA_3_) );
  OR3X2_RVT U3597 ( .A1(n2993), .A2(n2995), .A3(n2994), .Y(
        i_tv80_core_RegBusA_6_) );
  OR3X2_RVT U3598 ( .A1(n3000), .A2(n3001), .A3(n3002), .Y(
        i_tv80_core_RegBusA_7_) );
  OR3X2_RVT U3599 ( .A1(n2979), .A2(n2980), .A3(n2981), .Y(
        i_tv80_core_RegBusA_4_) );
  OR2X1_RVT U3600 ( .A1(n3065), .A2(n3066), .Y(i_tv80_core_N1215) );
  AO221X1_RVT U3601 ( .A1(n2689), .A2(n3067), .A3(i_tv80_core_ACC_0_), .A4(
        n2615), .A5(n3068), .Y(n3066) );
  AO22X1_RVT U3602 ( .A1(i_tv80_core_N1207), .A2(n2619), .A3(i_tv80_core_PC_8_), .A4(n2618), .Y(n3068) );
  AO22X1_RVT U3603 ( .A1(i_tv80_core_SP_0_), .A2(n5396), .A3(n2424), .A4(n3069), .Y(n3067) );
  NAND2X0_RVT U3604 ( .A1(n329), .A2(n5075), .Y(n3069) );
  AO222X1_RVT U3605 ( .A1(di_reg_0_), .A2(n2683), .A3(i_tv80_core_SP_8_), .A4(
        n2617), .A5(i_tv80_core_PC_0_), .A6(n2685), .Y(n3065) );
  OR3X1_RVT U3606 ( .A1(n3070), .A2(n3071), .A3(n3072), .Y(i_tv80_core_N1216)
         );
  AO221X1_RVT U3607 ( .A1(i_tv80_core_N1208), .A2(n2619), .A3(
        i_tv80_core_SP_9_), .A4(n2617), .A5(n3073), .Y(n3072) );
  AO22X1_RVT U3608 ( .A1(i_tv80_core_PC_1_), .A2(n2685), .A3(di_reg_1_), .A4(
        n2683), .Y(n3073) );
  AO22X1_RVT U3609 ( .A1(i_tv80_core_F_1_), .A2(n2692), .A3(i_tv80_core_SP_1_), 
        .A4(n2695), .Y(n3071) );
  AO22X1_RVT U3610 ( .A1(i_tv80_core_PC_9_), .A2(n2618), .A3(
        i_tv80_core_ACC_1_), .A4(n2615), .Y(n3070) );
  OR3X1_RVT U3611 ( .A1(n3074), .A2(n3075), .A3(n3076), .Y(i_tv80_core_N1217)
         );
  AO221X1_RVT U3612 ( .A1(n2683), .A2(di_reg_2_), .A3(i_tv80_core_PC_2_), .A4(
        n2685), .A5(n3077), .Y(n3076) );
  AO22X1_RVT U3613 ( .A1(i_tv80_core_SP_10_), .A2(n2617), .A3(
        i_tv80_core_N1209), .A4(n2619), .Y(n3077) );
  AO22X1_RVT U3614 ( .A1(i_tv80_core_F_2_), .A2(n2692), .A3(i_tv80_core_SP_2_), 
        .A4(n2695), .Y(n3075) );
  AO22X1_RVT U3615 ( .A1(i_tv80_core_PC_10_), .A2(n2618), .A3(
        i_tv80_core_ACC_2_), .A4(n2615), .Y(n3074) );
  OR3X1_RVT U3616 ( .A1(n3078), .A2(n3079), .A3(n3080), .Y(i_tv80_core_N1218)
         );
  AO221X1_RVT U3617 ( .A1(i_tv80_core_N1210), .A2(n2619), .A3(
        i_tv80_core_SP_11_), .A4(n2617), .A5(n3081), .Y(n3080) );
  AO22X1_RVT U3618 ( .A1(i_tv80_core_PC_3_), .A2(n2685), .A3(di_reg_3_), .A4(
        n2683), .Y(n3081) );
  AO22X1_RVT U3619 ( .A1(i_tv80_core_F_3_), .A2(n2692), .A3(i_tv80_core_SP_3_), 
        .A4(n2695), .Y(n3079) );
  AO22X1_RVT U3620 ( .A1(i_tv80_core_PC_11_), .A2(n2618), .A3(
        i_tv80_core_ACC_3_), .A4(n2615), .Y(n3078) );
  OR3X1_RVT U3621 ( .A1(n3082), .A2(n3083), .A3(n3084), .Y(i_tv80_core_N1219)
         );
  AO221X1_RVT U3622 ( .A1(i_tv80_core_N1211), .A2(n2619), .A3(
        i_tv80_core_SP_12_), .A4(n2617), .A5(n3085), .Y(n3084) );
  AO22X1_RVT U3623 ( .A1(i_tv80_core_PC_4_), .A2(n2685), .A3(di_reg_4_), .A4(
        n2683), .Y(n3085) );
  AO22X1_RVT U3624 ( .A1(i_tv80_core_F_4_), .A2(n2692), .A3(i_tv80_core_SP_4_), 
        .A4(n2695), .Y(n3083) );
  AO22X1_RVT U3625 ( .A1(i_tv80_core_PC_12_), .A2(n2618), .A3(
        i_tv80_core_ACC_4_), .A4(n2615), .Y(n3082) );
  OR3X1_RVT U3626 ( .A1(n3086), .A2(n3087), .A3(n3088), .Y(i_tv80_core_N1220)
         );
  AO221X1_RVT U3627 ( .A1(i_tv80_core_N1212), .A2(n2619), .A3(
        i_tv80_core_SP_13_), .A4(n2617), .A5(n3089), .Y(n3088) );
  AO22X1_RVT U3628 ( .A1(i_tv80_core_PC_5_), .A2(n2685), .A3(di_reg_5_), .A4(
        n2683), .Y(n3089) );
  AO22X1_RVT U3629 ( .A1(i_tv80_core_F_5_), .A2(n2692), .A3(i_tv80_core_SP_5_), 
        .A4(n2695), .Y(n3087) );
  AO22X1_RVT U3630 ( .A1(i_tv80_core_PC_13_), .A2(n2618), .A3(
        i_tv80_core_ACC_5_), .A4(n2615), .Y(n3086) );
  OR3X1_RVT U3631 ( .A1(n3090), .A2(n3091), .A3(n3092), .Y(i_tv80_core_N1221)
         );
  AO221X1_RVT U3632 ( .A1(n2683), .A2(di_reg_6_), .A3(i_tv80_core_PC_6_), .A4(
        n2685), .A5(n3093), .Y(n3092) );
  AO22X1_RVT U3633 ( .A1(i_tv80_core_SP_14_), .A2(n2617), .A3(
        i_tv80_core_N1213), .A4(n2619), .Y(n3093) );
  AO22X1_RVT U3634 ( .A1(i_tv80_core_F_6_), .A2(n2692), .A3(i_tv80_core_SP_6_), 
        .A4(n2695), .Y(n3091) );
  AO22X1_RVT U3635 ( .A1(i_tv80_core_PC_14_), .A2(n2618), .A3(
        i_tv80_core_ACC_6_), .A4(n2615), .Y(n3090) );
  OR3X1_RVT U3636 ( .A1(n3094), .A2(n3095), .A3(n3096), .Y(i_tv80_core_N1222)
         );
  AO221X1_RVT U3637 ( .A1(n2683), .A2(di_reg_7_), .A3(i_tv80_core_PC_7_), .A4(
        n2685), .A5(n3097), .Y(n3096) );
  AO22X1_RVT U3638 ( .A1(i_tv80_core_SP_15_), .A2(n2617), .A3(
        i_tv80_core_N1214), .A4(n2619), .Y(n3097) );
  AO22X1_RVT U3639 ( .A1(i_tv80_core_F_7_), .A2(n2692), .A3(i_tv80_core_SP_7_), 
        .A4(n2695), .Y(n3095) );
  AO22X1_RVT U3640 ( .A1(i_tv80_core_PC_15_), .A2(n2618), .A3(
        i_tv80_core_ACC_7_), .A4(n2615), .Y(n3094) );
  INVX1_RVT U3641 ( .A(i_tv80_core_Set_BusB_To_3_), .Y(n3099) );
  INVX1_RVT U3642 ( .A(n3098), .Y(n3102) );
  NAND2X0_RVT U3643 ( .A1(i_tv80_core_Set_BusB_To_2_), .A2(
        i_tv80_core_Set_BusB_To_1_), .Y(n3098) );
  INVX1_RVT U3644 ( .A(i_tv80_core_Set_BusB_To_1_), .Y(n3100) );
  NAND4X0_RVT U3645 ( .A1(n3126), .A2(n3148), .A3(n3114), .A4(n4266), .Y(n3280) );
  NAND3X0_RVT U3648 ( .A1(n4703), .A2(n4702), .A3(n2745), .Y(n3106) );
  AND2X1_RVT U3649 ( .A1(n4742), .A2(n3242), .Y(n3107) );
  AND2X1_RVT U3650 ( .A1(n3110), .A2(n2503), .Y(n3108) );
  AND2X1_RVT U3651 ( .A1(n2524), .A2(n2503), .Y(n3109) );
  AND2X1_RVT U3652 ( .A1(n444), .A2(i_tv80_core_IR_2_), .Y(n3113) );
  AND3X1_RVT U3653 ( .A1(n4296), .A2(n4295), .A3(n2564), .Y(n3112) );
  AND2X1_RVT U3656 ( .A1(n3110), .A2(n3113), .Y(n3122) );
  AND4X1_RVT U3657 ( .A1(n2543), .A2(n4385), .A3(n2300), .A4(n3235), .Y(n3117)
         );
  INVX0_RVT U3658 ( .A(n3119), .Y(n3120) );
  AND4X1_RVT U3660 ( .A1(n4475), .A2(n4487), .A3(n4469), .A4(n4470), .Y(n3121)
         );
  NAND4X1_RVT U3661 ( .A1(i_tv80_core_IR_0_), .A2(i_tv80_core_IR_1_), .A3(
        i_tv80_core_IR_2_), .A4(n3592), .Y(n3934) );
  NAND2X0_RVT U3662 ( .A1(n4696), .A2(n2406), .Y(n3124) );
  NAND2X0_RVT U3663 ( .A1(n3124), .A2(n3123), .Y(n1880) );
  NAND2X0_RVT U3664 ( .A1(n2580), .A2(n4489), .Y(n4492) );
  NAND2X4_RVT U3668 ( .A1(n2535), .A2(n5413), .Y(n5358) );
  NAND3X2_RVT U3673 ( .A1(n3451), .A2(mcycle_2_), .A3(n3328), .Y(n5340) );
  INVX4_RVT U3674 ( .A(n4173), .Y(n4796) );
  NAND3X2_RVT U3675 ( .A1(i_tv80_core_ALU_Op_r_0_), .A2(
        i_tv80_core_ALU_Op_r_3_), .A3(n2411), .Y(n4068) );
  INVX2_RVT U3676 ( .A(n3548), .Y(n3884) );
  INVX2_RVT U3677 ( .A(n3549), .Y(n3883) );
  AO21X2_RVT U3678 ( .A1(n3904), .A2(n3917), .A3(n4330), .Y(n4250) );
  INVX2_RVT U3679 ( .A(n4830), .Y(n5028) );
  NAND3X2_RVT U3681 ( .A1(n4878), .A2(n4880), .A3(n4879), .Y(n5034) );
  AO21X2_RVT U3682 ( .A1(di_reg_7_), .A2(n2342), .A3(n2736), .Y(n5031) );
  NAND3X2_RVT U3683 ( .A1(n5377), .A2(n5150), .A3(n2551), .Y(n5290) );
  NAND2X0_RVT U3684 ( .A1(reset_n), .A2(n3332), .Y(n3160) );
  INVX1_RVT U3685 ( .A(n3160), .Y(n3162) );
  INVX1_RVT U3686 ( .A(nmi_n), .Y(n3161) );
  NAND2X0_RVT U3687 ( .A1(n2527), .A2(n3169), .Y(n3238) );
  NAND2X0_RVT U3688 ( .A1(n3592), .A2(i_tv80_core_IR_0_), .Y(n3163) );
  AO21X1_RVT U3689 ( .A1(n3238), .A2(n3170), .A3(n3249), .Y(n3379) );
  INVX1_RVT U3690 ( .A(n3249), .Y(n3243) );
  NAND2X0_RVT U3691 ( .A1(n2523), .A2(n3243), .Y(n3164) );
  AO21X1_RVT U3692 ( .A1(n3379), .A2(n3164), .A3(n5351), .Y(n4340) );
  NAND2X0_RVT U3693 ( .A1(i_tv80_core_IR_7_), .A2(i_tv80_core_IR_6_), .Y(n3598) );
  NAND2X0_RVT U3694 ( .A1(n5410), .A2(n3610), .Y(n3171) );
  NAND2X0_RVT U3695 ( .A1(n4450), .A2(n2528), .Y(n3376) );
  NAND3X0_RVT U3696 ( .A1(i_tv80_core_NMI_s), .A2(n4340), .A3(n4337), .Y(n4301) );
  INVX1_RVT U3697 ( .A(n4301), .Y(n3165) );
  AND2X1_RVT U3698 ( .A1(n3165), .A2(n3156), .Y(n3331) );
  NAND2X0_RVT U3699 ( .A1(mcycle_2_), .A2(n2532), .Y(n3303) );
  INVX1_RVT U3700 ( .A(n3303), .Y(n3207) );
  NAND2X0_RVT U3701 ( .A1(n2525), .A2(n4724), .Y(n3626) );
  NAND2X0_RVT U3702 ( .A1(n435), .A2(n3592), .Y(n3566) );
  NAND2X0_RVT U3703 ( .A1(n3566), .A2(n3189), .Y(n3574) );
  NAND2X0_RVT U3704 ( .A1(n2734), .A2(n3574), .Y(n3197) );
  INVX1_RVT U3705 ( .A(n3197), .Y(n3250) );
  NAND2X0_RVT U3706 ( .A1(n3127), .A2(n460), .Y(n3576) );
  NAND2X0_RVT U3707 ( .A1(n467), .A2(n468), .Y(n3575) );
  NAND2X0_RVT U3708 ( .A1(n2670), .A2(n3193), .Y(n3578) );
  NAND2X0_RVT U3709 ( .A1(n3250), .A2(n2323), .Y(n4413) );
  NAND2X0_RVT U3710 ( .A1(n3626), .A2(n4413), .Y(n3288) );
  AO21X1_RVT U3711 ( .A1(n3288), .A2(n3142), .A3(n5358), .Y(n3167) );
  NAND2X0_RVT U3712 ( .A1(n3169), .A2(n2755), .Y(n3445) );
  INVX1_RVT U3713 ( .A(n3445), .Y(n3214) );
  NAND2X0_RVT U3714 ( .A1(n3214), .A2(n3670), .Y(n3922) );
  INVX1_RVT U3715 ( .A(n3213), .Y(n3168) );
  NAND2X0_RVT U3716 ( .A1(n3168), .A2(n3670), .Y(n3920) );
  NAND2X0_RVT U3717 ( .A1(n4119), .A2(n3250), .Y(n4306) );
  NAND2X0_RVT U3718 ( .A1(n2604), .A2(n4306), .Y(n3177) );
  NAND2X0_RVT U3719 ( .A1(n3169), .A2(n2527), .Y(n3271) );
  NAND2X0_RVT U3720 ( .A1(n2741), .A2(n2377), .Y(n3616) );
  NAND2X0_RVT U3721 ( .A1(n3579), .A2(n3670), .Y(n4385) );
  NAND2X0_RVT U3722 ( .A1(n3332), .A2(n277), .Y(n3172) );
  AND2X1_RVT U3723 ( .A1(n433), .A2(n467), .Y(n3174) );
  AND2X1_RVT U3724 ( .A1(n434), .A2(n468), .Y(n3173) );
  NAND2X0_RVT U3725 ( .A1(n3591), .A2(n2744), .Y(n3672) );
  NAND2X0_RVT U3726 ( .A1(n4385), .A2(n3597), .Y(n5054) );
  INVX1_RVT U3727 ( .A(n5054), .Y(n5307) );
  NAND2X0_RVT U3729 ( .A1(n4724), .A2(n2528), .Y(n4380) );
  NAND2X0_RVT U3730 ( .A1(n4378), .A2(n4380), .Y(n4869) );
  INVX1_RVT U3731 ( .A(n4869), .Y(n3299) );
  INVX1_RVT U3732 ( .A(n3609), .Y(n3175) );
  NAND2X0_RVT U3733 ( .A1(n3175), .A2(n4846), .Y(n3371) );
  NAND4X0_RVT U3734 ( .A1(n5307), .A2(n3299), .A3(n3371), .A4(n5306), .Y(n3176) );
  AO221X1_RVT U3735 ( .A1(n3152), .A2(n3177), .A3(n3144), .A4(n3176), .A5(
        n5358), .Y(n3179) );
  INVX1_RVT U3736 ( .A(n3179), .Y(n3178) );
  NAND2X0_RVT U3737 ( .A1(n3178), .A2(tstate_0_), .Y(n3184) );
  NAND3X0_RVT U3738 ( .A1(n4860), .A2(n3179), .A3(n192), .Y(n3183) );
  AND2X1_RVT U3739 ( .A1(tstate_2_), .A2(n192), .Y(n3181) );
  NAND3X0_RVT U3740 ( .A1(tstate_2_), .A2(n4860), .A3(n5358), .Y(n3180) );
  OA221X1_RVT U3741 ( .A1(tstate_2_), .A2(n5358), .A3(n3181), .A4(n4860), .A5(
        n3180), .Y(n3182) );
  NAND2X0_RVT U3742 ( .A1(n3207), .A2(mcycle_0_), .Y(n3353) );
  INVX1_RVT U3743 ( .A(n3353), .Y(n4857) );
  NAND2X0_RVT U3744 ( .A1(n2476), .A2(n2533), .Y(n5079) );
  INVX1_RVT U3745 ( .A(n5079), .Y(n3828) );
  NAND3X0_RVT U3746 ( .A1(n3202), .A2(n3193), .A3(n3828), .Y(n5337) );
  NAND2X0_RVT U3747 ( .A1(n2670), .A2(n3150), .Y(n4155) );
  INVX1_RVT U3748 ( .A(n4155), .Y(n3681) );
  NAND2X0_RVT U3749 ( .A1(n5337), .A2(n3186), .Y(n3205) );
  NAND2X0_RVT U3750 ( .A1(n5366), .A2(n3205), .Y(n3323) );
  INVX1_RVT U3751 ( .A(n4860), .Y(n4826) );
  NAND3X0_RVT U3752 ( .A1(mcycle_0_), .A2(n3328), .A3(n2535), .Y(n3188) );
  NAND3X0_RVT U3753 ( .A1(n2532), .A2(n2535), .A3(n3451), .Y(n3187) );
  INVX1_RVT U3754 ( .A(n4404), .Y(n3192) );
  NAND2X0_RVT U3755 ( .A1(n3192), .A2(n3116), .Y(n3440) );
  AND2X1_RVT U3756 ( .A1(n4117), .A2(n3197), .Y(n3190) );
  NAND2X0_RVT U3757 ( .A1(n2747), .A2(n2758), .Y(n3269) );
  NAND2X0_RVT U3758 ( .A1(n2431), .A2(n2503), .Y(n3270) );
  INVX1_RVT U3759 ( .A(n4870), .Y(n3199) );
  NAND3X0_RVT U3760 ( .A1(n3592), .A2(i_tv80_core_IR_2_), .A3(n2748), .Y(n3253) );
  NAND2X0_RVT U3761 ( .A1(n2748), .A2(n3113), .Y(n3236) );
  INVX1_RVT U3762 ( .A(n3580), .Y(n3216) );
  NAND2X0_RVT U3763 ( .A1(n3249), .A2(n3589), .Y(n3242) );
  INVX1_RVT U3764 ( .A(n2522), .Y(n3196) );
  NAND4X0_RVT U3765 ( .A1(n3190), .A2(n3199), .A3(n3216), .A4(n2549), .Y(n3191) );
  NAND2X0_RVT U3766 ( .A1(n3677), .A2(n3191), .Y(n3195) );
  NAND2X0_RVT U3767 ( .A1(n4403), .A2(n4402), .Y(n4844) );
  AND2X1_RVT U3768 ( .A1(n2558), .A2(n2300), .Y(n3194) );
  NAND4X0_RVT U3769 ( .A1(n3440), .A2(n3195), .A3(n3371), .A4(n3194), .Y(n3352) );
  INVX1_RVT U3770 ( .A(n4845), .Y(n3571) );
  AND4X1_RVT U3771 ( .A1(n3239), .A2(n3197), .A3(n3196), .A4(n4117), .Y(n3198)
         );
  NAND2X0_RVT U3772 ( .A1(n2777), .A2(n2670), .Y(n3221) );
  NAND2X0_RVT U3773 ( .A1(n2777), .A2(n3169), .Y(n3222) );
  NAND3X0_RVT U3774 ( .A1(n3221), .A2(n3206), .A3(n3222), .Y(n3230) );
  NAND2X0_RVT U3775 ( .A1(n3402), .A2(n3430), .Y(n3405) );
  INVX1_RVT U3776 ( .A(n3348), .Y(n3201) );
  NAND2X0_RVT U3777 ( .A1(n4742), .A2(n3259), .Y(n3399) );
  NAND2X0_RVT U3778 ( .A1(n4742), .A2(n3347), .Y(n4415) );
  INVX1_RVT U3779 ( .A(n4415), .Y(n3355) );
  NAND2X0_RVT U3780 ( .A1(n5315), .A2(n3355), .Y(n3344) );
  NAND2X0_RVT U3781 ( .A1(n2547), .A2(n3344), .Y(n3203) );
  AO22X1_RVT U3782 ( .A1(n3673), .A2(n2711), .A3(n3203), .A4(n4860), .Y(n3204)
         );
  AO22X1_RVT U3783 ( .A1(n4826), .A2(n3205), .A3(n4416), .A4(n3204), .Y(n4737)
         );
  NAND2X0_RVT U3784 ( .A1(n4119), .A2(n4870), .Y(n4305) );
  AO21X1_RVT U3785 ( .A1(n4404), .A2(n3609), .A3(n3206), .Y(n5329) );
  NAND2X0_RVT U3786 ( .A1(n4322), .A2(n5329), .Y(n5338) );
  NAND2X0_RVT U3787 ( .A1(n3451), .A2(n3328), .Y(n4422) );
  INVX1_RVT U3788 ( .A(n4422), .Y(n3208) );
  AO22X1_RVT U3789 ( .A1(n2383), .A2(n2532), .A3(n2756), .A4(n3328), .Y(n5077)
         );
  INVX1_RVT U3790 ( .A(n5077), .Y(n5346) );
  NAND3X0_RVT U3791 ( .A1(n2400), .A2(n2535), .A3(n5346), .Y(n3314) );
  NAND2X0_RVT U3792 ( .A1(n5338), .A2(n3314), .Y(n3226) );
  INVX1_RVT U3793 ( .A(n5340), .Y(n5323) );
  AO21X1_RVT U3794 ( .A1(n5346), .A2(n5344), .A3(n5323), .Y(n3211) );
  NAND2X0_RVT U3795 ( .A1(n3209), .A2(n2755), .Y(n3261) );
  INVX1_RVT U3796 ( .A(n3261), .Y(n3210) );
  NAND2X0_RVT U3797 ( .A1(n3210), .A2(n3945), .Y(n5343) );
  NAND2X0_RVT U3798 ( .A1(n3210), .A2(n3526), .Y(n3409) );
  NAND2X0_RVT U3799 ( .A1(n5343), .A2(n3409), .Y(n3457) );
  NAND2X0_RVT U3800 ( .A1(n3211), .A2(n3457), .Y(n4730) );
  INVX1_RVT U3801 ( .A(n3314), .Y(n3312) );
  NAND2X0_RVT U3802 ( .A1(n3312), .A2(n5344), .Y(n3390) );
  INVX1_RVT U3803 ( .A(n3390), .Y(n4728) );
  NAND2X0_RVT U3804 ( .A1(n2497), .A2(n4742), .Y(n5325) );
  NAND2X0_RVT U3805 ( .A1(n4742), .A2(n4845), .Y(n3456) );
  NAND2X0_RVT U3806 ( .A1(n5325), .A2(n3456), .Y(n3384) );
  NAND2X0_RVT U3807 ( .A1(n2532), .A2(mcycle_0_), .Y(n4420) );
  NAND3X0_RVT U3808 ( .A1(n2535), .A2(n4422), .A3(n4420), .Y(n3313) );
  AO21X1_RVT U3809 ( .A1(n3451), .A2(n2532), .A3(n3313), .Y(n4377) );
  NAND2X0_RVT U3810 ( .A1(n3384), .A2(n4377), .Y(n3315) );
  OA21X1_RVT U3811 ( .A1(n4728), .A2(n5345), .A3(n3315), .Y(n3225) );
  NAND2X0_RVT U3812 ( .A1(n4742), .A2(n4870), .Y(n5068) );
  NAND2X0_RVT U3813 ( .A1(n2476), .A2(n2755), .Y(n3212) );
  NAND2X0_RVT U3814 ( .A1(n4742), .A2(n3580), .Y(n5064) );
  INVX1_RVT U3815 ( .A(n3212), .Y(n3258) );
  AO21X1_RVT U3816 ( .A1(n3261), .A2(n3213), .A3(n3444), .Y(n3446) );
  NAND2X0_RVT U3817 ( .A1(n2352), .A2(n3214), .Y(n4328) );
  NAND2X0_RVT U3818 ( .A1(n3258), .A2(n2352), .Y(n4333) );
  AND4X1_RVT U3819 ( .A1(n2585), .A2(n5068), .A3(n2600), .A4(n2604), .Y(n3223)
         );
  NAND3X0_RVT U3820 ( .A1(n3216), .A2(n3215), .A3(n2549), .Y(n3217) );
  NAND2X0_RVT U3821 ( .A1(n3217), .A2(n4119), .Y(n3220) );
  AND3X1_RVT U3822 ( .A1(n3218), .A2(n2322), .A3(n2492), .Y(n3219) );
  NAND2X0_RVT U3823 ( .A1(n3250), .A2(n4742), .Y(n4822) );
  NAND2X0_RVT U3824 ( .A1(n4731), .A2(n4822), .Y(n4837) );
  INVX1_RVT U3825 ( .A(n4837), .Y(n3388) );
  NAND3X0_RVT U3826 ( .A1(n3223), .A2(n2668), .A3(n3388), .Y(n4414) );
  INVX1_RVT U3827 ( .A(n4414), .Y(n3224) );
  NAND4X0_RVT U3828 ( .A1(n3226), .A2(n4730), .A3(n3225), .A4(n3224), .Y(n3227) );
  NAND2X0_RVT U3829 ( .A1(n3152), .A2(n3227), .Y(n3268) );
  INVX1_RVT U3830 ( .A(n4402), .Y(n3525) );
  NAND2X0_RVT U3831 ( .A1(n3347), .A2(n3579), .Y(n3428) );
  INVX1_RVT U3832 ( .A(n3428), .Y(n3228) );
  NAND2X0_RVT U3833 ( .A1(n3110), .A2(n2503), .Y(n3608) );
  AND2X1_RVT U3834 ( .A1(n2598), .A2(n4410), .Y(n3267) );
  NAND2X0_RVT U3835 ( .A1(n3230), .A2(n3347), .Y(n3429) );
  NAND2X0_RVT U3836 ( .A1(n2524), .A2(n2503), .Y(n3234) );
  NAND4X0_RVT U3837 ( .A1(n3231), .A2(n3270), .A3(n3236), .A4(n3608), .Y(n3232) );
  NAND2X0_RVT U3838 ( .A1(n3258), .A2(n3232), .Y(n5308) );
  OA21X1_RVT U3839 ( .A1(n3444), .A2(n3445), .A3(n5308), .Y(n3233) );
  AO21X1_RVT U3840 ( .A1(n3116), .A2(n4870), .A3(n2416), .Y(n3369) );
  NAND2X0_RVT U3841 ( .A1(n3369), .A2(n4377), .Y(n3266) );
  NAND2X0_RVT U3842 ( .A1(n3580), .A2(n3579), .Y(n5048) );
  NAND2X0_RVT U3843 ( .A1(n3243), .A2(n2528), .Y(n5053) );
  AND3X1_RVT U3844 ( .A1(n3626), .A2(n5306), .A3(n5056), .Y(n3235) );
  AO21X1_RVT U3845 ( .A1(n3236), .A2(n3589), .A3(n2492), .Y(n5320) );
  INVX1_RVT U3846 ( .A(n5320), .Y(n3434) );
  NAND2X0_RVT U3847 ( .A1(n3434), .A2(n3313), .Y(n3237) );
  INVX1_RVT U3848 ( .A(n3430), .Y(n3365) );
  NAND2X0_RVT U3849 ( .A1(n2523), .A2(n4450), .Y(n3380) );
  INVX1_RVT U3850 ( .A(n3238), .Y(n3272) );
  NAND2X0_RVT U3851 ( .A1(n3272), .A2(n4724), .Y(n4478) );
  AND3X1_RVT U3852 ( .A1(n4478), .A2(n3440), .A3(n3371), .Y(n3240) );
  NAND2X0_RVT U3853 ( .A1(n3945), .A2(n2494), .Y(n3560) );
  AO21X1_RVT U3854 ( .A1(n3560), .A2(n2492), .A3(n3239), .Y(n3375) );
  AND4X1_RVT U3855 ( .A1(n3380), .A2(n3376), .A3(n3240), .A4(n3375), .Y(n3247)
         );
  NAND2X0_RVT U3856 ( .A1(n3109), .A2(n2528), .Y(n4866) );
  INVX1_RVT U3857 ( .A(n4866), .Y(n3241) );
  AO21X1_RVT U3858 ( .A1(n4870), .A2(n3579), .A3(n3241), .Y(n4853) );
  INVX1_RVT U3859 ( .A(n4853), .Y(n4831) );
  INVX1_RVT U3860 ( .A(n3253), .Y(n3244) );
  AO221X1_RVT U3861 ( .A1(n3580), .A2(n3245), .A3(n3244), .A4(n3525), .A5(
        n3397), .Y(n3433) );
  INVX1_RVT U3862 ( .A(n3433), .Y(n3246) );
  NAND4X0_RVT U3863 ( .A1(n3247), .A2(n4831), .A3(n4383), .A4(n3246), .Y(n3265) );
  NAND2X0_RVT U3864 ( .A1(n3249), .A2(n3248), .Y(n3252) );
  NAND2X0_RVT U3865 ( .A1(n3578), .A2(n4401), .Y(n3251) );
  AO22X1_RVT U3866 ( .A1(n3526), .A2(n2494), .A3(n3251), .A4(n3670), .Y(n3350)
         );
  INVX1_RVT U3867 ( .A(n3350), .Y(n3432) );
  AND4X1_RVT U3868 ( .A1(n4333), .A2(n3379), .A3(n2606), .A4(n3432), .Y(n3263)
         );
  INVX1_RVT U3869 ( .A(n3252), .Y(n3256) );
  AND3X1_RVT U3870 ( .A1(n3269), .A2(n4404), .A3(n3253), .Y(n3254) );
  NAND4X0_RVT U3871 ( .A1(n3256), .A2(n3934), .A3(n3255), .A4(n3254), .Y(n3257) );
  NAND2X0_RVT U3872 ( .A1(n3258), .A2(n3257), .Y(n3367) );
  INVX1_RVT U3873 ( .A(n3259), .Y(n3260) );
  NAND2X0_RVT U3874 ( .A1(n2348), .A2(n3268), .Y(n3277) );
  INVX1_RVT U3875 ( .A(n3269), .Y(n3297) );
  NAND2X0_RVT U3876 ( .A1(n3297), .A2(n3525), .Y(n3462) );
  INVX1_RVT U3877 ( .A(n3270), .Y(n3410) );
  NAND2X0_RVT U3878 ( .A1(n3525), .A2(n3410), .Y(n4751) );
  NAND2X0_RVT U3879 ( .A1(n2494), .A2(n3410), .Y(n5310) );
  NAND2X0_RVT U3880 ( .A1(n2494), .A2(n3297), .Y(n3482) );
  NAND2X0_RVT U3881 ( .A1(n5310), .A2(n3482), .Y(n4823) );
  INVX1_RVT U3882 ( .A(n4823), .Y(n4733) );
  NAND2X0_RVT U3883 ( .A1(n2562), .A2(n4733), .Y(n4833) );
  INVX1_RVT U3884 ( .A(n4833), .Y(n4848) );
  NAND2X0_RVT U3885 ( .A1(n3410), .A2(n4846), .Y(n3293) );
  NAND2X0_RVT U3886 ( .A1(n3297), .A2(n4846), .Y(n3295) );
  NAND2X0_RVT U3887 ( .A1(n3293), .A2(n3295), .Y(n3370) );
  NAND2X0_RVT U3888 ( .A1(n3370), .A2(n4377), .Y(n3275) );
  NAND2X0_RVT U3889 ( .A1(n2330), .A2(n3109), .Y(n5319) );
  NAND2X0_RVT U3890 ( .A1(n4450), .A2(n3272), .Y(n3461) );
  INVX1_RVT U3891 ( .A(n5318), .Y(n3273) );
  NAND2X0_RVT U3892 ( .A1(n3273), .A2(n5344), .Y(n3274) );
  NAND4X0_RVT U3893 ( .A1(n4848), .A2(n3275), .A3(n2439), .A4(n3274), .Y(n3276) );
  NAND2X0_RVT U3894 ( .A1(n4726), .A2(n3279), .Y(n5127) );
  NAND2X0_RVT U3895 ( .A1(n4857), .A2(n4847), .Y(n5348) );
  NAND2X0_RVT U3897 ( .A1(n3281), .A2(n3280), .Y(n3584) );
  INVX1_RVT U3898 ( .A(n3584), .Y(n3282) );
  NAND3X0_RVT U3899 ( .A1(n3150), .A2(i_tv80_core_F_7_), .A3(n2476), .Y(n3583)
         );
  NAND4X0_RVT U3901 ( .A1(n3148), .A2(i_tv80_core_IR_3_), .A3(n3103), .A4(
        i_tv80_core_F_0_), .Y(n3284) );
  AND2X1_RVT U3902 ( .A1(n3284), .A2(n3283), .Y(n3582) );
  NAND3X0_RVT U3903 ( .A1(n4358), .A2(n2746), .A3(n3103), .Y(n3286) );
  AND2X1_RVT U3904 ( .A1(n3286), .A2(n3285), .Y(n3581) );
  NAND3X0_RVT U3905 ( .A1(n2693), .A2(n3666), .A3(n2699), .Y(n4871) );
  INVX1_RVT U3906 ( .A(n4871), .Y(n5049) );
  NAND3X0_RVT U3907 ( .A1(n5049), .A2(n2521), .A3(n5322), .Y(n3287) );
  AND3X1_RVT U3908 ( .A1(n5320), .A2(n3287), .A3(n2558), .Y(n4384) );
  NAND3X0_RVT U3909 ( .A1(n4384), .A2(n4848), .A3(n3289), .Y(n3311) );
  NAND4X0_RVT U3910 ( .A1(n2583), .A2(n3290), .A3(n2400), .A4(n2598), .Y(n3310) );
  NAND2X0_RVT U3911 ( .A1(mcycle_0_), .A2(n3328), .Y(n3373) );
  INVX1_RVT U3912 ( .A(n3373), .Y(n3291) );
  NAND3X0_RVT U3913 ( .A1(n3292), .A2(n5049), .A3(n3291), .Y(n3308) );
  INVX1_RVT U3914 ( .A(n3293), .Y(n3294) );
  AO21X1_RVT U3915 ( .A1(n3116), .A2(n3410), .A3(n3294), .Y(n4753) );
  INVX1_RVT U3916 ( .A(n4753), .Y(n5309) );
  INVX1_RVT U3917 ( .A(n3295), .Y(n3296) );
  AO21X1_RVT U3918 ( .A1(n3116), .A2(n3297), .A3(n3296), .Y(n3463) );
  INVX1_RVT U3919 ( .A(n3463), .Y(n3298) );
  NAND2X0_RVT U3920 ( .A1(n5309), .A2(n3298), .Y(n3302) );
  AND3X1_RVT U3921 ( .A1(n3299), .A2(n2300), .A3(n4385), .Y(n3300) );
  NAND3X0_RVT U3922 ( .A1(n4410), .A2(n5306), .A3(n3300), .Y(n3301) );
  AOI22X1_RVT U3923 ( .A1(n3302), .A2(n4377), .A3(n3301), .A4(n3313), .Y(n3307) );
  NAND2X0_RVT U3924 ( .A1(n2535), .A2(n3328), .Y(n4114) );
  NAND2X0_RVT U3925 ( .A1(n277), .A2(n3332), .Y(n4310) );
  INVX1_RVT U3926 ( .A(n5056), .Y(n3304) );
  NAND2X0_RVT U3927 ( .A1(n3304), .A2(n4864), .Y(n4107) );
  OA21X1_RVT U3928 ( .A1(n5315), .A2(n2439), .A3(n4107), .Y(n3305) );
  OA221X1_RVT U3929 ( .A1(n5311), .A2(n2706), .A3(n4310), .A4(n2300), .A5(
        n3305), .Y(n3306) );
  NAND4X0_RVT U3930 ( .A1(n3308), .A2(n5318), .A3(n3307), .A4(n3306), .Y(n3309) );
  OR3X1_RVT U3931 ( .A1(n3311), .A2(n3309), .A3(n3310), .Y(n3322) );
  NAND2X0_RVT U3932 ( .A1(n3312), .A2(n5358), .Y(n3385) );
  NAND2X0_RVT U3933 ( .A1(n3661), .A2(n3385), .Y(n3320) );
  OA22X1_RVT U3934 ( .A1(n5358), .A2(n4306), .A3(n5344), .A4(n4305), .Y(n3319)
         );
  INVX1_RVT U3935 ( .A(n3457), .Y(n4323) );
  INVX1_RVT U3936 ( .A(n3313), .Y(n3317) );
  NAND2X0_RVT U3937 ( .A1(n4775), .A2(n3314), .Y(n3316) );
  AND4X1_RVT U3938 ( .A1(n2669), .A2(n3317), .A3(n4323), .A4(n5345), .Y(n3318)
         );
  NAND4X0_RVT U3939 ( .A1(n3318), .A2(n4822), .A3(n3319), .A4(n3320), .Y(n3321) );
  NAND2X0_RVT U3940 ( .A1(n5151), .A2(n3324), .Y(n1411) );
  INVX1_RVT U3941 ( .A(n1411), .Y(n5379) );
  INVX1_RVT U3942 ( .A(n3371), .Y(n3435) );
  NAND3X0_RVT U3943 ( .A1(n3435), .A2(n3142), .A3(n4745), .Y(n3506) );
  INVX1_RVT U3944 ( .A(n3506), .Y(n4130) );
  NAND3X0_RVT U3945 ( .A1(i_tv80_core_IncDecZ), .A2(n5315), .A3(n4130), .Y(
        n3330) );
  NAND3X0_RVT U3946 ( .A1(n4875), .A2(n4877), .A3(n4876), .Y(n3329) );
  NAND3X0_RVT U3947 ( .A1(n120), .A2(n3330), .A3(n3329), .Y(n4290) );
  NAND2X0_RVT U3948 ( .A1(n197), .A2(n5366), .Y(n3628) );
  NAND2X0_RVT U3949 ( .A1(n5226), .A2(n3628), .Y(n3335) );
  NAND2X0_RVT U3950 ( .A1(n335), .A2(i_tv80_core_IStatus_1_), .Y(n4873) );
  INVX1_RVT U3951 ( .A(n4310), .Y(n4889) );
  AO21X1_RVT U3952 ( .A1(n4873), .A2(n3332), .A3(n4889), .Y(n3333) );
  NAND3X0_RVT U3953 ( .A1(halt_n), .A2(n3333), .A3(n3146), .Y(n3334) );
  NAND2X0_RVT U3954 ( .A1(wait_n), .A2(n5333), .Y(n4892) );
  NAND2X0_RVT U3955 ( .A1(reset_n), .A2(n5132), .Y(n4338) );
  AOI21X1_RVT U3956 ( .A1(n3335), .A2(n3334), .A3(n4440), .Y(n4441) );
  AND4X1_RVT U3957 ( .A1(n336), .A2(i_tv80_core_IntCycle), .A3(
        i_tv80_core_IStatus_0_), .A4(n3147), .Y(n3336) );
  AO221X1_RVT U3958 ( .A1(di_4_), .A2(n4441), .A3(n4440), .A4(n3148), .A5(
        n2407), .Y(n2155) );
  AO221X1_RVT U3959 ( .A1(di_5_), .A2(n4441), .A3(n4440), .A4(n3126), .A5(
        n2407), .Y(n2154) );
  AO221X1_RVT U3960 ( .A1(di_6_), .A2(n4441), .A3(n4440), .A4(
        i_tv80_core_IR_6_), .A5(n2407), .Y(n2153) );
  AO221X1_RVT U3961 ( .A1(di_7_), .A2(n4441), .A3(n4440), .A4(
        i_tv80_core_IR_7_), .A5(n2407), .Y(n2162) );
  AO221X1_RVT U3962 ( .A1(di_1_), .A2(n4441), .A3(n4440), .A4(n2472), .A5(
        n2407), .Y(n2158) );
  AO221X1_RVT U3963 ( .A1(di_2_), .A2(n4441), .A3(n4440), .A4(
        i_tv80_core_IR_2_), .A5(n2407), .Y(n2157) );
  INVX1_RVT U3964 ( .A(wait_n), .Y(n5300) );
  NAND2X0_RVT U3965 ( .A1(n5333), .A2(n5300), .Y(n5335) );
  NAND2X0_RVT U3966 ( .A1(n2296), .A2(n5335), .Y(n5370) );
  NAND3X0_RVT U3967 ( .A1(n3138), .A2(n3109), .A3(n2351), .Y(n4295) );
  AND2X1_RVT U3968 ( .A1(n2564), .A2(n4295), .Y(n3343) );
  NAND2X0_RVT U3969 ( .A1(n2351), .A2(n4450), .Y(n3339) );
  AND3X1_RVT U3970 ( .A1(i_tv80_core_IntE), .A2(i_tv80_core_INT_s), .A3(n4340), 
        .Y(n3338) );
  NAND3X0_RVT U3971 ( .A1(n3339), .A2(n4337), .A3(n3338), .Y(n4297) );
  INVX1_RVT U3972 ( .A(n4297), .Y(n4302) );
  NAND2X0_RVT U3973 ( .A1(n4302), .A2(n4301), .Y(n3341) );
  OA21X1_RVT U3974 ( .A1(n4485), .A2(n3339), .A3(n4295), .Y(n3340) );
  AND2X1_RVT U3975 ( .A1(n3340), .A2(n3156), .Y(n4300) );
  INVX1_RVT U3976 ( .A(n3399), .Y(n3346) );
  INVX1_RVT U3977 ( .A(n3344), .Y(n3345) );
  AO21X1_RVT U3978 ( .A1(n3346), .A2(n5366), .A3(n3345), .Y(n3361) );
  INVX1_RVT U3979 ( .A(n3429), .Y(n3364) );
  INVX1_RVT U3980 ( .A(n3406), .Y(n3403) );
  NAND2X0_RVT U3981 ( .A1(n3347), .A2(n2323), .Y(n3400) );
  NAND2X0_RVT U3982 ( .A1(n3403), .A2(n3400), .Y(n3357) );
  NAND2X0_RVT U3983 ( .A1(n4416), .A2(n3357), .Y(n5302) );
  NAND3X0_RVT U3984 ( .A1(n4416), .A2(n5366), .A3(n3348), .Y(n3349) );
  OAI221X1_RVT U3985 ( .A1(n5344), .A2(n5302), .A3(n4323), .A4(n5328), .A5(
        n3349), .Y(n3425) );
  AO221X1_RVT U3986 ( .A1(n4416), .A2(n3361), .A3(n3143), .A4(n3350), .A5(
        n3425), .Y(n3351) );
  AND2X1_RVT U3987 ( .A1(n2402), .A2(n3351), .Y(n5381) );
  NAND2X0_RVT U3988 ( .A1(n3352), .A2(n5358), .Y(n3356) );
  NAND3X0_RVT U3989 ( .A1(n5315), .A2(n5358), .A3(n3353), .Y(n3354) );
  NAND2X0_RVT U3990 ( .A1(n3355), .A2(n3354), .Y(n3420) );
  INVX1_RVT U3991 ( .A(n3357), .Y(n3359) );
  NAND2X0_RVT U3992 ( .A1(n2535), .A2(n5303), .Y(n4291) );
  INVX1_RVT U3993 ( .A(n4291), .Y(n3358) );
  OA22X1_RVT U3994 ( .A1(n3359), .A2(n2725), .A3(n5366), .A4(n3402), .Y(n3360)
         );
  NAND3X0_RVT U3995 ( .A1(n2714), .A2(n3399), .A3(n3360), .Y(n3362) );
  AO21X1_RVT U3996 ( .A1(n3150), .A2(n3362), .A3(n3361), .Y(n3363) );
  AO221X1_RVT U3997 ( .A1(n3365), .A2(n5366), .A3(n3364), .A4(n5315), .A5(
        n3363), .Y(n3396) );
  INVX1_RVT U3998 ( .A(n5068), .Y(n3392) );
  NAND2X0_RVT U4001 ( .A1(n3392), .A2(n5407), .Y(n5339) );
  INVX1_RVT U4002 ( .A(n5339), .Y(n5076) );
  NAND2X0_RVT U4003 ( .A1(n3368), .A2(n3367), .Y(n3541) );
  INVX1_RVT U4004 ( .A(n3541), .Y(n4750) );
  NAND4X0_RVT U4005 ( .A1(n4750), .A2(n4831), .A3(n3440), .A4(n3430), .Y(n3383) );
  INVX1_RVT U4006 ( .A(n3369), .Y(n3372) );
  INVX1_RVT U4007 ( .A(n3370), .Y(n4732) );
  NAND2X0_RVT U4008 ( .A1(n2439), .A2(n5318), .Y(n4734) );
  INVX1_RVT U4009 ( .A(n4734), .Y(n4400) );
  OA22X1_RVT U4010 ( .A1(n5320), .A2(n3373), .A3(n5407), .A4(n5050), .Y(n3374)
         );
  NAND4X0_RVT U4011 ( .A1(n2563), .A2(n4848), .A3(n2677), .A4(n3374), .Y(n3382) );
  AND3X1_RVT U4012 ( .A1(n4383), .A2(n4333), .A3(n4478), .Y(n3378) );
  AND3X1_RVT U4013 ( .A1(n3376), .A2(n3375), .A3(n2606), .Y(n3377) );
  NAND4X0_RVT U4014 ( .A1(n3380), .A2(n3379), .A3(n3378), .A4(n3377), .Y(n3381) );
  OR3X1_RVT U4015 ( .A1(n3381), .A2(n3383), .A3(n3382), .Y(n3398) );
  INVX1_RVT U4016 ( .A(n3384), .Y(n4324) );
  NAND2X0_RVT U4017 ( .A1(n2321), .A2(n3385), .Y(n3387) );
  AND4X1_RVT U4018 ( .A1(n4323), .A2(n3388), .A3(n3387), .A4(n3386), .Y(n3389)
         );
  AO21X1_RVT U4019 ( .A1(n3390), .A2(n4775), .A3(n3407), .Y(n3391) );
  NAND2X0_RVT U4020 ( .A1(n3392), .A2(i_tv80_core_ISet_1_), .Y(n4391) );
  NAND2X0_RVT U4021 ( .A1(n2702), .A2(n4391), .Y(n3394) );
  INVX1_RVT U4022 ( .A(n5345), .Y(n4373) );
  NAND2X0_RVT U4023 ( .A1(n5315), .A2(n4373), .Y(n3412) );
  INVX1_RVT U4024 ( .A(n3412), .Y(n3393) );
  NAND2X0_RVT U4025 ( .A1(n3393), .A2(i_tv80_core_ISet_1_), .Y(n3438) );
  INVX1_RVT U4026 ( .A(n3438), .Y(n4048) );
  AO221X1_RVT U4027 ( .A1(n3394), .A2(n3150), .A3(n3436), .A4(n2577), .A5(
        n4048), .Y(n3395) );
  AO221X1_RVT U4028 ( .A1(n4416), .A2(n3396), .A3(n5076), .A4(n3151), .A5(
        n3395), .Y(n4104) );
  AND2X1_RVT U4029 ( .A1(n2402), .A2(n4104), .Y(n5386) );
  AO221X1_RVT U4030 ( .A1(n3148), .A2(n3398), .A3(n3525), .A4(n3122), .A5(
        n3397), .Y(n3417) );
  OA22X1_RVT U4031 ( .A1(n2725), .A2(n3400), .A3(n5366), .A4(n3399), .Y(n3401)
         );
  NAND4X0_RVT U4032 ( .A1(n2714), .A2(n3403), .A3(n3402), .A4(n3401), .Y(n3404) );
  AO222X1_RVT U4033 ( .A1(n5315), .A2(n3406), .A3(n5366), .A4(n3405), .A5(
        n3148), .A6(n3404), .Y(n3416) );
  INVX1_RVT U4034 ( .A(n3407), .Y(n3408) );
  NAND3X0_RVT U4035 ( .A1(n5407), .A2(n4322), .A3(n3408), .Y(n3414) );
  INVX1_RVT U4036 ( .A(n3409), .Y(n5100) );
  NAND2X0_RVT U4037 ( .A1(n5366), .A2(n4775), .Y(n5081) );
  NAND3X0_RVT U4038 ( .A1(n5407), .A2(n3410), .A3(n4742), .Y(n3411) );
  NAND3X0_RVT U4039 ( .A1(n2573), .A2(n3412), .A3(n3411), .Y(n3413) );
  AO221X1_RVT U4040 ( .A1(n3148), .A2(n3414), .A3(n5100), .A4(n2338), .A5(
        n3413), .Y(n3415) );
  AO222X1_RVT U4041 ( .A1(n3143), .A2(n3417), .A3(n4416), .A4(n3416), .A5(
        n3151), .A6(n3415), .Y(n3418) );
  AND2X1_RVT U4042 ( .A1(n2402), .A2(n3418), .Y(n5385) );
  NAND2X0_RVT U4043 ( .A1(n2494), .A2(n3142), .Y(n3423) );
  NAND2X0_RVT U4044 ( .A1(n4416), .A2(n5358), .Y(n3421) );
  OA221X1_RVT U4045 ( .A1(n2725), .A2(n5302), .A3(n5407), .A4(n4391), .A5(
        n2702), .Y(n3419) );
  OA221X1_RVT U4046 ( .A1(n2547), .A2(n3421), .A3(n4847), .A4(n3420), .A5(
        n3419), .Y(n3422) );
  AND2X1_RVT U4047 ( .A1(n2573), .A2(n5339), .Y(n3427) );
  OA21X1_RVT U4048 ( .A1(n3427), .A2(n489), .A3(n3426), .Y(n4353) );
  AO21X1_RVT U4049 ( .A1(n3429), .A2(n3428), .A3(n5344), .Y(n3431) );
  AND2X1_RVT U4050 ( .A1(n3431), .A2(n3430), .Y(n4749) );
  NAND2X0_RVT U4051 ( .A1(n4749), .A2(n3432), .Y(n3453) );
  INVX1_RVT U4052 ( .A(n3453), .Y(n3489) );
  AO21X1_RVT U4053 ( .A1(n5315), .A2(n3434), .A3(n3433), .Y(n4049) );
  NAND2X0_RVT U4054 ( .A1(n3436), .A2(n5407), .Y(n5350) );
  NAND3X0_RVT U4055 ( .A1(n3489), .A2(n2628), .A3(n5350), .Y(n4344) );
  NAND2X0_RVT U4056 ( .A1(n3142), .A2(n4344), .Y(n3437) );
  NAND3X0_RVT U4057 ( .A1(n4353), .A2(n3438), .A3(n3437), .Y(n3439) );
  AND2X1_RVT U4058 ( .A1(n2402), .A2(n3439), .Y(n5384) );
  INVX1_RVT U4059 ( .A(n3440), .Y(n3441) );
  NAND2X0_RVT U4060 ( .A1(n3441), .A2(n3142), .Y(n3938) );
  INVX1_RVT U4061 ( .A(n3938), .Y(n4255) );
  NAND2X0_RVT U4062 ( .A1(n4255), .A2(n3628), .Y(n3932) );
  INVX1_RVT U4063 ( .A(n3932), .Y(n3442) );
  NAND2X0_RVT U4064 ( .A1(n3442), .A2(n3147), .Y(n4173) );
  MUX21X1_RVT U4065 ( .A1(n4260), .A2(n4257), .S0(n4796), .Y(n3443) );
  NAND2X0_RVT U4066 ( .A1(reset_n), .A2(n3443), .Y(n2109) );
  NAND2X0_RVT U4067 ( .A1(n3158), .A2(n4330), .Y(n1147) );
  AO21X1_RVT U4068 ( .A1(n2322), .A2(n3445), .A3(n3444), .Y(n3447) );
  AOI21X1_RVT U4069 ( .A1(n5315), .A2(n3449), .A3(n3541), .Y(n4351) );
  INVX1_RVT U4070 ( .A(n4049), .Y(n3450) );
  INVX1_RVT U4071 ( .A(n4410), .Y(n3485) );
  NAND2X0_RVT U4072 ( .A1(mcycle_0_), .A2(n3451), .Y(n3588) );
  NAND2X0_RVT U4073 ( .A1(n3485), .A2(n2713), .Y(n4346) );
  NAND2X0_RVT U4074 ( .A1(n3473), .A2(n5407), .Y(n4347) );
  INVX1_RVT U4075 ( .A(n4347), .Y(n4849) );
  NAND2X0_RVT U4076 ( .A1(n4849), .A2(n5066), .Y(n3452) );
  NAND3X0_RVT U4077 ( .A1(n2333), .A2(n4346), .A3(n3452), .Y(n3454) );
  AO21X1_RVT U4078 ( .A1(n3454), .A2(n3148), .A3(n3453), .Y(n3455) );
  NAND2X0_RVT U4079 ( .A1(n3455), .A2(n3142), .Y(n3460) );
  NAND2X0_RVT U4080 ( .A1(n5340), .A2(n3617), .Y(n5312) );
  INVX1_RVT U4081 ( .A(n3456), .Y(n3532) );
  NAND3X0_RVT U4082 ( .A1(n3532), .A2(n5315), .A3(n5079), .Y(n3469) );
  INVX1_RVT U4083 ( .A(n3469), .Y(n4355) );
  AO21X1_RVT U4084 ( .A1(n2636), .A2(n5066), .A3(n4355), .Y(n3490) );
  NAND3X0_RVT U4085 ( .A1(n3151), .A2(n3148), .A3(n3490), .Y(n3459) );
  NAND2X0_RVT U4086 ( .A1(n4416), .A2(n2472), .Y(n3458) );
  AO21X1_RVT U4087 ( .A1(n2629), .A2(n5064), .A3(n489), .Y(n4770) );
  INVX1_RVT U4088 ( .A(n1147), .Y(n3467) );
  INVX1_RVT U4089 ( .A(n3462), .Y(n3464) );
  AO222X1_RVT U4090 ( .A1(n3465), .A2(n2338), .A3(n3464), .A4(n5323), .A5(
        n5315), .A6(n3463), .Y(n4345) );
  AND2X1_RVT U4091 ( .A1(n3142), .A2(n4345), .Y(n3466) );
  INVX1_RVT U4092 ( .A(n5064), .Y(n3500) );
  OA21X1_RVT U4093 ( .A1(n3466), .A2(n2720), .A3(n2402), .Y(n3494) );
  AO221X1_RVT U4094 ( .A1(n2402), .A2(n5422), .A3(i_tv80_core_Read_To_Reg_r_1_), .A4(n3467), .A5(n3494), .Y(n2140) );
  MUX21X1_RVT U4095 ( .A1(n5323), .A2(n4864), .S0(n2476), .Y(n3468) );
  NAND3X0_RVT U4096 ( .A1(n4450), .A2(n3468), .A3(n4742), .Y(n3471) );
  OA22X1_RVT U4097 ( .A1(n3114), .A2(n3469), .A3(n5344), .A4(n5068), .Y(n3470)
         );
  NAND3X0_RVT U4098 ( .A1(n2629), .A2(n3471), .A3(n3470), .Y(n3481) );
  NAND2X0_RVT U4099 ( .A1(n4383), .A2(n4410), .Y(n3472) );
  NAND3X0_RVT U4100 ( .A1(n5087), .A2(n2338), .A3(n3472), .Y(n3478) );
  NAND2X0_RVT U4101 ( .A1(n3473), .A2(n5066), .Y(n3474) );
  NAND4X0_RVT U4102 ( .A1(n3474), .A2(n4410), .A3(n5050), .A4(n5056), .Y(n3475) );
  NAND2X0_RVT U4103 ( .A1(n5315), .A2(n3475), .Y(n3477) );
  OA22X1_RVT U4104 ( .A1(n3114), .A2(n2556), .A3(n5340), .A4(n3482), .Y(n3476)
         );
  NAND4X0_RVT U4105 ( .A1(n3489), .A2(n3478), .A3(n3477), .A4(n3476), .Y(n3480) );
  NAND2X0_RVT U4106 ( .A1(n4416), .A2(n2316), .Y(n5072) );
  INVX1_RVT U4107 ( .A(n5072), .Y(n3479) );
  AO221X1_RVT U4108 ( .A1(n3152), .A2(n3481), .A3(n3142), .A4(n3480), .A5(
        n3479), .Y(n3996) );
  AO21X1_RVT U4109 ( .A1(n2402), .A2(n3996), .A3(n3494), .Y(n5389) );
  AO21X1_RVT U4110 ( .A1(n5340), .A2(n5344), .A3(n5056), .Y(n4766) );
  INVX1_RVT U4111 ( .A(n4766), .Y(n3483) );
  AO21X1_RVT U4112 ( .A1(n3485), .A2(n5315), .A3(n4849), .Y(n3495) );
  INVX1_RVT U4113 ( .A(n3495), .Y(n3486) );
  OA22X1_RVT U4114 ( .A1(n5087), .A2(n3486), .A3(n5303), .A4(n4410), .Y(n3487)
         );
  OA22X1_RVT U4115 ( .A1(n3487), .A2(n3103), .A3(n3103), .A4(n2556), .Y(n3488)
         );
  NAND4X0_RVT U4116 ( .A1(n3488), .A2(n2635), .A3(n5350), .A4(n3489), .Y(n3493) );
  NAND2X0_RVT U4117 ( .A1(n3127), .A2(n3490), .Y(n3491) );
  NAND3X0_RVT U4118 ( .A1(n2629), .A2(n5339), .A3(n3491), .Y(n3492) );
  AO222X1_RVT U4119 ( .A1(n3493), .A2(n3142), .A3(n3152), .A4(n3492), .A5(
        n4416), .A6(i_tv80_core_IR_2_), .Y(i_tv80_core_N1102) );
  AO21X1_RVT U4120 ( .A1(n2402), .A2(i_tv80_core_N1102), .A3(n3494), .Y(n5388)
         );
  NAND2X0_RVT U4121 ( .A1(n3143), .A2(n3495), .Y(n3497) );
  NAND2X0_RVT U4122 ( .A1(n2636), .A2(i_tv80_core_ISet_1_), .Y(n4352) );
  NAND2X0_RVT U4123 ( .A1(n3497), .A2(n4352), .Y(n3991) );
  INVX1_RVT U4124 ( .A(n3991), .Y(n3496) );
  OA22X1_RVT U4125 ( .A1(n3152), .A2(n3497), .A3(n3500), .A4(n3496), .Y(n3501)
         );
  INVX1_RVT U4126 ( .A(n4352), .Y(n3498) );
  NAND2X0_RVT U4127 ( .A1(n3498), .A2(n5351), .Y(n3499) );
  OAI22X1_RVT U4128 ( .A1(n3501), .A2(n4345), .A3(n3500), .A4(n3499), .Y(n3502) );
  AND3X1_RVT U4129 ( .A1(n2402), .A2(n5087), .A3(n3502), .Y(n5390) );
  MUX21X1_RVT U4130 ( .A1(n3504), .A2(n3503), .S0(n4796), .Y(n3505) );
  NAND2X0_RVT U4131 ( .A1(n3156), .A2(n3505), .Y(n2106) );
  NAND3X0_RVT U4132 ( .A1(tstate_0_), .A2(n194), .A3(n197), .Y(n5336) );
  INVX1_RVT U4133 ( .A(n5336), .Y(n5097) );
  NAND3X0_RVT U4134 ( .A1(n5097), .A2(n2536), .A3(n3661), .Y(n4812) );
  INVX1_RVT U4135 ( .A(n4068), .Y(n4782) );
  AO21X1_RVT U4136 ( .A1(n3506), .A2(i_tv80_core_Save_ALU_r), .A3(n4782), .Y(
        n4183) );
  NAND2X0_RVT U4137 ( .A1(n4812), .A2(n4183), .Y(n4806) );
  INVX1_RVT U4138 ( .A(n4806), .Y(n3531) );
  NAND3X0_RVT U4139 ( .A1(n4257), .A2(i_tv80_core_BusA_3_), .A3(n3542), .Y(
        n3508) );
  NAND2X0_RVT U4140 ( .A1(i_tv80_core_BusA_2_), .A2(i_tv80_core_BusA_1_), .Y(
        n3543) );
  NAND4X0_RVT U4141 ( .A1(n3708), .A2(i_tv80_core_F_1_), .A3(n3543), .A4(
        i_tv80_core_F_4_), .Y(n3507) );
  NAND2X0_RVT U4142 ( .A1(i_tv80_core_ALU_Op_r_2_), .A2(n509), .Y(n3510) );
  INVX1_RVT U4143 ( .A(n3510), .Y(n3547) );
  NAND2X0_RVT U4144 ( .A1(n3547), .A2(n514), .Y(n3520) );
  AO21X1_RVT U4145 ( .A1(n3508), .A2(n3507), .A3(n4067), .Y(n3524) );
  NAND3X0_RVT U4146 ( .A1(i_tv80_core_ALU_Op_r_2_), .A2(
        i_tv80_core_ALU_Op_r_1_), .A3(i_tv80_core_ALU_Op_r_0_), .Y(n4783) );
  INVX1_RVT U4147 ( .A(n4783), .Y(n3535) );
  NAND2X0_RVT U4148 ( .A1(n3535), .A2(i_tv80_core_ALU_Op_r_3_), .Y(n3509) );
  NAND3X0_RVT U4149 ( .A1(n3866), .A2(n3863), .A3(n3509), .Y(n4145) );
  NAND2X0_RVT U4150 ( .A1(n4145), .A2(i_tv80_core_F_4_), .Y(n3523) );
  NAND2X0_RVT U4151 ( .A1(i_tv80_core_ALU_Op_r_1_), .A2(n3510), .Y(n4256) );
  INVX1_RVT U4152 ( .A(n3516), .Y(n3715) );
  INVX1_RVT U4153 ( .A(n3512), .Y(n3689) );
  NAND2X0_RVT U4154 ( .A1(n3689), .A2(n3709), .Y(n3713) );
  INVX1_RVT U4155 ( .A(n3713), .Y(n3511) );
  NAND2X0_RVT U4156 ( .A1(i_tv80_core_i_alu_N185), .A2(n3645), .Y(n3685) );
  NAND2X0_RVT U4157 ( .A1(n3512), .A2(i_tv80_core_BusA_1_), .Y(n3711) );
  NAND3X0_RVT U4158 ( .A1(i_tv80_core_ALU_Op_r_0_), .A2(n4202), .A3(
        i_tv80_core_F_0_), .Y(n3514) );
  AND2X1_RVT U4159 ( .A1(i_tv80_core_F_0_), .A2(i_tv80_core_ALU_Op_r_0_), .Y(
        n3513) );
  AO22X1_RVT U4160 ( .A1(n3514), .A2(i_tv80_core_ALU_Op_r_1_), .A3(n3513), 
        .A4(n2411), .Y(n3687) );
  NAND2X0_RVT U4161 ( .A1(n3688), .A2(n3687), .Y(n3515) );
  NAND3X0_RVT U4162 ( .A1(n3685), .A2(n3711), .A3(n3515), .Y(n3798) );
  NAND2X0_RVT U4163 ( .A1(i_tv80_core_BusA_2_), .A2(n3516), .Y(n3796) );
  INVX1_RVT U4164 ( .A(n3796), .Y(n3517) );
  AO21X1_RVT U4165 ( .A1(n2757), .A2(n3798), .A3(n3517), .Y(n3743) );
  INVX1_RVT U4166 ( .A(n3518), .Y(n3742) );
  NAND2X0_RVT U4167 ( .A1(n3742), .A2(n3708), .Y(n3791) );
  NAND2X0_RVT U4168 ( .A1(i_tv80_core_BusA_3_), .A2(n3518), .Y(n3793) );
  INVX1_RVT U4169 ( .A(n3793), .Y(n3519) );
  AO21X1_RVT U4170 ( .A1(n3743), .A2(n3791), .A3(n3519), .Y(n3550) );
  AO21X1_RVT U4171 ( .A1(n3521), .A2(n3520), .A3(i_tv80_core_ALU_Op_r_3_), .Y(
        n3522) );
  NAND4X0_RVT U4172 ( .A1(n3524), .A2(n4068), .A3(n3523), .A4(n3522), .Y(n3530) );
  NAND2X0_RVT U4173 ( .A1(n2659), .A2(n3526), .Y(n3527) );
  NAND2X0_RVT U4174 ( .A1(i_tv80_core_F_0_), .A2(n3527), .Y(n4050) );
  INVX1_RVT U4175 ( .A(n3527), .Y(n3528) );
  AO21X1_RVT U4176 ( .A1(n2659), .A2(n3945), .A3(n3528), .Y(n4804) );
  NAND2X0_RVT U4177 ( .A1(n4050), .A2(n4804), .Y(n3529) );
  AO22X1_RVT U4178 ( .A1(n3531), .A2(n3530), .A3(n2571), .A4(n3529), .Y(n3534)
         );
  NAND3X0_RVT U4179 ( .A1(n2532), .A2(n3151), .A3(n2356), .Y(n5326) );
  INVX1_RVT U4180 ( .A(n5326), .Y(n4838) );
  AND2X1_RVT U4181 ( .A1(n4261), .A2(n2415), .Y(n3533) );
  AO22X1_RVT U4182 ( .A1(n3534), .A2(n4261), .A3(n3533), .A4(n4255), .Y(n3559)
         );
  NAND3X0_RVT U4183 ( .A1(n497), .A2(n493), .A3(n2794), .Y(n3902) );
  NAND2X0_RVT U4184 ( .A1(i_tv80_core_Read_To_Reg_r_2_), .A2(
        i_tv80_core_Read_To_Reg_r_1_), .Y(n4533) );
  INVX1_RVT U4185 ( .A(n4533), .Y(n3539) );
  NAND2X0_RVT U4186 ( .A1(n2795), .A2(n3539), .Y(n5095) );
  NAND3X0_RVT U4187 ( .A1(n497), .A2(i_tv80_core_Read_To_Reg_r_0_), .A3(n2794), 
        .Y(n5099) );
  NAND2X0_RVT U4188 ( .A1(n5097), .A2(n3537), .Y(n3536) );
  OAI22X1_RVT U4189 ( .A1(n2791), .A2(n3537), .A3(i_tv80_core_Auto_Wait_t1), 
        .A4(n3536), .Y(n3538) );
  NAND2X0_RVT U4190 ( .A1(n2796), .A2(n3539), .Y(n3929) );
  NAND3X0_RVT U4191 ( .A1(i_tv80_core_Read_To_Reg_r_0_), .A2(
        i_tv80_core_Read_To_Reg_r_1_), .A3(n2794), .Y(n3632) );
  NAND3X0_RVT U4192 ( .A1(n2726), .A2(n3929), .A3(n3632), .Y(n3631) );
  INVX1_RVT U4193 ( .A(n3632), .Y(n3540) );
  NAND2X0_RVT U4194 ( .A1(n3540), .A2(n2790), .Y(n4814) );
  INVX1_RVT U4195 ( .A(n4814), .Y(n4277) );
  NAND2X0_RVT U4196 ( .A1(n3142), .A2(n3541), .Y(n3557) );
  NAND3X0_RVT U4197 ( .A1(n3543), .A2(n3708), .A3(n3776), .Y(n3544) );
  INVX1_RVT U4198 ( .A(n3544), .Y(n3739) );
  NAND2X0_RVT U4199 ( .A1(n3739), .A2(n3795), .Y(n3785) );
  INVX1_RVT U4200 ( .A(n3785), .Y(n3784) );
  NAND2X0_RVT U4201 ( .A1(n3730), .A2(n3709), .Y(n3733) );
  NAND2X0_RVT U4202 ( .A1(n2363), .A2(n2314), .Y(n3777) );
  NAND2X0_RVT U4203 ( .A1(n2746), .A2(n3126), .Y(n4151) );
  AND2X1_RVT U4204 ( .A1(n3545), .A2(n3866), .Y(n3546) );
  MUX21X1_RVT U4205 ( .A1(n3708), .A2(n3831), .S0(n3150), .Y(n4185) );
  OA222X1_RVT U4206 ( .A1(n4210), .A2(n4067), .A3(n308), .A4(n3546), .A5(n4185), .A6(n3868), .Y(n3556) );
  NAND3X0_RVT U4207 ( .A1(i_tv80_core_ALU_Op_r_2_), .A2(n514), .A3(
        i_tv80_core_ALU_Op_r_0_), .Y(n3548) );
  NAND2X0_RVT U4208 ( .A1(n3547), .A2(i_tv80_core_ALU_Op_r_1_), .Y(n3549) );
  AO21X1_RVT U4209 ( .A1(n3548), .A2(n3549), .A3(n4148), .Y(n4069) );
  AO21X1_RVT U4210 ( .A1(n308), .A2(n3884), .A3(n3883), .Y(n3554) );
  AO221X1_RVT U4211 ( .A1(i_tv80_core_BusA_4_), .A2(n3882), .A3(n3795), .A4(
        n3884), .A5(n3883), .Y(n3553) );
  XNOR3X1_RVT U4212 ( .A1(i_tv80_core_BusA_4_), .A2(n2750), .A3(n3550), .Y(
        n3552) );
  OA222X1_RVT U4213 ( .A1(n3795), .A2(n4069), .A3(i_tv80_core_ALU_Op_r_3_), 
        .A4(n2773), .A5(n3866), .A6(n4151), .Y(n3555) );
  NAND2X0_RVT U4214 ( .A1(n3556), .A2(n3555), .Y(n3558) );
  INVX1_RVT U4215 ( .A(n3557), .Y(n3898) );
  AO222X1_RVT U4216 ( .A1(n2768), .A2(di_reg_4_), .A3(n2769), .A4(n3558), .A5(
        i_tv80_core_BusB_4_), .A6(n3898), .Y(n5116) );
  AO221X1_RVT U4217 ( .A1(n3559), .A2(n4360), .A3(n4277), .A4(n5116), .A5(
        n3159), .Y(n3563) );
  INVX1_RVT U4218 ( .A(n3560), .Y(n3561) );
  NAND3X0_RVT U4219 ( .A1(n2440), .A2(n3143), .A3(n3561), .Y(n3931) );
  NAND4X0_RVT U4220 ( .A1(n4254), .A2(n3932), .A3(n3931), .A4(n4812), .Y(n3562) );
  AO21X1_RVT U4221 ( .A1(n4277), .A2(n3147), .A3(n3159), .Y(n4170) );
  AO21X1_RVT U4222 ( .A1(n2402), .A2(n4804), .A3(n4170), .Y(n4077) );
  AO21X1_RVT U4223 ( .A1(n3146), .A2(n3562), .A3(n4077), .Y(n4794) );
  MUX21X1_RVT U4224 ( .A1(n3563), .A2(i_tv80_core_F_4_), .S0(n2561), .Y(n2116)
         );
  NAND2X0_RVT U4225 ( .A1(n3158), .A2(n4892), .Y(n3564) );
  INVX1_RVT U4226 ( .A(n3564), .Y(n4010) );
  AO22X1_RVT U4227 ( .A1(n2665), .A2(di_3_), .A3(n4010), .A4(di_reg_3_), .Y(
        n2176) );
  AO22X1_RVT U4228 ( .A1(di_6_), .A2(n2665), .A3(n4010), .A4(di_reg_6_), .Y(
        n2173) );
  AO22X1_RVT U4229 ( .A1(di_5_), .A2(n2665), .A3(n4010), .A4(di_reg_5_), .Y(
        n2174) );
  AO22X1_RVT U4230 ( .A1(n2665), .A2(di_0_), .A3(n4010), .A4(di_reg_0_), .Y(
        n2179) );
  INVX1_RVT U4231 ( .A(n3902), .Y(n3565) );
  NAND2X0_RVT U4232 ( .A1(n3565), .A2(n2790), .Y(n3636) );
  AND2X1_RVT U4233 ( .A1(tstate_2_), .A2(n5366), .Y(n3625) );
  NAND2X0_RVT U4234 ( .A1(n2488), .A2(n2452), .Y(n3568) );
  INVX1_RVT U4235 ( .A(n3566), .Y(n3567) );
  AO222X1_RVT U4236 ( .A1(n2747), .A2(n2758), .A3(n2503), .A4(n3568), .A5(
        n3567), .A6(n2734), .Y(n3569) );
  NAND2X0_RVT U4237 ( .A1(n4119), .A2(n3569), .Y(n3662) );
  AND2X1_RVT U4238 ( .A1(n3571), .A2(n4117), .Y(n3573) );
  NAND2X0_RVT U4239 ( .A1(n4838), .A2(n4119), .Y(n3572) );
  OA22X1_RVT U4240 ( .A1(n5328), .A2(n3662), .A3(n3573), .A4(n3572), .Y(n4461)
         );
  AO21X1_RVT U4241 ( .A1(n3576), .A2(n3601), .A3(n3575), .Y(n3577) );
  NAND2X0_RVT U4242 ( .A1(n2385), .A2(n4443), .Y(n4466) );
  NAND2X0_RVT U4243 ( .A1(n4461), .A2(n4460), .Y(n4487) );
  INVX1_RVT U4244 ( .A(n4487), .Y(n4442) );
  OA22X1_RVT U4245 ( .A1(n3582), .A2(n5303), .A3(n3581), .A4(n5303), .Y(n3587)
         );
  NAND2X0_RVT U4246 ( .A1(n5322), .A2(n3584), .Y(n3585) );
  NAND4X0_RVT U4247 ( .A1(n3587), .A2(n3586), .A3(n3585), .A4(n5340), .Y(n4456) );
  NAND2X0_RVT U4248 ( .A1(n3589), .A2(n3613), .Y(n3590) );
  NAND3X0_RVT U4249 ( .A1(n2378), .A2(n3590), .A3(n4742), .Y(n3623) );
  NAND2X0_RVT U4250 ( .A1(n3591), .A2(n2744), .Y(n3597) );
  NAND2X0_RVT U4251 ( .A1(n3592), .A2(n2533), .Y(n3595) );
  AO21X1_RVT U4252 ( .A1(n434), .A2(n3114), .A3(n2472), .Y(n3594) );
  AND2X1_RVT U4253 ( .A1(i_tv80_core_IR_2_), .A2(i_tv80_core_IR_0_), .Y(n3593)
         );
  NAND3X0_RVT U4254 ( .A1(n3595), .A2(n3594), .A3(n3593), .Y(n3596) );
  NAND2X0_RVT U4255 ( .A1(n3597), .A2(n3596), .Y(n3606) );
  OR2X1_RVT U4256 ( .A1(n3598), .A2(n2373), .Y(n3599) );
  OA21X1_RVT U4257 ( .A1(n5066), .A2(n3600), .A3(n3599), .Y(n3604) );
  OR2X1_RVT U4258 ( .A1(n3601), .A2(n3598), .Y(n3603) );
  NAND3X0_RVT U4259 ( .A1(n3126), .A2(i_tv80_core_IR_7_), .A3(n2377), .Y(n3602) );
  NAND3X0_RVT U4260 ( .A1(n3605), .A2(n3606), .A3(n4745), .Y(n3622) );
  AND2X1_RVT U4261 ( .A1(n2532), .A2(n2535), .Y(n3612) );
  NAND2X0_RVT U4263 ( .A1(n2528), .A2(n4724), .Y(n3607) );
  NAND4X0_RVT U4264 ( .A1(n3607), .A2(n3609), .A3(n3608), .A4(n4404), .Y(n3611) );
  AND2X1_RVT U4265 ( .A1(i_tv80_core_IR_7_), .A2(i_tv80_core_IR_6_), .Y(n3610)
         );
  AO22X1_RVT U4266 ( .A1(n2383), .A2(n2532), .A3(n2756), .A4(n3328), .Y(n3615)
         );
  INVX1_RVT U4267 ( .A(n3613), .Y(n3614) );
  NAND3X0_RVT U4268 ( .A1(n3615), .A2(n3614), .A3(n2528), .Y(n3671) );
  NAND3X0_RVT U4269 ( .A1(n2535), .A2(mcycle_0_), .A3(mcycle_1_), .Y(n3618) );
  NAND2X0_RVT U4270 ( .A1(n3617), .A2(n3618), .Y(n3619) );
  NAND3X0_RVT U4271 ( .A1(n2523), .A2(n3109), .A3(n3619), .Y(n5317) );
  AND2X1_RVT U4272 ( .A1(n3671), .A2(n5317), .Y(n3620) );
  NAND4X0_RVT U4273 ( .A1(n3623), .A2(n3622), .A3(n3621), .A4(n3620), .Y(n4455) );
  NAND2X0_RVT U4274 ( .A1(n2378), .A2(n3107), .Y(n4446) );
  NAND2X0_RVT U4275 ( .A1(n4446), .A2(n5351), .Y(n4448) );
  INVX1_RVT U4276 ( .A(n4535), .Y(n3624) );
  OAI221X1_RVT U4277 ( .A1(n4886), .A2(n3625), .A3(n2759), .A4(n4886), .A5(
        n3624), .Y(n3630) );
  INVX1_RVT U4278 ( .A(n3626), .Y(n3627) );
  NAND2X0_RVT U4279 ( .A1(n3627), .A2(n3142), .Y(n4725) );
  INVX1_RVT U4280 ( .A(n3628), .Y(n3629) );
  AO21X1_RVT U4281 ( .A1(n3630), .A2(n4725), .A3(n3629), .Y(n3904) );
  INVX1_RVT U4282 ( .A(n3901), .Y(n3637) );
  NAND3X0_RVT U4283 ( .A1(n5095), .A2(n2660), .A3(n5099), .Y(n3633) );
  AND2X1_RVT U4284 ( .A1(n3637), .A2(n3633), .Y(n3656) );
  NAND2X0_RVT U4285 ( .A1(n114), .A2(n3140), .Y(n3660) );
  INVX1_RVT U4286 ( .A(i_tv80_core_RegBusC_0_), .Y(n5139) );
  MUX21X1_RVT U4287 ( .A1(n3634), .A2(n5139), .S0(n3138), .Y(n3635) );
  INVX1_RVT U4288 ( .A(n3635), .Y(n3659) );
  INVX1_RVT U4289 ( .A(n3636), .Y(n3638) );
  AO21X1_RVT U4290 ( .A1(n4257), .A2(i_tv80_core_F_1_), .A3(n3683), .Y(n4207)
         );
  MUX21X1_RVT U4291 ( .A1(n3863), .A2(n4068), .S0(n2299), .Y(n3639) );
  AND2X1_RVT U4292 ( .A1(n3639), .A2(n3866), .Y(n3644) );
  AND2X1_RVT U4293 ( .A1(i_tv80_core_BusA_7_), .A2(n3103), .Y(n3641) );
  NAND2X0_RVT U4294 ( .A1(n329), .A2(n3103), .Y(n3640) );
  MUX21X1_RVT U4295 ( .A1(n3641), .A2(n3640), .S0(n3148), .Y(n3642) );
  MUX21X1_RVT U4296 ( .A1(n3642), .A2(i_tv80_core_BusA_1_), .S0(n3592), .Y(
        n3643) );
  INVX1_RVT U4297 ( .A(n3643), .Y(n4186) );
  OA222X1_RVT U4298 ( .A1(n4067), .A2(n4207), .A3(n303), .A4(n3644), .A5(n4186), .A6(n3868), .Y(n3654) );
  INVX1_RVT U4299 ( .A(n509), .Y(n4203) );
  AO21X1_RVT U4300 ( .A1(n3683), .A2(n3884), .A3(n3883), .Y(n3652) );
  INVX1_RVT U4301 ( .A(n3647), .Y(n3646) );
  AND2X1_RVT U4302 ( .A1(n3646), .A2(n3892), .Y(n3650) );
  AO21X1_RVT U4303 ( .A1(n3647), .A2(n3892), .A3(n3883), .Y(n3648) );
  AO221X1_RVT U4304 ( .A1(i_tv80_core_BusB_0_), .A2(n3882), .A3(n303), .A4(
        n3884), .A5(n3648), .Y(n3649) );
  MUX21X1_RVT U4305 ( .A1(n3650), .A2(n3649), .S0(i_tv80_core_i_alu_N185), .Y(
        n3651) );
  OA222X1_RVT U4306 ( .A1(n4154), .A2(n3866), .A3(n2799), .A4(n4069), .A5(
        i_tv80_core_ALU_Op_r_3_), .A6(n2788), .Y(n3653) );
  NAND2X0_RVT U4307 ( .A1(n3654), .A2(n3653), .Y(n3655) );
  AO222X1_RVT U4308 ( .A1(n2768), .A2(di_reg_0_), .A3(n2769), .A4(n3655), .A5(
        i_tv80_core_BusB_0_), .A6(n3898), .Y(n5108) );
  INVX1_RVT U4309 ( .A(n4725), .Y(n3918) );
  AO221X1_RVT U4310 ( .A1(n2632), .A2(n5108), .A3(n2630), .A4(
        i_tv80_core_RegBusC_0_), .A5(n3159), .Y(n3657) );
  AO221X1_RVT U4311 ( .A1(n2633), .A2(n4843), .A3(i_tv80_core_SP_0_), .A4(
        n3901), .A5(n3657), .Y(n2095) );
  AO22X1_RVT U4312 ( .A1(di_1_), .A2(n2665), .A3(n4010), .A4(di_reg_1_), .Y(
        n2178) );
  INVX1_RVT U4313 ( .A(i_tv80_core_RegBusC_1_), .Y(n5158) );
  MUX21X1_RVT U4314 ( .A1(n3658), .A2(n5158), .S0(n3138), .Y(n3760) );
  INVX1_RVT U4315 ( .A(n3760), .Y(n3703) );
  NAND2X0_RVT U4316 ( .A1(n3660), .A2(n3659), .Y(n3759) );
  INVX1_RVT U4317 ( .A(n3759), .Y(n3702) );
  NAND2X0_RVT U4318 ( .A1(n3140), .A2(di_reg_1_), .Y(n3755) );
  NAND2X0_RVT U4319 ( .A1(n2378), .A2(n3661), .Y(n4121) );
  INVX1_RVT U4320 ( .A(n3662), .Y(n3663) );
  NAND2X0_RVT U4321 ( .A1(n3663), .A2(n2536), .Y(n5332) );
  NAND3X0_RVT U4322 ( .A1(n5315), .A2(n3151), .A3(n4373), .Y(n3664) );
  NAND3X0_RVT U4323 ( .A1(n4121), .A2(n5332), .A3(n3664), .Y(n3665) );
  NAND2X0_RVT U4324 ( .A1(n3665), .A2(n3592), .Y(n4111) );
  NAND2X0_RVT U4325 ( .A1(n5303), .A2(n5340), .Y(n3668) );
  NAND4X0_RVT U4326 ( .A1(n2699), .A2(n2693), .A3(n3666), .A4(n5340), .Y(n3667) );
  NAND3X0_RVT U4327 ( .A1(n2521), .A2(n3668), .A3(n3667), .Y(n3676) );
  OA21X1_RVT U4328 ( .A1(n3673), .A2(n3597), .A3(n3671), .Y(n3674) );
  AND3X1_RVT U4329 ( .A1(n3676), .A2(n3675), .A3(n3674), .Y(n5089) );
  NAND2X0_RVT U4330 ( .A1(n5085), .A2(n4745), .Y(n4747) );
  NAND2X0_RVT U4331 ( .A1(n4450), .A2(n2324), .Y(n4108) );
  AND4X1_RVT U4332 ( .A1(n4747), .A2(n4107), .A3(n4108), .A4(n4110), .Y(n3678)
         );
  NAND3X0_RVT U4333 ( .A1(n3678), .A2(n4111), .A3(n5089), .Y(n3679) );
  NAND2X0_RVT U4334 ( .A1(n3755), .A2(n3729), .Y(n3704) );
  XNOR3X1_RVT U4335 ( .A1(n3703), .A2(n3702), .A3(n2414), .Y(n4898) );
  INVX1_RVT U4336 ( .A(n2314), .Y(n3732) );
  NAND2X0_RVT U4337 ( .A1(n2313), .A2(n3709), .Y(n3731) );
  INVX1_RVT U4338 ( .A(n3731), .Y(n3705) );
  MUX21X1_RVT U4339 ( .A1(n3863), .A2(n4068), .S0(n3681), .Y(n3682) );
  AND2X1_RVT U4340 ( .A1(n3682), .A2(n3866), .Y(n3684) );
  MUX21X1_RVT U4341 ( .A1(n3683), .A2(n3730), .S0(n3150), .Y(n4184) );
  OA222X1_RVT U4342 ( .A1(n2779), .A2(n4067), .A3(n304), .A4(n3684), .A5(n4184), .A6(n3868), .Y(n3698) );
  AO21X1_RVT U4343 ( .A1(n3884), .A2(n3709), .A3(n3883), .Y(n3696) );
  INVX1_RVT U4344 ( .A(n3685), .Y(n3686) );
  AO21X1_RVT U4345 ( .A1(n3688), .A2(n3687), .A3(n3686), .Y(n3714) );
  INVX1_RVT U4346 ( .A(n3691), .Y(n3690) );
  AND2X1_RVT U4347 ( .A1(n3690), .A2(n3892), .Y(n3694) );
  AO21X1_RVT U4348 ( .A1(n3691), .A2(n3892), .A3(n3883), .Y(n3692) );
  AO221X1_RVT U4349 ( .A1(i_tv80_core_BusB_1_), .A2(n3882), .A3(n304), .A4(
        n3884), .A5(n3692), .Y(n3693) );
  MUX21X1_RVT U4350 ( .A1(n3694), .A2(n3693), .S0(i_tv80_core_BusA_1_), .Y(
        n3695) );
  OA222X1_RVT U4351 ( .A1(n4155), .A2(n3866), .A3(n2797), .A4(n4069), .A5(
        i_tv80_core_ALU_Op_r_3_), .A6(n2778), .Y(n3697) );
  NAND2X0_RVT U4352 ( .A1(n3698), .A2(n3697), .Y(n4780) );
  AO222X1_RVT U4353 ( .A1(n2768), .A2(di_reg_1_), .A3(n2769), .A4(n4780), .A5(
        i_tv80_core_BusB_1_), .A6(n3898), .Y(n5110) );
  AO221X1_RVT U4354 ( .A1(n2632), .A2(n5110), .A3(n2630), .A4(
        i_tv80_core_RegBusC_1_), .A5(n3159), .Y(n3699) );
  AO221X1_RVT U4355 ( .A1(n2633), .A2(n4898), .A3(i_tv80_core_SP_1_), .A4(
        n3901), .A5(n3699), .Y(n2094) );
  AO22X1_RVT U4356 ( .A1(di_2_), .A2(n2665), .A3(n4010), .A4(di_reg_2_), .Y(
        n2177) );
  INVX1_RVT U4357 ( .A(i_tv80_core_RegBusC_2_), .Y(n5170) );
  MUX21X1_RVT U4358 ( .A1(n3700), .A2(n5170), .S0(n3138), .Y(n3758) );
  NAND2X0_RVT U4359 ( .A1(n2414), .A2(n3760), .Y(n3701) );
  NAND2X0_RVT U4360 ( .A1(n3140), .A2(di_reg_2_), .Y(n3756) );
  AND2X1_RVT U4361 ( .A1(n3707), .A2(n3866), .Y(n3710) );
  MUX21X1_RVT U4362 ( .A1(n3709), .A2(n3708), .S0(n3592), .Y(n4192) );
  OA222X1_RVT U4363 ( .A1(n2783), .A2(n4067), .A3(n306), .A4(n3710), .A5(n4192), .A6(n3868), .Y(n3725) );
  AO21X1_RVT U4364 ( .A1(n3884), .A2(n3730), .A3(n3883), .Y(n3723) );
  AO21X1_RVT U4365 ( .A1(n3714), .A2(n3713), .A3(n3712), .Y(n3716) );
  INVX1_RVT U4366 ( .A(n3718), .Y(n3717) );
  AND2X1_RVT U4367 ( .A1(n3717), .A2(n3892), .Y(n3721) );
  AO21X1_RVT U4368 ( .A1(n3718), .A2(n3892), .A3(n3883), .Y(n3719) );
  AO221X1_RVT U4369 ( .A1(i_tv80_core_BusB_2_), .A2(n3882), .A3(n306), .A4(
        n3884), .A5(n3719), .Y(n3720) );
  MUX21X1_RVT U4370 ( .A1(n3721), .A2(n3720), .S0(i_tv80_core_BusA_2_), .Y(
        n3722) );
  OA222X1_RVT U4371 ( .A1(n3866), .A2(n4153), .A3(n2798), .A4(n4069), .A5(
        n2772), .A6(i_tv80_core_ALU_Op_r_3_), .Y(n3724) );
  NAND2X0_RVT U4372 ( .A1(n3725), .A2(n3724), .Y(n3726) );
  AO221X1_RVT U4373 ( .A1(n2632), .A2(n5112), .A3(n2630), .A4(
        i_tv80_core_RegBusC_2_), .A5(n3159), .Y(n3727) );
  AO221X1_RVT U4374 ( .A1(n2633), .A2(n2703), .A3(i_tv80_core_SP_2_), .A4(
        n3901), .A5(n3727), .Y(n2093) );
  INVX1_RVT U4375 ( .A(i_tv80_core_RegBusC_3_), .Y(n5180) );
  MUX21X1_RVT U4376 ( .A1(n3728), .A2(n5180), .S0(n3138), .Y(n3764) );
  INVX1_RVT U4377 ( .A(n3764), .Y(n3766) );
  NAND2X0_RVT U4378 ( .A1(n2678), .A2(n3758), .Y(n3769) );
  INVX1_RVT U4379 ( .A(n3769), .Y(n3851) );
  AO21X1_RVT U4380 ( .A1(n3140), .A2(di_reg_3_), .A3(n2438), .Y(n3767) );
  MUX21X1_RVT U4381 ( .A1(n3730), .A2(n3795), .S0(n3592), .Y(n4189) );
  INVX1_RVT U4382 ( .A(n4189), .Y(n3740) );
  INVX1_RVT U4383 ( .A(n4067), .Y(n4215) );
  AND3X1_RVT U4384 ( .A1(n4257), .A2(n2314), .A3(n3733), .Y(n3737) );
  OA21X1_RVT U4385 ( .A1(i_tv80_core_BusA_2_), .A2(n3732), .A3(n3731), .Y(
        n3735) );
  NAND2X0_RVT U4386 ( .A1(n3733), .A2(n2313), .Y(n3734) );
  AO22X1_RVT U4387 ( .A1(n3735), .A2(i_tv80_core_F_1_), .A3(n4257), .A4(n3734), 
        .Y(n3736) );
  AO21X1_RVT U4388 ( .A1(i_tv80_core_F_1_), .A2(n3739), .A3(n3738), .Y(n4131)
         );
  INVX1_RVT U4389 ( .A(n4069), .Y(n4201) );
  AO22X1_RVT U4390 ( .A1(n509), .A2(i_tv80_core_BusB_3_), .A3(n4203), .A4(
        i_tv80_core_BusB_7_), .Y(n4139) );
  NAND3X0_RVT U4391 ( .A1(n3592), .A2(n3103), .A3(n3148), .Y(n4152) );
  INVX1_RVT U4392 ( .A(n4152), .Y(n3862) );
  MUX21X1_RVT U4393 ( .A1(n3863), .A2(n4068), .S0(n3862), .Y(n3741) );
  AO21X1_RVT U4394 ( .A1(n3741), .A2(n3866), .A3(n4801), .Y(n3752) );
  AO21X1_RVT U4395 ( .A1(n3708), .A2(n3884), .A3(n3883), .Y(n3750) );
  INVX1_RVT U4396 ( .A(n3745), .Y(n3744) );
  AND2X1_RVT U4397 ( .A1(n3744), .A2(n3892), .Y(n3748) );
  AO21X1_RVT U4398 ( .A1(n3745), .A2(n3892), .A3(n3883), .Y(n3746) );
  AO221X1_RVT U4399 ( .A1(i_tv80_core_BusB_3_), .A2(n3882), .A3(n4801), .A4(
        n3884), .A5(n3746), .Y(n3747) );
  OA22X1_RVT U4400 ( .A1(i_tv80_core_ALU_Op_r_3_), .A2(n2766), .A3(n3866), 
        .A4(n4152), .Y(n3751) );
  NAND3X0_RVT U4401 ( .A1(n2712), .A2(n3752), .A3(n3751), .Y(n4798) );
  AO222X1_RVT U4402 ( .A1(n2768), .A2(di_reg_3_), .A3(n2769), .A4(n4798), .A5(
        i_tv80_core_BusB_3_), .A6(n3898), .Y(n5114) );
  AO221X1_RVT U4403 ( .A1(n2632), .A2(n5114), .A3(n2630), .A4(
        i_tv80_core_RegBusC_3_), .A5(n3159), .Y(n3753) );
  AO221X1_RVT U4404 ( .A1(n2633), .A2(n2697), .A3(i_tv80_core_SP_3_), .A4(
        n3901), .A5(n3753), .Y(n2092) );
  AO22X1_RVT U4405 ( .A1(di_4_), .A2(n2665), .A3(n4010), .A4(di_reg_4_), .Y(
        n2175) );
  INVX1_RVT U4406 ( .A(i_tv80_core_RegBusC_4_), .Y(n5186) );
  MUX21X1_RVT U4407 ( .A1(n3754), .A2(n5186), .S0(n3138), .Y(n3772) );
  INVX1_RVT U4408 ( .A(n3772), .Y(n3775) );
  AND2X1_RVT U4409 ( .A1(n3760), .A2(n3755), .Y(n3757) );
  OA222X1_RVT U4410 ( .A1(n3757), .A2(n3759), .A3(n3758), .A4(n3756), .A5(
        n3760), .A6(n3755), .Y(n3763) );
  NAND3X0_RVT U4411 ( .A1(n3760), .A2(n3759), .A3(n3758), .Y(n3761) );
  NAND2X0_RVT U4412 ( .A1(n2438), .A2(n3761), .Y(n3762) );
  AO22X1_RVT U4413 ( .A1(n3765), .A2(n3764), .A3(n3763), .A4(n3762), .Y(n3854)
         );
  NAND2X0_RVT U4414 ( .A1(n3767), .A2(n3766), .Y(n3853) );
  INVX1_RVT U4415 ( .A(n3853), .Y(n3768) );
  AO21X1_RVT U4416 ( .A1(n3140), .A2(di_reg_4_), .A3(n2438), .Y(n3774) );
  AO221X1_RVT U4417 ( .A1(n2632), .A2(n5116), .A3(n2630), .A4(
        i_tv80_core_RegBusC_4_), .A5(n3159), .Y(n3770) );
  AO221X1_RVT U4418 ( .A1(n2633), .A2(n2621), .A3(i_tv80_core_SP_4_), .A4(
        n3901), .A5(n3770), .Y(n2091) );
  INVX1_RVT U4419 ( .A(i_tv80_core_RegBusC_5_), .Y(n5192) );
  MUX21X1_RVT U4420 ( .A1(n3771), .A2(n5192), .S0(n3138), .Y(n3814) );
  INVX1_RVT U4421 ( .A(n3814), .Y(n3818) );
  NAND2X0_RVT U4422 ( .A1(n3773), .A2(n3772), .Y(n3815) );
  MUX21X1_RVT U4423 ( .A1(n3795), .A2(n3887), .S0(n3592), .Y(n4136) );
  INVX1_RVT U4424 ( .A(n4136), .Y(n4191) );
  NAND4X0_RVT U4425 ( .A1(i_tv80_core_BusA_4_), .A2(i_tv80_core_BusA_5_), .A3(
        n2363), .A4(n2314), .Y(n3779) );
  NAND2X0_RVT U4426 ( .A1(i_tv80_core_BusA_7_), .A2(n2419), .Y(n4057) );
  NAND2X0_RVT U4427 ( .A1(i_tv80_core_BusA_6_), .A2(n2419), .Y(n3780) );
  AO21X1_RVT U4428 ( .A1(n3781), .A2(n3824), .A3(n3878), .Y(n3873) );
  INVX1_RVT U4429 ( .A(n3781), .Y(n3875) );
  NAND2X0_RVT U4430 ( .A1(n2363), .A2(i_tv80_core_BusA_4_), .Y(n3782) );
  NAND3X0_RVT U4431 ( .A1(n3782), .A2(n3831), .A3(n3887), .Y(n3783) );
  AO21X1_RVT U4432 ( .A1(i_tv80_core_BusA_7_), .A2(n3783), .A3(
        i_tv80_core_F_0_), .Y(n4062) );
  INVX1_RVT U4433 ( .A(n4062), .Y(n3821) );
  AO21X1_RVT U4434 ( .A1(i_tv80_core_BusA_5_), .A2(n3785), .A3(n2764), .Y(
        n3787) );
  INVX1_RVT U4435 ( .A(n3787), .Y(n3786) );
  NAND2X0_RVT U4436 ( .A1(n3786), .A2(n4062), .Y(n3870) );
  INVX1_RVT U4437 ( .A(n3870), .Y(n3822) );
  AO21X1_RVT U4438 ( .A1(n3821), .A2(n3787), .A3(n3822), .Y(n3788) );
  AO22X1_RVT U4439 ( .A1(n4257), .A2(n3789), .A3(i_tv80_core_F_1_), .A4(n3788), 
        .Y(n4132) );
  AO21X1_RVT U4440 ( .A1(n3790), .A2(n3866), .A3(n4785), .Y(n3810) );
  AO21X1_RVT U4441 ( .A1(n3831), .A2(n3884), .A3(n3883), .Y(n3808) );
  NAND2X0_RVT U4442 ( .A1(n2750), .A2(n3795), .Y(n3792) );
  NAND2X0_RVT U4443 ( .A1(n3792), .A2(n3791), .Y(n3797) );
  INVX1_RVT U4444 ( .A(n3792), .Y(n3794) );
  OA222X1_RVT U4445 ( .A1(n3796), .A2(n3797), .A3(n2750), .A4(n3795), .A5(
        n3794), .A6(n3793), .Y(n3801) );
  NAND3X0_RVT U4446 ( .A1(n2757), .A2(n3799), .A3(n3798), .Y(n3800) );
  NAND2X0_RVT U4447 ( .A1(n3801), .A2(n3800), .Y(n3832) );
  INVX1_RVT U4448 ( .A(n3803), .Y(n3802) );
  AND2X1_RVT U4449 ( .A1(n3802), .A2(n3892), .Y(n3806) );
  AO21X1_RVT U4450 ( .A1(n3803), .A2(n3892), .A3(n3883), .Y(n3804) );
  AO221X1_RVT U4451 ( .A1(i_tv80_core_BusB_5_), .A2(n3882), .A3(n4785), .A4(
        n3884), .A5(n3804), .Y(n3805) );
  OA22X1_RVT U4452 ( .A1(i_tv80_core_ALU_Op_r_3_), .A2(n2765), .A3(n3866), 
        .A4(n4150), .Y(n3809) );
  NAND3X0_RVT U4453 ( .A1(n2767), .A2(n3810), .A3(n3809), .Y(n3811) );
  AO221X1_RVT U4454 ( .A1(n2632), .A2(n5118), .A3(n2630), .A4(
        i_tv80_core_RegBusC_5_), .A5(n3159), .Y(n3812) );
  AO221X1_RVT U4455 ( .A1(n2633), .A2(n2625), .A3(i_tv80_core_SP_5_), .A4(
        n3901), .A5(n3812), .Y(n2090) );
  INVX1_RVT U4456 ( .A(i_tv80_core_RegBusC_6_), .Y(n5202) );
  MUX21X1_RVT U4457 ( .A1(n3813), .A2(n5202), .S0(n3138), .Y(n3846) );
  INVX1_RVT U4458 ( .A(n3846), .Y(n3849) );
  NAND2X0_RVT U4459 ( .A1(n2437), .A2(n3814), .Y(n3819) );
  AO22X1_RVT U4460 ( .A1(n2451), .A2(n2453), .A3(n3818), .A4(n3817), .Y(n3850)
         );
  NAND2X0_RVT U4461 ( .A1(n2768), .A2(di_reg_6_), .Y(n4547) );
  XNOR3X1_RVT U4462 ( .A1(i_tv80_core_BusA_6_), .A2(n2764), .A3(n3821), .Y(
        n3823) );
  INVX1_RVT U4463 ( .A(n3824), .Y(n3877) );
  NAND2X0_RVT U4464 ( .A1(n3875), .A2(n3876), .Y(n3825) );
  AO22X1_RVT U4465 ( .A1(i_tv80_core_F_1_), .A2(n3827), .A3(n4257), .A4(n3826), 
        .Y(n4211) );
  INVX1_RVT U4466 ( .A(n4211), .Y(n4133) );
  MUX21X1_RVT U4467 ( .A1(n3863), .A2(n4068), .S0(n3828), .Y(n3829) );
  AND2X1_RVT U4468 ( .A1(n3829), .A2(n3866), .Y(n3830) );
  MUX21X1_RVT U4469 ( .A1(n3831), .A2(n3881), .S0(n3592), .Y(n4188) );
  OA222X1_RVT U4470 ( .A1(n4133), .A2(n4067), .A3(n310), .A4(n3830), .A5(n4188), .A6(n3868), .Y(n3842) );
  AO21X1_RVT U4471 ( .A1(n3887), .A2(n3884), .A3(n3883), .Y(n3840) );
  NAND2X0_RVT U4472 ( .A1(i_tv80_core_BusA_5_), .A2(n3832), .Y(n3888) );
  INVX1_RVT U4473 ( .A(n3888), .Y(n3833) );
  AO21X1_RVT U4474 ( .A1(n2317), .A2(n3885), .A3(n3833), .Y(n3891) );
  INVX1_RVT U4475 ( .A(n3835), .Y(n3834) );
  AND2X1_RVT U4476 ( .A1(n3834), .A2(n3892), .Y(n3838) );
  AO21X1_RVT U4477 ( .A1(n3835), .A2(n3892), .A3(n3883), .Y(n3836) );
  AO221X1_RVT U4478 ( .A1(i_tv80_core_BusB_6_), .A2(n3882), .A3(n310), .A4(
        n3884), .A5(n3836), .Y(n3837) );
  MUX21X1_RVT U4479 ( .A1(n3838), .A2(n3837), .S0(i_tv80_core_BusA_6_), .Y(
        n3839) );
  OA222X1_RVT U4480 ( .A1(n3887), .A2(n4069), .A3(i_tv80_core_ALU_Op_r_3_), 
        .A4(n2751), .A5(n5079), .A6(n3866), .Y(n3841) );
  NAND2X0_RVT U4481 ( .A1(n3842), .A2(n3841), .Y(n4546) );
  NAND2X0_RVT U4482 ( .A1(n2769), .A2(n4546), .Y(n3843) );
  NAND2X0_RVT U4483 ( .A1(i_tv80_core_BusB_6_), .A2(n3898), .Y(n4548) );
  AO221X1_RVT U4484 ( .A1(n2632), .A2(n5120), .A3(n2630), .A4(
        i_tv80_core_RegBusC_6_), .A5(n3159), .Y(n3844) );
  AO221X1_RVT U4485 ( .A1(n2633), .A2(n2626), .A3(i_tv80_core_SP_6_), .A4(
        n3901), .A5(n3844), .Y(n2089) );
  INVX1_RVT U4486 ( .A(i_tv80_core_RegBusC_7_), .Y(n5213) );
  MUX21X1_RVT U4487 ( .A1(n3845), .A2(n5213), .S0(n3138), .Y(n3909) );
  INVX1_RVT U4488 ( .A(n3909), .Y(n3911) );
  NAND2X0_RVT U4489 ( .A1(n3847), .A2(n3846), .Y(n3856) );
  NAND2X0_RVT U4490 ( .A1(n3851), .A2(n3853), .Y(n3857) );
  NAND2X0_RVT U4491 ( .A1(n3854), .A2(n3853), .Y(n3855) );
  NAND4X0_RVT U4492 ( .A1(n3857), .A2(n3855), .A3(n2331), .A4(n3856), .Y(n3913) );
  NAND2X0_RVT U4493 ( .A1(n2768), .A2(di_reg_7_), .Y(n4501) );
  MUX21X1_RVT U4494 ( .A1(i_tv80_core_BusA_7_), .A2(i_tv80_core_i_alu_N185), 
        .S0(n3103), .Y(n3858) );
  AND2X1_RVT U4495 ( .A1(n3858), .A2(n460), .Y(n3859) );
  MUX21X1_RVT U4496 ( .A1(i_tv80_core_BusA_6_), .A2(n3859), .S0(n3592), .Y(
        n3860) );
  AO21X1_RVT U4497 ( .A1(n3862), .A2(i_tv80_core_F_0_), .A3(n3860), .Y(n4274)
         );
  INVX1_RVT U4498 ( .A(n4274), .Y(n4187) );
  NAND2X0_RVT U4499 ( .A1(n5087), .A2(n3150), .Y(n4149) );
  AND2X1_RVT U4500 ( .A1(n311), .A2(n4149), .Y(n3867) );
  INVX1_RVT U4501 ( .A(n3863), .Y(n3864) );
  NAND3X0_RVT U4502 ( .A1(n3864), .A2(i_tv80_core_BusB_7_), .A3(n4149), .Y(
        n3865) );
  OA221X1_RVT U4503 ( .A1(n4187), .A2(n3868), .A3(n3867), .A4(n3866), .A5(
        n3865), .Y(n3897) );
  NAND2X0_RVT U4504 ( .A1(n2764), .A2(n3887), .Y(n3869) );
  AND2X1_RVT U4505 ( .A1(i_tv80_core_BusA_6_), .A2(i_tv80_core_BusA_5_), .Y(
        n3872) );
  NAND2X0_RVT U4506 ( .A1(n4062), .A2(n3869), .Y(n3871) );
  OA21X1_RVT U4507 ( .A1(n3872), .A2(n3871), .A3(n3870), .Y(n4064) );
  NAND2X0_RVT U4508 ( .A1(n3873), .A2(n329), .Y(n3874) );
  AO22X1_RVT U4509 ( .A1(n3877), .A2(n3876), .A3(n3875), .A4(n3874), .Y(n4059)
         );
  INVX1_RVT U4510 ( .A(n3878), .Y(n4060) );
  INVX1_RVT U4511 ( .A(n4149), .Y(n3879) );
  NAND3X0_RVT U4512 ( .A1(i_tv80_core_BusB_7_), .A2(n4782), .A3(n3879), .Y(
        n3880) );
  AO221X1_RVT U4513 ( .A1(n3884), .A2(n311), .A3(n3882), .A4(
        i_tv80_core_BusB_7_), .A5(n3883), .Y(n3895) );
  AO21X1_RVT U4514 ( .A1(n3881), .A2(n3884), .A3(n3883), .Y(n3894) );
  INVX1_RVT U4515 ( .A(n4054), .Y(n4051) );
  NAND2X0_RVT U4516 ( .A1(n3885), .A2(n2317), .Y(n3886) );
  NAND3X0_RVT U4517 ( .A1(n3888), .A2(n3887), .A3(n3886), .Y(n3889) );
  AO22X1_RVT U4518 ( .A1(n3891), .A2(i_tv80_core_BusA_6_), .A3(n3890), .A4(
        n3889), .Y(n4053) );
  AO222X1_RVT U4519 ( .A1(i_tv80_core_BusA_7_), .A2(n3895), .A3(
        i_tv80_core_BusB_7_), .A4(n3894), .A5(n3893), .A6(n3892), .Y(n4270) );
  NAND2X0_RVT U4520 ( .A1(n4148), .A2(n4270), .Y(n3896) );
  NAND2X0_RVT U4521 ( .A1(n2420), .A2(n2769), .Y(n3899) );
  NAND2X0_RVT U4522 ( .A1(n3898), .A2(i_tv80_core_BusB_7_), .Y(n4502) );
  AO221X1_RVT U4523 ( .A1(n2632), .A2(n5125), .A3(n2630), .A4(
        i_tv80_core_RegBusC_7_), .A5(n3159), .Y(n3900) );
  AO221X1_RVT U4524 ( .A1(n2633), .A2(n2602), .A3(i_tv80_core_SP_7_), .A4(
        n3901), .A5(n3900), .Y(n2088) );
  INVX1_RVT U4525 ( .A(n5099), .Y(n3903) );
  NAND2X0_RVT U4526 ( .A1(n3903), .A2(n2790), .Y(n3917) );
  INVX1_RVT U4527 ( .A(i_tv80_core_RegBusC_11_), .Y(n5252) );
  MUX21X1_RVT U4528 ( .A1(n3905), .A2(n5252), .S0(n3138), .Y(n4002) );
  INVX1_RVT U4529 ( .A(n4002), .Y(n4005) );
  INVX1_RVT U4530 ( .A(i_tv80_core_RegBusC_10_), .Y(n5244) );
  MUX21X1_RVT U4531 ( .A1(n3906), .A2(n5244), .S0(n3138), .Y(n3916) );
  INVX1_RVT U4532 ( .A(i_tv80_core_RegBusC_9_), .Y(n5236) );
  MUX21X1_RVT U4533 ( .A1(n3907), .A2(n5236), .S0(n3138), .Y(n3914) );
  INVX1_RVT U4534 ( .A(i_tv80_core_RegBusC_8_), .Y(n5224) );
  MUX21X1_RVT U4535 ( .A1(n3908), .A2(n5224), .S0(n3138), .Y(n3910) );
  AO21X1_RVT U4536 ( .A1(n4248), .A2(n3910), .A3(n2675), .Y(n4081) );
  INVX1_RVT U4537 ( .A(n3910), .Y(n4247) );
  NAND2X0_RVT U4538 ( .A1(n3911), .A2(n4023), .Y(n4246) );
  INVX1_RVT U4539 ( .A(n4246), .Y(n3912) );
  NAND3X0_RVT U4540 ( .A1(n2672), .A2(n2395), .A3(n3913), .Y(n4014) );
  INVX1_RVT U4541 ( .A(n3914), .Y(n4082) );
  NAND2X0_RVT U4542 ( .A1(n4082), .A2(n4023), .Y(n4018) );
  INVX1_RVT U4543 ( .A(n4018), .Y(n3915) );
  INVX1_RVT U4544 ( .A(n3916), .Y(n4087) );
  NAND2X0_RVT U4545 ( .A1(n4087), .A2(n4023), .Y(n4003) );
  AO221X1_RVT U4546 ( .A1(n2634), .A2(n5114), .A3(n2566), .A4(
        i_tv80_core_RegBusC_11_), .A5(n3159), .Y(n3919) );
  AO221X1_RVT U4547 ( .A1(n2567), .A2(n2597), .A3(i_tv80_core_SP_11_), .A4(
        n4250), .A5(n3919), .Y(n2084) );
  INVX1_RVT U4548 ( .A(n3920), .Y(n3921) );
  NAND2X0_RVT U4550 ( .A1(n3921), .A2(n3152), .Y(n3927) );
  INVX1_RVT U4551 ( .A(n3927), .Y(n3944) );
  OA21X1_RVT U4552 ( .A1(n3922), .A2(n489), .A3(n3927), .Y(n3923) );
  INVX1_RVT U4553 ( .A(n4239), .Y(n3928) );
  NAND3X0_RVT U4554 ( .A1(n3944), .A2(n2656), .A3(n3934), .Y(n3924) );
  NAND2X0_RVT U4555 ( .A1(reset_n), .A2(n3924), .Y(n3925) );
  INVX1_RVT U4556 ( .A(n3925), .Y(n4027) );
  AO22X1_RVT U4557 ( .A1(n2658), .A2(i_tv80_core_ACC_3_), .A3(n4027), .A4(
        i_tv80_core_I_3_), .Y(n2060) );
  AO22X1_RVT U4558 ( .A1(n2658), .A2(i_tv80_core_ACC_6_), .A3(n4027), .A4(
        i_tv80_core_I_6_), .Y(n2057) );
  MUX21X1_RVT U4559 ( .A1(n3939), .A2(n3940), .S0(n4796), .Y(n3926) );
  NAND2X0_RVT U4560 ( .A1(n3158), .A2(n3926), .Y(n2123) );
  NAND2X0_RVT U4561 ( .A1(n3928), .A2(n3927), .Y(n4174) );
  INVX1_RVT U4562 ( .A(n3929), .Y(n3930) );
  NAND2X0_RVT U4563 ( .A1(n3930), .A2(n2790), .Y(n3935) );
  NAND4X0_RVT U4564 ( .A1(n3931), .A2(n3932), .A3(n3935), .A4(n4174), .Y(n3933) );
  INVX1_RVT U4565 ( .A(n4174), .Y(n4238) );
  NAND2X0_RVT U4566 ( .A1(n2691), .A2(i_tv80_core_I_6_), .Y(n3943) );
  INVX1_RVT U4567 ( .A(n3935), .Y(n3937) );
  OA222X1_RVT U4568 ( .A1(n4038), .A2(n3940), .A3(n2418), .A4(n3939), .A5(
        n4035), .A6(i_tv80_core_ACC_6_), .Y(n3941) );
  NAND4X0_RVT U4569 ( .A1(n3942), .A2(n3943), .A3(n3941), .A4(reset_n), .Y(
        n2189) );
  NAND3X0_RVT U4570 ( .A1(n3945), .A2(n3944), .A3(n2656), .Y(n3946) );
  AND2X1_RVT U4571 ( .A1(n3156), .A2(n3946), .Y(n4028) );
  NAND2X0_RVT U4572 ( .A1(n4028), .A2(n5132), .Y(n3947) );
  INVX1_RVT U4573 ( .A(n3947), .Y(n3983) );
  AO222X1_RVT U4574 ( .A1(n2572), .A2(i_tv80_core_ACC_6_), .A3(
        i_tv80_core_N159), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_6_), .Y(
        n2049) );
  AO22X1_RVT U4575 ( .A1(n2658), .A2(i_tv80_core_ACC_5_), .A3(n4027), .A4(
        i_tv80_core_I_5_), .Y(n2058) );
  MUX21X1_RVT U4576 ( .A1(n3949), .A2(n3950), .S0(n4796), .Y(n3948) );
  NAND2X0_RVT U4577 ( .A1(n3158), .A2(n3948), .Y(n2124) );
  NAND2X0_RVT U4578 ( .A1(n2691), .A2(i_tv80_core_I_5_), .Y(n3953) );
  OA222X1_RVT U4579 ( .A1(n4038), .A2(n3950), .A3(n2418), .A4(n3949), .A5(
        i_tv80_core_ACC_5_), .A6(n4035), .Y(n3951) );
  NAND4X0_RVT U4580 ( .A1(n3951), .A2(n3952), .A3(n3953), .A4(reset_n), .Y(
        n2166) );
  AO222X1_RVT U4581 ( .A1(n2572), .A2(i_tv80_core_ACC_5_), .A3(
        i_tv80_core_N158), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_5_), .Y(
        n2050) );
  AO22X1_RVT U4582 ( .A1(i_tv80_core_ACC_4_), .A2(n2658), .A3(n4027), .A4(
        i_tv80_core_I_4_), .Y(n2059) );
  MUX21X1_RVT U4583 ( .A1(n3957), .A2(n3958), .S0(n4796), .Y(n3954) );
  NAND2X0_RVT U4584 ( .A1(n3158), .A2(n3954), .Y(n2125) );
  NAND2X0_RVT U4585 ( .A1(n2691), .A2(i_tv80_core_I_4_), .Y(n3961) );
  INVX1_RVT U4586 ( .A(n5116), .Y(n3955) );
  OA222X1_RVT U4587 ( .A1(n4038), .A2(n3958), .A3(n2418), .A4(n3957), .A5(
        n4035), .A6(i_tv80_core_ACC_4_), .Y(n3959) );
  NAND4X0_RVT U4588 ( .A1(n3959), .A2(n3960), .A3(n3961), .A4(reset_n), .Y(
        n2167) );
  AO222X1_RVT U4589 ( .A1(n2572), .A2(i_tv80_core_ACC_4_), .A3(
        i_tv80_core_N157), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_4_), .Y(
        n2051) );
  AO22X1_RVT U4590 ( .A1(n2658), .A2(i_tv80_core_ACC_2_), .A3(n4027), .A4(
        i_tv80_core_I_2_), .Y(n2061) );
  MUX21X1_RVT U4591 ( .A1(n3964), .A2(n3965), .S0(n4796), .Y(n3962) );
  NAND2X0_RVT U4592 ( .A1(n3158), .A2(n3962), .Y(n2127) );
  NAND2X0_RVT U4593 ( .A1(n2691), .A2(i_tv80_core_I_2_), .Y(n3968) );
  INVX1_RVT U4594 ( .A(n5112), .Y(n3963) );
  OA222X1_RVT U4595 ( .A1(n4038), .A2(n3965), .A3(n2418), .A4(n3964), .A5(
        n4035), .A6(i_tv80_core_ACC_2_), .Y(n3966) );
  NAND4X0_RVT U4596 ( .A1(n3966), .A2(n3967), .A3(n3968), .A4(reset_n), .Y(
        n2169) );
  AO222X1_RVT U4597 ( .A1(n2572), .A2(i_tv80_core_ACC_2_), .A3(
        i_tv80_core_N155), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_2_), .Y(
        n2053) );
  AO22X1_RVT U4598 ( .A1(n2658), .A2(i_tv80_core_ACC_1_), .A3(n4027), .A4(
        i_tv80_core_I_1_), .Y(n2062) );
  MUX21X1_RVT U4599 ( .A1(n3970), .A2(n3971), .S0(n4796), .Y(n3969) );
  NAND2X0_RVT U4600 ( .A1(n3158), .A2(n3969), .Y(n2128) );
  NAND2X0_RVT U4601 ( .A1(n2691), .A2(i_tv80_core_I_1_), .Y(n3974) );
  INVX1_RVT U4602 ( .A(n5110), .Y(n4262) );
  OA222X1_RVT U4603 ( .A1(n4038), .A2(n3971), .A3(n2418), .A4(n3970), .A5(
        n4035), .A6(i_tv80_core_ACC_1_), .Y(n3972) );
  NAND4X0_RVT U4604 ( .A1(n3972), .A2(n3973), .A3(n3974), .A4(n3156), .Y(n2170) );
  AO222X1_RVT U4605 ( .A1(n2572), .A2(i_tv80_core_ACC_1_), .A3(
        i_tv80_core_N154), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_1_), .Y(
        n2054) );
  AO22X1_RVT U4606 ( .A1(n2658), .A2(i_tv80_core_ACC_0_), .A3(n4027), .A4(
        i_tv80_core_I_0_), .Y(n2063) );
  MUX21X1_RVT U4607 ( .A1(n3978), .A2(n3979), .S0(n4796), .Y(n3975) );
  NAND2X0_RVT U4608 ( .A1(n3158), .A2(n3975), .Y(n2129) );
  NAND2X0_RVT U4609 ( .A1(n2691), .A2(i_tv80_core_I_0_), .Y(n3982) );
  INVX1_RVT U4610 ( .A(n5108), .Y(n3976) );
  OA222X1_RVT U4611 ( .A1(n4038), .A2(n3979), .A3(n2418), .A4(n3978), .A5(
        n4035), .A6(i_tv80_core_ACC_0_), .Y(n3980) );
  NAND4X0_RVT U4612 ( .A1(n3980), .A2(n3981), .A3(n3982), .A4(n3158), .Y(n2171) );
  AO222X1_RVT U4613 ( .A1(n2572), .A2(i_tv80_core_ACC_0_), .A3(
        i_tv80_core_N153), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_0_), .Y(
        n2055) );
  AO222X1_RVT U4614 ( .A1(n2572), .A2(i_tv80_core_ACC_3_), .A3(
        i_tv80_core_N156), .A4(n2718), .A5(n3983), .A6(i_tv80_core_R_3_), .Y(
        n2052) );
  MUX21X1_RVT U4615 ( .A1(n3986), .A2(n3987), .S0(n4796), .Y(n3984) );
  NAND2X0_RVT U4616 ( .A1(n3158), .A2(n3984), .Y(n2126) );
  NAND2X0_RVT U4617 ( .A1(n2691), .A2(i_tv80_core_I_3_), .Y(n3990) );
  INVX1_RVT U4618 ( .A(n5114), .Y(n4815) );
  OA22X1_RVT U4619 ( .A1(n3985), .A2(n4033), .A3(n4815), .A4(n4031), .Y(n3989)
         );
  OA222X1_RVT U4620 ( .A1(n4038), .A2(n3987), .A3(n2418), .A4(n3986), .A5(
        i_tv80_core_ACC_3_), .A6(n4035), .Y(n3988) );
  NAND4X0_RVT U4621 ( .A1(reset_n), .A2(n3990), .A3(n3988), .A4(n3989), .Y(
        n2168) );
  AO21X1_RVT U4622 ( .A1(n5087), .A2(n3991), .A3(n2720), .Y(n3993) );
  INVX1_RVT U4623 ( .A(n3993), .Y(n3992) );
  AO22X1_RVT U4624 ( .A1(n2555), .A2(di_reg_3_), .A3(n2591), .A4(
        i_tv80_core_ACC_3_), .Y(n3998) );
  AO221X1_RVT U4625 ( .A1(i_tv80_core_SP_11_), .A2(n2612), .A3(
        i_tv80_core_SP_3_), .A4(n2610), .A5(n3998), .Y(n3999) );
  AO221X1_RVT U4626 ( .A1(n2620), .A2(i_tv80_core_RegBusA_11_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_3_), .A5(n4000), .Y(n2145) );
  INVX1_RVT U4627 ( .A(i_tv80_core_RegBusC_12_), .Y(n5260) );
  MUX21X1_RVT U4628 ( .A1(n4001), .A2(n5260), .S0(n3138), .Y(n4013) );
  INVX1_RVT U4629 ( .A(n4013), .Y(n4011) );
  AO21X1_RVT U4630 ( .A1(n4248), .A2(n4002), .A3(n2681), .Y(n4012) );
  INVX1_RVT U4631 ( .A(n4003), .Y(n4004) );
  AO221X1_RVT U4632 ( .A1(n2634), .A2(n5116), .A3(n2566), .A4(
        i_tv80_core_RegBusC_12_), .A5(n3159), .Y(n4006) );
  AO221X1_RVT U4633 ( .A1(n2567), .A2(n2594), .A3(i_tv80_core_SP_12_), .A4(
        n4250), .A5(n4006), .Y(n2083) );
  AO22X1_RVT U4634 ( .A1(n2555), .A2(di_reg_4_), .A3(i_tv80_core_ACC_4_), .A4(
        n2591), .Y(n4007) );
  AO221X1_RVT U4635 ( .A1(i_tv80_core_SP_12_), .A2(n2612), .A3(
        i_tv80_core_SP_4_), .A4(n2610), .A5(n4007), .Y(n4008) );
  AO221X1_RVT U4636 ( .A1(n2620), .A2(i_tv80_core_RegBusA_12_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_4_), .A5(n4009), .Y(n2144) );
  AO22X1_RVT U4637 ( .A1(di_7_), .A2(n2665), .A3(n4010), .A4(di_reg_7_), .Y(
        n2172) );
  MUX21X1_RVT U4638 ( .A1(i_tv80_core_SP_15_), .A2(i_tv80_core_RegBusC_15_), 
        .S0(n3138), .Y(n4025) );
  NAND2X0_RVT U4639 ( .A1(n4011), .A2(n4023), .Y(n4019) );
  INVX1_RVT U4640 ( .A(n4012), .Y(n4016) );
  NAND2X0_RVT U4641 ( .A1(n4248), .A2(n4013), .Y(n4015) );
  NAND4X0_RVT U4642 ( .A1(n4016), .A2(n4015), .A3(n2676), .A4(n4014), .Y(n4017) );
  INVX1_RVT U4643 ( .A(i_tv80_core_RegBusC_14_), .Y(n5276) );
  INVX1_RVT U4644 ( .A(i_tv80_core_RegBusC_13_), .Y(n5268) );
  MUX21X1_RVT U4645 ( .A1(n4021), .A2(n5268), .S0(n3138), .Y(n4022) );
  AO21X1_RVT U4646 ( .A1(n4248), .A2(n4097), .A3(n2701), .Y(n4024) );
  INVX1_RVT U4647 ( .A(n4022), .Y(n4092) );
  NAND2X0_RVT U4648 ( .A1(n4092), .A2(n4023), .Y(n4098) );
  AO221X1_RVT U4649 ( .A1(i_tv80_core_SP_15_), .A2(n4250), .A3(n2566), .A4(
        i_tv80_core_RegBusC_15_), .A5(n3159), .Y(n4026) );
  AO221X1_RVT U4650 ( .A1(n2634), .A2(n5125), .A3(n2740), .A4(n2567), .A5(
        n4026), .Y(n2080) );
  AO22X1_RVT U4651 ( .A1(n2658), .A2(i_tv80_core_ACC_7_), .A3(n4027), .A4(
        i_tv80_core_I_7_), .Y(n2056) );
  AND2X1_RVT U4652 ( .A1(i_tv80_core_ACC_7_), .A2(n3146), .Y(n4029) );
  MUX21X1_RVT U4653 ( .A1(n4029), .A2(i_tv80_core_R_7_), .S0(n4028), .Y(n2048)
         );
  MUX21X1_RVT U4654 ( .A1(n4036), .A2(n4037), .S0(n4796), .Y(n4030) );
  NAND2X0_RVT U4655 ( .A1(n3158), .A2(n4030), .Y(n2122) );
  NAND2X0_RVT U4656 ( .A1(n2691), .A2(i_tv80_core_I_7_), .Y(n4041) );
  INVX1_RVT U4657 ( .A(n5125), .Y(n4032) );
  OA22X1_RVT U4658 ( .A1(n4034), .A2(n4033), .A3(n4032), .A4(n4031), .Y(n4040)
         );
  OA222X1_RVT U4659 ( .A1(n4038), .A2(n4037), .A3(n2418), .A4(n4036), .A5(
        i_tv80_core_ACC_7_), .A6(n4035), .Y(n4039) );
  NAND4X0_RVT U4660 ( .A1(n4039), .A2(n4040), .A3(n4041), .A4(reset_n), .Y(
        n2190) );
  AO22X1_RVT U4661 ( .A1(n2555), .A2(di_reg_7_), .A3(i_tv80_core_ACC_7_), .A4(
        n2591), .Y(n4042) );
  AO221X1_RVT U4662 ( .A1(i_tv80_core_SP_15_), .A2(n2612), .A3(
        i_tv80_core_SP_7_), .A4(n2610), .A5(n4042), .Y(n4043) );
  AO221X1_RVT U4663 ( .A1(n2620), .A2(i_tv80_core_RegBusA_15_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_7_), .A5(n4044), .Y(n2188) );
  MUX21X1_RVT U4664 ( .A1(n4046), .A2(n329), .S0(n4796), .Y(n4047) );
  NAND2X0_RVT U4665 ( .A1(n3158), .A2(n4047), .Y(n2110) );
  AO22X1_RVT U4666 ( .A1(n2545), .A2(n4049), .A3(n4048), .A4(n3146), .Y(n5383)
         );
  MUX21X1_RVT U4667 ( .A1(n4050), .A2(i_tv80_core_Fp_0_), .S0(n4255), .Y(n4075) );
  INVX1_RVT U4668 ( .A(n4256), .Y(n4056) );
  NAND2X0_RVT U4669 ( .A1(n4181), .A2(n4051), .Y(n4052) );
  AO22X1_RVT U4670 ( .A1(n4054), .A2(n4053), .A3(i_tv80_core_BusA_7_), .A4(
        n4052), .Y(n4055) );
  MUX21X1_RVT U4671 ( .A1(i_tv80_core_BusA_7_), .A2(i_tv80_core_i_alu_N185), 
        .S0(n3150), .Y(n4072) );
  INVX1_RVT U4672 ( .A(n4057), .Y(n4058) );
  AO21X1_RVT U4673 ( .A1(n4059), .A2(n4060), .A3(n4058), .Y(n4066) );
  INVX1_RVT U4674 ( .A(n4061), .Y(n4063) );
  OA21X1_RVT U4675 ( .A1(n4064), .A2(n4063), .A3(n4062), .Y(n4065) );
  AO22X1_RVT U4676 ( .A1(n4257), .A2(n4066), .A3(n4065), .A4(i_tv80_core_F_1_), 
        .Y(n4206) );
  INVX1_RVT U4677 ( .A(n4145), .Y(n4803) );
  NAND3X0_RVT U4678 ( .A1(n2731), .A2(n4069), .A3(n4068), .Y(n4070) );
  AO22X1_RVT U4679 ( .A1(n4215), .A2(n4206), .A3(i_tv80_core_F_0_), .A4(n4070), 
        .Y(n4071) );
  AO221X1_RVT U4680 ( .A1(n4148), .A2(n4073), .A3(n4146), .A4(n4072), .A5(
        n4071), .Y(n4074) );
  AO221X1_RVT U4681 ( .A1(n4076), .A2(n4360), .A3(n4277), .A4(n5108), .A5(
        n3159), .Y(n4080) );
  NAND3X0_RVT U4682 ( .A1(n357), .A2(n3146), .A3(n4183), .Y(n4078) );
  AO221X1_RVT U4683 ( .A1(n2634), .A2(n5110), .A3(n2566), .A4(
        i_tv80_core_RegBusC_9_), .A5(n3159), .Y(n4083) );
  AO221X1_RVT U4684 ( .A1(n2567), .A2(n2613), .A3(i_tv80_core_SP_9_), .A4(
        n4250), .A5(n4083), .Y(n2086) );
  AO22X1_RVT U4685 ( .A1(n2555), .A2(di_reg_1_), .A3(i_tv80_core_ACC_1_), .A4(
        n2591), .Y(n4084) );
  AO221X1_RVT U4686 ( .A1(i_tv80_core_SP_9_), .A2(n2612), .A3(
        i_tv80_core_SP_1_), .A4(n2610), .A5(n4084), .Y(n4085) );
  AO221X1_RVT U4687 ( .A1(n2620), .A2(i_tv80_core_RegBusA_9_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_1_), .A5(n4086), .Y(n2485) );
  AO221X1_RVT U4688 ( .A1(n2634), .A2(n5112), .A3(n2566), .A4(
        i_tv80_core_RegBusC_10_), .A5(n3159), .Y(n4088) );
  AO221X1_RVT U4689 ( .A1(n2567), .A2(n2608), .A3(i_tv80_core_SP_10_), .A4(
        n4250), .A5(n4088), .Y(n2085) );
  AO22X1_RVT U4690 ( .A1(n2555), .A2(di_reg_2_), .A3(i_tv80_core_ACC_2_), .A4(
        n2591), .Y(n4089) );
  AO221X1_RVT U4691 ( .A1(i_tv80_core_SP_10_), .A2(n2612), .A3(
        i_tv80_core_SP_2_), .A4(n2610), .A5(n4089), .Y(n4090) );
  AO221X1_RVT U4692 ( .A1(n2620), .A2(i_tv80_core_RegBusA_10_), .A3(n2623), 
        .A4(n2474), .A5(n4091), .Y(n2484) );
  AO221X1_RVT U4693 ( .A1(n2634), .A2(n5118), .A3(n2566), .A4(
        i_tv80_core_RegBusC_13_), .A5(n3159), .Y(n4093) );
  AO221X1_RVT U4694 ( .A1(n2567), .A2(n2596), .A3(i_tv80_core_SP_13_), .A4(
        n4250), .A5(n4093), .Y(n2082) );
  AO22X1_RVT U4695 ( .A1(n2555), .A2(di_reg_5_), .A3(n2591), .A4(
        i_tv80_core_ACC_5_), .Y(n4094) );
  AO221X1_RVT U4696 ( .A1(i_tv80_core_SP_13_), .A2(n2612), .A3(
        i_tv80_core_SP_5_), .A4(n2610), .A5(n4094), .Y(n4095) );
  AO221X1_RVT U4697 ( .A1(n2620), .A2(i_tv80_core_RegBusA_13_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_5_), .A5(n4096), .Y(n2143) );
  AO221X1_RVT U4698 ( .A1(i_tv80_core_SP_14_), .A2(n4250), .A3(n2566), .A4(
        i_tv80_core_RegBusC_14_), .A5(n3159), .Y(n4100) );
  AO221X1_RVT U4699 ( .A1(n2634), .A2(n5120), .A3(n2567), .A4(n2674), .A5(
        n4100), .Y(n2081) );
  AO22X1_RVT U4700 ( .A1(n2555), .A2(di_reg_6_), .A3(i_tv80_core_ACC_6_), .A4(
        n2591), .Y(n4101) );
  AO221X1_RVT U4701 ( .A1(i_tv80_core_SP_14_), .A2(n2612), .A3(
        i_tv80_core_SP_6_), .A4(n2610), .A5(n4101), .Y(n4102) );
  AO221X1_RVT U4702 ( .A1(n2620), .A2(i_tv80_core_RegBusA_14_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_6_), .A5(n4103), .Y(n2142) );
  INVX1_RVT U4703 ( .A(n5350), .Y(n5084) );
  AND2X1_RVT U4704 ( .A1(n2545), .A2(n5084), .Y(n5382) );
  NAND2X0_RVT U4705 ( .A1(n2771), .A2(n4104), .Y(n4106) );
  OAI22X1_RVT U4706 ( .A1(n4105), .A2(n4106), .A3(n500), .A4(n1147), .Y(n2133)
         );
  NAND2X0_RVT U4707 ( .A1(n3143), .A2(n4109), .Y(n4112) );
  INVX1_RVT U4708 ( .A(n4114), .Y(n4115) );
  AO22X1_RVT U4709 ( .A1(n2356), .A2(n2532), .A3(n4115), .A4(mcycle_0_), .Y(
        n4120) );
  NAND2X0_RVT U4710 ( .A1(n2754), .A2(n4116), .Y(n4117) );
  NAND3X0_RVT U4711 ( .A1(n4404), .A2(n3609), .A3(n4117), .Y(n4118) );
  NAND4X0_RVT U4712 ( .A1(n3151), .A2(n4120), .A3(n4119), .A4(n4118), .Y(n4467) );
  NAND2X0_RVT U4713 ( .A1(n2673), .A2(n4464), .Y(n4536) );
  INVX1_RVT U4714 ( .A(n4163), .Y(n4129) );
  AND3X1_RVT U4715 ( .A1(n4129), .A2(i_tv80_core_RegBusA_0_), .A3(n4566), .Y(
        n4122) );
  AND4X1_RVT U4716 ( .A1(n4635), .A2(n4675), .A3(n4122), .A4(n4643), .Y(n4127)
         );
  NAND2X0_RVT U4717 ( .A1(n4689), .A2(n4123), .Y(n4558) );
  AND3X1_RVT U4719 ( .A1(n4125), .A2(n4598), .A3(n4607), .Y(n4126) );
  NAND4X0_RVT U4720 ( .A1(n4127), .A2(n4495), .A3(n4681), .A4(n4126), .Y(n4167) );
  AND4X1_RVT U4721 ( .A1(n4617), .A2(n4666), .A3(n4580), .A4(n4651), .Y(n4128)
         );
  NAND3X0_RVT U4722 ( .A1(n4543), .A2(n4592), .A3(n4128), .Y(n4166) );
  AO21X1_RVT U4723 ( .A1(n4130), .A2(i_tv80_core_Save_ALU_r), .A3(n4129), .Y(
        n4165) );
  INVX1_RVT U4724 ( .A(n4131), .Y(n4209) );
  INVX1_RVT U4725 ( .A(n4132), .Y(n4213) );
  AND3X1_RVT U4726 ( .A1(n4213), .A2(n4210), .A3(n2779), .Y(n4135) );
  AND4X1_RVT U4727 ( .A1(n2760), .A2(n4133), .A3(n2783), .A4(n4207), .Y(n4134)
         );
  AND3X1_RVT U4728 ( .A1(n4187), .A2(n2727), .A3(n4186), .Y(n4138) );
  AND4X1_RVT U4729 ( .A1(n4192), .A2(n4136), .A3(n4189), .A4(n4188), .Y(n4137)
         );
  AND3X1_RVT U4730 ( .A1(n3887), .A2(n3881), .A3(n3831), .Y(n4141) );
  INVX1_RVT U4731 ( .A(n4139), .Y(n4195) );
  AND4X1_RVT U4732 ( .A1(n4195), .A2(n2798), .A3(n2797), .A4(n2799), .Y(n4140)
         );
  AO21X1_RVT U4733 ( .A1(n500), .A2(n348), .A3(i_tv80_core_F_6_), .Y(n4143) );
  AND3X1_RVT U4734 ( .A1(n2765), .A2(n2772), .A3(n2778), .Y(n4142) );
  NAND3X0_RVT U4735 ( .A1(n2788), .A2(n4143), .A3(n4142), .Y(n4162) );
  INVX1_RVT U4736 ( .A(n4270), .Y(n4224) );
  AND3X1_RVT U4737 ( .A1(n2773), .A2(n4148), .A3(n2766), .Y(n4144) );
  NAND3X0_RVT U4738 ( .A1(n4224), .A2(n2751), .A3(n4144), .Y(n4161) );
  AO221X1_RVT U4739 ( .A1(n4148), .A2(n4147), .A3(n4146), .A4(n3143), .A5(
        n4145), .Y(n4273) );
  INVX1_RVT U4740 ( .A(n4273), .Y(n4160) );
  OA221X1_RVT U4741 ( .A1(n311), .A2(n4149), .A3(n310), .A4(n5079), .A5(n4782), 
        .Y(n4159) );
  OA22X1_RVT U4742 ( .A1(n308), .A2(n4151), .A3(n4785), .A4(n4150), .Y(n4158)
         );
  OA22X1_RVT U4743 ( .A1(n306), .A2(n4153), .A3(n4801), .A4(n4152), .Y(n4157)
         );
  OA22X1_RVT U4744 ( .A1(n304), .A2(n4155), .A3(n303), .A4(n4154), .Y(n4156)
         );
  NAND4X0_RVT U4745 ( .A1(n4159), .A2(n4158), .A3(n4157), .A4(n4156), .Y(n4222) );
  NAND3X0_RVT U4746 ( .A1(n2763), .A2(n4165), .A3(n4163), .Y(n4164) );
  OA221X1_RVT U4747 ( .A1(n4166), .A2(n4167), .A3(i_tv80_core_IncDecZ), .A4(
        n4165), .A5(n4164), .Y(n2187) );
  MUX21X1_RVT U4748 ( .A1(n4168), .A2(n4176), .S0(n4796), .Y(n4169) );
  NAND2X0_RVT U4749 ( .A1(n3158), .A2(n4169), .Y(n2108) );
  NAND2X0_RVT U4750 ( .A1(n3147), .A2(n4367), .Y(n4172) );
  AND3X1_RVT U4751 ( .A1(n4173), .A2(n4172), .A3(n4171), .Y(n4370) );
  NAND2X0_RVT U4752 ( .A1(n2536), .A2(n2320), .Y(n4372) );
  AO21X1_RVT U4753 ( .A1(n4174), .A2(n4372), .A3(n4330), .Y(n4175) );
  NAND2X0_RVT U4754 ( .A1(n4370), .A2(n4175), .Y(n4235) );
  INVX1_RVT U4755 ( .A(n4235), .Y(n4177) );
  NAND2X0_RVT U4756 ( .A1(n4177), .A2(n4176), .Y(n4245) );
  NAND2X0_RVT U4757 ( .A1(n4277), .A2(n5112), .Y(n4179) );
  INVX1_RVT U4758 ( .A(n4372), .Y(n4374) );
  NAND3X0_RVT U4759 ( .A1(n4374), .A2(i_tv80_core_IncDecZ), .A3(n4360), .Y(
        n4178) );
  NAND4X0_RVT U4760 ( .A1(n4179), .A2(n4235), .A3(n3156), .A4(n4178), .Y(n4244) );
  NAND2X0_RVT U4761 ( .A1(n348), .A2(n4148), .Y(n4204) );
  INVX1_RVT U4762 ( .A(n4204), .Y(n4271) );
  AND2X1_RVT U4763 ( .A1(n4271), .A2(n4182), .Y(n4218) );
  NAND2X0_RVT U4764 ( .A1(n4261), .A2(n4183), .Y(n4363) );
  INVX1_RVT U4765 ( .A(n4363), .Y(n4276) );
  NAND2X0_RVT U4766 ( .A1(n2727), .A2(n4194), .Y(n4231) );
  XNOR3X1_RVT U4767 ( .A1(n3831), .A2(n3795), .A3(n4196), .Y(n4197) );
  XNOR3X1_RVT U4768 ( .A1(n4199), .A2(n4198), .A3(n4197), .Y(n4200) );
  NAND2X0_RVT U4769 ( .A1(n4201), .A2(n4200), .Y(n4220) );
  AO21X1_RVT U4770 ( .A1(i_tv80_core_ALU_Op_r_1_), .A2(n4203), .A3(n4202), .Y(
        n4219) );
  NAND2X0_RVT U4771 ( .A1(n4273), .A2(i_tv80_core_F_2_), .Y(n4221) );
  OA21X1_RVT U4772 ( .A1(n4204), .A2(n4219), .A3(n4221), .Y(n4205) );
  NAND4X0_RVT U4773 ( .A1(n4231), .A2(n4220), .A3(n4222), .A4(n4205), .Y(n4217) );
  XNOR3X1_RVT U4774 ( .A1(n4210), .A2(n4209), .A3(n4208), .Y(n4212) );
  NAND2X0_RVT U4775 ( .A1(n4215), .A2(n4214), .Y(n4229) );
  INVX1_RVT U4776 ( .A(n4229), .Y(n4216) );
  AO222X1_RVT U4777 ( .A1(n4218), .A2(n4276), .A3(n4276), .A4(n4217), .A5(
        n4216), .A6(n4276), .Y(n4234) );
  INVX1_RVT U4778 ( .A(n4219), .Y(n4223) );
  AND4X1_RVT U4779 ( .A1(n4223), .A2(n4222), .A3(n4221), .A4(n4220), .Y(n4232)
         );
  NAND4X0_RVT U4780 ( .A1(n4230), .A2(n4231), .A3(n4232), .A4(n4229), .Y(n4233) );
  AND2X1_RVT U4781 ( .A1(n4234), .A2(n4233), .Y(n4243) );
  AO22X1_RVT U4782 ( .A1(i_tv80_core_Fp_2_), .A2(n4239), .A3(
        i_tv80_core_IntE_FF2), .A4(n4238), .Y(n4240) );
  AO22X1_RVT U4783 ( .A1(n4361), .A2(n4241), .A3(n2417), .A4(n4240), .Y(n4242)
         );
  AO222X1_RVT U4784 ( .A1(n4245), .A2(n4244), .A3(n4243), .A4(n2589), .A5(
        n2589), .A6(n4242), .Y(n2115) );
  AO221X1_RVT U4785 ( .A1(n2634), .A2(n5108), .A3(n2566), .A4(
        i_tv80_core_RegBusC_8_), .A5(n3159), .Y(n4249) );
  AO221X1_RVT U4786 ( .A1(n2567), .A2(n2614), .A3(i_tv80_core_SP_8_), .A4(
        n4250), .A5(n4249), .Y(n2087) );
  AO22X1_RVT U4787 ( .A1(n2555), .A2(di_reg_0_), .A3(i_tv80_core_ACC_0_), .A4(
        n2591), .Y(n4251) );
  AO221X1_RVT U4788 ( .A1(i_tv80_core_SP_8_), .A2(n2612), .A3(
        i_tv80_core_SP_0_), .A4(n2610), .A5(n4251), .Y(n4252) );
  AO221X1_RVT U4789 ( .A1(n2620), .A2(i_tv80_core_RegBusA_8_), .A3(n2623), 
        .A4(i_tv80_core_RegBusA_0_), .A5(n4253), .Y(n2148) );
  NAND2X0_RVT U4790 ( .A1(n4255), .A2(n4254), .Y(n4811) );
  OA22X1_RVT U4791 ( .A1(n2731), .A2(n4257), .A3(i_tv80_core_ALU_Op_r_3_), 
        .A4(n4256), .Y(n4259) );
  INVX1_RVT U4792 ( .A(n4804), .Y(n4258) );
  NAND2X0_RVT U4793 ( .A1(n4258), .A2(n2571), .Y(n4808) );
  OA221X1_RVT U4794 ( .A1(n4811), .A2(n4260), .A3(n4259), .A4(n4806), .A5(
        n4808), .Y(n4264) );
  NAND2X0_RVT U4795 ( .A1(n4261), .A2(n4360), .Y(n4263) );
  OAI221X1_RVT U4796 ( .A1(n4264), .A2(n4263), .A3(n4262), .A4(n4814), .A5(
        reset_n), .Y(n4265) );
  MUX21X1_RVT U4797 ( .A1(n4267), .A2(n4266), .S0(n4796), .Y(n4268) );
  NAND2X0_RVT U4798 ( .A1(n3158), .A2(n4268), .Y(n2103) );
  AO221X1_RVT U4799 ( .A1(n2727), .A2(n4274), .A3(n4273), .A4(i_tv80_core_F_7_), .A5(n4272), .Y(n4275) );
  AO222X1_RVT U4800 ( .A1(i_tv80_core_Fp_7_), .A2(n2417), .A3(n4276), .A4(
        n4275), .A5(n4361), .A6(di_reg_7_), .Y(n4278) );
  AO221X1_RVT U4801 ( .A1(n4278), .A2(n4360), .A3(n4277), .A4(n5125), .A5(
        n3159), .Y(n4279) );
  INVX1_RVT U4802 ( .A(n4340), .Y(n4280) );
  INVX1_RVT U4803 ( .A(n4337), .Y(n4341) );
  AND3X1_RVT U4804 ( .A1(n2664), .A2(n3103), .A3(n4341), .Y(n4282) );
  AND2X1_RVT U4805 ( .A1(n4341), .A2(n4340), .Y(n4281) );
  OA21X1_RVT U4806 ( .A1(n4281), .A2(n5132), .A3(reset_n), .Y(n4283) );
  MUX21X1_RVT U4807 ( .A1(n4282), .A2(i_tv80_core_XY_State_0_), .S0(n4283), 
        .Y(n2101) );
  AND3X1_RVT U4808 ( .A1(n2664), .A2(n3126), .A3(n4341), .Y(n4284) );
  MUX21X1_RVT U4809 ( .A1(n4284), .A2(i_tv80_core_XY_State_1_), .S0(n4283), 
        .Y(n2100) );
  OA221X1_RVT U4810 ( .A1(n4860), .A2(n4330), .A3(n4341), .A4(n5132), .A5(
        reset_n), .Y(n4285) );
  MUX21X1_RVT U4811 ( .A1(n5133), .A2(i_tv80_core_XY_Ind), .S0(n4285), .Y(
        n2102) );
  AO21X1_RVT U4812 ( .A1(n5140), .A2(n2776), .A3(n3159), .Y(n4286) );
  INVX1_RVT U4813 ( .A(n4286), .Y(n4287) );
  AO22X1_RVT U4814 ( .A1(n2611), .A2(mcycle_2_), .A3(i_tv80_core_Pre_XY_F_M_2_), .A4(n4287), .Y(n2151) );
  AO22X1_RVT U4815 ( .A1(n2295), .A2(mcycle_0_), .A3(n4287), .A4(
        i_tv80_core_Pre_XY_F_M_0_), .Y(n2152) );
  AO22X1_RVT U4816 ( .A1(n2295), .A2(n2532), .A3(n4287), .A4(
        i_tv80_core_Pre_XY_F_M_1_), .Y(n2150) );
  NAND2X0_RVT U4817 ( .A1(i_tv80_core_Pre_XY_F_M_1_), .A2(
        i_tv80_core_Pre_XY_F_M_0_), .Y(n4425) );
  INVX1_RVT U4818 ( .A(n4425), .Y(n4288) );
  NAND2X0_RVT U4819 ( .A1(n2394), .A2(n4289), .Y(n4431) );
  INVX1_RVT U4820 ( .A(n4431), .Y(n4423) );
  INVX1_RVT U4821 ( .A(n4290), .Y(n4421) );
  NAND2X0_RVT U4822 ( .A1(n4421), .A2(n2584), .Y(n4430) );
  AO221X1_RVT U4823 ( .A1(n4423), .A2(n4292), .A3(n2443), .A4(n4291), .A5(
        n5140), .Y(n4293) );
  AND2X1_RVT U4824 ( .A1(n4293), .A2(n3156), .Y(n4294) );
  NAND2X0_RVT U4825 ( .A1(reset_n), .A2(n4312), .Y(n4304) );
  NAND2X0_RVT U4826 ( .A1(i_tv80_core_BusReq_s), .A2(reset_n), .Y(n4436) );
  NAND2X0_RVT U4827 ( .A1(n4304), .A2(n4436), .Y(n4419) );
  INVX1_RVT U4828 ( .A(n4419), .Y(n4434) );
  MUX21X1_RVT U4829 ( .A1(mcycle_2_), .A2(n4294), .S0(n4434), .Y(n2486) );
  NAND2X0_RVT U4830 ( .A1(n273), .A2(n2536), .Y(n4296) );
  NAND3X0_RVT U4831 ( .A1(n2536), .A2(n5333), .A3(n3107), .Y(n4299) );
  AO21X1_RVT U4832 ( .A1(n4297), .A2(n4301), .A3(n5372), .Y(n4298) );
  AND3X1_RVT U4833 ( .A1(n4302), .A2(reset_n), .A3(n4301), .Y(n4303) );
  INVX1_RVT U4834 ( .A(n4304), .Y(n5380) );
  NAND2X0_RVT U4835 ( .A1(n4324), .A2(n4305), .Y(n4308) );
  INVX1_RVT U4836 ( .A(n4306), .Y(n4307) );
  AO222X1_RVT U4837 ( .A1(n2577), .A2(n4309), .A3(n4838), .A4(n4308), .A5(
        n2536), .A6(n4307), .Y(n5362) );
  INVX1_RVT U4838 ( .A(n5362), .Y(n5369) );
  NAND2X0_RVT U4839 ( .A1(n5366), .A2(n4310), .Y(n4311) );
  NAND2X0_RVT U4840 ( .A1(n5369), .A2(n4311), .Y(n1602) );
  OA21X1_RVT U4841 ( .A1(n2440), .A2(n192), .A3(reset_n), .Y(n4315) );
  OA22X1_RVT U4842 ( .A1(n4311), .A2(i_tv80_core_Auto_Wait_t2), .A3(n5369), 
        .A4(i_tv80_core_Auto_Wait_t1), .Y(n4313) );
  NAND2X0_RVT U4843 ( .A1(i_tv80_core_BusReq_s), .A2(i_tv80_core_BusAck), .Y(
        n4335) );
  AND3X1_RVT U4844 ( .A1(n5380), .A2(tstate_0_), .A3(n4318), .Y(n4317) );
  AO21X1_RVT U4845 ( .A1(n5380), .A2(n192), .A3(n4316), .Y(n4319) );
  MUX21X1_RVT U4846 ( .A1(n4317), .A2(n4319), .S0(tstate_1_), .Y(n2182) );
  AO22X1_RVT U4847 ( .A1(n194), .A2(tstate_2_), .A3(n3138), .A4(n4318), .Y(
        n4320) );
  AO22X1_RVT U4848 ( .A1(n5380), .A2(n4320), .A3(tstate_2_), .A4(n4319), .Y(
        n2180) );
  INVX1_RVT U4849 ( .A(n2320), .Y(n4727) );
  NAND4X0_RVT U4850 ( .A1(n4727), .A2(n4323), .A3(n4322), .A4(n4822), .Y(n4398) );
  INVX1_RVT U4851 ( .A(n4398), .Y(n4326) );
  NAND2X0_RVT U4852 ( .A1(n4324), .A2(n4731), .Y(n4376) );
  INVX1_RVT U4853 ( .A(n4376), .Y(n4325) );
  AND3X1_RVT U4854 ( .A1(n4326), .A2(n2548), .A3(n4325), .Y(n4327) );
  NAND3X0_RVT U4855 ( .A1(n2710), .A2(n4333), .A3(n4328), .Y(n4329) );
  AND2X1_RVT U4856 ( .A1(n3146), .A2(n4329), .Y(n4332) );
  NAND2X0_RVT U4857 ( .A1(n2710), .A2(n2554), .Y(n4437) );
  AND2X1_RVT U4858 ( .A1(n4437), .A2(n4329), .Y(n4331) );
  OA21X1_RVT U4859 ( .A1(n4331), .A2(n4330), .A3(reset_n), .Y(n4438) );
  MUX21X1_RVT U4860 ( .A1(n4332), .A2(i_tv80_core_IStatus_0_), .S0(n4438), .Y(
        n2120) );
  NAND3X0_RVT U4861 ( .A1(i_tv80_core_Halt_FF), .A2(reset_n), .A3(n4889), .Y(
        n1287) );
  INVX1_RVT U4862 ( .A(n4333), .Y(n4334) );
  NAND2X0_RVT U4863 ( .A1(n4334), .A2(n3142), .Y(n4888) );
  INVX1_RVT U4864 ( .A(n4888), .Y(n4336) );
  NAND4X0_RVT U4865 ( .A1(n3156), .A2(n2296), .A3(n4336), .A4(n4335), .Y(n1288) );
  AO221X1_RVT U4866 ( .A1(di_0_), .A2(n4441), .A3(n4440), .A4(n2316), .A5(
        n2407), .Y(n2159) );
  AND2X1_RVT U4867 ( .A1(n2664), .A2(n4337), .Y(n4339) );
  MUX21X1_RVT U4868 ( .A1(n4339), .A2(n3152), .S0(n2662), .Y(n2160) );
  AND3X1_RVT U4869 ( .A1(n4341), .A2(n3146), .A3(n4340), .Y(n4343) );
  MUX21X1_RVT U4870 ( .A1(n4343), .A2(n4342), .S0(n2662), .Y(n2161) );
  INVX1_RVT U4871 ( .A(n4344), .Y(n4350) );
  INVX1_RVT U4872 ( .A(n4345), .Y(n4348) );
  AND3X1_RVT U4873 ( .A1(n4348), .A2(n4347), .A3(n4346), .Y(n4349) );
  NAND4X0_RVT U4874 ( .A1(n4350), .A2(n2635), .A3(n4351), .A4(n4349), .Y(n4356) );
  NAND2X0_RVT U4875 ( .A1(n4353), .A2(n4352), .Y(n4354) );
  AO221X1_RVT U4876 ( .A1(n3143), .A2(n4356), .A3(n4355), .A4(n3151), .A5(
        n4354), .Y(n4357) );
  AND2X1_RVT U4877 ( .A1(n2402), .A2(n4357), .Y(n5387) );
  MUX21X1_RVT U4878 ( .A1(n4366), .A2(n4358), .S0(n4796), .Y(n4359) );
  NAND2X0_RVT U4879 ( .A1(reset_n), .A2(n4359), .Y(n2104) );
  NAND4X0_RVT U4880 ( .A1(n108), .A2(n109), .A3(n107), .A4(n4361), .Y(n4365)
         );
  AND3X1_RVT U4881 ( .A1(n113), .A2(n114), .A3(n112), .Y(n4362) );
  NAND3X0_RVT U4882 ( .A1(n110), .A2(n111), .A3(n4362), .Y(n4364) );
  OA222X1_RVT U4883 ( .A1(n4367), .A2(n4366), .A3(n4365), .A4(n4364), .A5(
        n4363), .A6(n2763), .Y(n4369) );
  MUX21X1_RVT U4884 ( .A1(n4371), .A2(i_tv80_core_F_6_), .S0(n4370), .Y(n2112)
         );
  NAND2X0_RVT U4885 ( .A1(n4372), .A2(n5332), .Y(n4820) );
  AO21X1_RVT U4886 ( .A1(n2536), .A2(n4373), .A3(n2493), .Y(n4375) );
  AO222X1_RVT U4887 ( .A1(n460), .A2(n4820), .A3(i_tv80_core_F_6_), .A4(n4375), 
        .A5(n4176), .A6(n4374), .Y(n1604) );
  NAND2X0_RVT U4888 ( .A1(i_tv80_core_ISet_1_), .A2(n4376), .Y(n4390) );
  INVX1_RVT U4889 ( .A(n4377), .Y(n4379) );
  AO21X1_RVT U4890 ( .A1(n4379), .A2(n5049), .A3(n4378), .Y(n4382) );
  OA21X1_RVT U4891 ( .A1(n3332), .A2(n2300), .A3(n4380), .Y(n4381) );
  NAND4X0_RVT U4892 ( .A1(n4383), .A2(n5050), .A3(n4382), .A4(n4381), .Y(n4387) );
  NAND3X0_RVT U4893 ( .A1(n4384), .A2(n4831), .A3(n2563), .Y(n4386) );
  INVX1_RVT U4894 ( .A(n4385), .Y(n4825) );
  NOR4X1_RVT U4895 ( .A1(n4387), .A2(n5085), .A3(n4825), .A4(n4386), .Y(n4388)
         );
  NAND4X0_RVT U4896 ( .A1(n4391), .A2(n5302), .A3(n4390), .A4(n4389), .Y(n4392) );
  AND2X1_RVT U4897 ( .A1(n3156), .A2(n4392), .Y(n5392) );
  AND2X1_RVT U4898 ( .A1(n3146), .A2(n3151), .Y(n4399) );
  NAND2X0_RVT U4899 ( .A1(n2338), .A2(n4871), .Y(n4393) );
  AND3X1_RVT U4900 ( .A1(n2706), .A2(n5340), .A3(n4393), .Y(n4395) );
  NAND4X0_RVT U4901 ( .A1(n4848), .A2(n5056), .A3(n5053), .A4(n4396), .Y(n4397) );
  AO22X1_RVT U4902 ( .A1(n4399), .A2(n4398), .A3(n2545), .A4(n4397), .Y(n5391)
         );
  NAND2X0_RVT U4903 ( .A1(n2599), .A2(n5344), .Y(n4409) );
  OA221X1_RVT U4904 ( .A1(n4358), .A2(n4403), .A3(n329), .A4(n2492), .A5(n4401), .Y(n4405) );
  OA22X1_RVT U4905 ( .A1(n4407), .A2(n3609), .A3(n4405), .A4(n4404), .Y(n4408)
         );
  AND4X1_RVT U4906 ( .A1(n5320), .A2(n4410), .A3(n4409), .A4(n4408), .Y(n4411)
         );
  NAND4X0_RVT U4907 ( .A1(n4733), .A2(n4413), .A3(n4412), .A4(n4411), .Y(n4417) );
  AO222X1_RVT U4908 ( .A1(n3142), .A2(n4417), .A3(n4416), .A4(n4415), .A5(
        n3151), .A6(n4414), .Y(n4418) );
  AND2X1_RVT U4909 ( .A1(n3156), .A2(n4418), .Y(n5393) );
  AO22X1_RVT U4910 ( .A1(n4434), .A2(reset_n), .A3(n2532), .A4(n4419), .Y(
        n4429) );
  NAND4X0_RVT U4911 ( .A1(n2584), .A2(n4422), .A3(n4421), .A4(n4420), .Y(n4428) );
  OR2X1_RVT U4912 ( .A1(i_tv80_core_Pre_XY_F_M_1_), .A2(
        i_tv80_core_Pre_XY_F_M_0_), .Y(n4424) );
  NAND3X0_RVT U4913 ( .A1(n4423), .A2(n4424), .A3(n4425), .Y(n4427) );
  AND2X1_RVT U4914 ( .A1(n4434), .A2(n2340), .Y(n4426) );
  OA22X1_RVT U4915 ( .A1(i_tv80_core_Pre_XY_F_M_0_), .A2(n4431), .A3(mcycle_0_), .A4(n4430), .Y(n4432) );
  NAND3X0_RVT U4916 ( .A1(n4432), .A2(n4433), .A3(n3156), .Y(n4435) );
  INVX1_RVT U4917 ( .A(n4436), .Y(n5094) );
  AND2X1_RVT U4918 ( .A1(n5094), .A2(n2296), .Y(i_tv80_core_N1441) );
  AND2X1_RVT U4919 ( .A1(n3146), .A2(n4437), .Y(n4439) );
  MUX21X1_RVT U4920 ( .A1(n4439), .A2(i_tv80_core_IStatus_1_), .S0(n4438), .Y(
        n2119) );
  AO221X1_RVT U4921 ( .A1(di_3_), .A2(n4441), .A3(n4440), .A4(n3150), .A5(
        n2407), .Y(n2156) );
  NAND3X0_RVT U4922 ( .A1(n4442), .A2(n4777), .A3(n4475), .Y(n4472) );
  INVX1_RVT U4923 ( .A(n5151), .Y(n5134) );
  NAND2X0_RVT U4924 ( .A1(n5134), .A2(n4484), .Y(n4469) );
  INVX1_RVT U4925 ( .A(n4469), .Y(n4447) );
  NAND2X0_RVT U4926 ( .A1(n2385), .A2(n4443), .Y(n4444) );
  NAND3X0_RVT U4927 ( .A1(n4444), .A2(n4485), .A3(n4467), .Y(n4445) );
  NAND2X0_RVT U4928 ( .A1(n4447), .A2(n4445), .Y(n4490) );
  NAND2X0_RVT U4929 ( .A1(n4446), .A2(n5351), .Y(n4459) );
  NAND3X0_RVT U4930 ( .A1(n4489), .A2(n4777), .A3(n4490), .Y(n4471) );
  NAND2X0_RVT U4931 ( .A1(n2759), .A2(tstate_2_), .Y(n4473) );
  AND3X1_RVT U4932 ( .A1(n4538), .A2(n4485), .A3(n2673), .Y(n4465) );
  NAND2X0_RVT U4933 ( .A1(n4458), .A2(n4448), .Y(n4464) );
  INVX1_RVT U4934 ( .A(n4538), .Y(n4454) );
  NAND3X0_RVT U4935 ( .A1(n197), .A2(tstate_1_), .A3(tstate_0_), .Y(n4449) );
  NAND2X0_RVT U4936 ( .A1(n4449), .A2(n4473), .Y(n4451) );
  NAND4X0_RVT U4937 ( .A1(n2523), .A2(n4451), .A3(n4450), .A4(n3144), .Y(n4452) );
  NAND2X0_RVT U4938 ( .A1(n4452), .A2(n4534), .Y(n4453) );
  OAI22X1_RVT U4939 ( .A1(n5134), .A2(n4454), .A3(n5333), .A4(n4453), .Y(n4463) );
  AO21X1_RVT U4940 ( .A1(n2521), .A2(n4456), .A3(n4455), .Y(n4458) );
  NAND3X0_RVT U4941 ( .A1(n4483), .A2(n4482), .A3(n4484), .Y(n4457) );
  AO221X1_RVT U4942 ( .A1(n4461), .A2(n4460), .A3(n4458), .A4(n4459), .A5(
        n4457), .Y(n4462) );
  AO22X1_RVT U4943 ( .A1(n4465), .A2(n4464), .A3(n4462), .A4(n4463), .Y(n4491)
         );
  NAND3X0_RVT U4944 ( .A1(n4467), .A2(n4485), .A3(n4466), .Y(n4468) );
  AND4X1_RVT U4945 ( .A1(n4484), .A2(n4483), .A3(n4482), .A4(n4468), .Y(n4470)
         );
  INVX1_RVT U4946 ( .A(n4473), .Y(n4474) );
  NAND2X0_RVT U4947 ( .A1(n4474), .A2(n2592), .Y(n4500) );
  NAND3X0_RVT U4948 ( .A1(n4490), .A2(n4500), .A3(n4489), .Y(n4477) );
  AND2X1_RVT U4949 ( .A1(n3146), .A2(n2409), .Y(n4481) );
  INVX1_RVT U4950 ( .A(n4478), .Y(n4479) );
  NAND3X0_RVT U4951 ( .A1(n5133), .A2(n3143), .A3(n4479), .Y(n4480) );
  AND4X1_RVT U4952 ( .A1(i_tv80_core_XY_State_1_), .A2(n4484), .A3(n4483), 
        .A4(n4482), .Y(n4488) );
  NAND2X0_RVT U4953 ( .A1(n2673), .A2(n4485), .Y(n4486) );
  AND3X1_RVT U4954 ( .A1(n4488), .A2(n4487), .A3(n4486), .Y(n4493) );
  MUX21X1_RVT U4955 ( .A1(n5333), .A2(n3138), .S0(n5366), .Y(n4494) );
  NAND2X0_RVT U4956 ( .A1(i_tv80_core_RegBusA_14_), .A2(n3130), .Y(n4497) );
  NAND3X0_RVT U4957 ( .A1(n3135), .A2(n4497), .A3(n4495), .Y(n4524) );
  INVX1_RVT U4958 ( .A(i_tv80_core_RegBusA_14_), .Y(n4496) );
  NAND2X0_RVT U4959 ( .A1(n3132), .A2(n4496), .Y(n4514) );
  INVX1_RVT U4960 ( .A(n4497), .Y(n4498) );
  NAND2X0_RVT U4961 ( .A1(n4498), .A2(n3137), .Y(n4508) );
  NAND2X0_RVT U4962 ( .A1(n2368), .A2(n2769), .Y(n4551) );
  INVX1_RVT U4963 ( .A(i_tv80_core_RegBusB_15_), .Y(n4505) );
  NAND2X0_RVT U4964 ( .A1(n4502), .A2(n4501), .Y(n4503) );
  AOI22X1_RVT U4965 ( .A1(i_tv80_core_RegBusA_r_15_), .A2(n4691), .A3(n2368), 
        .A4(n4503), .Y(n4504) );
  OA221X1_RVT U4966 ( .A1(n2364), .A2(n4551), .A3(n4777), .A4(n4505), .A5(
        n4504), .Y(n4506) );
  OA221X1_RVT U4967 ( .A1(n4514), .A2(n4524), .A3(n4508), .A4(n4507), .A5(
        n4506), .Y(n4532) );
  INVX1_RVT U4968 ( .A(n4495), .Y(n4512) );
  AO21X1_RVT U4969 ( .A1(n4575), .A2(n4574), .A3(n3132), .Y(n4509) );
  AND2X1_RVT U4971 ( .A1(n4509), .A2(n5406), .Y(n4529) );
  INVX1_RVT U4972 ( .A(i_tv80_core_RegBusA_12_), .Y(n4540) );
  AO21X1_RVT U4973 ( .A1(n4540), .A2(n4573), .A3(n3132), .Y(n4510) );
  NAND2X0_RVT U4974 ( .A1(i_tv80_core_RegBusA_13_), .A2(n3130), .Y(n4544) );
  AND2X1_RVT U4975 ( .A1(n4510), .A2(n4544), .Y(n4528) );
  NAND2X0_RVT U4976 ( .A1(n4529), .A2(n4528), .Y(n4511) );
  INVX1_RVT U4977 ( .A(i_tv80_core_RegBusA_13_), .Y(n4513) );
  NAND2X0_RVT U4978 ( .A1(n3132), .A2(n4513), .Y(n4555) );
  AND3X1_RVT U4979 ( .A1(n4514), .A2(n4555), .A3(n3137), .Y(n4522) );
  AO21X1_RVT U4980 ( .A1(i_tv80_core_RegBusA_12_), .A2(i_tv80_core_RegBusA_11_), .A3(n3129), .Y(n4516) );
  AO21X1_RVT U4981 ( .A1(i_tv80_core_RegBusA_9_), .A2(i_tv80_core_RegBusA_8_), 
        .A3(n3129), .Y(n4515) );
  AND3X1_RVT U4982 ( .A1(n4516), .A2(n4515), .A3(n4590), .Y(n4556) );
  AO21X1_RVT U4983 ( .A1(n4518), .A2(n3129), .A3(n4517), .Y(n4615) );
  AO221X1_RVT U4984 ( .A1(i_tv80_core_RegBusA_1_), .A2(i_tv80_core_RegBusA_0_), 
        .A3(n2474), .A4(n3129), .A5(n4519), .Y(n4520) );
  NAND2X0_RVT U4985 ( .A1(i_tv80_core_RegBusA_3_), .A2(n2474), .Y(n4625) );
  NAND2X0_RVT U4986 ( .A1(n4625), .A2(n3132), .Y(n4663) );
  NAND4X0_RVT U4987 ( .A1(i_tv80_core_RegBusA_5_), .A2(i_tv80_core_RegBusA_7_), 
        .A3(i_tv80_core_RegBusA_4_), .A4(i_tv80_core_RegBusA_6_), .Y(n4577) );
  NAND2X0_RVT U4988 ( .A1(n4616), .A2(n4618), .Y(n4521) );
  NAND2X0_RVT U4989 ( .A1(n4618), .A2(n4616), .Y(n4525) );
  INVX1_RVT U4990 ( .A(n4534), .Y(n5371) );
  AO22X1_RVT U4991 ( .A1(n4886), .A2(n5358), .A3(tstate_0_), .A4(n5371), .Y(
        n4537) );
  NAND3X0_RVT U4992 ( .A1(n4537), .A2(n4536), .A3(n4535), .Y(n4539) );
  NAND2X0_RVT U4993 ( .A1(n4539), .A2(n4538), .Y(n4640) );
  AO21X1_RVT U4994 ( .A1(n2728), .A2(n2795), .A3(n4640), .Y(n4698) );
  NAND2X0_RVT U4995 ( .A1(n4575), .A2(n4574), .Y(n4571) );
  OA222X1_RVT U4996 ( .A1(n3132), .A2(n2507), .A3(n3132), .A4(n4540), .A5(
        n3132), .A6(n4573), .Y(n4541) );
  NAND2X0_RVT U4997 ( .A1(n4541), .A2(n5406), .Y(n4570) );
  INVX1_RVT U4998 ( .A(n4543), .Y(n4542) );
  NAND3X0_RVT U4999 ( .A1(n4542), .A2(n3137), .A3(n4555), .Y(n4562) );
  NAND3X0_RVT U5000 ( .A1(n3137), .A2(n4544), .A3(n4543), .Y(n4564) );
  INVX1_RVT U5001 ( .A(n4544), .Y(n4545) );
  NAND2X0_RVT U5002 ( .A1(n4545), .A2(n3137), .Y(n4553) );
  INVX1_RVT U5003 ( .A(n4546), .Y(n4552) );
  NAND2X0_RVT U5004 ( .A1(n4548), .A2(n4547), .Y(n4549) );
  AOI222X1_RVT U5005 ( .A1(i_tv80_core_RegBusB_14_), .A2(n4778), .A3(n2368), 
        .A4(n4549), .A5(i_tv80_core_RegBusA_r_14_), .A6(n4691), .Y(n4550) );
  OA221X1_RVT U5006 ( .A1(n4543), .A2(n4553), .A3(n4552), .A4(n4551), .A5(
        n4550), .Y(n4554) );
  AO21X1_RVT U5007 ( .A1(n4557), .A2(n4644), .A3(n3132), .Y(n4623) );
  OA21X1_RVT U5008 ( .A1(n2667), .A2(n3132), .A3(n4623), .Y(n4561) );
  NAND2X0_RVT U5009 ( .A1(i_tv80_core_RegBusA_2_), .A2(n3130), .Y(n4626) );
  INVX1_RVT U5010 ( .A(n4562), .Y(n4563) );
  INVX1_RVT U5011 ( .A(n4564), .Y(n4565) );
  MUX21X1_RVT U5012 ( .A1(i_tv80_core_i_reg_RegsH_7__6_), .A2(n2459), .S0(
        n2652), .Y(n2001) );
  INVX1_RVT U5013 ( .A(n4566), .Y(n4567) );
  AO221X1_RVT U5014 ( .A1(i_tv80_core_RegBusA_r_13_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_13_), .A4(n4778), .A5(n2688), .Y(n4569) );
  NAND2X0_RVT U5015 ( .A1(n4571), .A2(n3130), .Y(n4587) );
  NAND2X0_RVT U5016 ( .A1(i_tv80_core_RegBusA_11_), .A2(n3130), .Y(n4572) );
  NAND3X0_RVT U5017 ( .A1(n4587), .A2(n5406), .A3(n4572), .Y(n4583) );
  NAND2X0_RVT U5018 ( .A1(n3132), .A2(n4573), .Y(n4576) );
  NAND2X0_RVT U5019 ( .A1(n3132), .A2(n4574), .Y(n4589) );
  NAND2X0_RVT U5020 ( .A1(n3132), .A2(n4575), .Y(n4604) );
  AND4X1_RVT U5021 ( .A1(n4576), .A2(n4590), .A3(n4589), .A4(n4604), .Y(n4578)
         );
  NAND3X0_RVT U5022 ( .A1(n2514), .A2(n2496), .A3(n4578), .Y(n4581) );
  NAND4X0_RVT U5023 ( .A1(n4581), .A2(n4580), .A3(n4579), .A4(n3135), .Y(n4701) );
  INVX1_RVT U5024 ( .A(n4580), .Y(n4584) );
  NAND3X0_RVT U5025 ( .A1(n4583), .A2(n3135), .A3(n4584), .Y(n4585) );
  NAND2X0_RVT U5026 ( .A1(n2368), .A2(n5116), .Y(n4659) );
  NAND2X0_RVT U5027 ( .A1(n4585), .A2(n4659), .Y(n4586) );
  NAND2X0_RVT U5028 ( .A1(n5406), .A2(n4587), .Y(n4595) );
  INVX1_RVT U5029 ( .A(n4595), .Y(n4591) );
  NAND4X0_RVT U5030 ( .A1(n4594), .A2(n4592), .A3(n3135), .A4(n4591), .Y(n4703) );
  INVX1_RVT U5031 ( .A(n4592), .Y(n4593) );
  AO21X1_RVT U5032 ( .A1(n2593), .A2(n4595), .A3(n2690), .Y(n4596) );
  NAND3X0_RVT U5033 ( .A1(n4703), .A2(n4702), .A3(n2745), .Y(n4694) );
  MUX21X1_RVT U5034 ( .A1(i_tv80_core_i_reg_RegsH_7__3_), .A2(n4714), .S0(
        n2652), .Y(n2004) );
  NAND2X0_RVT U5035 ( .A1(i_tv80_core_RegBusA_8_), .A2(n3130), .Y(n4606) );
  INVX1_RVT U5036 ( .A(n4606), .Y(n4611) );
  AO21X1_RVT U5037 ( .A1(i_tv80_core_RegBusA_9_), .A2(n3129), .A3(n4611), .Y(
        n4601) );
  INVX1_RVT U5038 ( .A(n4601), .Y(n4597) );
  NAND3X0_RVT U5039 ( .A1(n2353), .A2(n2496), .A3(n2515), .Y(n4600) );
  NAND4X0_RVT U5040 ( .A1(n4597), .A2(n4598), .A3(n3135), .A4(n4600), .Y(n4705) );
  INVX1_RVT U5041 ( .A(n4598), .Y(n4599) );
  AO21X1_RVT U5042 ( .A1(n2590), .A2(n4601), .A3(n2700), .Y(n4602) );
  NAND3X0_RVT U5043 ( .A1(n4705), .A2(n4704), .A3(n2753), .Y(n4695) );
  NAND3X0_RVT U5044 ( .A1(n2496), .A2(n4604), .A3(n4603), .Y(n4608) );
  NAND4X0_RVT U5045 ( .A1(n4608), .A2(n4606), .A3(n3135), .A4(n4607), .Y(n4707) );
  INVX1_RVT U5046 ( .A(n4607), .Y(n4610) );
  NAND3X0_RVT U5047 ( .A1(n4609), .A2(n3137), .A3(n4610), .Y(n4706) );
  NAND3X0_RVT U5048 ( .A1(n4611), .A2(n4610), .A3(n3137), .Y(n4612) );
  NAND2X0_RVT U5049 ( .A1(n2368), .A2(n5110), .Y(n4686) );
  NAND2X0_RVT U5050 ( .A1(n4612), .A2(n4686), .Y(n4613) );
  MUX21X1_RVT U5051 ( .A1(i_tv80_core_i_reg_RegsH_7__1_), .A2(n4716), .S0(
        n2652), .Y(n2006) );
  INVX1_RVT U5052 ( .A(n4617), .Y(n4614) );
  NAND2X0_RVT U5053 ( .A1(n2609), .A2(n4615), .Y(n4622) );
  NAND4X0_RVT U5054 ( .A1(n3135), .A2(n4617), .A3(n4618), .A4(n4616), .Y(n4621) );
  AOI221X1_RVT U5055 ( .A1(i_tv80_core_RegBusB_8_), .A2(n4778), .A3(
        i_tv80_core_RegBusA_r_8_), .A4(n4691), .A5(n2704), .Y(n4620) );
  INVX1_RVT U5056 ( .A(n4635), .Y(n4632) );
  NAND2X0_RVT U5057 ( .A1(n4647), .A2(n4623), .Y(n4636) );
  INVX1_RVT U5058 ( .A(n4636), .Y(n4631) );
  NAND2X0_RVT U5059 ( .A1(n3132), .A2(n4624), .Y(n4641) );
  NAND2X0_RVT U5060 ( .A1(n3132), .A2(n2509), .Y(n4629) );
  NAND3X0_RVT U5061 ( .A1(n4632), .A2(n4631), .A3(n4633), .Y(n4639) );
  NAND2X0_RVT U5062 ( .A1(n4634), .A2(n4635), .Y(n4638) );
  NAND2X0_RVT U5063 ( .A1(n4636), .A2(n4635), .Y(n4637) );
  AO21X1_RVT U5064 ( .A1(n2728), .A2(n2796), .A3(n4640), .Y(n4709) );
  NAND3X0_RVT U5065 ( .A1(n4664), .A2(n4663), .A3(n4641), .Y(n4642) );
  NAND2X0_RVT U5066 ( .A1(n4642), .A2(n4559), .Y(n4653) );
  INVX1_RVT U5067 ( .A(n4643), .Y(n4645) );
  AO21X1_RVT U5068 ( .A1(n3132), .A2(n4644), .A3(n4645), .Y(n4648) );
  NAND2X0_RVT U5069 ( .A1(i_tv80_core_RegBusA_5_), .A2(n3130), .Y(n4646) );
  NAND2X0_RVT U5070 ( .A1(n4647), .A2(n4667), .Y(n4654) );
  INVX1_RVT U5071 ( .A(n4654), .Y(n4650) );
  NAND2X0_RVT U5072 ( .A1(n2752), .A2(n4710), .Y(n4697) );
  NAND4X0_RVT U5073 ( .A1(n4650), .A2(n4651), .A3(n3135), .A4(n4649), .Y(n4658) );
  INVX1_RVT U5074 ( .A(n4651), .Y(n4652) );
  NAND2X0_RVT U5075 ( .A1(n2603), .A2(n4653), .Y(n4657) );
  AOI221X1_RVT U5076 ( .A1(i_tv80_core_RegBusB_5_), .A2(n4778), .A3(
        i_tv80_core_RegBusA_r_5_), .A4(n4691), .A5(n2688), .Y(n4656) );
  NAND2X0_RVT U5077 ( .A1(n2603), .A2(n4654), .Y(n4655) );
  INVX1_RVT U5078 ( .A(n4659), .Y(n4660) );
  AOI221X1_RVT U5079 ( .A1(i_tv80_core_RegBusA_r_4_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_4_), .A4(n4778), .A5(n4660), .Y(n4673) );
  INVX1_RVT U5080 ( .A(n4666), .Y(n4669) );
  NAND3X0_RVT U5081 ( .A1(n4661), .A2(n4669), .A3(n3137), .Y(n4672) );
  INVX1_RVT U5082 ( .A(n4559), .Y(n4662) );
  AO21X1_RVT U5083 ( .A1(n4664), .A2(n4663), .A3(n4662), .Y(n4668) );
  INVX1_RVT U5084 ( .A(n4668), .Y(n4665) );
  NAND4X0_RVT U5085 ( .A1(n4665), .A2(n4666), .A3(n3135), .A4(n4667), .Y(n4671) );
  NAND3X0_RVT U5086 ( .A1(n4668), .A2(n3135), .A3(n4669), .Y(n4670) );
  MUX21X1_RVT U5087 ( .A1(i_tv80_core_i_reg_RegsL_7__4_), .A2(n5404), .S0(
        n2643), .Y(n1939) );
  AOI221X1_RVT U5088 ( .A1(i_tv80_core_RegBusB_3_), .A2(n4778), .A3(
        i_tv80_core_RegBusA_r_3_), .A4(n4691), .A5(n2690), .Y(n4680) );
  NAND2X0_RVT U5089 ( .A1(n4676), .A2(n3137), .Y(n4677) );
  OA22X1_RVT U5090 ( .A1(n4559), .A2(n4677), .A3(n2445), .A4(n4677), .Y(n4678)
         );
  AO221X1_RVT U5091 ( .A1(i_tv80_core_RegBusA_r_2_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_2_), .A4(n4778), .A5(n2700), .Y(n4682) );
  NAND2X0_RVT U5092 ( .A1(i_tv80_core_RegBusA_r_1_), .A2(n4691), .Y(n4688) );
  NAND2X0_RVT U5093 ( .A1(i_tv80_core_RegBusB_1_), .A2(n4778), .Y(n4687) );
  NAND2X0_RVT U5094 ( .A1(n4684), .A2(n3137), .Y(n4685) );
  AO21X1_RVT U5095 ( .A1(n3137), .A2(n4689), .A3(n2704), .Y(n4690) );
  MUX21X1_RVT U5096 ( .A1(i_tv80_core_i_reg_RegsH_6__6_), .A2(n4711), .S0(
        n2653), .Y(n1993) );
  MUX21X1_RVT U5097 ( .A1(i_tv80_core_i_reg_RegsH_6__3_), .A2(n4694), .S0(
        n2653), .Y(n1996) );
  MUX21X1_RVT U5098 ( .A1(i_tv80_core_i_reg_RegsH_6__1_), .A2(n4716), .S0(
        n2653), .Y(n1998) );
  MUX21X1_RVT U5099 ( .A1(i_tv80_core_i_reg_RegsL_6__4_), .A2(n5404), .S0(
        n2642), .Y(n1931) );
  MUX21X1_RVT U5100 ( .A1(i_tv80_core_i_reg_RegsH_5__6_), .A2(n4711), .S0(
        n2651), .Y(n1985) );
  MUX21X1_RVT U5101 ( .A1(i_tv80_core_i_reg_RegsH_5__1_), .A2(n4716), .S0(
        n2651), .Y(n1990) );
  MUX21X1_RVT U5102 ( .A1(i_tv80_core_i_reg_RegsL_5__6_), .A2(n2512), .S0(
        n2641), .Y(n1921) );
  MUX21X1_RVT U5103 ( .A1(i_tv80_core_i_reg_RegsL_5__4_), .A2(n5404), .S0(
        n2641), .Y(n1923) );
  MUX21X1_RVT U5104 ( .A1(i_tv80_core_i_reg_RegsL_5__0_), .A2(n4723), .S0(
        n2641), .Y(n1927) );
  MUX21X1_RVT U5105 ( .A1(i_tv80_core_i_reg_RegsH_4__6_), .A2(n2459), .S0(
        n2569), .Y(n1977) );
  MUX21X1_RVT U5106 ( .A1(i_tv80_core_i_reg_RegsH_4__3_), .A2(n3106), .S0(
        n2569), .Y(n1980) );
  MUX21X1_RVT U5107 ( .A1(i_tv80_core_i_reg_RegsH_4__1_), .A2(n4716), .S0(
        n2569), .Y(n1982) );
  MUX21X1_RVT U5108 ( .A1(i_tv80_core_i_reg_RegsL_4__6_), .A2(n2513), .S0(
        n2568), .Y(n1913) );
  MUX21X1_RVT U5109 ( .A1(i_tv80_core_i_reg_RegsL_4__4_), .A2(n5404), .S0(
        n2568), .Y(n1915) );
  NAND3X0_RVT U5110 ( .A1(n4703), .A2(n4702), .A3(n2745), .Y(n4714) );
  MUX21X1_RVT U5111 ( .A1(i_tv80_core_i_reg_RegsH_3__3_), .A2(n4714), .S0(
        n2647), .Y(n1972) );
  MUX21X1_RVT U5112 ( .A1(i_tv80_core_i_reg_RegsH_3__1_), .A2(n4716), .S0(
        n2647), .Y(n1974) );
  NAND2X0_RVT U5113 ( .A1(n2752), .A2(n4710), .Y(n4717) );
  MUX21X1_RVT U5114 ( .A1(i_tv80_core_i_reg_RegsL_3__4_), .A2(n5404), .S0(
        n2638), .Y(n1907) );
  MUX21X1_RVT U5115 ( .A1(i_tv80_core_i_reg_RegsL_3__0_), .A2(n4723), .S0(
        n2638), .Y(n1911) );
  MUX21X1_RVT U5116 ( .A1(i_tv80_core_i_reg_RegsH_2__3_), .A2(n4694), .S0(
        n2646), .Y(n1964) );
  MUX21X1_RVT U5117 ( .A1(i_tv80_core_i_reg_RegsH_2__1_), .A2(n4716), .S0(
        n2646), .Y(n1966) );
  MUX21X1_RVT U5118 ( .A1(i_tv80_core_i_reg_RegsL_2__4_), .A2(n5404), .S0(
        n2637), .Y(n1899) );
  MUX21X1_RVT U5119 ( .A1(i_tv80_core_i_reg_RegsL_2__0_), .A2(n4723), .S0(
        n2637), .Y(n1903) );
  MUX21X1_RVT U5120 ( .A1(i_tv80_core_i_reg_RegsH_1__6_), .A2(n4711), .S0(
        n2649), .Y(n1953) );
  MUX21X1_RVT U5121 ( .A1(i_tv80_core_i_reg_RegsH_1__3_), .A2(n3106), .S0(
        n2649), .Y(n1956) );
  MUX21X1_RVT U5122 ( .A1(i_tv80_core_i_reg_RegsH_1__1_), .A2(n4716), .S0(
        n2649), .Y(n1958) );
  MUX21X1_RVT U5123 ( .A1(i_tv80_core_i_reg_RegsL_1__6_), .A2(n2512), .S0(
        n2640), .Y(n1889) );
  MUX21X1_RVT U5124 ( .A1(i_tv80_core_i_reg_RegsL_1__4_), .A2(n5404), .S0(
        n2640), .Y(n1891) );
  MUX21X1_RVT U5125 ( .A1(i_tv80_core_i_reg_RegsH_0__6_), .A2(n2459), .S0(
        n2570), .Y(n1945) );
  MUX21X1_RVT U5126 ( .A1(i_tv80_core_i_reg_RegsH_0__3_), .A2(n3106), .S0(
        n2570), .Y(n1948) );
  MUX21X1_RVT U5127 ( .A1(i_tv80_core_i_reg_RegsH_0__1_), .A2(n4716), .S0(
        n2570), .Y(n1950) );
  MUX21X1_RVT U5128 ( .A1(i_tv80_core_i_reg_RegsL_0__6_), .A2(n2513), .S0(
        n2406), .Y(n1881) );
  MUX21X1_RVT U5129 ( .A1(i_tv80_core_i_reg_RegsL_0__4_), .A2(n5404), .S0(
        n2406), .Y(n1883) );
  MUX21X1_RVT U5130 ( .A1(i_tv80_core_i_reg_RegsL_0__1_), .A2(n4722), .S0(
        n2406), .Y(n1886) );
  MUX21X1_RVT U5131 ( .A1(i_tv80_core_i_reg_RegsL_0__0_), .A2(n4723), .S0(
        n2406), .Y(n1887) );
  NAND2X0_RVT U5132 ( .A1(n4725), .A2(n4895), .Y(n5397) );
  MUX21X1_RVT U5133 ( .A1(i_tv80_core_XY_State_1_), .A2(i_tv80_core_Alternate), 
        .S0(n2733), .Y(i_tv80_core_N1117) );
  INVX1_RVT U5134 ( .A(n5149), .Y(n5378) );
  NAND2X0_RVT U5135 ( .A1(n4726), .A2(n4826), .Y(n4741) );
  OA22X1_RVT U5136 ( .A1(n4728), .A2(n4727), .A3(n2706), .A4(n4822), .Y(n4729)
         );
  NAND4X0_RVT U5137 ( .A1(n2669), .A2(n4731), .A3(n4730), .A4(n4729), .Y(n4739) );
  OA221X1_RVT U5138 ( .A1(n4733), .A2(n2706), .A3(n2562), .A4(n2338), .A5(
        n4732), .Y(n4736) );
  NAND2X0_RVT U5139 ( .A1(n4734), .A2(n5344), .Y(n4735) );
  NAND3X0_RVT U5140 ( .A1(n2348), .A2(n4735), .A3(n4736), .Y(n4738) );
  AO221X1_RVT U5141 ( .A1(n3152), .A2(n4739), .A3(n3143), .A4(n4738), .A5(
        n4737), .Y(n4740) );
  NAND3X0_RVT U5142 ( .A1(n4741), .A2(n5348), .A3(n4740), .Y(n5147) );
  INVX1_RVT U5143 ( .A(n5147), .Y(n5377) );
  NAND2X0_RVT U5144 ( .A1(n2645), .A2(n5066), .Y(n4744) );
  INVX1_RVT U5145 ( .A(n5325), .Y(n4743) );
  NAND2X0_RVT U5146 ( .A1(n4743), .A2(n5366), .Y(n5080) );
  OAI221X1_RVT U5147 ( .A1(n5346), .A2(n4744), .A3(n2719), .A4(n5339), .A5(
        n5080), .Y(n4768) );
  AO22X1_RVT U5148 ( .A1(n4745), .A2(n4775), .A3(n3148), .A4(n4768), .Y(n4759)
         );
  INVX1_RVT U5149 ( .A(n5055), .Y(n4746) );
  NAND2X0_RVT U5150 ( .A1(n4746), .A2(n2713), .Y(n4761) );
  NAND2X0_RVT U5151 ( .A1(n4761), .A2(n4747), .Y(n4756) );
  OA22X1_RVT U5152 ( .A1(n5358), .A2(n5308), .A3(n5318), .A4(n5344), .Y(n4748)
         );
  INVX1_RVT U5153 ( .A(n4751), .Y(n5324) );
  INVX1_RVT U5154 ( .A(n5319), .Y(n4752) );
  AO222X1_RVT U5155 ( .A1(n5366), .A2(n4753), .A3(n5324), .A4(n5322), .A5(
        n4752), .A6(n5315), .Y(n5057) );
  INVX1_RVT U5156 ( .A(n5057), .Y(n4767) );
  NAND2X0_RVT U5157 ( .A1(n2628), .A2(n4767), .Y(n4754) );
  AO221X1_RVT U5158 ( .A1(n3148), .A2(n4756), .A3(n5061), .A4(n2472), .A5(
        n4754), .Y(n4758) );
  INVX1_RVT U5159 ( .A(n4770), .Y(n4757) );
  AO221X1_RVT U5160 ( .A1(n3152), .A2(n4759), .A3(n3142), .A4(n4758), .A5(
        n4757), .Y(n4760) );
  NAND2X0_RVT U5161 ( .A1(n2711), .A2(n4847), .Y(n4769) );
  AO22X1_RVT U5162 ( .A1(n2711), .A2(n4760), .A3(n2472), .A4(n4769), .Y(
        i_tv80_core_Set_BusB_To_1_) );
  OA21X1_RVT U5163 ( .A1(n2476), .A2(n5344), .A3(n5358), .Y(n4762) );
  OA21X1_RVT U5164 ( .A1(n4762), .A2(n5306), .A3(n4761), .Y(n4764) );
  NAND4X0_RVT U5165 ( .A1(n4765), .A2(n4767), .A3(n4766), .A4(n5089), .Y(n4776) );
  INVX1_RVT U5166 ( .A(n4768), .Y(n4773) );
  NAND2X0_RVT U5167 ( .A1(n3151), .A2(n3126), .Y(n4772) );
  INVX1_RVT U5168 ( .A(n4769), .Y(n4771) );
  OAI221X1_RVT U5169 ( .A1(n4773), .A2(n4772), .A3(n4771), .A4(n435), .A5(
        n4770), .Y(n4774) );
  AO221X1_RVT U5170 ( .A1(n4776), .A2(n3142), .A3(n4838), .A4(n4775), .A5(
        n4774), .Y(i_tv80_core_Set_BusB_To_2_) );
  INVX1_RVT U5171 ( .A(n2424), .Y(n5376) );
  MUX21X1_RVT U5172 ( .A1(i_tv80_core_RegAddrB_r_2_), .A2(
        i_tv80_core_Alternate), .S0(n4778), .Y(i_tv80_core_i_reg_N19) );
  AND2X1_RVT U5173 ( .A1(i_tv80_core_RegAddrB_r_1_), .A2(n4777), .Y(
        i_tv80_core_i_reg_N18) );
  OR2X1_RVT U5174 ( .A1(n4778), .A2(i_tv80_core_RegAddrB_r_0_), .Y(
        i_tv80_core_i_reg_N17) );
  MUX21X1_RVT U5175 ( .A1(n4790), .A2(n4786), .S0(n4796), .Y(n4779) );
  NAND2X0_RVT U5176 ( .A1(reset_n), .A2(n4779), .Y(n2105) );
  INVX1_RVT U5177 ( .A(n4780), .Y(n4791) );
  NAND2X0_RVT U5178 ( .A1(n4148), .A2(n4783), .Y(n4799) );
  OA21X1_RVT U5179 ( .A1(n2765), .A2(n4799), .A3(n2767), .Y(n4784) );
  OA221X1_RVT U5180 ( .A1(n4803), .A2(n4786), .A3(n2732), .A4(n4785), .A5(
        n4784), .Y(n4788) );
  NAND3X0_RVT U5181 ( .A1(i_tv80_core_ACC_5_), .A2(n2571), .A3(n4804), .Y(
        n4787) );
  OA221X1_RVT U5182 ( .A1(n4808), .A2(i_tv80_core_ACC_5_), .A3(n4788), .A4(
        n4806), .A5(n4787), .Y(n4789) );
  OA221X1_RVT U5183 ( .A1(n4791), .A2(n4812), .A3(n4811), .A4(n4790), .A5(
        n4789), .Y(n4793) );
  OAI221X1_RVT U5184 ( .A1(n4817), .A2(n4793), .A3(n4792), .A4(n4814), .A5(
        reset_n), .Y(n4795) );
  INVX1_RVT U5185 ( .A(n4794), .Y(n4818) );
  MUX21X1_RVT U5186 ( .A1(n4795), .A2(i_tv80_core_F_5_), .S0(n4818), .Y(n2113)
         );
  MUX21X1_RVT U5187 ( .A1(n4810), .A2(n4802), .S0(n4796), .Y(n4797) );
  NAND2X0_RVT U5188 ( .A1(reset_n), .A2(n4797), .Y(n2107) );
  INVX1_RVT U5189 ( .A(n4798), .Y(n4813) );
  OA21X1_RVT U5190 ( .A1(n2766), .A2(n4799), .A3(n2712), .Y(n4800) );
  OA221X1_RVT U5191 ( .A1(n4803), .A2(n4802), .A3(n2732), .A4(n4801), .A5(
        n4800), .Y(n4807) );
  NAND3X0_RVT U5192 ( .A1(i_tv80_core_ACC_3_), .A2(n2571), .A3(n4804), .Y(
        n4805) );
  OA221X1_RVT U5193 ( .A1(n4808), .A2(i_tv80_core_ACC_3_), .A3(n4806), .A4(
        n4807), .A5(n4805), .Y(n4809) );
  OA221X1_RVT U5194 ( .A1(n4813), .A2(n4812), .A3(n4811), .A4(n4810), .A5(
        n4809), .Y(n4816) );
  OAI221X1_RVT U5195 ( .A1(n4817), .A2(n4816), .A3(n4815), .A4(n4814), .A5(
        reset_n), .Y(n4819) );
  MUX21X1_RVT U5196 ( .A1(n4819), .A2(i_tv80_core_F_3_), .S0(n4818), .Y(n2114)
         );
  AND3X1_RVT U5197 ( .A1(n3147), .A2(n120), .A3(n4820), .Y(n4821) );
  NAND2X0_RVT U5198 ( .A1(n5133), .A2(n2440), .Y(n5128) );
  MUX21X1_RVT U5199 ( .A1(n4821), .A2(i_tv80_core_BTR_r), .S0(n2550), .Y(n2111) );
  INVX1_RVT U5200 ( .A(n4822), .Y(n4858) );
  AO22X1_RVT U5201 ( .A1(n4858), .A2(n3152), .A3(n3143), .A4(n4823), .Y(n5142)
         );
  NAND4X0_RVT U5202 ( .A1(n3146), .A2(n2338), .A3(n3138), .A4(n4824), .Y(n4829) );
  INVX1_RVT U5203 ( .A(n4829), .Y(n5027) );
  NAND2X0_RVT U5204 ( .A1(n4886), .A2(n3147), .Y(n4948) );
  NAND2X0_RVT U5205 ( .A1(n4825), .A2(n2577), .Y(n4862) );
  NAND2X0_RVT U5206 ( .A1(n3140), .A2(n4826), .Y(n4906) );
  INVX1_RVT U5207 ( .A(n4906), .Y(n4827) );
  NAND2X0_RVT U5208 ( .A1(n4827), .A2(n3147), .Y(n4830) );
  OA21X1_RVT U5209 ( .A1(n4948), .A2(n4862), .A3(n4830), .Y(n4828) );
  AND2X1_RVT U5210 ( .A1(n4828), .A2(n3156), .Y(n4842) );
  AO222X1_RVT U5211 ( .A1(n5027), .A2(di_reg_5_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_13_), .A5(n5028), .A6(n2596), .Y(n2066) );
  NAND2X0_RVT U5212 ( .A1(n2543), .A2(n4831), .Y(n4835) );
  NAND2X0_RVT U5213 ( .A1(n5340), .A2(n5358), .Y(n4834) );
  AO222X1_RVT U5214 ( .A1(n5315), .A2(n4835), .A3(n4865), .A4(n4834), .A5(
        n5315), .A6(n4833), .Y(n4836) );
  AO22X1_RVT U5215 ( .A1(n4838), .A2(n4837), .A3(n3142), .A4(n4836), .Y(n4839)
         );
  NAND2X0_RVT U5216 ( .A1(n3140), .A2(n4839), .Y(n4908) );
  INVX1_RVT U5217 ( .A(n4908), .Y(n4840) );
  NAND2X0_RVT U5218 ( .A1(n4840), .A2(n3147), .Y(n4841) );
  INVX1_RVT U5219 ( .A(n4841), .Y(n4945) );
  NAND2X0_RVT U5220 ( .A1(n4842), .A2(n4841), .Y(n4907) );
  INVX1_RVT U5221 ( .A(n4907), .Y(n4944) );
  AO222X1_RVT U5222 ( .A1(n5028), .A2(n4843), .A3(n4945), .A4(di_reg_0_), .A5(
        n4944), .A6(i_tv80_core_TmpAddr_0_), .Y(n2079) );
  NAND2X0_RVT U5223 ( .A1(n5337), .A2(n4847), .Y(n4856) );
  NAND2X0_RVT U5224 ( .A1(n2557), .A2(n2558), .Y(n4851) );
  NAND2X0_RVT U5225 ( .A1(n5311), .A2(n4848), .Y(n4850) );
  AO221X1_RVT U5226 ( .A1(n4851), .A2(n5315), .A3(n2713), .A4(n4850), .A5(
        n4849), .Y(n4852) );
  AO221X1_RVT U5227 ( .A1(n5407), .A2(n4853), .A3(n4865), .A4(n5323), .A5(
        n4852), .Y(n4855) );
  AOI222X1_RVT U5228 ( .A1(n2378), .A2(n4858), .A3(n4857), .A4(n4856), .A5(
        n4855), .A6(n3142), .Y(n4859) );
  NAND4X0_RVT U5229 ( .A1(n4859), .A2(n4860), .A3(n5353), .A4(n358), .Y(n4885)
         );
  INVX1_RVT U5230 ( .A(n5033), .Y(n5129) );
  NAND2X0_RVT U5231 ( .A1(n4865), .A2(n4864), .Y(n4867) );
  NAND2X0_RVT U5232 ( .A1(n4867), .A2(n4866), .Y(n4868) );
  OAI221X1_RVT U5233 ( .A1(n4869), .A2(n4868), .A3(n5322), .A4(n2432), .A5(
        n3143), .Y(n4878) );
  NAND2X0_RVT U5234 ( .A1(n3107), .A2(n2536), .Y(n4879) );
  INVX1_RVT U5235 ( .A(n4873), .Y(n4874) );
  AND4X1_RVT U5236 ( .A1(n5129), .A2(n4895), .A3(n5130), .A4(n5131), .Y(n4883)
         );
  NAND4X0_RVT U5237 ( .A1(i_tv80_core_NMICycle), .A2(n4877), .A3(n4876), .A4(
        n4875), .Y(n4893) );
  INVX1_RVT U5238 ( .A(n4893), .Y(n4882) );
  AND4X1_RVT U5239 ( .A1(n4880), .A2(n4879), .A3(n5129), .A4(n4878), .Y(n4881)
         );
  NAND3X0_RVT U5240 ( .A1(n4882), .A2(n4895), .A3(n4881), .Y(n4899) );
  NAND2X0_RVT U5241 ( .A1(n4883), .A2(n4899), .Y(n4884) );
  AO22X1_RVT U5242 ( .A1(n4885), .A2(n4886), .A3(n2440), .A4(n4884), .Y(n4947)
         );
  INVX1_RVT U5243 ( .A(n5132), .Y(n4890) );
  NAND4X0_RVT U5244 ( .A1(n4890), .A2(n4889), .A3(n4888), .A4(halt_n), .Y(
        n4891) );
  NAND2X0_RVT U5245 ( .A1(reset_n), .A2(n4891), .Y(n4950) );
  AO21X1_RVT U5246 ( .A1(n4947), .A2(n5133), .A3(n4950), .Y(n5038) );
  NAND3X0_RVT U5247 ( .A1(n4894), .A2(n2544), .A3(n2721), .Y(n4960) );
  AO22X1_RVT U5248 ( .A1(n5011), .A2(i_tv80_core_PC_0_), .A3(n2559), .A4(
        i_tv80_core_RegBusC_0_), .Y(n4896) );
  AO221X1_RVT U5249 ( .A1(n2624), .A2(n4897), .A3(n2560), .A4(
        i_tv80_core_TmpAddr_0_), .A5(n4896), .Y(n2038) );
  AO222X1_RVT U5250 ( .A1(n5028), .A2(n4898), .A3(n4945), .A4(di_reg_1_), .A5(
        n4944), .A6(i_tv80_core_TmpAddr_1_), .Y(n2078) );
  INVX1_RVT U5251 ( .A(n4899), .Y(n4927) );
  AO221X1_RVT U5252 ( .A1(i_tv80_core_TmpAddr_1_), .A2(n5146), .A3(
        i_tv80_core_RegBusC_1_), .A4(n5138), .A5(n4927), .Y(n5161) );
  NAND2X0_RVT U5253 ( .A1(i_tv80_core_PC_0_), .A2(n2743), .Y(n4902) );
  AO21X1_RVT U5254 ( .A1(di_reg_1_), .A2(n2342), .A3(n2736), .Y(n4901) );
  INVX1_RVT U5255 ( .A(n4901), .Y(n4904) );
  AO222X1_RVT U5256 ( .A1(n5025), .A2(n5161), .A3(n2624), .A4(n4900), .A5(
        n5011), .A6(i_tv80_core_PC_1_), .Y(n2037) );
  AO222X1_RVT U5257 ( .A1(n5028), .A2(n2703), .A3(n4945), .A4(di_reg_2_), .A5(
        n4944), .A6(i_tv80_core_TmpAddr_2_), .Y(n2077) );
  AO221X1_RVT U5258 ( .A1(i_tv80_core_TmpAddr_2_), .A2(n5146), .A3(
        i_tv80_core_RegBusC_2_), .A4(n5138), .A5(n4927), .Y(n5171) );
  NAND2X0_RVT U5259 ( .A1(i_tv80_core_PC_1_), .A2(n4901), .Y(n4931) );
  AO21X1_RVT U5260 ( .A1(n4904), .A2(n4903), .A3(n4902), .Y(n4930) );
  XNOR3X1_RVT U5261 ( .A1(i_tv80_core_PC_2_), .A2(n2707), .A3(n4910), .Y(n4905) );
  AO222X1_RVT U5262 ( .A1(n5025), .A2(n5171), .A3(n2624), .A4(n4905), .A5(
        n5011), .A6(i_tv80_core_PC_2_), .Y(n2036) );
  AO22X1_RVT U5263 ( .A1(n4944), .A2(i_tv80_core_TmpAddr_3_), .A3(n5028), .A4(
        n2697), .Y(n4909) );
  AO221X1_RVT U5264 ( .A1(n2650), .A2(n3150), .A3(n4945), .A4(di_reg_3_), .A5(
        n4909), .Y(n2076) );
  NAND2X0_RVT U5265 ( .A1(i_tv80_core_PC_2_), .A2(n4910), .Y(n4932) );
  OA21X1_RVT U5266 ( .A1(n2738), .A2(n2707), .A3(n4932), .Y(n4911) );
  XNOR3X1_RVT U5267 ( .A1(i_tv80_core_PC_3_), .A2(n4911), .A3(n4916), .Y(n4913) );
  AO22X1_RVT U5268 ( .A1(n2559), .A2(i_tv80_core_RegBusC_3_), .A3(n2560), .A4(
        i_tv80_core_TmpAddr_3_), .Y(n4912) );
  AO221X1_RVT U5269 ( .A1(n2624), .A2(n4913), .A3(n5011), .A4(
        i_tv80_core_PC_3_), .A5(n4912), .Y(n2035) );
  AO22X1_RVT U5270 ( .A1(n4944), .A2(i_tv80_core_TmpAddr_4_), .A3(n5028), .A4(
        n2621), .Y(n4914) );
  AO221X1_RVT U5271 ( .A1(n2650), .A2(n3148), .A3(n4945), .A4(di_reg_4_), .A5(
        n4914), .Y(n2075) );
  INVX1_RVT U5272 ( .A(n4916), .Y(n4915) );
  NAND3X0_RVT U5273 ( .A1(n4930), .A2(n4931), .A3(n4932), .Y(n4918) );
  NAND2X0_RVT U5274 ( .A1(i_tv80_core_PC_3_), .A2(n4916), .Y(n4940) );
  AOI21X1_RVT U5275 ( .A1(n4918), .A2(n2739), .A3(n4917), .Y(n4923) );
  XNOR3X1_RVT U5276 ( .A1(i_tv80_core_PC_4_), .A2(n4923), .A3(n4922), .Y(n4920) );
  AO22X1_RVT U5277 ( .A1(n2559), .A2(i_tv80_core_RegBusC_4_), .A3(n2560), .A4(
        i_tv80_core_TmpAddr_4_), .Y(n4919) );
  AO221X1_RVT U5278 ( .A1(n2624), .A2(n4920), .A3(n5011), .A4(
        i_tv80_core_PC_4_), .A5(n4919), .Y(n2034) );
  AO22X1_RVT U5279 ( .A1(n4944), .A2(i_tv80_core_TmpAddr_5_), .A3(n2625), .A4(
        n5028), .Y(n4921) );
  AO221X1_RVT U5280 ( .A1(n2650), .A2(n3127), .A3(n4945), .A4(di_reg_5_), .A5(
        n4921), .Y(n2074) );
  AO221X1_RVT U5281 ( .A1(i_tv80_core_TmpAddr_5_), .A2(n5146), .A3(
        i_tv80_core_RegBusC_5_), .A4(n5138), .A5(n4927), .Y(n5193) );
  INVX1_RVT U5282 ( .A(n4929), .Y(n4924) );
  NAND2X0_RVT U5283 ( .A1(i_tv80_core_PC_4_), .A2(n4922), .Y(n4935) );
  OA21X1_RVT U5284 ( .A1(n4924), .A2(n4923), .A3(n4935), .Y(n4925) );
  XNOR3X1_RVT U5285 ( .A1(i_tv80_core_PC_5_), .A2(n4925), .A3(n4928), .Y(n4926) );
  AO222X1_RVT U5286 ( .A1(n5025), .A2(n5193), .A3(n2624), .A4(n4926), .A5(
        n5011), .A6(i_tv80_core_PC_5_), .Y(n2033) );
  AO222X1_RVT U5287 ( .A1(n5028), .A2(n2626), .A3(n4945), .A4(di_reg_6_), .A5(
        n4944), .A6(i_tv80_core_TmpAddr_6_), .Y(n2073) );
  AO221X1_RVT U5288 ( .A1(i_tv80_core_TmpAddr_6_), .A2(n5146), .A3(
        i_tv80_core_RegBusC_6_), .A4(n5138), .A5(n4927), .Y(n5203) );
  INVX1_RVT U5289 ( .A(n4928), .Y(n4938) );
  NAND2X0_RVT U5290 ( .A1(n4938), .A2(n4937), .Y(n4934) );
  NAND2X0_RVT U5291 ( .A1(n4934), .A2(n4929), .Y(n4942) );
  NAND3X0_RVT U5292 ( .A1(n4932), .A2(n4931), .A3(n4930), .Y(n4933) );
  NAND2X0_RVT U5293 ( .A1(n4933), .A2(n2739), .Y(n4941) );
  INVX1_RVT U5294 ( .A(n4934), .Y(n4936) );
  OA22X1_RVT U5295 ( .A1(n4938), .A2(n4937), .A3(n4936), .A4(n4935), .Y(n4939)
         );
  AO222X1_RVT U5296 ( .A1(n5025), .A2(n5203), .A3(n2624), .A4(n4943), .A5(
        n5011), .A6(i_tv80_core_PC_6_), .Y(n2032) );
  AO222X1_RVT U5297 ( .A1(n5027), .A2(di_reg_0_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_8_), .A5(n5028), .A6(n2614), .Y(n2071) );
  AO222X1_RVT U5298 ( .A1(n5028), .A2(n2602), .A3(n4945), .A4(di_reg_7_), .A5(
        n4944), .A6(i_tv80_core_TmpAddr_7_), .Y(n2072) );
  INVX1_RVT U5299 ( .A(n5031), .Y(n5009) );
  NAND3X0_RVT U5300 ( .A1(n4947), .A2(n5133), .A3(n4949), .Y(n4952) );
  NAND2X0_RVT U5301 ( .A1(n4950), .A2(n4949), .Y(n4951) );
  NAND2X0_RVT U5302 ( .A1(n4952), .A2(n4951), .Y(n4953) );
  NAND2X0_RVT U5303 ( .A1(n4989), .A2(n4988), .Y(n4971) );
  NAND2X0_RVT U5304 ( .A1(i_tv80_core_PC_6_), .A2(n4954), .Y(n4966) );
  NAND2X0_RVT U5305 ( .A1(n4971), .A2(n4966), .Y(n4962) );
  INVX1_RVT U5306 ( .A(n4962), .Y(n4956) );
  NAND2X0_RVT U5307 ( .A1(n4955), .A2(n5216), .Y(n4959) );
  NAND3X0_RVT U5308 ( .A1(i_tv80_core_PC_7_), .A2(n5038), .A3(n4957), .Y(n4958) );
  AO222X1_RVT U5309 ( .A1(n2559), .A2(i_tv80_core_RegBusC_7_), .A3(n2560), 
        .A4(i_tv80_core_TmpAddr_7_), .A5(n4959), .A6(n4958), .Y(n2031) );
  INVX1_RVT U5310 ( .A(n4960), .Y(n5227) );
  NAND2X0_RVT U5311 ( .A1(n5009), .A2(n5216), .Y(n4968) );
  NAND2X0_RVT U5312 ( .A1(i_tv80_core_PC_7_), .A2(n5031), .Y(n4967) );
  INVX1_RVT U5313 ( .A(n4967), .Y(n4961) );
  MUX21X1_RVT U5314 ( .A1(n5041), .A2(n5040), .S0(n2694), .Y(n4965) );
  AO222X1_RVT U5315 ( .A1(i_tv80_core_RegBusC_8_), .A2(n5138), .A3(di_reg_0_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_8_), .A6(n5033), .Y(n5225) );
  MUX21X1_RVT U5316 ( .A1(n5040), .A2(n5041), .S0(n2694), .Y(n4963) );
  AO222X1_RVT U5317 ( .A1(n5011), .A2(i_tv80_core_PC_8_), .A3(n5025), .A4(
        n5225), .A5(n4963), .A6(i_tv80_core_PC_8_), .Y(n4964) );
  AO221X1_RVT U5318 ( .A1(n5026), .A2(i_tv80_core_I_0_), .A3(n4965), .A4(n4970), .A5(n4964), .Y(n2030) );
  AO222X1_RVT U5319 ( .A1(n5027), .A2(di_reg_2_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_10_), .A5(n5028), .A6(n2608), .Y(n2069) );
  AO222X1_RVT U5320 ( .A1(n5027), .A2(di_reg_1_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_9_), .A5(n5028), .A6(n2613), .Y(n2070) );
  INVX1_RVT U5321 ( .A(n4968), .Y(n4969) );
  AO21X1_RVT U5322 ( .A1(n5009), .A2(n4970), .A3(n4969), .Y(n4983) );
  AO21X1_RVT U5323 ( .A1(n2679), .A2(n4971), .A3(n4983), .Y(n4972) );
  NAND2X0_RVT U5324 ( .A1(i_tv80_core_PC_8_), .A2(n5031), .Y(n4987) );
  NAND2X0_RVT U5325 ( .A1(n4972), .A2(n4987), .Y(n4979) );
  INVX1_RVT U5326 ( .A(n4979), .Y(n4973) );
  MUX21X1_RVT U5327 ( .A1(n5041), .A2(n5040), .S0(n4973), .Y(n4976) );
  AO222X1_RVT U5328 ( .A1(i_tv80_core_RegBusC_9_), .A2(n5138), .A3(di_reg_1_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_9_), .A6(n5033), .Y(n5237) );
  MUX21X1_RVT U5329 ( .A1(n5040), .A2(n5041), .S0(n4973), .Y(n4974) );
  AO222X1_RVT U5330 ( .A1(n5011), .A2(i_tv80_core_PC_9_), .A3(n5025), .A4(
        n5237), .A5(n4974), .A6(i_tv80_core_PC_9_), .Y(n4975) );
  AO221X1_RVT U5331 ( .A1(n5026), .A2(i_tv80_core_I_1_), .A3(n4976), .A4(n4977), .A5(n4975), .Y(n2029) );
  NAND2X0_RVT U5332 ( .A1(n5009), .A2(n4977), .Y(n4985) );
  NAND2X0_RVT U5333 ( .A1(i_tv80_core_PC_9_), .A2(n5031), .Y(n4996) );
  INVX1_RVT U5334 ( .A(n4996), .Y(n4978) );
  MUX21X1_RVT U5335 ( .A1(n5041), .A2(n5040), .S0(n2684), .Y(n4982) );
  AO222X1_RVT U5336 ( .A1(i_tv80_core_RegBusC_10_), .A2(n5138), .A3(di_reg_2_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_10_), .A6(n5033), .Y(n5245) );
  MUX21X1_RVT U5337 ( .A1(n5040), .A2(n5041), .S0(n2684), .Y(n4980) );
  AO222X1_RVT U5338 ( .A1(n5011), .A2(i_tv80_core_PC_10_), .A3(n5025), .A4(
        n5245), .A5(n4980), .A6(i_tv80_core_PC_10_), .Y(n4981) );
  AO221X1_RVT U5339 ( .A1(n5026), .A2(i_tv80_core_I_2_), .A3(n4982), .A4(n4986), .A5(n4981), .Y(n2028) );
  AO222X1_RVT U5340 ( .A1(n5027), .A2(di_reg_3_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_11_), .A5(n2597), .A6(n5028), .Y(n2068) );
  AND2X1_RVT U5341 ( .A1(n4985), .A2(n4984), .Y(n4993) );
  NAND2X0_RVT U5342 ( .A1(n5009), .A2(n4986), .Y(n4992) );
  NAND2X0_RVT U5343 ( .A1(n2679), .A2(n4987), .Y(n4990) );
  OA22X1_RVT U5344 ( .A1(n4990), .A2(n4989), .A3(n4988), .A4(n4990), .Y(n4991)
         );
  NAND3X0_RVT U5345 ( .A1(n4991), .A2(n4992), .A3(n4993), .Y(n4995) );
  NAND2X0_RVT U5346 ( .A1(i_tv80_core_PC_10_), .A2(n5031), .Y(n4994) );
  MUX21X1_RVT U5347 ( .A1(n5041), .A2(n5040), .S0(n4997), .Y(n5000) );
  AO222X1_RVT U5348 ( .A1(i_tv80_core_RegBusC_11_), .A2(n5138), .A3(di_reg_3_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_11_), .A6(n5033), .Y(n5253) );
  MUX21X1_RVT U5349 ( .A1(n5040), .A2(n5041), .S0(n4997), .Y(n4998) );
  AO222X1_RVT U5350 ( .A1(n5011), .A2(i_tv80_core_PC_11_), .A3(n5025), .A4(
        n5253), .A5(n4998), .A6(i_tv80_core_PC_11_), .Y(n4999) );
  AO221X1_RVT U5351 ( .A1(n5026), .A2(i_tv80_core_I_3_), .A3(n5000), .A4(n5001), .A5(n4999), .Y(n2027) );
  AO222X1_RVT U5352 ( .A1(n5027), .A2(di_reg_4_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_12_), .A5(n2594), .A6(n5028), .Y(n2067) );
  NAND2X0_RVT U5353 ( .A1(n5009), .A2(n5001), .Y(n5003) );
  AO22X1_RVT U5354 ( .A1(i_tv80_core_PC_11_), .A2(n5031), .A3(n5003), .A4(
        n5002), .Y(n5016) );
  INVX1_RVT U5355 ( .A(n5016), .Y(n5004) );
  MUX21X1_RVT U5356 ( .A1(n5041), .A2(n5040), .S0(n5004), .Y(n5007) );
  AO222X1_RVT U5357 ( .A1(i_tv80_core_RegBusC_12_), .A2(n5138), .A3(di_reg_4_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_12_), .A6(n5033), .Y(n5261) );
  MUX21X1_RVT U5358 ( .A1(n5040), .A2(n5041), .S0(n5004), .Y(n5005) );
  AO222X1_RVT U5359 ( .A1(n5011), .A2(i_tv80_core_PC_12_), .A3(n5025), .A4(
        n5261), .A5(n5005), .A6(i_tv80_core_PC_12_), .Y(n5006) );
  AO221X1_RVT U5360 ( .A1(n5026), .A2(i_tv80_core_I_4_), .A3(n5007), .A4(n5008), .A5(n5006), .Y(n2026) );
  NAND2X0_RVT U5361 ( .A1(n5009), .A2(n5008), .Y(n5015) );
  MUX21X1_RVT U5362 ( .A1(n5041), .A2(n5040), .S0(n2680), .Y(n5014) );
  AO222X1_RVT U5363 ( .A1(i_tv80_core_RegBusC_13_), .A2(n5138), .A3(di_reg_5_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_13_), .A6(n5033), .Y(n5269) );
  MUX21X1_RVT U5364 ( .A1(n5040), .A2(n5041), .S0(n2680), .Y(n5010) );
  AO222X1_RVT U5365 ( .A1(n5011), .A2(i_tv80_core_PC_13_), .A3(n5025), .A4(
        n5269), .A5(n5010), .A6(i_tv80_core_PC_13_), .Y(n5012) );
  AO221X1_RVT U5366 ( .A1(n5026), .A2(i_tv80_core_I_5_), .A3(n5014), .A4(n5013), .A5(n5012), .Y(n2025) );
  AO222X1_RVT U5367 ( .A1(n5027), .A2(di_reg_6_), .A3(n2574), .A4(
        i_tv80_core_TmpAddr_14_), .A5(n2674), .A6(n5028), .Y(n2065) );
  AO222X1_RVT U5368 ( .A1(i_tv80_core_RegBusC_14_), .A2(n5138), .A3(di_reg_6_), 
        .A4(n5034), .A5(i_tv80_core_TmpAddr_14_), .A6(n5033), .Y(n5277) );
  OA21X1_RVT U5369 ( .A1(i_tv80_core_PC_13_), .A2(n5031), .A3(n5015), .Y(n5017) );
  AO221X1_RVT U5370 ( .A1(i_tv80_core_PC_13_), .A2(n5031), .A3(n5016), .A4(
        n5017), .A5(n2787), .Y(n5030) );
  INVX1_RVT U5371 ( .A(n5030), .Y(n5018) );
  MUX21X1_RVT U5372 ( .A1(n5041), .A2(n5040), .S0(n5018), .Y(n5023) );
  NAND2X0_RVT U5373 ( .A1(n5021), .A2(n5038), .Y(n5022) );
  MUX21X1_RVT U5374 ( .A1(n5023), .A2(n5022), .S0(i_tv80_core_PC_14_), .Y(
        n5024) );
  AO221X1_RVT U5375 ( .A1(n5026), .A2(i_tv80_core_I_6_), .A3(n5025), .A4(n5277), .A5(n5024), .Y(n2024) );
  AO222X1_RVT U5376 ( .A1(n2574), .A2(i_tv80_core_TmpAddr_15_), .A3(n2740), 
        .A4(n5028), .A5(n5027), .A6(di_reg_7_), .Y(n2064) );
  OR2X1_RVT U5377 ( .A1(i_tv80_core_PC_14_), .A2(n5031), .Y(n5029) );
  AO22X1_RVT U5378 ( .A1(i_tv80_core_PC_14_), .A2(n5031), .A3(n5030), .A4(
        n5029), .Y(n5032) );
  NAND3X0_RVT U5379 ( .A1(n5041), .A2(i_tv80_core_PC_15_), .A3(n5039), .Y(
        n5047) );
  NAND3X0_RVT U5380 ( .A1(n5040), .A2(i_tv80_core_PC_15_), .A3(n5032), .Y(
        n5046) );
  OA222X1_RVT U5381 ( .A1(n5042), .A2(n5038), .A3(n5037), .A4(n5036), .A5(
        n2792), .A6(n5035), .Y(n5045) );
  NAND2X0_RVT U5382 ( .A1(n5043), .A2(n5042), .Y(n5044) );
  NAND4X0_RVT U5383 ( .A1(n5047), .A2(n5046), .A3(n5045), .A4(n5044), .Y(n2039) );
  NAND3X0_RVT U5384 ( .A1(n5053), .A2(n5310), .A3(n5052), .Y(n5062) );
  AO21X1_RVT U5385 ( .A1(n5085), .A2(n2476), .A3(n5054), .Y(n5059) );
  NAND3X0_RVT U5386 ( .A1(n5056), .A2(n5306), .A3(n5055), .Y(n5058) );
  AO221X1_RVT U5387 ( .A1(n5366), .A2(n5059), .A3(n5315), .A4(n5058), .A5(
        n5057), .Y(n5060) );
  AO221X1_RVT U5388 ( .A1(n2338), .A2(n5062), .A3(n5061), .A4(n2316), .A5(
        n5060), .Y(n5063) );
  NAND2X0_RVT U5389 ( .A1(n3142), .A2(n5063), .Y(n5073) );
  NAND2X0_RVT U5390 ( .A1(n5087), .A2(n2645), .Y(n5065) );
  OA221X1_RVT U5391 ( .A1(n3114), .A2(n5080), .A3(n5340), .A4(n5065), .A5(
        n5064), .Y(n5070) );
  OA22X1_RVT U5392 ( .A1(n2719), .A2(n5326), .A3(n5328), .A4(n5066), .Y(n5069)
         );
  OA221X1_RVT U5393 ( .A1(n5070), .A2(n489), .A3(n5069), .A4(n5068), .A5(n5067), .Y(n5071) );
  NAND3X0_RVT U5394 ( .A1(n5073), .A2(n5072), .A3(n5071), .Y(n5074) );
  MUX21X1_RVT U5395 ( .A1(i_tv80_core_RegBusB_7_), .A2(i_tv80_core_RegBusB_15_), .S0(n5396), .Y(i_tv80_core_N1214) );
  MUX21X1_RVT U5396 ( .A1(i_tv80_core_RegBusB_6_), .A2(i_tv80_core_RegBusB_14_), .S0(n5396), .Y(i_tv80_core_N1213) );
  MUX21X1_RVT U5397 ( .A1(i_tv80_core_RegBusB_5_), .A2(i_tv80_core_RegBusB_13_), .S0(n5396), .Y(i_tv80_core_N1212) );
  MUX21X1_RVT U5398 ( .A1(i_tv80_core_RegBusB_4_), .A2(i_tv80_core_RegBusB_12_), .S0(n5396), .Y(i_tv80_core_N1211) );
  MUX21X1_RVT U5399 ( .A1(i_tv80_core_RegBusB_3_), .A2(i_tv80_core_RegBusB_11_), .S0(n5396), .Y(i_tv80_core_N1210) );
  MUX21X1_RVT U5400 ( .A1(i_tv80_core_RegBusB_2_), .A2(i_tv80_core_RegBusB_10_), .S0(n5396), .Y(i_tv80_core_N1209) );
  MUX21X1_RVT U5401 ( .A1(i_tv80_core_RegBusB_1_), .A2(i_tv80_core_RegBusB_9_), 
        .S0(n5396), .Y(i_tv80_core_N1208) );
  MUX21X1_RVT U5402 ( .A1(i_tv80_core_RegBusB_0_), .A2(i_tv80_core_RegBusB_8_), 
        .S0(n5396), .Y(i_tv80_core_N1207) );
  AO21X1_RVT U5403 ( .A1(n2645), .A2(n5077), .A3(n5076), .Y(n5078) );
  NAND2X0_RVT U5404 ( .A1(n5087), .A2(n5078), .Y(n5083) );
  OR2X1_RVT U5405 ( .A1(n5080), .A2(n5079), .Y(n5082) );
  NAND3X0_RVT U5406 ( .A1(n5083), .A2(n5082), .A3(n5081), .Y(n5092) );
  AO21X1_RVT U5407 ( .A1(n5085), .A2(n5315), .A3(n5084), .Y(n5086) );
  NAND2X0_RVT U5408 ( .A1(n5087), .A2(n5086), .Y(n5088) );
  NAND3X0_RVT U5409 ( .A1(n5089), .A2(n5088), .A3(n2628), .Y(n5090) );
  AO22X1_RVT U5410 ( .A1(n3152), .A2(n5092), .A3(n3142), .A4(n5090), .Y(n5093)
         );
  AND2X1_RVT U5411 ( .A1(n2711), .A2(n5093), .Y(i_tv80_core_Set_BusB_To_3_) );
  NAND2X0_RVT U5412 ( .A1(i_tv80_core_BusAck), .A2(n5094), .Y(
        i_tv80_core_N1440) );
  INVX1_RVT U5413 ( .A(n5095), .Y(n5096) );
  AO21X1_RVT U5414 ( .A1(n5097), .A2(n2408), .A3(n2729), .Y(n5098) );
  AO21X1_RVT U5415 ( .A1(n3146), .A2(n5098), .A3(n3159), .Y(n5107) );
  NAND2X0_RVT U5416 ( .A1(n3147), .A2(n5107), .Y(n5105) );
  NAND3X0_RVT U5417 ( .A1(n5100), .A2(n5323), .A3(n3152), .Y(n5103) );
  INVX1_RVT U5418 ( .A(n5103), .Y(n5123) );
  INVX1_RVT U5419 ( .A(n5343), .Y(n5102) );
  NAND3X0_RVT U5420 ( .A1(n5102), .A2(n5323), .A3(n3152), .Y(n5104) );
  INVX1_RVT U5421 ( .A(n5104), .Y(n5122) );
  AO222X1_RVT U5422 ( .A1(i_tv80_core_BusB_4_), .A2(n5123), .A3(
        i_tv80_core_BusB_0_), .A4(n2661), .A5(n5122), .A6(
        i_tv80_core_i_alu_N185), .Y(n5109) );
  INVX1_RVT U5423 ( .A(n5105), .Y(n5106) );
  INVX1_RVT U5424 ( .A(n5107), .Y(n5124) );
  AO222X1_RVT U5425 ( .A1(n2730), .A2(n5109), .A3(n2663), .A4(n5108), .A5(
        do_0_), .A6(n5124), .Y(n2047) );
  AO222X1_RVT U5426 ( .A1(i_tv80_core_BusB_5_), .A2(n5123), .A3(
        i_tv80_core_BusB_1_), .A4(n2661), .A5(n5122), .A6(i_tv80_core_BusA_1_), 
        .Y(n5111) );
  AO222X1_RVT U5427 ( .A1(n2730), .A2(n5111), .A3(n2663), .A4(n5110), .A5(
        do_1_), .A6(n5124), .Y(n2046) );
  AO222X1_RVT U5428 ( .A1(i_tv80_core_BusB_6_), .A2(n5123), .A3(
        i_tv80_core_BusB_2_), .A4(n2661), .A5(n5122), .A6(i_tv80_core_BusA_2_), 
        .Y(n5113) );
  AO222X1_RVT U5429 ( .A1(n2730), .A2(n5113), .A3(n2663), .A4(n5112), .A5(
        do_2_), .A6(n5124), .Y(n2045) );
  AO222X1_RVT U5430 ( .A1(n5123), .A2(i_tv80_core_BusB_7_), .A3(
        i_tv80_core_BusB_3_), .A4(n2661), .A5(n5122), .A6(i_tv80_core_BusA_3_), 
        .Y(n5115) );
  AO222X1_RVT U5431 ( .A1(n2730), .A2(n5115), .A3(n2663), .A4(n5114), .A5(
        do_3_), .A6(n5124), .Y(n2044) );
  AO222X1_RVT U5432 ( .A1(n5123), .A2(i_tv80_core_i_alu_N185), .A3(
        i_tv80_core_BusB_4_), .A4(n2661), .A5(i_tv80_core_BusB_0_), .A6(n5122), 
        .Y(n5117) );
  AO222X1_RVT U5433 ( .A1(n2730), .A2(n5117), .A3(n2663), .A4(n5116), .A5(
        do_4_), .A6(n5124), .Y(n2043) );
  AO222X1_RVT U5434 ( .A1(n5123), .A2(i_tv80_core_BusA_1_), .A3(
        i_tv80_core_BusB_5_), .A4(n2661), .A5(i_tv80_core_BusB_1_), .A6(n5122), 
        .Y(n5119) );
  AO222X1_RVT U5435 ( .A1(n2730), .A2(n5119), .A3(n2663), .A4(n5118), .A5(
        do_5_), .A6(n5124), .Y(n2042) );
  AO222X1_RVT U5436 ( .A1(n5123), .A2(i_tv80_core_BusA_2_), .A3(
        i_tv80_core_BusB_6_), .A4(n2661), .A5(i_tv80_core_BusB_2_), .A6(n5122), 
        .Y(n5121) );
  AO222X1_RVT U5437 ( .A1(n2730), .A2(n5121), .A3(n2663), .A4(n5120), .A5(
        do_6_), .A6(n5124), .Y(n2041) );
  AO222X1_RVT U5438 ( .A1(n5123), .A2(i_tv80_core_BusA_3_), .A3(
        i_tv80_core_BusB_7_), .A4(n2661), .A5(i_tv80_core_BusB_3_), .A6(n5122), 
        .Y(n5126) );
  AO222X1_RVT U5439 ( .A1(n2730), .A2(n5126), .A3(n5125), .A4(n2663), .A5(
        do_7_), .A6(n5124), .Y(n2040) );
  NAND2X0_RVT U5440 ( .A1(n5348), .A2(n5127), .Y(n5135) );
  INVX1_RVT U5441 ( .A(n5135), .Y(n5150) );
  AO22X1_RVT U5442 ( .A1(n5378), .A2(n5135), .A3(n5134), .A4(n2358), .Y(n5136)
         );
  OA22X1_RVT U5443 ( .A1(n3634), .A2(n5290), .A3(n2552), .A4(n5139), .Y(n5157)
         );
  AO21X1_RVT U5444 ( .A1(n5377), .A2(n5149), .A3(n5140), .Y(n5141) );
  NAND2X0_RVT U5445 ( .A1(n5323), .A2(n5142), .Y(n5148) );
  INVX1_RVT U5446 ( .A(n5148), .Y(n5143) );
  AOI222X1_RVT U5447 ( .A1(i_tv80_core_N247), .A2(n2396), .A3(A_0_), .A4(n2441), .A5(i_tv80_core_R_0_), .A6(n5214), .Y(n5144) );
  OA221X1_RVT U5448 ( .A1(n5217), .A2(n5145), .A3(n114), .A4(n2537), .A5(n5144), .Y(n5156) );
  INVX1_RVT U5449 ( .A(n5146), .Y(n5154) );
  NAND2X0_RVT U5450 ( .A1(n5148), .A2(n5147), .Y(n5159) );
  NAND2X0_RVT U5451 ( .A1(n2462), .A2(n2588), .Y(n5153) );
  NAND3X0_RVT U5452 ( .A1(n2666), .A2(n2462), .A3(n2340), .Y(n5152) );
  OAI221X1_RVT U5453 ( .A1(n5154), .A2(n5295), .A3(n5159), .A4(n5153), .A5(
        n5152), .Y(n5218) );
  NAND2X0_RVT U5454 ( .A1(i_tv80_core_TmpAddr_0_), .A2(n5218), .Y(n5155) );
  NAND3X0_RVT U5455 ( .A1(n5157), .A2(n5156), .A3(n5155), .Y(n2023) );
  OA222X1_RVT U5456 ( .A1(n113), .A2(n2537), .A3(n5289), .A4(n5158), .A5(n3658), .A6(n5290), .Y(n5169) );
  AOI22X1_RVT U5457 ( .A1(i_tv80_core_PC_1_), .A2(n5291), .A3(i_tv80_core_N248), .A4(n2396), .Y(n5168) );
  NAND2X0_RVT U5458 ( .A1(n2666), .A2(n2340), .Y(n5223) );
  INVX1_RVT U5459 ( .A(n5159), .Y(n5160) );
  NAND2X0_RVT U5460 ( .A1(n2588), .A2(n5160), .Y(n5222) );
  AO21X1_RVT U5461 ( .A1(n5223), .A2(n5222), .A3(n2546), .Y(n5206) );
  INVX1_RVT U5462 ( .A(n5161), .Y(n5162) );
  OA22X1_RVT U5463 ( .A1(n5163), .A2(n5206), .A3(n5162), .A4(n5295), .Y(n5167)
         );
  NAND4X0_RVT U5464 ( .A1(n5168), .A2(n5167), .A3(n5169), .A4(n5166), .Y(n2022) );
  OA222X1_RVT U5465 ( .A1(n112), .A2(n2537), .A3(n5289), .A4(n5170), .A5(n3700), .A6(n5290), .Y(n5179) );
  AOI22X1_RVT U5466 ( .A1(i_tv80_core_PC_2_), .A2(n5291), .A3(i_tv80_core_N249), .A4(n2396), .Y(n5178) );
  INVX1_RVT U5467 ( .A(n5171), .Y(n5172) );
  OA22X1_RVT U5468 ( .A1(n5173), .A2(n5206), .A3(n5172), .A4(n5295), .Y(n5177)
         );
  NAND4X0_RVT U5469 ( .A1(n5178), .A2(n5177), .A3(n5179), .A4(n5176), .Y(n2021) );
  OA22X1_RVT U5470 ( .A1(n3728), .A2(n5290), .A3(n2552), .A4(n5180), .Y(n5185)
         );
  AOI222X1_RVT U5471 ( .A1(i_tv80_core_N250), .A2(n2396), .A3(A_3_), .A4(n2441), .A5(i_tv80_core_R_3_), .A6(n5214), .Y(n5181) );
  OA221X1_RVT U5472 ( .A1(n5217), .A2(n5182), .A3(n111), .A4(n2537), .A5(n5181), .Y(n5184) );
  NAND2X0_RVT U5473 ( .A1(i_tv80_core_TmpAddr_3_), .A2(n5218), .Y(n5183) );
  NAND3X0_RVT U5474 ( .A1(n5185), .A2(n5184), .A3(n5183), .Y(n2020) );
  OA22X1_RVT U5475 ( .A1(n3754), .A2(n5290), .A3(n2552), .A4(n5186), .Y(n5191)
         );
  AOI222X1_RVT U5476 ( .A1(i_tv80_core_N251), .A2(n2396), .A3(A_4_), .A4(n2441), .A5(i_tv80_core_R_4_), .A6(n5214), .Y(n5187) );
  OA221X1_RVT U5477 ( .A1(n5217), .A2(n5188), .A3(n110), .A4(n2537), .A5(n5187), .Y(n5190) );
  NAND2X0_RVT U5478 ( .A1(i_tv80_core_TmpAddr_4_), .A2(n5218), .Y(n5189) );
  NAND3X0_RVT U5479 ( .A1(n5191), .A2(n5190), .A3(n5189), .Y(n2019) );
  OA222X1_RVT U5480 ( .A1(n109), .A2(n2537), .A3(n5289), .A4(n5192), .A5(n3771), .A6(n5290), .Y(n5201) );
  AOI22X1_RVT U5481 ( .A1(i_tv80_core_PC_5_), .A2(n5291), .A3(i_tv80_core_N252), .A4(n2396), .Y(n5200) );
  INVX1_RVT U5482 ( .A(n5193), .Y(n5194) );
  OA22X1_RVT U5483 ( .A1(n5195), .A2(n5206), .A3(n5194), .A4(n5295), .Y(n5199)
         );
  NAND4X0_RVT U5484 ( .A1(n5201), .A2(n5200), .A3(n5199), .A4(n5198), .Y(n2018) );
  OA222X1_RVT U5485 ( .A1(n108), .A2(n2537), .A3(n5289), .A4(n5202), .A5(n3813), .A6(n5290), .Y(n5212) );
  AOI22X1_RVT U5486 ( .A1(i_tv80_core_PC_6_), .A2(n5291), .A3(i_tv80_core_N253), .A4(n2396), .Y(n5211) );
  INVX1_RVT U5487 ( .A(n5203), .Y(n5204) );
  OA22X1_RVT U5488 ( .A1(n5205), .A2(n5206), .A3(n5204), .A4(n5295), .Y(n5210)
         );
  NAND4X0_RVT U5489 ( .A1(n5211), .A2(n5210), .A3(n5212), .A4(n5209), .Y(n2017) );
  OA22X1_RVT U5490 ( .A1(n3845), .A2(n5290), .A3(n2552), .A4(n5213), .Y(n5221)
         );
  AOI222X1_RVT U5491 ( .A1(i_tv80_core_N254), .A2(n2396), .A3(A_7_), .A4(n2441), .A5(i_tv80_core_R_7_), .A6(n5214), .Y(n5215) );
  OA221X1_RVT U5492 ( .A1(n5217), .A2(n5216), .A3(n107), .A4(n2537), .A5(n5215), .Y(n5220) );
  NAND2X0_RVT U5493 ( .A1(i_tv80_core_TmpAddr_7_), .A2(n5218), .Y(n5219) );
  NAND3X0_RVT U5494 ( .A1(n5221), .A2(n5220), .A3(n5219), .Y(n2016) );
  OA222X1_RVT U5495 ( .A1(n5289), .A2(n5224), .A3(n114), .A4(n5287), .A5(n339), 
        .A6(n5286), .Y(n5235) );
  OA22X1_RVT U5496 ( .A1(n3908), .A2(n5290), .A3(n3979), .A4(n2537), .Y(n5234)
         );
  AOI222X1_RVT U5497 ( .A1(n5278), .A2(n5225), .A3(n5291), .A4(
        i_tv80_core_PC_8_), .A5(i_tv80_core_N255), .A6(n2396), .Y(n5233) );
  NAND3X0_RVT U5498 ( .A1(n5227), .A2(n3146), .A3(n5294), .Y(n5229) );
  NAND2X0_RVT U5499 ( .A1(n5229), .A2(n5228), .Y(n5292) );
  OA22X1_RVT U5500 ( .A1(n5281), .A2(n5231), .A3(n2442), .A4(n5230), .Y(n5232)
         );
  NAND4X0_RVT U5501 ( .A1(n5233), .A2(n5234), .A3(n5235), .A4(n5232), .Y(n2015) );
  OA222X1_RVT U5502 ( .A1(n5289), .A2(n5236), .A3(n113), .A4(n5287), .A5(n340), 
        .A6(n5286), .Y(n5243) );
  OA22X1_RVT U5503 ( .A1(n3907), .A2(n5290), .A3(n3971), .A4(n2537), .Y(n5242)
         );
  AOI222X1_RVT U5504 ( .A1(n5278), .A2(n5237), .A3(i_tv80_core_PC_9_), .A4(
        n5291), .A5(i_tv80_core_N256), .A6(n2396), .Y(n5241) );
  OA22X1_RVT U5505 ( .A1(n5281), .A2(n5239), .A3(n2442), .A4(n5238), .Y(n5240)
         );
  NAND4X0_RVT U5506 ( .A1(n5241), .A2(n5242), .A3(n5243), .A4(n5240), .Y(n2014) );
  OA222X1_RVT U5507 ( .A1(n5289), .A2(n5244), .A3(n112), .A4(n5287), .A5(n341), 
        .A6(n5286), .Y(n5251) );
  OA22X1_RVT U5508 ( .A1(n3906), .A2(n5290), .A3(n3965), .A4(n2537), .Y(n5250)
         );
  AOI222X1_RVT U5509 ( .A1(n5278), .A2(n5245), .A3(i_tv80_core_PC_10_), .A4(
        n5291), .A5(i_tv80_core_N257), .A6(n2396), .Y(n5249) );
  OA22X1_RVT U5510 ( .A1(n5281), .A2(n5247), .A3(n2442), .A4(n5246), .Y(n5248)
         );
  NAND4X0_RVT U5511 ( .A1(n5249), .A2(n5250), .A3(n5251), .A4(n5248), .Y(n2013) );
  OA222X1_RVT U5512 ( .A1(n5289), .A2(n5252), .A3(n111), .A4(n5287), .A5(n342), 
        .A6(n5286), .Y(n5259) );
  OA22X1_RVT U5513 ( .A1(n3905), .A2(n5290), .A3(n3987), .A4(n2537), .Y(n5258)
         );
  AOI222X1_RVT U5514 ( .A1(n5278), .A2(n5253), .A3(i_tv80_core_PC_11_), .A4(
        n5291), .A5(i_tv80_core_N258), .A6(n2396), .Y(n5257) );
  OA22X1_RVT U5515 ( .A1(n5281), .A2(n5255), .A3(n2442), .A4(n5254), .Y(n5256)
         );
  NAND4X0_RVT U5516 ( .A1(n5257), .A2(n5258), .A3(n5259), .A4(n5256), .Y(n2012) );
  OA222X1_RVT U5517 ( .A1(n5289), .A2(n5260), .A3(n110), .A4(n5287), .A5(n343), 
        .A6(n5286), .Y(n5267) );
  OA22X1_RVT U5518 ( .A1(n4001), .A2(n5290), .A3(n3958), .A4(n2537), .Y(n5266)
         );
  AOI222X1_RVT U5519 ( .A1(n5278), .A2(n5261), .A3(i_tv80_core_PC_12_), .A4(
        n5291), .A5(i_tv80_core_N259), .A6(n2396), .Y(n5265) );
  OA22X1_RVT U5520 ( .A1(n5281), .A2(n5263), .A3(n2442), .A4(n5262), .Y(n5264)
         );
  NAND4X0_RVT U5521 ( .A1(n5265), .A2(n5266), .A3(n5267), .A4(n5264), .Y(n2011) );
  OA222X1_RVT U5522 ( .A1(n5289), .A2(n5268), .A3(n109), .A4(n5287), .A5(n344), 
        .A6(n5286), .Y(n5275) );
  OA22X1_RVT U5523 ( .A1(n4021), .A2(n5290), .A3(n3950), .A4(n2537), .Y(n5274)
         );
  AOI222X1_RVT U5524 ( .A1(n5278), .A2(n5269), .A3(i_tv80_core_PC_13_), .A4(
        n5291), .A5(i_tv80_core_N260), .A6(n2396), .Y(n5273) );
  OA22X1_RVT U5525 ( .A1(n5281), .A2(n5271), .A3(n2442), .A4(n5270), .Y(n5272)
         );
  NAND4X0_RVT U5526 ( .A1(n5273), .A2(n5274), .A3(n5275), .A4(n5272), .Y(n2010) );
  OA222X1_RVT U5527 ( .A1(n5289), .A2(n5276), .A3(n108), .A4(n5287), .A5(n345), 
        .A6(n5286), .Y(n5285) );
  OA22X1_RVT U5528 ( .A1(n4020), .A2(n5290), .A3(n3940), .A4(n2537), .Y(n5284)
         );
  AOI222X1_RVT U5529 ( .A1(n5278), .A2(n5277), .A3(i_tv80_core_PC_14_), .A4(
        n5291), .A5(i_tv80_core_N261), .A6(n2396), .Y(n5283) );
  OA22X1_RVT U5530 ( .A1(n5281), .A2(n5280), .A3(n2442), .A4(n5279), .Y(n5282)
         );
  NAND4X0_RVT U5531 ( .A1(n5283), .A2(n5284), .A3(n5285), .A4(n5282), .Y(n2009) );
  INVX1_RVT U5532 ( .A(i_tv80_core_RegBusC_15_), .Y(n5288) );
  OA222X1_RVT U5533 ( .A1(n5289), .A2(n5288), .A3(n107), .A4(n5287), .A5(n346), 
        .A6(n5286), .Y(n5299) );
  OA22X1_RVT U5534 ( .A1(n484), .A2(n5290), .A3(n4037), .A4(n2537), .Y(n5298)
         );
  AOI222X1_RVT U5535 ( .A1(i_tv80_core_I_7_), .A2(n5292), .A3(
        i_tv80_core_PC_15_), .A4(n5291), .A5(i_tv80_core_N262), .A6(n2396), 
        .Y(n5297) );
  NAND4X0_RVT U5536 ( .A1(n5297), .A2(n5298), .A3(n5299), .A4(n5296), .Y(n2008) );
  NAND2X0_RVT U5537 ( .A1(n192), .A2(n5300), .Y(n5301) );
  NAND3X0_RVT U5538 ( .A1(n5371), .A2(reset_n), .A3(n5301), .Y(
        i_tv80_core_N1294) );
  INVX1_RVT U5539 ( .A(n5312), .Y(n5305) );
  NAND2X0_RVT U5540 ( .A1(n2645), .A2(i_tv80_core_ISet_1_), .Y(n5304) );
  OA22X1_RVT U5541 ( .A1(n5305), .A2(n5304), .A3(n5303), .A4(n5302), .Y(n5331)
         );
  NAND2X0_RVT U5542 ( .A1(n5307), .A2(n5306), .Y(n5316) );
  NAND2X0_RVT U5543 ( .A1(n5309), .A2(n5308), .Y(n5314) );
  NAND2X0_RVT U5544 ( .A1(n5311), .A2(n5310), .Y(n5313) );
  NAND3X0_RVT U5545 ( .A1(n5320), .A2(n5319), .A3(n5318), .Y(n5321) );
  OA222X1_RVT U5546 ( .A1(n5329), .A2(n5328), .A3(n5327), .A4(n5351), .A5(
        n5326), .A6(n5325), .Y(n5330) );
  NAND4X0_RVT U5547 ( .A1(n2661), .A2(n5332), .A3(n5331), .A4(n5330), .Y(n5334) );
  NAND2X0_RVT U5548 ( .A1(n5333), .A2(n5334), .Y(n1835) );
  INVX1_RVT U5549 ( .A(n5334), .Y(n5354) );
  NAND2X0_RVT U5550 ( .A1(n5336), .A2(n5335), .Y(n5360) );
  INVX1_RVT U5551 ( .A(n5337), .Y(n5349) );
  INVX1_RVT U5552 ( .A(n5338), .Y(n5341) );
  OA21X1_RVT U5553 ( .A1(n5341), .A2(n5340), .A3(n5339), .Y(n5342) );
  OA221X1_RVT U5554 ( .A1(n5346), .A2(n5345), .A3(n5344), .A4(n5343), .A5(
        n5342), .Y(n5347) );
  OA222X1_RVT U5555 ( .A1(n5351), .A2(n5350), .A3(n5349), .A4(n5348), .A5(n489), .A6(n5347), .Y(n5352) );
  NAND4X0_RVT U5556 ( .A1(n5354), .A2(n5353), .A3(n5360), .A4(n5352), .Y(n5357) );
  INVX1_RVT U5557 ( .A(n5357), .Y(n5356) );
  NAND2X0_RVT U5558 ( .A1(n277), .A2(n5360), .Y(n5364) );
  NAND2X0_RVT U5559 ( .A1(n5366), .A2(n5364), .Y(n5355) );
  NAND3X0_RVT U5560 ( .A1(n5356), .A2(reset_n), .A3(n5355), .Y(N33) );
  NAND3X0_RVT U5561 ( .A1(n5358), .A2(n5357), .A3(n1835), .Y(n5359) );
  AND2X1_RVT U5562 ( .A1(n3156), .A2(n5359), .Y(n5368) );
  AND2X1_RVT U5563 ( .A1(i_tv80_core_IntCycle), .A2(n5360), .Y(n5361) );
  MUX21X1_RVT U5564 ( .A1(n5362), .A2(n5361), .S0(n5366), .Y(n5363) );
  NAND2X0_RVT U5565 ( .A1(n5368), .A2(n5363), .Y(N35) );
  NAND3X0_RVT U5566 ( .A1(n5366), .A2(n5365), .A3(n5364), .Y(n5367) );
  NAND3X0_RVT U5567 ( .A1(n5369), .A2(n5368), .A3(n5367), .Y(N36) );
  NAND2X0_RVT U5568 ( .A1(n2759), .A2(n197), .Y(n5374) );
  AO21X1_RVT U5569 ( .A1(n5374), .A2(n5370), .A3(n3159), .Y(n5375) );
  NAND3X0_RVT U5570 ( .A1(wait_n), .A2(n192), .A3(n5371), .Y(n5373) );
  SNPS_CLOCK_GATE_HIGH_tv80s_0 clk_gate_i_tv80_core_BusB_reg ( .CLK(MY_CLK), 
        .EN(busak_n), .ENCLK(net1618), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_tv80s_1 clk_gate_i_tv80_core_BusAck_reg ( .CLK(MY_CLK), 
        .EN(i_tv80_core_N1440), .ENCLK(net1620), .TE(1'b0) );
  tv80s_DW01_inc_1_DW01_inc_4 i_tv80_core_add_380 ( .A_6_(i_tv80_core_R_6_), 
        .A_5_(i_tv80_core_R_5_), .A_4_(i_tv80_core_R_4_), .A_3_(
        i_tv80_core_R_3_), .A_2_(i_tv80_core_R_2_), .A_1_(i_tv80_core_R_1_), 
        .A_0_(i_tv80_core_R_0_), .SUM_6_(i_tv80_core_N159), .SUM_5_(
        i_tv80_core_N158), .SUM_4_(i_tv80_core_N157), .SUM_3_(i_tv80_core_N156), .SUM_2_(i_tv80_core_N155), .SUM_1_(i_tv80_core_N154), .SUM_0_(
        i_tv80_core_N153) );
  SNPS_CLOCK_GATE_HIGH_tv80s_2 clk_gate_i_tv80_core_mcycles_reg ( .CLK(net1620), .EN(n1147), .ENCLK(n5394), .TE(1'b0) );
  tv80s_DW01_inc_0 i_tv80_core_add_548 ( .A_15_(i_tv80_core_TmpAddr_15_), 
        .A_14_(i_tv80_core_TmpAddr_14_), .A_13_(i_tv80_core_TmpAddr_13_), 
        .A_12_(i_tv80_core_TmpAddr_12_), .A_11_(i_tv80_core_TmpAddr_11_), 
        .A_10_(i_tv80_core_TmpAddr_10_), .A_9_(i_tv80_core_TmpAddr_9_), .A_8_(
        i_tv80_core_TmpAddr_8_), .A_7_(i_tv80_core_TmpAddr_7_), .A_6_(
        i_tv80_core_TmpAddr_6_), .A_5_(i_tv80_core_TmpAddr_5_), .A_4_(
        i_tv80_core_TmpAddr_4_), .A_3_(i_tv80_core_TmpAddr_3_), .A_2_(
        i_tv80_core_TmpAddr_2_), .A_1_(i_tv80_core_TmpAddr_1_), .A_0_(
        i_tv80_core_TmpAddr_0_), .SUM_15_(i_tv80_core_N262), .SUM_14_(
        i_tv80_core_N261), .SUM_13_(i_tv80_core_N260), .SUM_12_(
        i_tv80_core_N259), .SUM_11_(i_tv80_core_N258), .SUM_10_(
        i_tv80_core_N257), .SUM_9_(i_tv80_core_N256), .SUM_8_(i_tv80_core_N255), .SUM_7_(i_tv80_core_N254), .SUM_6_(i_tv80_core_N253), .SUM_5_(
        i_tv80_core_N252), .SUM_4_(i_tv80_core_N251), .SUM_3_(i_tv80_core_N250), .SUM_2_(i_tv80_core_N249), .SUM_1_(i_tv80_core_N248), .SUM_0_(
        i_tv80_core_N247) );
  DFFX1_RVT i_tv80_core_IR_reg_6_ ( .D(n2153), .CLK(n5394), .Q(
        i_tv80_core_IR_6_), .QN(n467) );
  DFFX1_RVT i_tv80_core_IR_reg_7_ ( .D(n2162), .CLK(n5394), .Q(
        i_tv80_core_IR_7_), .QN(n468) );
  DFFX1_RVT i_tv80_core_IR_reg_1_ ( .D(n2158), .CLK(n5394), .Q(
        i_tv80_core_IR_1_), .QN(n434) );
  DFFX1_RVT i_tv80_core_BusA_reg_2_ ( .D(n2484), .CLK(net1618), .Q(
        i_tv80_core_BusA_2_), .QN(n3730) );
  DFFX1_RVT i_tv80_core_NMICycle_reg ( .D(n2163), .CLK(MY_CLK), .Q(
        i_tv80_core_NMICycle), .QN(n3332) );
  DFFX1_RVT i_tv80_core_BusA_reg_1_ ( .D(n2485), .CLK(net1618), .Q(
        i_tv80_core_BusA_1_), .QN(n3709) );
  DFFX1_RVT i_tv80_core_IR_reg_0_ ( .D(n2159), .CLK(n5394), .Q(
        i_tv80_core_IR_0_), .QN(n433) );
  DFFX2_RVT i_tv80_core_mcycle_reg_0_ ( .D(n2165), .CLK(net1620), .Q(mcycle_0_), .QN(n3451) );
  DFFX1_RVT i_tv80_core_IR_reg_3_ ( .D(n2156), .CLK(n5394), .Q(
        i_tv80_core_IR_3_), .QN(n444) );
  DFFX2_RVT i_tv80_core_ALU_Op_r_reg_3_ ( .D(n5381), .CLK(n5394), .Q(
        i_tv80_core_ALU_Op_r_3_), .QN(n4148) );
  AND3X2_RVT U2204 ( .A1(n4708), .A2(i_tv80_core_i_reg_N15), .A3(
        i_tv80_core_i_reg_N14), .Y(n5398) );
  NAND2X1_RVT U2205 ( .A1(n2748), .A2(n2503), .Y(n3609) );
  AND3X2_RVT U2206 ( .A1(n4708), .A2(n4692), .A3(i_tv80_core_i_reg_N14), .Y(
        n5399) );
  AND3X2_RVT U2207 ( .A1(n3056), .A2(n4692), .A3(i_tv80_core_i_reg_N16), .Y(
        n5400) );
  AND3X2_RVT U2208 ( .A1(i_tv80_core_i_reg_N16), .A2(n3056), .A3(
        i_tv80_core_i_reg_N15), .Y(n5401) );
  NAND4X1_RVT U2209 ( .A1(n4658), .A2(n4657), .A3(n4656), .A4(n4655), .Y(n5402) );
  NAND4X1_RVT U2210 ( .A1(n4619), .A2(n4621), .A3(n4620), .A4(n4622), .Y(n5403) );
  NAND4X1_RVT U2211 ( .A1(n4671), .A2(n4670), .A3(n4672), .A4(n4673), .Y(n5404) );
  AND3X2_RVT U2213 ( .A1(i_tv80_core_i_reg_N15), .A2(i_tv80_core_i_reg_N16), 
        .A3(i_tv80_core_i_reg_N14), .Y(n5405) );
  NAND2X0_RVT U2216 ( .A1(i_tv80_core_RegBusA_10_), .A2(n3130), .Y(n5406) );
  AO21X1_RVT U2219 ( .A1(n3140), .A2(di_reg_7_), .A3(n2438), .Y(n4023) );
  AND2X1_RVT U2221 ( .A1(n2532), .A2(n2535), .Y(n5407) );
  NAND2X0_RVT U2223 ( .A1(n4494), .A2(n4536), .Y(n4499) );
  NAND2X2_RVT U2224 ( .A1(n2582), .A2(n2581), .Y(n3579) );
  INVX4_RVT U2225 ( .A(n5365), .Y(n3138) );
  XNOR2X1_RVT U2226 ( .A1(i_tv80_core_ALU_Op_r_1_), .A2(n304), .Y(n3512) );
  XOR2X1_RVT U2227 ( .A1(n3779), .A2(i_tv80_core_BusA_6_), .Y(n3824) );
  XNOR2X1_RVT U2229 ( .A1(n3891), .A2(n3890), .Y(n3835) );
  XOR2X1_RVT U2230 ( .A1(n3778), .A2(i_tv80_core_BusA_5_), .Y(n3781) );
  OR2X1_RVT U2231 ( .A1(n3777), .A2(n3795), .Y(n3778) );
  XOR2X1_RVT U2232 ( .A1(n514), .A2(n4801), .Y(n3518) );
  XOR2X1_RVT U2233 ( .A1(n514), .A2(n303), .Y(n3645) );
  NAND3X0_RVT U2234 ( .A1(n4402), .A2(n3578), .A3(n3577), .Y(n4443) );
  XOR2X1_RVT U2237 ( .A1(n3743), .A2(n3742), .Y(n3745) );
  XOR2X1_RVT U2238 ( .A1(n3780), .A2(i_tv80_core_BusA_7_), .Y(n3878) );
  INVX1_RVT U2239 ( .A(n3848), .Y(n3847) );
  NAND3X0_RVT U2240 ( .A1(n4057), .A2(n3873), .A3(n329), .Y(n3876) );
  INVX1_RVT U2241 ( .A(n4401), .Y(n4846) );
  NAND2X0_RVT U2242 ( .A1(i_tv80_core_IR_4_), .A2(n4763), .Y(n3601) );
  INVX1_RVT U2243 ( .A(n3670), .Y(n3239) );
  NAND4X0_RVT U2244 ( .A1(n5089), .A2(n4747), .A3(n4108), .A4(n4107), .Y(n4109) );
  INVX1_RVT U2245 ( .A(i_tv80_core_RegBusA_8_), .Y(n4575) );
  INVX1_RVT U2246 ( .A(i_tv80_core_RegBusA_9_), .Y(n4574) );
  INVX1_RVT U2247 ( .A(i_tv80_core_RegBusA_11_), .Y(n4573) );
  INVX1_RVT U2250 ( .A(i_tv80_core_RegBusA_4_), .Y(n4624) );
  NAND2X0_RVT U2251 ( .A1(n3132), .A2(n4577), .Y(n4605) );
  NAND3X0_RVT U2252 ( .A1(i_tv80_core_IR_7_), .A2(n3127), .A3(n467), .Y(n3206)
         );
  AOI221X1_RVT U2253 ( .A1(n3347), .A2(n3245), .A3(n3229), .A4(n3525), .A5(
        n3228), .Y(n2598) );
  INVX1_RVT U2256 ( .A(n4861), .Y(n5311) );
  NAND4X0_RVT U2257 ( .A1(n3103), .A2(i_tv80_core_IR_6_), .A3(n460), .A4(n468), 
        .Y(n3213) );
  NAND2X0_RVT U2259 ( .A1(n3269), .A2(n3270), .Y(n4870) );
  NAND2X0_RVT U2260 ( .A1(n4404), .A2(n3609), .Y(n4845) );
  NAND2X0_RVT U2262 ( .A1(n4458), .A2(n4448), .Y(n4475) );
  NAND2X0_RVT U2264 ( .A1(n2431), .A2(i_tv80_core_IR_2_), .Y(n4781) );
  INVX1_RVT U2268 ( .A(n4832), .Y(n4865) );
  INVX1_RVT U2277 ( .A(n4781), .Y(n3202) );
  INVX1_RVT U2279 ( .A(n2772), .Y(n2311) );
  INVX1_RVT U2280 ( .A(n4053), .Y(n4181) );
  MUX21X1_RVT U2281 ( .A1(n3737), .A2(n3736), .S0(i_tv80_core_BusA_3_), .Y(
        n3738) );
  NAND2X0_RVT U2283 ( .A1(n5408), .A2(n5409), .Y(n4946) );
  NAND3X0_RVT U2286 ( .A1(n2577), .A2(n4845), .A3(n4846), .Y(n5408) );
  NAND3X0_RVT U2287 ( .A1(n4844), .A2(n4845), .A3(n2577), .Y(n5409) );
  XOR2X1_RVT U2288 ( .A1(n3869), .A2(i_tv80_core_BusA_7_), .Y(n4061) );
  NAND2X0_RVT U2289 ( .A1(n3730), .A2(n3709), .Y(n3542) );
  NAND3X0_RVT U2290 ( .A1(n3679), .A2(n5365), .A3(n3680), .Y(n3729) );
  INVX1_RVT U2291 ( .A(n4383), .Y(n3473) );
  INVX1_RVT U2292 ( .A(n3601), .Y(n3169) );
  INVX1_RVT U2293 ( .A(n2322), .Y(n3245) );
  NAND4X0_RVT U2294 ( .A1(n3127), .A2(n3148), .A3(n467), .A4(n468), .Y(n4402)
         );
  NBUFFX2_RVT U2295 ( .A(n4605), .Y(n2496) );
  INVX2_RVT U2296 ( .A(n2616), .Y(n3130) );
  OR4X1_RVT U2299 ( .A1(n3255), .A2(n5351), .A3(n3616), .A4(n2518), .Y(n4538)
         );
  NAND3X0_RVT U2301 ( .A1(n4627), .A2(n4667), .A3(n4559), .Y(n4628) );
  NAND3X0_RVT U2304 ( .A1(i_tv80_core_IntCycle), .A2(n5322), .A3(n4874), .Y(
        n5131) );
  INVX1_RVT U2305 ( .A(n5034), .Y(n5130) );
  INVX1_RVT U2306 ( .A(n5131), .Y(n4894) );
  NAND2X0_RVT U2307 ( .A1(i_tv80_core_RegBusA_3_), .A2(n3130), .Y(n4667) );
  INVX1_RVT U2308 ( .A(i_tv80_core_RegBusA_6_), .Y(n4557) );
  OR2X1_RVT U2309 ( .A1(n4624), .A2(n2616), .Y(n4647) );
  INVX1_RVT U2310 ( .A(n4615), .Y(n4616) );
  NAND3X0_RVT U2311 ( .A1(n4520), .A2(n4663), .A3(n4605), .Y(n4618) );
  NAND2X1_RVT U2312 ( .A1(n2592), .A2(n3140), .Y(n4777) );
  NAND2X0_RVT U2313 ( .A1(n5048), .A2(n5053), .Y(n4861) );
  INVX1_RVT U2314 ( .A(n3617), .Y(n4864) );
  NAND4X0_RVT U2316 ( .A1(n3127), .A2(n460), .A3(n3114), .A4(n4176), .Y(n3666)
         );
  NOR2X0_RVT U2319 ( .A1(i_tv80_core_IR_5_), .A2(i_tv80_core_IR_4_), .Y(n5410)
         );
  NAND4X0_RVT U2320 ( .A1(n435), .A2(n2734), .A3(n3681), .A4(n2527), .Y(n3186)
         );
  OR4X1_RVT U2321 ( .A1(n444), .A2(i_tv80_core_IR_2_), .A3(i_tv80_core_IR_1_), 
        .A4(n433), .Y(n3248) );
  NAND2X2_RVT U2322 ( .A1(n4256), .A2(n3551), .Y(n3892) );
  INVX1_RVT U2324 ( .A(n3520), .Y(n3882) );
  NOR2X1_RVT U2325 ( .A1(i_tv80_core_ALU_Op_r_1_), .A2(i_tv80_core_ALU_Op_r_2_), .Y(n2411) );
  AND2X1_RVT U2326 ( .A1(n3126), .A2(n3148), .Y(n2476) );
  NAND2X1_RVT U2327 ( .A1(n3122), .A2(n3579), .Y(n5306) );
  NAND2X0_RVT U2329 ( .A1(n3253), .A2(n3236), .Y(n3580) );
  NAND3X0_RVT U2330 ( .A1(mcycle_0_), .A2(n3328), .A3(mcycle_2_), .Y(n3617) );
  INVX1_RVT U2331 ( .A(n3255), .Y(n4450) );
  OR2X1_RVT U2332 ( .A1(n3120), .A2(n3163), .Y(n3249) );
  NAND2X0_RVT U2333 ( .A1(n3188), .A2(n3187), .Y(n4745) );
  AND3X2_RVT U2334 ( .A1(i_tv80_core_i_reg_N19), .A2(n2947), .A3(n2946), .Y(
        n2382) );
  AND2X2_RVT U2335 ( .A1(n2705), .A2(i_tv80_core_i_reg_N19), .Y(n2365) );
  AND3X2_RVT U2336 ( .A1(i_tv80_core_i_reg_N19), .A2(i_tv80_core_i_reg_N17), 
        .A3(n2947), .Y(n2405) );
  NAND3X0_RVT U2337 ( .A1(n2645), .A2(n2536), .A3(n5066), .Y(n5067) );
  INVX1_RVT U2338 ( .A(n3206), .Y(n4119) );
  INVX1_RVT U2339 ( .A(n3347), .Y(n3444) );
  AO221X1_RVT U2340 ( .A1(n4477), .A2(n4476), .A3(n4491), .A4(
        i_tv80_core_RegAddrA_r_0_), .A5(n3121), .Y(i_tv80_core_i_reg_N14) );
  INVX1_RVT U2341 ( .A(i_tv80_core_i_reg_N15), .Y(n4692) );
  AO222X1_RVT U2342 ( .A1(n4493), .A2(n4475), .A3(n4492), .A4(
        i_tv80_core_Alternate), .A5(n4491), .A6(i_tv80_core_RegAddrA_r_2_), 
        .Y(i_tv80_core_i_reg_N16) );
  INVX1_RVT U2343 ( .A(i_tv80_core_i_reg_N16), .Y(n4708) );
  AO221X1_RVT U2344 ( .A1(n4472), .A2(n4471), .A3(n4491), .A4(
        i_tv80_core_RegAddrA_r_1_), .A5(n3121), .Y(i_tv80_core_i_reg_N15) );
  INVX1_RVT U2346 ( .A(i_tv80_core_i_reg_N14), .Y(n3056) );
  INVX1_RVT U2347 ( .A(n3122), .Y(n3589) );
  NAND2X0_RVT U2348 ( .A1(n3209), .A2(n3193), .Y(n4403) );
  NBUFFX2_RVT U2350 ( .A(n4402), .Y(n2492) );
  OR2X1_RVT U2351 ( .A1(n5411), .A2(n444), .Y(n4404) );
  NAND3X0_RVT U2353 ( .A1(n433), .A2(n435), .A3(n434), .Y(n5411) );
  NOR3X0_RVT U2355 ( .A1(n3365), .A2(n3265), .A3(n3264), .Y(n2583) );
  INVX1_RVT U2356 ( .A(n4892), .Y(n4886) );
  NAND4X0_RVT U2357 ( .A1(n2535), .A2(n5413), .A3(n197), .A4(tstate_1_), .Y(
        n4534) );
  AO21X1_RVT U2359 ( .A1(n3207), .A2(n4847), .A3(n4857), .Y(n4289) );
  XOR2X1_RVT U2360 ( .A1(n3133), .A2(i_tv80_core_RegBusA_13_), .Y(n4566) );
  XOR3X1_RVT U2361 ( .A1(i_tv80_core_RegBusA_1_), .A2(n3133), .A3(
        i_tv80_core_RegBusA_0_), .Y(n4684) );
  INVX2_RVT U2362 ( .A(n3132), .Y(n3129) );
  XOR2X1_RVT U2363 ( .A1(n3133), .A2(i_tv80_core_RegBusA_8_), .Y(n4617) );
  NAND2X0_RVT U2364 ( .A1(n4534), .A2(n4485), .Y(n4484) );
  XOR2X1_RVT U2365 ( .A1(n3129), .A2(i_tv80_core_RegBusA_3_), .Y(n4675) );
  NAND2X1_RVT U2366 ( .A1(n4558), .A2(n3130), .Y(n4559) );
  INVX1_RVT U2368 ( .A(n4675), .Y(n4676) );
  INVX1_RVT U2369 ( .A(n2394), .Y(n5140) );
  MUX21X1_RVT U2370 ( .A1(n3748), .A2(n3747), .S0(i_tv80_core_BusA_3_), .Y(
        n3749) );
  INVX1_RVT U2371 ( .A(n5306), .Y(n5085) );
  NBUFFX2_RVT U2372 ( .A(n4394), .Y(n2300) );
  NAND2X0_RVT U2373 ( .A1(n3108), .A2(n3677), .Y(n4383) );
  NAND2X1_RVT U2374 ( .A1(n4724), .A2(n2324), .Y(n5050) );
  NAND2X1_RVT U2375 ( .A1(n3448), .A2(n2423), .Y(n3347) );
  XOR3X1_RVT U2376 ( .A1(n4228), .A2(n4227), .A3(n5412), .Y(n4230) );
  XNOR3X1_RVT U2377 ( .A1(n2773), .A2(n2311), .A3(n4225), .Y(n5412) );
  INVX1_RVT U2378 ( .A(i_tv80_core_RegBusA_0_), .Y(n4689) );
  INVX1_RVT U2379 ( .A(n3996), .Y(n3995) );
  AND2X1_RVT U2380 ( .A1(n5353), .A2(i_tv80_core_BTR_r), .Y(n2736) );
  NBUFFX2_RVT U2381 ( .A(n4946), .Y(n2342) );
  INVX1_RVT U2382 ( .A(n3934), .Y(n3945) );
  OR2X1_RVT U2383 ( .A1(n3923), .A2(n5365), .Y(n4239) );
  NAND2X0_RVT U2384 ( .A1(n3147), .A2(n3933), .Y(n3936) );
  OAI221X1_RVT U2388 ( .A1(n4162), .A2(n4161), .A3(n4358), .A4(n4160), .A5(
        n4222), .Y(n2436) );
  INVX1_RVT U2389 ( .A(n4946), .Y(n5353) );
  XNOR3X1_RVT U2392 ( .A1(i_tv80_core_BusA_7_), .A2(n4051), .A3(n4053), .Y(
        n3893) );
  XNOR2X1_RVT U2409 ( .A1(n4059), .A2(n4060), .Y(n2762) );
  INVX1_RVT U2417 ( .A(n4183), .Y(n4254) );
  NAND2X0_RVT U2418 ( .A1(n2544), .A2(n4960), .Y(n5146) );
  AOI21X1_RVT U2420 ( .A1(n2676), .A2(n4014), .A3(n3915), .Y(n2595) );
  INVX1_RVT U2421 ( .A(n3767), .Y(n3765) );
  INVX1_RVT U2423 ( .A(n3817), .Y(n2437) );
  AOI21X1_RVT U2424 ( .A1(i_tv80_core_BusB_5_), .A2(n3808), .A3(n3807), .Y(
        n2765) );
  MUX21X1_RVT U2425 ( .A1(n3806), .A2(n3805), .S0(i_tv80_core_BusA_5_), .Y(
        n3807) );
  NAND3X0_RVT U2426 ( .A1(n3592), .A2(n3126), .A3(n460), .Y(n4150) );
  INVX1_RVT U2427 ( .A(n3774), .Y(n3773) );
  AOI21X1_RVT U2430 ( .A1(n2325), .A2(n3769), .A3(n3768), .Y(n2622) );
  AND3X1_RVT U2431 ( .A1(n4847), .A2(n5351), .A3(n4327), .Y(n2710) );
  INVX1_RVT U2433 ( .A(n3424), .Y(n3526) );
  NAND2X0_RVT U2435 ( .A1(n3193), .A2(n3169), .Y(n4401) );
  NAND2X1_RVT U2436 ( .A1(n3934), .A2(n3424), .Y(n3670) );
  NAND2X2_RVT U2437 ( .A1(n3262), .A2(n3200), .Y(n4742) );
  NAND2X0_RVT U2439 ( .A1(n3259), .A2(n3230), .Y(n3430) );
  NAND2X2_RVT U2440 ( .A1(n2356), .A2(n2532), .Y(n5344) );
  NOR2X1_RVT U2441 ( .A1(n468), .A2(n467), .Y(n2527) );
  NAND2X0_RVT U2444 ( .A1(n3259), .A2(n3579), .Y(n3402) );
  NAND3X0_RVT U2450 ( .A1(n3326), .A2(n3325), .A3(n5379), .Y(n2394) );
  INVX1_RVT U2452 ( .A(n4289), .Y(n2489) );
  NOR2X0_RVT U2454 ( .A1(n3451), .A2(mcycle_1_), .Y(n5413) );
  NBUFFX2_RVT U2457 ( .A(n3327), .Y(n2535) );
  AND3X2_RVT U2458 ( .A1(i_tv80_core_i_reg_N20), .A2(n2880), .A3(n2397), .Y(
        n2398) );
  MUX21X1_RVT U2461 ( .A1(n4020), .A2(n5276), .S0(n3138), .Y(n4097) );
  INVX4_RVT U2485 ( .A(n4023), .Y(n4248) );
  OR2X1_RVT U2493 ( .A1(n2500), .A2(n4594), .Y(n4702) );
  AOI221X1_RVT U2494 ( .A1(i_tv80_core_RegBusA_r_11_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_11_), .A4(n4778), .A5(n4596), .Y(n2745) );
  INVX1_RVT U2498 ( .A(n5295), .Y(n5278) );
  OR2X1_RVT U2499 ( .A1(n2511), .A2(n4600), .Y(n4704) );
  INVX1_RVT U2507 ( .A(n2590), .Y(n2511) );
  INVX1_RVT U2508 ( .A(i_tv80_core_RegBusA_15_), .Y(n4507) );
  AND3X1_RVT U2509 ( .A1(n4527), .A2(n4528), .A3(n4529), .Y(n2391) );
  INVX1_RVT U2510 ( .A(n4524), .Y(n4527) );
  XOR2X1_RVT U2512 ( .A1(n3130), .A2(i_tv80_core_RegBusA_9_), .Y(n4607) );
  OR2X1_RVT U2513 ( .A1(n2510), .A2(n4568), .Y(n4699) );
  INVX2_RVT U2514 ( .A(n4499), .Y(n3135) );
  AND2X2_RVT U2515 ( .A1(n4499), .A2(n4538), .Y(n2368) );
  INVX1_RVT U2517 ( .A(n4667), .Y(n4661) );
  AND3X1_RVT U2518 ( .A1(n2586), .A2(n2514), .A3(n4563), .Y(n2371) );
  INVX1_RVT U2519 ( .A(n2462), .Y(n2546) );
  NOR3X0_RVT U2520 ( .A1(n2463), .A2(n4894), .A3(n2464), .Y(n2462) );
  NAND3X0_RVT U2521 ( .A1(n2667), .A2(n4557), .A3(n4644), .Y(n4518) );
  INVX1_RVT U2523 ( .A(n2609), .Y(n2454) );
  INVX4_RVT U2524 ( .A(n4777), .Y(n4778) );
  INVX2_RVT U2525 ( .A(n4500), .Y(n4691) );
  AND2X1_RVT U2527 ( .A1(n4692), .A2(n3056), .Y(n2655) );
  NAND2X1_RVT U2528 ( .A1(n4863), .A2(n4862), .Y(n5033) );
  INVX1_RVT U2530 ( .A(i_tv80_core_IR_3_), .Y(n3114) );
  INVX1_RVT U2531 ( .A(n4775), .Y(n4322) );
  NAND4X0_RVT U2532 ( .A1(n3193), .A2(n435), .A3(n2299), .A4(n2748), .Y(n4394)
         );
  INVX1_RVT U2538 ( .A(n3248), .Y(n4724) );
  AND2X1_RVT U2539 ( .A1(n2377), .A2(n2741), .Y(n2523) );
  INVX1_RVT U2540 ( .A(n2299), .Y(n4154) );
  NAND2X2_RVT U2541 ( .A1(n3882), .A2(i_tv80_core_ALU_Op_r_3_), .Y(n4067) );
  NAND3X1_RVT U2542 ( .A1(n509), .A2(i_tv80_core_ALU_Op_r_3_), .A3(n2411), .Y(
        n3868) );
  MUX21X1_RVT U2545 ( .A1(n4056), .A2(n2411), .S0(n4055), .Y(n4073) );
  INVX1_RVT U2546 ( .A(n3868), .Y(n4146) );
  NAND2X1_RVT U2549 ( .A1(n4305), .A2(n4306), .Y(n4775) );
  OA222X1_RVT U2550 ( .A1(n5346), .A2(n5310), .A3(n4764), .A4(n3103), .A5(n435), .A6(n2427), .Y(n4765) );
  NAND3X0_RVT U2551 ( .A1(n3670), .A2(n3579), .A3(n4745), .Y(n3675) );
  NAND2X1_RVT U2552 ( .A1(n3127), .A2(n3148), .Y(n5066) );
  NAND3X1_RVT U2553 ( .A1(mcycle_1_), .A2(mcycle_0_), .A3(n2535), .Y(n5303) );
  NAND3X1_RVT U2557 ( .A1(tstate_1_), .A2(n192), .A3(n197), .Y(n4485) );
  AND3X1_RVT U2559 ( .A1(n2689), .A2(n5075), .A3(n3100), .Y(n2617) );
  MUX21X1_RVT U2560 ( .A1(n2316), .A2(n5074), .S0(n2711), .Y(n5075) );
  XNOR2X1_RVT U2568 ( .A1(n5414), .A2(n194), .Y(n3185) );
  NAND2X0_RVT U2569 ( .A1(n3167), .A2(n4860), .Y(n5414) );
  NAND2X1_RVT U2572 ( .A1(n2497), .A2(n4119), .Y(n5345) );
  INVX1_RVT U2574 ( .A(n5303), .Y(n5322) );
  AO221X1_RVT U2575 ( .A1(n3142), .A2(n3322), .A3(n3321), .A4(n3152), .A5(
        n4416), .Y(n5149) );
  NBUFFX2_RVT U2576 ( .A(n2526), .Y(n2495) );
  NAND2X1_RVT U2577 ( .A1(n3108), .A2(n3579), .Y(n4410) );
  NAND2X1_RVT U2578 ( .A1(n3158), .A2(busak_n), .Y(n4330) );
  NAND3X0_RVT U2579 ( .A1(n4886), .A2(n5366), .A3(n2789), .Y(n5132) );
  AOI21X1_RVT U2581 ( .A1(n5278), .A2(n5138), .A3(n5137), .Y(n2552) );
  INVX1_RVT U2582 ( .A(n5289), .Y(n5137) );
  NAND2X0_RVT U2583 ( .A1(n5141), .A2(n2462), .Y(n5217) );
  MUX21X1_RVT U2585 ( .A1(n5020), .A2(n5019), .S0(n5018), .Y(n5021) );
  INVX1_RVT U2588 ( .A(n4681), .Y(n4683) );
  XOR2X1_RVT U2589 ( .A1(n3129), .A2(i_tv80_core_RegBusA_15_), .Y(n4495) );
  XOR3X1_RVT U2592 ( .A1(n3129), .A2(n2474), .A3(n5415), .Y(n4681) );
  AND2X1_RVT U2593 ( .A1(n4559), .A2(n2499), .Y(n5415) );
  XOR2X1_RVT U2599 ( .A1(n3130), .A2(i_tv80_core_RegBusA_11_), .Y(n4592) );
  XOR2X1_RVT U2600 ( .A1(n3129), .A2(i_tv80_core_RegBusA_14_), .Y(n4543) );
  NAND3X1_RVT U2601 ( .A1(n4680), .A2(n4679), .A3(n4678), .Y(n4720) );
  NAND4X0_RVT U2602 ( .A1(n3135), .A2(n4675), .A3(n2445), .A4(n4559), .Y(n4679) );
  NBUFFX2_RVT U2603 ( .A(mcycle_1_), .Y(n2532) );
  OAI221X1_RVT U2604 ( .A1(n4942), .A2(n4941), .A3(n4942), .A4(n4940), .A5(
        n4939), .Y(n4989) );
  AO221X1_RVT U2606 ( .A1(i_tv80_core_RegBusA_r_0_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_0_), .A4(n4778), .A5(n4690), .Y(n4723) );
  NAND3X1_RVT U2608 ( .A1(tstate_0_), .A2(tstate_1_), .A3(n197), .Y(n5365) );
  INVX1_RVT U2610 ( .A(n5002), .Y(n4997) );
  XNOR2X1_RVT U2612 ( .A1(di_reg_7_), .A2(di_reg_6_), .Y(n2802) );
  XNOR3X1_RVT U2615 ( .A1(n111), .A2(di_reg_2_), .A3(n4236), .Y(n4237) );
  XOR3X1_RVT U2616 ( .A1(n4248), .A2(n4097), .A3(n5416), .Y(n2674) );
  OAI21X1_RVT U2622 ( .A1(n2701), .A2(n2671), .A3(n4098), .Y(n5416) );
  AND2X1_RVT U2623 ( .A1(n3997), .A2(n3996), .Y(n2591) );
  AND3X1_RVT U2624 ( .A1(n3995), .A2(n2336), .A3(n3993), .Y(n2610) );
  AND3X1_RVT U2626 ( .A1(n3995), .A2(n3992), .A3(n3994), .Y(n2620) );
  AND3X1_RVT U2633 ( .A1(n3992), .A2(n3996), .A3(n3994), .Y(n2623) );
  INVX1_RVT U2634 ( .A(n5118), .Y(n4792) );
  NAND3X1_RVT U2640 ( .A1(n2428), .A2(n3945), .A3(n4238), .Y(n4033) );
  NAND2X1_RVT U2641 ( .A1(n3937), .A2(n4038), .Y(n4031) );
  OR2X1_RVT U2643 ( .A1(n5417), .A2(n5418), .Y(n2418) );
  AO21X1_RVT U2644 ( .A1(n2723), .A2(n2726), .A3(n3936), .Y(n5417) );
  NAND2X0_RVT U2645 ( .A1(n4239), .A2(n4255), .Y(n5418) );
  OR2X1_RVT U2647 ( .A1(n2421), .A2(n2422), .Y(n4035) );
  INVX1_RVT U2648 ( .A(n3936), .Y(n4038) );
  AND3X1_RVT U2649 ( .A1(n2298), .A2(n4238), .A3(n3934), .Y(n2691) );
  AND4X1_RVT U2650 ( .A1(n3795), .A2(n4201), .A3(n4141), .A4(n4140), .Y(n2435)
         );
  INVX1_RVT U2651 ( .A(n4360), .Y(n4817) );
  MUX21X1_RVT U2652 ( .A1(di_reg_0_), .A2(n358), .S0(n5353), .Y(n2743) );
  OAI221X1_RVT U2653 ( .A1(n2760), .A2(n4067), .A3(n3881), .A4(n4069), .A5(
        n3880), .Y(n4269) );
  INVX1_RVT U2654 ( .A(n4261), .Y(n4361) );
  NAND3X1_RVT U2655 ( .A1(n3532), .A2(n2296), .A3(n4838), .Y(n4261) );
  AND2X1_RVT U2656 ( .A1(n4254), .A2(i_tv80_core_Fp_4_), .Y(n2415) );
  AOI21X1_RVT U2657 ( .A1(n4361), .A2(n3146), .A3(n4794), .Y(n2561) );
  NAND2X0_RVT U2661 ( .A1(n5031), .A2(n4953), .Y(n5020) );
  NAND2X0_RVT U2662 ( .A1(n5009), .A2(n4953), .Y(n5019) );
  MUX21X1_RVT U2663 ( .A1(n5020), .A2(n5019), .S0(n4956), .Y(n4957) );
  XOR3X1_RVT U2666 ( .A1(n4248), .A2(n4092), .A3(n2671), .Y(n2596) );
  NAND3X0_RVT U2667 ( .A1(n4547), .A2(n3843), .A3(n4548), .Y(n5120) );
  XOR3X1_RVT U2668 ( .A1(n3848), .A2(n3849), .A3(n2627), .Y(n2626) );
  OAI21X1_RVT U2669 ( .A1(n3852), .A2(n2622), .A3(n3820), .Y(n2627) );
  INVX1_RVT U2672 ( .A(n2331), .Y(n3852) );
  XNOR3X1_RVT U2673 ( .A1(n4248), .A2(n4082), .A3(n5419), .Y(n2613) );
  OAI21X1_RVT U2674 ( .A1(n4081), .A2(n2601), .A3(n2395), .Y(n5419) );
  XOR3X1_RVT U2675 ( .A1(n3911), .A2(n4248), .A3(n2601), .Y(n2602) );
  XNOR3X1_RVT U2677 ( .A1(n4248), .A2(n4247), .A3(n5420), .Y(n2614) );
  OAI21X1_RVT U2678 ( .A1(n2675), .A2(n2601), .A3(n4246), .Y(n5420) );
  XOR3X1_RVT U2679 ( .A1(n4248), .A2(n4087), .A3(n2595), .Y(n2608) );
  XNOR3X1_RVT U2680 ( .A1(n5421), .A2(n3764), .A3(n3765), .Y(n2697) );
  OA22X1_RVT U2681 ( .A1(n3851), .A2(n2696), .A3(n2678), .A4(n3758), .Y(n5421)
         );
  AO222X1_RVT U2682 ( .A1(n2768), .A2(di_reg_5_), .A3(n2769), .A4(n3811), .A5(
        i_tv80_core_BusB_5_), .A6(n3898), .Y(n5118) );
  XOR3X1_RVT U2683 ( .A1(n3775), .A2(n3773), .A3(n2622), .Y(n2621) );
  AO222X1_RVT U2684 ( .A1(n2768), .A2(di_reg_2_), .A3(n2769), .A4(n3726), .A5(
        i_tv80_core_BusB_2_), .A6(n3898), .Y(n5112) );
  NAND4X0_RVT U2685 ( .A1(n3460), .A2(n3459), .A3(n3458), .A4(n4770), .Y(n5422) );
  INVX1_RVT U2686 ( .A(n5066), .Y(n5087) );
  INVX4_RVT U2687 ( .A(n5358), .Y(n5366) );
  INVX4_RVT U2688 ( .A(n5344), .Y(n5315) );
  INVX1_RVT U2689 ( .A(n5303), .Y(n2338) );
  NBUFFX2_RVT U2690 ( .A(i_tv80_core_IR_1_), .Y(n2472) );
  INVX4_RVT U2691 ( .A(n460), .Y(n3148) );
  NBUFFX2_RVT U2692 ( .A(i_tv80_core_IR_0_), .Y(n2316) );
  NAND2X0_RVT U2693 ( .A1(n2734), .A2(n3113), .Y(n3424) );
  OR2X1_RVT U2694 ( .A1(n488), .A2(i_tv80_core_ISet_1_), .Y(n4847) );
  NAND3X0_RVT U2702 ( .A1(n3899), .A2(n4501), .A3(n4502), .Y(n5125) );
  XNOR3X1_RVT U2703 ( .A1(n4248), .A2(n4025), .A3(n5423), .Y(n2740) );
  OAI221X1_RVT U2704 ( .A1(n4024), .A2(n2671), .A3(n4248), .A4(n4097), .A5(
        n4098), .Y(n5423) );
  INVX1_RVT U2705 ( .A(n5292), .Y(n5281) );
  NAND2X1_RVT U2706 ( .A1(n2588), .A2(n2328), .Y(n5287) );
  OR2X1_RVT U2707 ( .A1(n2318), .A2(n2546), .Y(n5286) );
  NAND3X0_RVT U2708 ( .A1(n4701), .A2(n2501), .A3(n2735), .Y(n4713) );
  NAND3X0_RVT U2709 ( .A1(n4701), .A2(n2501), .A3(n2735), .Y(n4693) );
  OR2X1_RVT U2710 ( .A1(n2469), .A2(n2470), .Y(n2534) );
  NAND3X1_RVT U2711 ( .A1(n4706), .A2(n4707), .A3(n2390), .Y(n4716) );
  AOI221X1_RVT U2713 ( .A1(i_tv80_core_RegBusA_r_9_), .A2(n4691), .A3(
        i_tv80_core_RegBusB_9_), .A4(n4778), .A5(n4613), .Y(n2390) );
  NAND3X0_RVT U2716 ( .A1(n4699), .A2(n4700), .A3(n2392), .Y(n2372) );
  NAND3X0_RVT U2717 ( .A1(n4699), .A2(n4700), .A3(n2392), .Y(n4712) );
  OR2X1_RVT U2718 ( .A1(n5424), .A2(n5425), .Y(n4696) );
  AND3X1_RVT U2719 ( .A1(n4638), .A2(n4639), .A3(n2370), .Y(n5424) );
  AO222X1_RVT U2721 ( .A1(i_tv80_core_RegBusA_r_7_), .A2(n4691), .A3(n2368), 
        .A4(n5125), .A5(i_tv80_core_RegBusB_7_), .A6(n4778), .Y(n5425) );
  INVX1_RVT U2722 ( .A(n2646), .Y(n2529) );
  INVX1_RVT U2723 ( .A(n2647), .Y(n2504) );
  NAND2X1_RVT U2726 ( .A1(n5133), .A2(n5294), .Y(n5295) );
  INVX2_RVT U2728 ( .A(n5217), .Y(n5291) );
  AND2X2_RVT U2729 ( .A1(n5143), .A2(n2462), .Y(n2396) );
  NAND2X2_RVT U2730 ( .A1(n2462), .A2(n5136), .Y(n5289) );
  NAND3X0_RVT U2734 ( .A1(n5366), .A2(n5294), .A3(n2789), .Y(n5228) );
  INVX2_RVT U2735 ( .A(n2441), .Y(n2442) );
  INVX1_RVT U2736 ( .A(n5032), .Y(n5039) );
  NAND3X0_RVT U2737 ( .A1(n5133), .A2(n4892), .A3(n5038), .Y(n5035) );
  OR2X1_RVT U2738 ( .A1(n5035), .A2(n4960), .Y(n5036) );
  MUX21X1_RVT U2739 ( .A1(n5041), .A2(n5040), .S0(n5039), .Y(n5043) );
  AND2X2_RVT U2742 ( .A1(n2655), .A2(n2639), .Y(n2406) );
  INVX2_RVT U2749 ( .A(n5019), .Y(n5041) );
  INVX2_RVT U2750 ( .A(n5020), .Y(n5040) );
  INVX2_RVT U2753 ( .A(n5035), .Y(n5025) );
  INVX1_RVT U2756 ( .A(n5036), .Y(n5026) );
  INVX1_RVT U2757 ( .A(n3337), .Y(n4440) );
  AND3X1_RVT U2759 ( .A1(n5366), .A2(n3337), .A3(n3336), .Y(n2407) );
  INVX2_RVT U2760 ( .A(n489), .Y(n3151) );
  NAND2X0_RVT U2761 ( .A1(n2523), .A2(n3109), .Y(n5056) );
  MUX21X1_RVT U2762 ( .A1(n4074), .A2(n4075), .S0(n2774), .Y(n4076) );
  NBUFFX4_RVT U2766 ( .A(n3144), .Y(n3142) );
  NBUFFX2_RVT U2767 ( .A(i_tv80_core_IR_5_), .Y(n3127) );
  OR2X1_RVT U2768 ( .A1(i_tv80_core_XY_State_0_), .A2(i_tv80_core_XY_State_1_), 
        .Y(n5151) );
  INVX1_RVT U2769 ( .A(n4485), .Y(n5333) );
  NBUFFX2_RVT U2770 ( .A(i_tv80_core_IR_5_), .Y(n3126) );
  NBUFFX2_RVT U2771 ( .A(n4763), .Y(n3103) );
  INVX1_RVT U2772 ( .A(n3335), .Y(n5133) );
  NBUFFX2_RVT U2773 ( .A(n3144), .Y(n3143) );
  AO21X1_RVT U2774 ( .A1(n3376), .A2(n3379), .A3(n5351), .Y(n4337) );
  INVX2_RVT U2775 ( .A(n5075), .Y(n5396) );
  AND2X1_RVT U2776 ( .A1(n2607), .A2(n5396), .Y(n2683) );
  AND2X1_RVT U2777 ( .A1(n2686), .A2(n5396), .Y(n2685) );
  INVX1_RVT U2780 ( .A(n4318), .Y(n4316) );
  NAND4X0_RVT U2781 ( .A1(n4313), .A2(n4312), .A3(n5335), .A4(n4335), .Y(n4314) );
  MUX21X1_RVT U2782 ( .A1(n4085), .A2(i_tv80_core_BusA_1_), .S0(n2687), .Y(
        n4086) );
  MUX21X1_RVT U2783 ( .A1(n3331), .A2(i_tv80_core_NMICycle), .S0(n2587), .Y(
        n2163) );
  MUX21X1_RVT U2784 ( .A1(n4090), .A2(i_tv80_core_BusA_2_), .S0(n2687), .Y(
        n4091) );
  MUX21X1_RVT U2785 ( .A1(n4095), .A2(i_tv80_core_BusA_5_), .S0(n2687), .Y(
        n4096) );
  MUX21X1_RVT U2787 ( .A1(n4008), .A2(i_tv80_core_BusA_4_), .S0(n2687), .Y(
        n4009) );
  MUX21X1_RVT U2788 ( .A1(n3999), .A2(i_tv80_core_BusA_3_), .S0(n2687), .Y(
        n4000) );
  MUX21X1_RVT U2790 ( .A1(n4102), .A2(i_tv80_core_BusA_6_), .S0(n2687), .Y(
        n4103) );
  MUX21X1_RVT U2791 ( .A1(n4043), .A2(i_tv80_core_BusA_7_), .S0(n2687), .Y(
        n4044) );
  MUX21X1_RVT U2792 ( .A1(n4265), .A2(i_tv80_core_F_1_), .S0(n2561), .Y(n2117)
         );
  NAND3X0_RVT U2793 ( .A1(n2536), .A2(n488), .A3(n3146), .Y(n4105) );
  MUX21X1_RVT U2794 ( .A1(i_tv80_core_i_reg_RegsL_0__2_), .A2(n4721), .S0(
        n2406), .Y(n1885) );
  MUX21X1_RVT U2795 ( .A1(i_tv80_core_i_reg_RegsL_1__2_), .A2(n4721), .S0(
        n2640), .Y(n1893) );
  MUX21X1_RVT U2798 ( .A1(i_tv80_core_i_reg_RegsL_2__2_), .A2(n4721), .S0(
        n2637), .Y(n1901) );
  MUX21X1_RVT U2799 ( .A1(i_tv80_core_i_reg_RegsL_3__2_), .A2(n4721), .S0(
        n2638), .Y(n1909) );
  MUX21X1_RVT U2800 ( .A1(i_tv80_core_i_reg_RegsL_4__2_), .A2(n4721), .S0(
        n2568), .Y(n1917) );
  MUX21X1_RVT U2801 ( .A1(i_tv80_core_i_reg_RegsL_5__2_), .A2(n4721), .S0(
        n2641), .Y(n1925) );
  MUX21X1_RVT U2803 ( .A1(i_tv80_core_i_reg_RegsL_6__2_), .A2(n4721), .S0(
        n2642), .Y(n1933) );
  MUX21X1_RVT U2809 ( .A1(i_tv80_core_i_reg_RegsL_7__2_), .A2(n4721), .S0(
        n2643), .Y(n1941) );
  MUX21X1_RVT U2814 ( .A1(i_tv80_core_i_reg_RegsL_3__1_), .A2(n4722), .S0(
        n2638), .Y(n1910) );
  MUX21X1_RVT U2816 ( .A1(i_tv80_core_i_reg_RegsL_1__1_), .A2(n4722), .S0(
        n2640), .Y(n1894) );
  MUX21X1_RVT U2825 ( .A1(i_tv80_core_i_reg_RegsL_7__1_), .A2(n4722), .S0(
        n2643), .Y(n1942) );
  MUX21X1_RVT U2830 ( .A1(i_tv80_core_i_reg_RegsL_6__1_), .A2(n4722), .S0(
        n2642), .Y(n1934) );
  MUX21X1_RVT U2835 ( .A1(i_tv80_core_i_reg_RegsL_4__1_), .A2(n4722), .S0(
        n2568), .Y(n1918) );
  MUX21X1_RVT U2836 ( .A1(i_tv80_core_i_reg_RegsL_2__3_), .A2(n4720), .S0(
        n2637), .Y(n1900) );
  MUX21X1_RVT U2837 ( .A1(i_tv80_core_i_reg_RegsL_3__3_), .A2(n4720), .S0(
        n2638), .Y(n1908) );
  MUX21X1_RVT U2838 ( .A1(i_tv80_core_i_reg_RegsL_5__3_), .A2(n4720), .S0(
        n2641), .Y(n1924) );
  MUX21X1_RVT U2839 ( .A1(i_tv80_core_i_reg_RegsL_0__3_), .A2(n4720), .S0(
        n2406), .Y(n1884) );
  MUX21X1_RVT U2842 ( .A1(i_tv80_core_i_reg_RegsL_1__3_), .A2(n4720), .S0(
        n2640), .Y(n1892) );
  MUX21X1_RVT U2843 ( .A1(i_tv80_core_i_reg_RegsL_7__3_), .A2(n4720), .S0(
        n2643), .Y(n1940) );
  MUX21X1_RVT U2844 ( .A1(i_tv80_core_i_reg_RegsL_6__3_), .A2(n4720), .S0(
        n2642), .Y(n1932) );
  MUX21X1_RVT U2846 ( .A1(i_tv80_core_i_reg_RegsL_4__3_), .A2(n4720), .S0(
        n2568), .Y(n1916) );
  XOR3X1_RVT U2847 ( .A1(i_tv80_core_PC_1_), .A2(n4904), .A3(n4902), .Y(n4900)
         );
  OA22X1_RVT U2851 ( .A1(n4415), .A2(n4847), .A3(n4388), .A4(n5351), .Y(n4389)
         );
  MUX21X1_RVT U2852 ( .A1(n4252), .A2(i_tv80_core_i_alu_N185), .S0(n2687), .Y(
        n4253) );
  MUX21X1_RVT U2853 ( .A1(n4303), .A2(i_tv80_core_IntCycle), .S0(n2587), .Y(
        n2183) );
  OAI221X1_RVT U2854 ( .A1(n4817), .A2(n4369), .A3(n4368), .A4(n4814), .A5(
        n3156), .Y(n4371) );
  MUX21X1_RVT U2856 ( .A1(n4279), .A2(i_tv80_core_F_7_), .S0(n4370), .Y(n2191)
         );
  MUX21X1_RVT U2858 ( .A1(n5019), .A2(n5020), .S0(n4956), .Y(n4955) );
  NOR3X0_RVT U2861 ( .A1(n2986), .A2(n2988), .A3(n2987), .Y(n4644) );
  MUX21X1_RVT U2867 ( .A1(mcycle_0_), .A2(n4435), .S0(n4434), .Y(n2165) );
  MUX21X1_RVT U2868 ( .A1(i_tv80_core_IntE), .A2(n3112), .S0(n5426), .Y(n3111)
         );
  NAND3X0_RVT U2869 ( .A1(n4300), .A2(n4299), .A3(n4298), .Y(n5426) );
  MUX21X1_RVT U2870 ( .A1(i_tv80_core_i_reg_RegsH_4__2_), .A2(n4695), .S0(
        n2569), .Y(n1981) );
  MUX21X1_RVT U2876 ( .A1(i_tv80_core_i_reg_RegsH_5__2_), .A2(n4695), .S0(
        n2651), .Y(n1989) );
  MUX21X1_RVT U2877 ( .A1(i_tv80_core_i_reg_RegsH_6__2_), .A2(n4695), .S0(
        n2653), .Y(n1997) );
  MUX21X1_RVT U2879 ( .A1(i_tv80_core_i_reg_RegsH_7__2_), .A2(n4695), .S0(
        n2652), .Y(n2005) );
  MUX21X1_RVT U2880 ( .A1(i_tv80_core_i_reg_RegsH_0__7_), .A2(n2534), .S0(
        n2570), .Y(n1944) );
  MUX21X1_RVT U2882 ( .A1(i_tv80_core_i_reg_RegsH_1__7_), .A2(n2534), .S0(
        n2649), .Y(n1952) );
  MUX21X1_RVT U2883 ( .A1(i_tv80_core_i_reg_RegsH_7__7_), .A2(n2534), .S0(
        n2652), .Y(n2000) );
  MUX21X1_RVT U2886 ( .A1(i_tv80_core_i_reg_RegsH_6__7_), .A2(n2534), .S0(
        n2653), .Y(n1992) );
  MUX21X1_RVT U2887 ( .A1(i_tv80_core_i_reg_RegsH_4__7_), .A2(n2534), .S0(
        n2569), .Y(n1976) );
  MUX21X1_RVT U2888 ( .A1(i_tv80_core_i_reg_RegsH_0__5_), .A2(n2372), .S0(
        n2570), .Y(n1946) );
  MUX21X1_RVT U2889 ( .A1(i_tv80_core_i_reg_RegsH_1__5_), .A2(n2372), .S0(
        n2649), .Y(n1954) );
  MUX21X1_RVT U2891 ( .A1(i_tv80_core_i_reg_RegsH_4__5_), .A2(n2372), .S0(
        n2569), .Y(n1978) );
  MUX21X1_RVT U2892 ( .A1(i_tv80_core_i_reg_RegsH_5__5_), .A2(n2372), .S0(
        n2651), .Y(n1986) );
  MUX21X1_RVT U2893 ( .A1(i_tv80_core_i_reg_RegsH_6__5_), .A2(n4712), .S0(
        n2653), .Y(n1994) );
  MUX21X1_RVT U2894 ( .A1(i_tv80_core_i_reg_RegsH_7__5_), .A2(n4712), .S0(
        n2652), .Y(n2002) );
  MUX21X1_RVT U2895 ( .A1(i_tv80_core_i_reg_RegsH_2__5_), .A2(n4712), .S0(
        n2646), .Y(n1962) );
  MUX21X1_RVT U2900 ( .A1(i_tv80_core_i_reg_RegsH_3__5_), .A2(n4712), .S0(
        n2647), .Y(n1970) );
  MUX21X1_RVT U2901 ( .A1(i_tv80_core_i_reg_RegsL_4__7_), .A2(n4696), .S0(
        n2568), .Y(n1912) );
  MUX21X1_RVT U2907 ( .A1(i_tv80_core_i_reg_RegsL_5__7_), .A2(n4696), .S0(
        n2641), .Y(n1920) );
  MUX21X1_RVT U2908 ( .A1(i_tv80_core_i_reg_RegsL_6__7_), .A2(n4696), .S0(
        n2642), .Y(n1928) );
  MUX21X1_RVT U2909 ( .A1(i_tv80_core_i_reg_RegsL_7__7_), .A2(n4696), .S0(
        n2643), .Y(n1936) );
  MUX21X1_RVT U2911 ( .A1(i_tv80_core_i_reg_RegsL_1__7_), .A2(n4696), .S0(
        n2640), .Y(n1888) );
  MUX21X1_RVT U2912 ( .A1(i_tv80_core_i_reg_RegsL_2__7_), .A2(n4696), .S0(
        n2637), .Y(n1896) );
  MUX21X1_RVT U2913 ( .A1(i_tv80_core_i_reg_RegsL_3__7_), .A2(n4696), .S0(
        n2638), .Y(n1904) );
  MUX21X1_RVT U2914 ( .A1(i_tv80_core_i_reg_RegsL_4__5_), .A2(n5402), .S0(
        n2568), .Y(n1914) );
  MUX21X1_RVT U2915 ( .A1(i_tv80_core_i_reg_RegsL_5__5_), .A2(n5402), .S0(
        n2641), .Y(n1922) );
  MUX21X1_RVT U2916 ( .A1(i_tv80_core_i_reg_RegsL_6__5_), .A2(n5402), .S0(
        n2642), .Y(n1930) );
  MUX21X1_RVT U2917 ( .A1(i_tv80_core_i_reg_RegsL_7__5_), .A2(n5402), .S0(
        n2643), .Y(n1938) );
  MUX21X1_RVT U2919 ( .A1(i_tv80_core_i_reg_RegsL_1__5_), .A2(n5402), .S0(
        n2640), .Y(n1890) );
  MUX21X1_RVT U2921 ( .A1(i_tv80_core_i_reg_RegsL_2__5_), .A2(n5402), .S0(
        n2637), .Y(n1898) );
  MUX21X1_RVT U2922 ( .A1(i_tv80_core_i_reg_RegsL_3__5_), .A2(n5402), .S0(
        n2638), .Y(n1906) );
  MUX21X1_RVT U2923 ( .A1(i_tv80_core_i_reg_RegsL_0__5_), .A2(n5402), .S0(
        n2406), .Y(n1882) );
  MUX21X1_RVT U2924 ( .A1(i_tv80_core_i_reg_RegsH_2__0_), .A2(n5403), .S0(
        n2646), .Y(n1967) );
  MUX21X1_RVT U2925 ( .A1(i_tv80_core_i_reg_RegsH_3__0_), .A2(n5403), .S0(
        n2647), .Y(n1975) );
  MUX21X1_RVT U2926 ( .A1(i_tv80_core_i_reg_RegsH_5__0_), .A2(n5403), .S0(
        n2651), .Y(n1991) );
  MUX21X1_RVT U2928 ( .A1(i_tv80_core_i_reg_RegsH_0__0_), .A2(n5403), .S0(
        n2570), .Y(n1951) );
  MUX21X1_RVT U2929 ( .A1(i_tv80_core_i_reg_RegsH_1__0_), .A2(n5403), .S0(
        n2649), .Y(n1959) );
  MUX21X1_RVT U2931 ( .A1(i_tv80_core_i_reg_RegsH_7__0_), .A2(n5403), .S0(
        n2652), .Y(n2007) );
  MUX21X1_RVT U2932 ( .A1(i_tv80_core_i_reg_RegsH_6__0_), .A2(n5403), .S0(
        n2653), .Y(n1999) );
  MUX21X1_RVT U2935 ( .A1(i_tv80_core_i_reg_RegsH_4__0_), .A2(n5403), .S0(
        n2569), .Y(n1983) );
  INVX1_RVT U2937 ( .A(i_tv80_core_Set_BusB_To_2_), .Y(n3101) );
  MUX21X1_RVT U2938 ( .A1(n4315), .A2(tstate_0_), .S0(n4316), .Y(n2181) );
endmodule

