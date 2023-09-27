// IC Compiler II Version S-2021.06-SP5 Verilog Writer
// Generated on 9/19/2023 at 16:15:17
// Library Name: tv80_0.60_0.90
// Block Name: tv80s
// User Label: 
// Write Command: write_verilog ./results/tv80_0.60_0.90/tv80_0.60_0.90.cts.gate.v
module tv80s ( m1_n , mreq_n , iorq_n , rd_n , wr_n , rfsh_n , halt_n , 
    busak_n , A_15_ , A_14_ , A_13_ , A_12_ , A_11_ , A_10_ , A_9_ , A_8_ , 
    A_7_ , A_6_ , A_5_ , A_4_ , A_3_ , A_2_ , A_1_ , A_0_ , do_7_ , do_6_ , 
    do_5_ , do_4_ , do_3_ , do_2_ , do_1_ , do_0_ , reset_n , MY_CLK , 
    wait_n , int_n , nmi_n , busrq_n , di_7_ , di_6_ , di_5_ , di_4_ , di_3_ , 
    di_2_ , di_1_ , di_0_ ) ;
output m1_n ;
output mreq_n ;
output iorq_n ;
output rd_n ;
output wr_n ;
output rfsh_n ;
output halt_n ;
output busak_n ;
output A_15_ ;
output A_14_ ;
output A_13_ ;
output A_12_ ;
output A_11_ ;
output A_10_ ;
output A_9_ ;
output A_8_ ;
output A_7_ ;
output A_6_ ;
output A_5_ ;
output A_4_ ;
output A_3_ ;
output A_2_ ;
output A_1_ ;
output A_0_ ;
output do_7_ ;
output do_6_ ;
output do_5_ ;
output do_4_ ;
output do_3_ ;
output do_2_ ;
output do_1_ ;
output do_0_ ;
input  reset_n ;
input  MY_CLK ;
input  wait_n ;
input  int_n ;
input  nmi_n ;
input  busrq_n ;
input  di_7_ ;
input  di_6_ ;
input  di_5_ ;
input  di_4_ ;
input  di_3_ ;
input  di_2_ ;
input  di_1_ ;
input  di_0_ ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 i_tv80_core_RegAddrC_reg_1_ ( .SD ( n6346 ) , 
    .D ( n1941 ) , .SI ( n1940 ) , .SE ( i_tv80_core_ISet_1_ ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_N21 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_3_ ( .D ( i_tv80_core_N1218 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2668 ) , .QN ( n376 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_4_ ( .D ( i_tv80_core_N1219 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusB_4_ ) , .QN ( n377 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_5_ ( .D ( i_tv80_core_N1220 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusB_5_ ) , .QN ( n378 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_6_ ( .D ( i_tv80_core_N1221 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusB_6_ ) , .QN ( n379 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_7_ ( .D ( i_tv80_core_N1222 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusB_7_ ) , .QN ( n380 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_5_ ( 
    .D ( i_tv80_core_RegBusA_5_ ) , .CK ( ZCTSNET_51 ) , 
    .Q ( i_tv80_core_RegBusA_r_5_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Auto_Wait_t1_reg ( .D ( i_tv80_core_N1450 ) , 
    .CK ( MY_CLK ) , .Q ( i_tv80_core_Auto_Wait_t1 ) , .QN ( n2691 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_tstate_reg_0_ ( .D ( n2472 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( tstate_0_ ) , .QN ( n255 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_tstate_reg_1_ ( .D ( n2473 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( tstate_1_ ) , .QN ( n257 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_tstate_reg_2_ ( .D ( n2471 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( tstate_2_ ) , .QN ( n262 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_7_ ( .D ( n2463 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_7__CDR1 ) , .QN ( n177 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_6_ ( .D ( n2464 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_6__CDR1 ) , .QN ( n178 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_5_ ( .D ( n2465 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_5__CDR1 ) , .QN ( n179_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_4_ ( .D ( n2466 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_4__CDR1 ) , .QN ( n180_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_3_ ( .D ( n2467 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_3__CDR1 ) , .QN ( n181_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_2_ ( .D ( n2468 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_2__CDR1 ) , .QN ( n182_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_1_ ( .D ( n2469 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_1__CDR1 ) , .QN ( n183 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IStatus_reg_1_ ( .D ( n2409 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_IStatus_1_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_XY_State_reg_1_ ( .D ( n2390 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_XY_State_1_ ) , .QN ( n410 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Read_To_Reg_r_reg_3_ ( .D ( n2428 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( n4351 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Read_To_Reg_r_reg_1_ ( .D ( n2430 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Read_To_Reg_r_1_ ) , .QN ( n2692 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Z16_r_reg ( .D ( n2423 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Z16_r ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Save_ALU_r_reg ( .D ( n2425 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Save_ALU_r ) , .QN ( n436 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_7_ ( .D ( n2393 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_7_ ) , .QN ( n585 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_2_ ( .D ( n2398 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_2_ ) , .QN ( n581 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Read_To_Reg_r_reg_4_ ( .D ( n2427 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Read_To_Reg_r_4_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_0_ ( .D ( n2369 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_0_ ) , .QN ( n6115 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_1_ ( .D ( n2368 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_1_ ) , .QN ( n412 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_2_ ( .D ( n2367 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_2_ ) , .QN ( n413 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_3_ ( .D ( n2366 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_3_ ) , .QN ( n414 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_4_ ( .D ( n2365 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_4_ ) , .QN ( n415 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_5_ ( .D ( n2364 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_TmpAddr_5_ ) , .QN ( n416 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_6_ ( .D ( n2432 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusA_6__CDR1 ) , .QN ( n370_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_6_ ( .D ( n2379 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_6_ ) , .QN ( n562 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_6_ ( .D ( n2480 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_6_ ) , .QN ( n444 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_5_ ( .D ( n2457 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_5_ ) , .QN ( n443 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_5_ ( .D ( n2348 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_5_ ) , .QN ( n432 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_4_ ( .D ( n2406 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_F_4_ ) , .QN ( n404 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_1_ ( .D ( n2384 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_1_ ) , .QN ( n557 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_1_ ( .D ( n2407 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_F_1_ ) , .QN ( n401 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_8_ ( .D ( n2377 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_8_ ) , .QN ( n564 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_0_ ( .D ( n2385 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_0_ ) , .QN ( n556 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_0_ ( .D ( n2462 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_0_ ) , .QN ( n438 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_0_ ( .D ( n2353 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_0_ ) , .QN ( n427 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_0_ ( .D ( n2438 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_i_alu_N185 ) , .QN ( n358 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_1_ ( .D ( n2461 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_1_ ) , .QN ( n439 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_1_ ( .D ( n2352 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_1_ ) , .QN ( n428 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_2_ ( .D ( n2383 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_2_ ) , .QN ( n558 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_2_ ( .D ( n2460 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_2_ ) , .QN ( n440 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_2_ ( .D ( n2351 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_2_ ) , .QN ( n429 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_3_ ( .D ( n2382 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_3_ ) , .QN ( n559 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_3_ ( .D ( n2459 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_3_ ) , .QN ( n441 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_3_ ( .D ( n2350 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_3_ ) , .QN ( n430 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_3_ ( .D ( n2404 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_F_3_ ) , .QN ( n403 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_3_ ( .D ( n2397 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_3_ ) , .QN ( n582 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_4_ ( .D ( n2381 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_4_ ) , .QN ( n560 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_4_ ( .D ( n2458 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_4_ ) , .QN ( n442 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_4_ ( .D ( n2349 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_4_ ) , .QN ( n431 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_4_ ( .D ( n2434 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusA_4__CDR1 ) , .QN ( n367_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_5_ ( .D ( n2380 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_5_ ) , .QN ( n561 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_5_ ( .D ( n2403 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_F_5_ ) , .QN ( n405 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_5_ ( .D ( n2395 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_5_ ) , .QN ( n583 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_6_ ( .D ( n2394 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_6_ ) , .QN ( n584 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_6_ ( .D ( n2347 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_6_ ) , .QN ( n433 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ACC_reg_7_ ( .D ( n2481 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ACC_7_ ) , .QN ( n445 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_I_reg_7_ ( .D ( n2346 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_I_7_ ) , .QN ( n434 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_6_ ( .D ( n2331 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_6_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_5_ ( .D ( n2332 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_5_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_4_ ( .D ( n2333 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_4_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_3_ ( .D ( n2334 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_3_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_2_ ( .D ( n2335 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_2_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_1_ ( .D ( n2336 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_1_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_0_ ( .D ( n2337 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( do_0_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_1_ ( .D ( n2327 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_1_ ) , .QN ( n2689 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_2_ ( .D ( n2326 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_2_ ) , .QN ( n3451 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_5_ ( .D ( n2323 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_5_ ) , .QN ( n2694 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_6_ ( .D ( n2322 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_6_ ) , .QN ( n2693 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__1_ ( .D ( n2232 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_7__1_ ) , 
    .QN ( n2717 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__1_ ( .D ( n2224 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_6__1_ ) , 
    .QN ( n2704 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__0_ ( .D ( n2217 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_5__0_ ) , 
    .QN ( n2706 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__0_ ( .D ( n2209 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_4__0_ ) , 
    .QN ( n2705 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__0_ ( .D ( n2193 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_2__0_ ) , 
    .QN ( n2708 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ISet_reg_0_ ( .D ( n2451 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( n3962 ) , .QN ( n6346 ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 i_tv80_core_Oldnmi_n_reg ( .D ( nmi_n ) , 
    .RS ( reset_n ) , .CK ( MY_CLK ) , .Q ( i_tv80_core_Oldnmi_n ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 i_tv80_core_INT_s_reg ( .D ( reset_n ) , 
    .SI ( optlc_net_546 ) , .SE ( int_n ) , .CK ( MY_CLK ) , 
    .Q ( i_tv80_core_INT_s ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 i_tv80_core_Auto_Wait_t2_reg ( 
    .D ( i_tv80_core_Auto_Wait_t1 ) , .RS ( reset_n ) , .CK ( MY_CLK ) , 
    .Q ( i_tv80_core_Auto_Wait_t2 ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 i_tv80_core_BusReq_s_reg ( .D ( reset_n ) , 
    .SI ( optlc_net_546 ) , .SE ( busrq_n ) , .CK ( MY_CLK ) , 
    .Q ( i_tv80_core_BusReq_s ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 i_tv80_core_RegAddrB_r_reg_2_ ( .D ( n132 ) , 
    .SI ( n410 ) , .SE ( n2052 ) , .CK ( ZCTSNET_50 ) , .Q ( n381 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_mcycles_reg_0_ ( .D ( n2388 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n113 ) ) ;
SAEDRVT14_FDPSYNSBQ_V2_4 i_tv80_core_rfsh_n_reg ( .D ( HFSNET_15 ) , 
    .SD ( n1914 ) , .CK ( MY_CLK ) , .Q ( rfsh_n ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_10_ ( .D ( n2318 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_10_ ) , .QN ( n6214 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_1_ ( 
    .D ( i_tv80_core_RegBusA_1_ ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegBusA_r_1_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_0_ ( 
    .D ( i_tv80_core_RegBusA_0_ ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegBusA_r_0_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_14_ ( .D ( n2314 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_14_ ) , .QN ( n6241 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__1_ ( .D ( n2288 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_i_reg_RegsH_6__1_ ) , 
    .QN ( n5532 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__4_ ( .D ( n2229 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_7__4_ ) , 
    .QN ( n5503 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_13_ ( .D ( n2315 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_13_ ) , .QN ( n6234 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_9_ ( .D ( n2319 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_9_ ) , .QN ( n6207 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_7_ ( .D ( n2321 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_7_ ) , .QN ( n6178 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_8_ ( .D ( n2320 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_8_ ) , .QN ( n6200 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__6_ ( .D ( n2195 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_3__6_ ) , 
    .QN ( n5553 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__4_ ( .D ( n2173 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n6343 ) , .QN ( n92 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_7_ ( .D ( n2479 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusA_7__CDR1 ) , .QN ( n371_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__4_ ( .D ( n2181 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_1__4_ ) , 
    .QN ( n5561 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__4_ ( .D ( n2189 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_2__4_ ) , 
    .QN ( n5557 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__4_ ( .D ( n2197 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_3__4_ ) , 
    .QN ( n5554 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__4_ ( .D ( n2221 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_6__4_ ) , 
    .QN ( n5538 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__4_ ( .D ( n2213 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_5__4_ ) , 
    .QN ( n5541 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__4_ ( .D ( n2205 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_4__4_ ) , 
    .QN ( n5551 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_11_ ( .D ( n2317 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_11_ ) , .QN ( n6221 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__5_ ( .D ( n2228 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2688 ) , .QN ( n5485 ) ) ;
SAEDRVT14_FDPQB_V2LP_0P5 i_tv80_core_NMI_s_reg ( .D ( n2389 ) , 
    .CK ( MY_CLK ) , .QN ( n4150 ) ) ;
SAEDRVT14_FDPQB_V2LP_0P5 i_tv80_core_No_BTR_reg ( .D ( n2745 ) , 
    .CK ( MY_CLK ) , .QN ( n5695 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_PreserveC_r_reg ( .D ( n2424 ) , 
    .CK ( ZCTSNET_54 ) , .QN ( n130 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_IStatus_reg_0_ ( .D ( n2410 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n134 ) ) ;
SAEDRVT14_FDPQB_V2LP_0P5 i_tv80_core_Halt_FF_reg ( .D ( n2453 ) , 
    .CK ( MY_CLK ) , .QN ( halt_n ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_Alternate_reg ( .D ( n2426 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n132 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_9_ ( 
    .D ( i_tv80_core_RegBusA_9_ ) , .CK ( ZCTSNET_51 ) , 
    .Q ( i_tv80_core_RegBusA_r_9_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_3_ ( 
    .D ( i_tv80_core_RegBusA_3_ ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegBusA_r_3_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_15_ ( 
    .D ( i_tv80_core_RegBusA_15_ ) , .CK ( ZCTSNET_51 ) , 
    .Q ( i_tv80_core_RegBusA_r_15_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_13_ ( 
    .D ( i_tv80_core_RegBusA_13_ ) , .CK ( ZCTSNET_51 ) , 
    .Q ( i_tv80_core_RegBusA_r_13_ ) ) ;
SAEDRVT14_FSDPSYNRBQ_V2LP_0P5 i_tv80_core_RegAddrA_r_reg_0_ ( 
    .RD ( i_tv80_core_N1102 ) , .D ( n2658 ) , .SI ( optlc_net_549 ) , 
    .SE ( n1491 ) , .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_RegAddrA_r_0_ ) ) ;
SAEDRVT14_FSDPSYNRBQ_V2LP_0P5 i_tv80_core_RegAddrB_r_reg_0_ ( 
    .RD ( i_tv80_core_Set_BusB_To_2_ ) , .D ( n2658 ) , 
    .SI ( optlc_net_549 ) , .SE ( n2752 ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegAddrB_r_0_ ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_XY_Ind_reg ( .D ( n2392 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n555 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Arith16_r_reg ( .D ( n2411 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Arith16_r ) , .QN ( n437 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_7_ ( .D ( n2338 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( n4892 ) , .QN ( n110 ) ) ;
SAEDRVT14_ND2B_U_0P5 wr_n_reg_U3 ( .A ( HFSNET_15 ) , .B ( n2135 ) , 
    .X ( n2744 ) ) ;
SAEDRVT14_FDPQB_V2LP_0P5 wr_n_reg ( .D ( n2663 ) , .CK ( MY_CLK ) , 
    .QN ( wr_n ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegBusA_r_reg_8_ ( .D ( n5374 ) , 
    .CK ( ZCTSNET_51 ) , .QN ( i_tv80_core_RegBusA_r_8_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BTR_r_reg ( .D ( n2401 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_BTR_r ) , .QN ( n3242 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegBusA_r_reg_10_ ( .D ( n5373 ) , 
    .CK ( ZCTSNET_51 ) , .QN ( i_tv80_core_RegBusA_r_10_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Read_To_Reg_r_reg_0_ ( .D ( n2431 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Read_To_Reg_r_0_ ) , .QN ( n4350 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_6_ ( .D ( n2339 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6357 ) , .QN ( n120 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_5_ ( .D ( n2340 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6358 ) , .QN ( n119 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_4_ ( .D ( n2341 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6363 ) , .QN ( n114 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_3_ ( .D ( n2342 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6362 ) , .QN ( n115 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_2_ ( .D ( n2343 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6361 ) , .QN ( n116 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_1_ ( .D ( n2344 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6360 ) , .QN ( n117 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_R_reg_0_ ( .D ( n2345 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6359 ) , .QN ( n118 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusAck_reg ( .D ( i_tv80_core_N1441 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( n6043 ) , .QN ( busak_n ) ) ;
SAEDRVT14_FDPQB_V2LP_0P5 rd_n_reg ( .D ( n2743 ) , .CK ( MY_CLK ) , 
    .QN ( rd_n ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_12_ ( .D ( n2357 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6355 ) , .QN ( n122 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__6_ ( .D ( n2219 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_6__6_ ) , 
    .QN ( n5537 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__6_ ( .D ( n2203 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_4__6_ ) , 
    .QN ( n5550 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__6_ ( .D ( n2187 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_2__6_ ) , 
    .QN ( n5556 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__6_ ( .D ( n2179 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_1__6_ ) , 
    .QN ( n5560 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__3_ ( .D ( n2230 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_7__3_ ) , 
    .QN ( n5515 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__3_ ( .D ( n2222 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_6__3_ ) , 
    .QN ( n5539 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__3_ ( .D ( n2214 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_5__3_ ) , 
    .QN ( n5542 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__3_ ( .D ( n2206 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_4__3_ ) , 
    .QN ( n5552 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__3_ ( .D ( n2198 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_3__3_ ) , 
    .QN ( n5555 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__3_ ( .D ( n2190 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_2__3_ ) , 
    .QN ( n5558 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__3_ ( .D ( n2182 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_1__3_ ) , 
    .QN ( n5562 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__3_ ( .D ( n2174 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n6342 ) , .QN ( n93 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_14_ ( .D ( n2371 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_14_ ) , .QN ( n570 ) ) ;
SAEDRVT14_FSDPQB_V2LP_2 i_tv80_core_RegAddrA_r_reg_2_ ( .D ( n132 ) , 
    .SI ( n410 ) , .SE ( n2087 ) , .CK ( ZCTSNET_50 ) , 
    .QN ( i_tv80_core_RegAddrA_r_2_ ) ) ;
SAEDRVT14_FSDPQB_V2LP_2 i_tv80_core_RegAddrC_reg_2_ ( .D ( n410 ) , 
    .SI ( n132 ) , .SE ( n1939 ) , .CK ( ZCTSNET_50 ) , 
    .QN ( i_tv80_core_i_reg_N22 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_11_ ( .D ( n3119 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_RegBusA_r_11_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_4_ ( .D ( n3026 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_RegBusA_r_4_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_12_ ( .D ( n2316 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_12_ ) , .QN ( n6227 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__6_ ( .D ( n2227 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_7__6_ ) , 
    .QN ( n5476 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__2_ ( .D ( n2231 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_7__2_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_2_ ( 
    .D ( i_tv80_core_RegBusA_2_ ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegBusA_r_2_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_10_ ( .D ( n2375 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_10_ ) , .QN ( n566 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_12_ ( .D ( n2373 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_12_ ) , .QN ( n568 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__1_ ( .D ( n2216 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_5__1_ ) , 
    .QN ( n2707 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__1_ ( .D ( n2200 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_3__1_ ) , 
    .QN ( n2702 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_10_ ( .D ( n2303 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_10_ ) , .QN ( n6212 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_7_ ( .D ( n2306 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_7_ ) , .QN ( n6183 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_6_ ( .D ( n2307 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_6_ ) , .QN ( n6171 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_5_ ( .D ( n2308 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_5_ ) , .QN ( n6162 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_1_ ( .D ( n2312 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_1_ ) , .QN ( n6132 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_11_ ( .D ( n2302 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_11_ ) , .QN ( n6219 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_14_ ( .D ( n2355 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6364 ) , .QN ( n112 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_0_ ( .D ( n2313 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_0_ ) , .QN ( n6125 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_3_ ( .D ( n2310 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_3_ ) , .QN ( n6148 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_2_ ( .D ( n2311 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_2_ ) , .QN ( n6140 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_13_ ( .D ( n2356 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6356 ) , .QN ( n121 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_13_ ( .D ( n2372 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_13_ ) , .QN ( n569 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_4_ ( .D ( n2324 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_4_ ) , .QN ( n6153 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_3_ ( .D ( n2325 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_3_ ) , .QN ( n6146 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_7_ ( .D ( n2378 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_7_ ) , .QN ( n563 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_9_ ( .D ( n2376 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_9_ ) , .QN ( n565 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_7_ ( .D ( n2362 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_7_ ) , .QN ( n418 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IntE_FF1_reg ( .D ( n2475 ) , 
    .CK ( MY_CLK ) , .Q ( i_tv80_core_IntE ) , .QN ( n4259 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_m1_n_reg ( .D ( n3157 ) , .CK ( MY_CLK ) , 
    .Q ( n6336 ) , .QN ( m1_n ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_10_ ( .D ( n2359 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6353 ) , .QN ( n124 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_1_ ( .D ( i_tv80_core_N1216 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n4933 ) , .QN ( n373 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Pre_XY_F_M_reg_0_ ( .D ( n2442 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_Pre_XY_F_M_0_ ) , .QN ( n268 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IntCycle_reg ( .D ( n2474 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_IntCycle ) , .QN ( n6320 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_NMICycle_reg ( .D ( n2454 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_NMICycle ) , .QN ( n4145 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Pre_XY_F_M_reg_1_ ( .D ( n2440 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_Pre_XY_F_M_1_ ) , .QN ( n269 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_11_ ( .D ( n2374 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_SP_11_ ) , .QN ( n567 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_do_reg_7_ ( .D ( n2330 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( do_7_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegAddrC_reg_0_ ( .D ( n2741 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_N20 ) , .QN ( n3597 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__0_ ( .D ( n2233 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_7__0_ ) , 
    .QN ( n2718 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__0_ ( .D ( n2185 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_1__0_ ) , 
    .QN ( n2724 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__1_ ( .D ( n2208 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_4__1_ ) , 
    .QN ( n2716 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__1_ ( .D ( n2184 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_1__1_ ) , 
    .QN ( n2715 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__1_ ( .D ( n2192 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_2__1_ ) , 
    .QN ( n2714 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__0_ ( .D ( n2225 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_6__0_ ) , 
    .QN ( n2713 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_3_ ( .D ( n2416 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_3_ ) , .QN ( n2712 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_2_ ( .D ( n2417 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_2_ ) , .QN ( n2711 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_4_ ( .D ( n2415 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_4_ ) , .QN ( n2710 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__0_ ( .D ( n2201 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_3__0_ ) , 
    .QN ( n2709 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_mcycles_reg_2_ ( .D ( n2386 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_mcycles_2_ ) , .QN ( n2703 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_6_ ( .D ( n2413 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_6_ ) , .QN ( n2701 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_0_ ( .D ( n2419 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_0_ ) , .QN ( n2700 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_5_ ( .D ( n2414 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_5_ ) , .QN ( n2699 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_1_ ( .D ( n2418 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_1_ ) , .QN ( n2698 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Ap_reg_7_ ( .D ( n2412 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Ap_7_ ) , .QN ( n2697 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Fp_reg_4_ ( .D ( n2396 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_Fp_4_ ) , .QN ( n2696 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Read_To_Reg_r_reg_2_ ( .D ( n2429 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_Read_To_Reg_r_2_ ) , .QN ( n2690 ) ) ;
SAEDRVT14_FDP_V2LP_1 di_reg_reg_0_ ( .D ( n2470 ) , .CK ( MY_CLK ) , 
    .Q ( di_reg_0__CDR1 ) , .QN ( n184_CDR1 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__6_ ( .D ( n2211 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( i_tv80_core_i_reg_RegsL_5__6_ ) , 
    .QN ( n5540 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__6_ ( .D ( n2171 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n6344 ) , .QN ( n90 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegBusA_r_reg_12_ ( 
    .D ( i_tv80_core_RegBusA_12_ ) , .CK ( ZCTSNET_51 ) , 
    .Q ( i_tv80_core_RegBusA_r_12_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_SP_reg_15_ ( .D ( n2370 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_SP_15_ ) , .QN ( n571 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_4_ ( .D ( n2309 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_4_ ) , .QN ( n6155 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_2_ ( .D ( n2405 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_F_2_ ) , .QN ( n5152 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_15_ ( .D ( n2329 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( i_tv80_core_PC_15_ ) , .QN ( n6251 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_9_ ( .D ( n2360 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6352 ) , .QN ( n125 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_6_ ( .D ( n2363 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_TmpAddr_6_ ) , .QN ( n417 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_PC_reg_0_ ( .D ( n2328 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_PC_0_ ) , .QN ( n6106 ) ) ;
SAEDRVT14_FDP_V2LP_1 mreq_n_reg ( .D ( N36 ) , .CK ( MY_CLK ) , 
    .Q ( mreq_n ) ) ;
SAEDRVT14_TIE0_4 optlc_8503 ( .X ( optlc_net_546 ) ) ;
SAEDRVT14_AO221_0P5 U2485 ( .A1 ( n3431 ) , .A2 ( n5731 ) , .B1 ( n3354 ) , 
    .B2 ( n5730 ) , .C ( i_tv80_core_BTR_r ) , .X ( n5732 ) ) ;
SAEDRVT14_INV_S_0P5 U2487 ( .A ( n2926 ) , .X ( n4076 ) ) ;
SAEDRVT14_ND2_CDC_1 U2490 ( .A1 ( n6367 ) , .A2 ( HFSNET_20 ) , .X ( n2790 ) ) ;
SAEDRVT14_AN4_0P5 ctmTdsLR_1_1581 ( .A1 ( n2999 ) , .A2 ( n5310 ) , 
    .A3 ( i_tv80_core_XY_State_1_ ) , .A4 ( n3427 ) , .X ( n3225 ) ) ;
SAEDRVT14_ND2_CDC_1 U2493 ( .A1 ( n6367 ) , .A2 ( HFSNET_20 ) , .X ( n2585 ) ) ;
SAEDRVT14_INV_S_0P5 U2496 ( .A ( n5319 ) , .X ( n6034 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1640 ( .A1 ( n4726 ) , .A2 ( n4727 ) , 
    .X ( tmp_net42 ) ) ;
SAEDRVT14_OAI22_0P5 U2504 ( .A1 ( n3104 ) , .A2 ( n4541 ) , .B1 ( n4540 ) , 
    .B2 ( n4539 ) , .X ( n4543 ) ) ;
SAEDRVT14_OAI22_0P5 U2506 ( .A1 ( n5899 ) , .A2 ( n5931 ) , 
    .B1 ( n180_CDR1 ) , .B2 ( n5945 ) , .X ( n5900 ) ) ;
SAEDRVT14_OA21B_1 U2509 ( .A1 ( n3104 ) , .A2 ( n3103 ) , .B ( n4028 ) , 
    .X ( n2588 ) ) ;
SAEDRVT14_OAI22_0P5 U2510 ( .A1 ( n4459 ) , .A2 ( n5629 ) , .B1 ( n5626 ) , 
    .B2 ( n5981 ) , .X ( n2812 ) ) ;
SAEDRVT14_OAI22_0P5 U2511 ( .A1 ( n4459 ) , .A2 ( n5629 ) , .B1 ( n5626 ) , 
    .B2 ( n5981 ) , .X ( n2589 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1550 ( .A1 ( n3494 ) , .A2 ( n3495 ) , 
    .A3 ( n3489 ) , .A4 ( n3488 ) , .X ( i_tv80_core_RegBusC_0_ ) ) ;
SAEDRVT14_AOI21_0P75 U2517 ( .A1 ( n3436 ) , .A2 ( n2853 ) , .B ( n2777 ) , 
    .X ( n4444 ) ) ;
SAEDRVT14_OAI22_0P5 U2528 ( .A1 ( n3831 ) , .A2 ( n3819 ) , .B1 ( n3832 ) , 
    .B2 ( n3791 ) , .X ( n3827 ) ) ;
SAEDRVT14_AO32_U_0P5 U2529 ( .A1 ( n6381 ) , .A2 ( n5646 ) , 
    .A3 ( i_tv80_core_RegAddrA_r_0_ ) , .B1 ( n2911 ) , .B2 ( n5344 ) , 
    .X ( n5534 ) ) ;
SAEDRVT14_OR3_0P5 U2530 ( .A1 ( i_tv80_core_IR_0_ ) , 
    .A2 ( i_tv80_core_IR_1_ ) , .A3 ( i_tv80_core_IR_2_ ) , .X ( n4028 ) ) ;
SAEDRVT14_OAI22_0P5 U2533 ( .A1 ( n3065 ) , .A2 ( n3840 ) , .B1 ( n3042 ) , 
    .B2 ( n3068 ) , .X ( n3754 ) ) ;
SAEDRVT14_INV_PS_1 U2536 ( .A ( n5318 ) , .X ( n3194 ) ) ;
SAEDRVT14_INV_PS_1 U2538 ( .A ( n2805 ) , .X ( n2992 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1515 ( .A1 ( n4438 ) , .A2 ( n3426 ) , 
    .A3 ( n4439 ) , .X ( tmp_net3 ) ) ;
SAEDRVT14_INV_PS_1 U2541 ( .A ( n4587 ) , .X ( n4584 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2542 ( .A1 ( n4587 ) , .A2 ( n4586 ) , .X ( n3356 ) ) ;
SAEDRVT14_INV_S_0P5 U2549 ( .A ( n6258 ) , .X ( n6334 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_8164 ( .A1 ( tmp_net326 ) , 
    .A2 ( tmp_net328 ) , .B ( n4707 ) , .X ( tmp_net233 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1509 ( .A ( n4467 ) , .X ( tmp_net1 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8032 ( .A1 ( tmp_net248 ) , 
    .A2 ( tmp_net249 ) , .X ( n5296 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2562 ( .A1 ( n3801 ) , .A2 ( n2851 ) , .X ( n3244 ) ) ;
SAEDRVT14_AOI22_0P5 U2563 ( .A1 ( n2757 ) , .A2 ( HFSNET_20 ) , 
    .B1 ( n2964 ) , .B2 ( gre_net_556 ) , .X ( n3831 ) ) ;
SAEDRVT14_NR2_MM_0P5 U2566 ( .A1 ( n2875 ) , .A2 ( n2876 ) , .X ( n2815 ) ) ;
SAEDRVT14_OAI22_0P5 U2570 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n5154 ) , 
    .B1 ( n5152 ) , .B2 ( n5621 ) , .X ( n4460 ) ) ;
SAEDRVT14_INV_PS_1 U2571 ( .A ( n4635 ) , .X ( n4632 ) ) ;
SAEDRVT14_ND2_ECO_1 U2575 ( .A1 ( n2789 ) , .A2 ( n5376 ) , .X ( n5035 ) ) ;
SAEDRVT14_OA22_U_0P5 U2578 ( .A1 ( i_tv80_core_i_reg_RegsL_5__6_ ) , 
    .A2 ( n6374 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__6_ ) , .B2 ( n3042 ) , 
    .X ( n3757 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1677 ( .A1 ( i_tv80_core_i_reg_RegsL_5__0_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( n6367 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_4__0_ ) , .C ( n3721 ) , .X ( n3714 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1575 ( .A1 ( n5319 ) , .A2 ( n5318 ) , 
    .A3 ( n5317 ) , .A4 ( n3347 ) , .X ( n5320 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1527 ( .A1 ( n4447 ) , .A2 ( n4446 ) , 
    .B1 ( n2643 ) , .B2 ( n6370 ) , .C ( n2736 ) , .X ( tmp_net8 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1703 ( .A1 ( n3840 ) , .A2 ( n2980 ) , 
    .B1 ( n2671 ) , .B2 ( i_tv80_core_i_reg_RegsH_6__0_ ) , .X ( n3787 ) ) ;
SAEDRVT14_OA31_U_0P5 ctmTdsLR_1_1828 ( .A1 ( n4306 ) , .A2 ( n3309 ) , 
    .A3 ( n4307 ) , .B ( i_tv80_core_ISet_1_ ) , .X ( tmp_net118 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1727 ( .A1 ( n5843 ) , .A2 ( n2693 ) , 
    .B1 ( n5841 ) , .B2 ( n5842 ) , .X ( n5910 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_7979 ( .A1 ( n3139 ) , .A2 ( n3803 ) , 
    .B ( tmp_net231 ) , .X ( tmp_net91 ) ) ;
SAEDRVT14_OA31_1 U2600 ( .A1 ( n6287 ) , .A2 ( n5319 ) , .A3 ( n5026 ) , 
    .B ( n3431 ) , .X ( n5027 ) ) ;
SAEDRVT14_AN3_0P5 U2603 ( .A1 ( n6374 ) , .A2 ( HFSNET_19 ) , 
    .A3 ( i_tv80_core_i_reg_RegsL_3__4_ ) , .X ( n3746 ) ) ;
SAEDRVT14_INV_S_0P5 U2607 ( .A ( i_tv80_core_RegBusA_5_ ) , .X ( n5422 ) ) ;
SAEDRVT14_INV_S_0P5 U2609 ( .A ( i_tv80_core_RegBusA_3_ ) , .X ( n2600 ) ) ;
SAEDRVT14_AO221_0P5 U2611 ( .A1 ( n6294 ) , .A2 ( n6293 ) , .B1 ( n6292 ) , 
    .B2 ( n6291 ) , .C ( n6290 ) , .X ( n6295 ) ) ;
SAEDRVT14_AOI21_0P5 U2612 ( .A1 ( n6324 ) , .A2 ( n6323 ) , .B ( HFSNET_15 ) , 
    .X ( n2604 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8487 ( .A1 ( n5222 ) , .A2 ( n3341 ) , 
    .B ( tmp_net537 ) , .X ( n2450 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8488 ( .A ( n575 ) , .B ( n3341 ) , 
    .X ( tmp_net537 ) ) ;
SAEDRVT14_INV_S_0P5 U2616 ( .A ( n6370 ) , .X ( n2609 ) ) ;
SAEDRVT14_OR4_1 U2620 ( .A1 ( n5158 ) , .A2 ( n5159 ) , .A3 ( n5995_CDR1 ) , 
    .A4 ( n5160_CDR1 ) , .X ( n5579 ) ) ;
SAEDRVT14_INV_S_0P5 U2621 ( .A ( n3001 ) , .X ( n6070 ) ) ;
SAEDRVT14_OAI22_0P5 U2622 ( .A1 ( n6071 ) , .A2 ( n6086 ) , .B1 ( n6070 ) , 
    .B2 ( n6084 ) , .X ( n6072 ) ) ;
SAEDRVT14_AO21_U_0P5 U2624 ( .A1 ( do_4_ ) , .A2 ( n6089 ) , .B ( n6072 ) , 
    .X ( n2333 ) ) ;
SAEDRVT14_EN3_U_0P5 U2626 ( .A1 ( n4642 ) , .A2 ( n3472 ) , 
    .A3 ( i_tv80_core_BusA_5__CDR1 ) , .X ( n4608 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2632 ( .A1 ( n4643 ) , .A2 ( n4679 ) , .X ( n2630 ) ) ;
SAEDRVT14_OAI22_0P5 U2633 ( .A1 ( n4652 ) , .A2 ( i_tv80_core_F_1_ ) , 
    .B1 ( n4651 ) , .B2 ( n401 ) , .X ( n4926 ) ) ;
SAEDRVT14_AN4_0P5 U2634 ( .A1 ( n5139_CDR1 ) , .A2 ( n2837 ) , .A3 ( n4864 ) , 
    .A4 ( n401 ) , .X ( n4865 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8135 ( .A1 ( n5850 ) , .A2 ( n5582 ) , 
    .B ( tmp_net310 ) , .X ( n5585 ) ) ;
SAEDRVT14_OR4_1 U2639 ( .A1 ( n6285 ) , .A2 ( n6287 ) , .A3 ( n6284 ) , 
    .A4 ( n6286 ) , .X ( n6288 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8075 ( .A1 ( n4006 ) , .A2 ( tmp_net276 ) , 
    .B ( n6379 ) , .X ( n4177 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8489 ( .A1 ( n3408 ) , 
    .A2 ( i_tv80_core_N155 ) , .B ( tmp_net539 ) , .X ( n2343 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1537_7126 ( .A ( net1618 ) , .X ( ZCTSNET_50 ) ) ;
SAEDRVT14_INV_S_0P5 U2649 ( .A ( n5405 ) , .X ( n6062 ) ) ;
SAEDRVT14_INV_S_0P5 U2655 ( .A ( n6173 ) , .X ( n5824 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U2656 ( .D0 ( n4889 ) , .D1 ( i_tv80_core_i_alu_N185 ) , 
    .S ( n5011 ) , .X ( n4890 ) ) ;
SAEDRVT14_INV_PS_1 U2657 ( .A ( n5309 ) , .X ( n3195 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_1_1591 ( .A1 ( n4165 ) , .A2 ( n5176 ) , 
    .A3 ( n2777 ) , .B1 ( n4165 ) , .B2 ( n4161 ) , .X ( n4163 ) ) ;
SAEDRVT14_OAI22_0P5 U2660 ( .A1 ( n372 ) , .A2 ( i_tv80_core_ALU_Op_r_0_ ) , 
    .B1 ( n377 ) , .B2 ( n4365 ) , .X ( n4919_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U2661 ( .A1 ( n372 ) , .A2 ( n6081 ) , .B1 ( n377 ) , 
    .B2 ( n6297 ) , .X ( n6069 ) ) ;
SAEDRVT14_OAI22_0P5 U2662 ( .A1 ( n358 ) , .A2 ( n6081 ) , .B1 ( n372 ) , 
    .B2 ( n6297 ) , .X ( n6049 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1551_7127 ( .A ( net1618 ) , .X ( ZCTSNET_51 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_1_1983 ( .A1 ( n5493 ) , .A2 ( n5494 ) , 
    .A3 ( n5525 ) , .X ( tmp_net181 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1098_7128 ( .A ( net1618 ) , .X ( ZCTSNET_52 ) ) ;
SAEDRVT14_OA31_1 U2675 ( .A1 ( n5992_CDR1 ) , .A2 ( n5985 ) , .A3 ( n5984 ) , 
    .B ( n3003 ) , .X ( n5986 ) ) ;
SAEDRVT14_NR2_MM_0P5 U2677 ( .A1 ( n3901 ) , 
    .A2 ( i_tv80_core_Set_BusB_To_3_ ) , .X ( n3293 ) ) ;
SAEDRVT14_AO221_0P5 U2679 ( .A1 ( i_tv80_core_N1211 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_12_ ) , .B2 ( n3304 ) , .C ( n3879 ) , .X ( n3875 ) ) ;
SAEDRVT14_AO221_0P5 U2680 ( .A1 ( i_tv80_core_N1208 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_9_ ) , .B2 ( n3304 ) , .C ( n3861 ) , .X ( n3856 ) ) ;
SAEDRVT14_AO221_0P5 U2681 ( .A1 ( i_tv80_core_N1212 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_13_ ) , .B2 ( n3304 ) , .C ( n3885 ) , .X ( n3881 ) ) ;
SAEDRVT14_AO221_0P5 U2682 ( .A1 ( i_tv80_core_N1210 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_11_ ) , .B2 ( n3304 ) , .C ( n3873 ) , .X ( n3869 ) ) ;
SAEDRVT14_AO21B_0P5 U2683 ( .A1 ( n4739 ) , .A2 ( n4758 ) , .B ( n4763 ) , 
    .X ( n2608 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2684 ( .A1 ( n2623 ) , .A2 ( n6114 ) , .X ( n3261 ) ) ;
SAEDRVT14_OA21B_U_0P5 ctmTdsLR_2_1829 ( .A1 ( n6262 ) , .A2 ( n518 ) , 
    .B ( tmp_net118 ) , .X ( tmp_net119 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8221 ( .A1 ( n5121_CDR1 ) , .A2 ( n5120_CDR1 ) , 
    .A3 ( n5119_CDR1 ) , .A4 ( n3476_CDR1 ) , .X ( tmp_net361 ) ) ;
SAEDRVT14_OAI22_0P5 U2691 ( .A1 ( n4025 ) , .A2 ( n5223 ) , .B1 ( n5674 ) , 
    .B2 ( n6046 ) , .X ( n2483 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1678 ( .A1 ( n6374 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_7__4_ ) , .B1 ( n3042 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_5__4_ ) , .C ( n2928 ) , .X ( n3742 ) ) ;
SAEDRVT14_AOI21_0P75 U2696 ( .A1 ( n6042 ) , .A2 ( n6041 ) , .B ( n6040 ) , 
    .X ( i_tv80_core_Set_BusB_To_3_ ) ) ;
SAEDRVT14_OR2_0P5 U2702 ( .A1 ( n3863 ) , .A2 ( n3864 ) , 
    .X ( i_tv80_core_N1217 ) ) ;
SAEDRVT14_AO32_U_0P5 U2705 ( .A1 ( n5992_CDR1 ) , .A2 ( n3050 ) , 
    .A3 ( n5636 ) , .B1 ( n5987 ) , .B2 ( i_tv80_core_IR_1_ ) , .X ( n5638 ) ) ;
SAEDRVT14_OAI22_0P5 U2707 ( .A1 ( n6326 ) , .A2 ( n6276 ) , .B1 ( n6270 ) , 
    .B2 ( n5610 ) , .X ( n5611 ) ) ;
SAEDRVT14_NR3_0P5 U2708 ( .A1 ( n5193_CDR1 ) , .A2 ( n5746 ) , 
    .A3 ( n5992_CDR1 ) , .X ( n3259 ) ) ;
SAEDRVT14_OAI22_0P5 U2713 ( .A1 ( n4313 ) , .A2 ( n6366 ) , .B1 ( n4284 ) , 
    .B2 ( n3903 ) , .X ( n4288 ) ) ;
SAEDRVT14_OA21B_U_0P5 ctmTdsLR_1_2025 ( .A1 ( n4734 ) , .A2 ( n567 ) , 
    .B ( HFSNET_16 ) , .X ( tmp_net205 ) ) ;
SAEDRVT14_OR3_0P5 U2718 ( .A1 ( n6159 ) , .A2 ( n6158 ) , .A3 ( n6157 ) , 
    .X ( n2309 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U2722 ( .D0 ( n2717 ) , .D1 ( n5567 ) , .S ( n3328 ) , 
    .X ( n2232 ) ) ;
SAEDRVT14_NR3_0P5 U2727 ( .A1 ( n2752 ) , .A2 ( n3902 ) , .A3 ( n3900 ) , 
    .X ( n3296 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2729 ( .A1 ( n4828 ) , .A2 ( n2909 ) , 
    .X ( n3263_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1652 ( .A1 ( n2671 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_6__6_ ) , .B1 ( n3840 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_4__6_ ) , .X ( n3762 ) ) ;
SAEDRVT14_INV_S_0P5 U2743 ( .A ( n6383 ) , .X ( n2615 ) ) ;
SAEDRVT14_ND2_ECO_1 U2744 ( .A1 ( n4050 ) , .A2 ( n2809 ) , .X ( n4312 ) ) ;
SAEDRVT14_MUX2_U_0P5 U2748 ( .D0 ( n4410 ) , .D1 ( n2944 ) , .S ( n4615 ) , 
    .X ( n4411 ) ) ;
SAEDRVT14_INV_0P5 U2749 ( .A ( n5184 ) , .X ( n5185 ) ) ;
SAEDRVT14_NR3_0P5 ctmTdsLR_1_8287 ( .A1 ( tmp_net401 ) , .A2 ( n5536 ) , 
    .A3 ( n5534 ) , .X ( n3400 ) ) ;
SAEDRVT14_AOI21_0P75 U2752 ( .A1 ( n4743 ) , .A2 ( n4761 ) , .B ( n3376 ) , 
    .X ( n4744 ) ) ;
SAEDRVT14_INV_S_0P5 U2753 ( .A ( n5866 ) , .X ( n5867 ) ) ;
SAEDRVT14_AO21_U_0P5 U2757 ( .A1 ( n3335 ) , .A2 ( n6352 ) , .B ( n5868 ) , 
    .X ( n2360 ) ) ;
SAEDRVT14_OAI22_0P5 U2758 ( .A1 ( n5867 ) , .A2 ( n5931 ) , .B1 ( n183 ) , 
    .B2 ( n5945 ) , .X ( n5868 ) ) ;
SAEDRVT14_OR3_0P5 U2759 ( .A1 ( n5161 ) , .A2 ( n5579 ) , .A3 ( n5720 ) , 
    .X ( n5172 ) ) ;
SAEDRVT14_INV_S_0P5 U2762 ( .A ( n4177 ) , .X ( n4180 ) ) ;
SAEDRVT14_OR3_0P5 U2763 ( .A1 ( n6187 ) , .A2 ( n6186 ) , .A3 ( n6185 ) , 
    .X ( n2306 ) ) ;
SAEDRVT14_INV_S_0P5 U2764 ( .A ( n5493 ) , .X ( n5486_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U2766 ( .A1 ( n6111 ) , .A2 ( n6118 ) , .A3 ( n6112 ) , 
    .X ( n2775 ) ) ;
SAEDRVT14_INV_S_0P5 U2768 ( .A ( n4926 ) , .X ( n5101_CDR1 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1800 ( .A1 ( n5070_CDR1 ) , 
    .A2 ( n5072_CDR1 ) , .X ( tmp_net109 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8326 ( .A1 ( tmp_net427 ) , .A2 ( n4668 ) , 
    .X ( n5813 ) ) ;
SAEDRVT14_AO21_U_0P5 U2772 ( .A1 ( n5872 ) , .A2 ( n5910 ) , .B ( n5906 ) , 
    .X ( n2619 ) ) ;
SAEDRVT14_AO21_U_0P5 U2773 ( .A1 ( n5872 ) , .A2 ( n5910 ) , .B ( n5906 ) , 
    .X ( n5881 ) ) ;
SAEDRVT14_INV_S_0P5 U2774 ( .A ( n5961 ) , .X ( n5914 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1511 ( .A ( i_tv80_core_ISet_1_ ) , 
    .X ( tmp_net2 ) ) ;
SAEDRVT14_OR3_0P5 U2784 ( .A1 ( n6111 ) , .A2 ( n6118 ) , .A3 ( n6112 ) , 
    .X ( n6196 ) ) ;
SAEDRVT14_AO221_0P5 U2785 ( .A1 ( i_tv80_core_N247 ) , .A2 ( n3301 ) , 
    .B1 ( i_tv80_core_RegBusC_0_ ) , .B2 ( n2778 ) , .C ( n6126 ) , 
    .X ( n6127 ) ) ;
SAEDRVT14_OA22_U_0P5 U2789 ( .A1 ( n5966 ) , .A2 ( n6241 ) , .B1 ( n5965 ) , 
    .B2 ( n5964 ) , .X ( n2621 ) ) ;
SAEDRVT14_AO21B_0P5 U2790 ( .A1 ( n2622 ) , .A2 ( n6251 ) , .B ( n5980 ) , 
    .X ( n2329 ) ) ;
SAEDRVT14_OAI22_0P5 U2793 ( .A1 ( n5966 ) , .A2 ( n6241 ) , .B1 ( n5965 ) , 
    .B2 ( n5964 ) , .X ( n5970 ) ) ;
SAEDRVT14_ND2_ECO_1 U2794 ( .A1 ( n3447 ) , .A2 ( n5621 ) , .X ( n4938 ) ) ;
SAEDRVT14_OA31_1 U2795 ( .A1 ( n3949 ) , .A2 ( n3950 ) , .A3 ( n6326 ) , 
    .B ( n4165 ) , .X ( n3951 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1679 ( .A1 ( i_tv80_core_i_reg_RegsL_5__1_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( n6367 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_4__1_ ) , .C ( n3721 ) , .X ( n3722 ) ) ;
SAEDRVT14_INV_S_0P5 U2797 ( .A ( n5053 ) , .X ( n4961 ) ) ;
SAEDRVT14_EN3_U_0P5 U2806 ( .A1 ( n3044 ) , .A2 ( n3474 ) , 
    .A3 ( n370_CDR1 ) , .X ( n4643 ) ) ;
SAEDRVT14_OAI22_0P5 U2807 ( .A1 ( n4642 ) , .A2 ( n369 ) , .B1 ( n4641 ) , 
    .B2 ( n4640 ) , .X ( n3044 ) ) ;
SAEDRVT14_AO221_0P5 U2808 ( .A1 ( n5747 ) , .A2 ( n5748 ) , .B1 ( n5746 ) , 
    .B2 ( n5989 ) , .C ( n5745 ) , .X ( n5750 ) ) ;
SAEDRVT14_OR3_0P5 U2809 ( .A1 ( n6222 ) , .A2 ( n6224 ) , .A3 ( n6223 ) , 
    .X ( n2302 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8222 ( .A1 ( tmp_net362 ) , 
    .A2 ( i_tv80_core_RegBusA_13_ ) , .X ( n3365 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1908 ( .A1 ( n5643 ) , 
    .A2 ( i_tv80_core_RegBusB_3_ ) , .B1 ( n5527 ) , 
    .B2 ( i_tv80_core_RegBusA_r_3_ ) , .X ( n2687 ) ) ;
SAEDRVT14_OAI22_0P5 U2814 ( .A1 ( n6247 ) , .A2 ( n6171 ) , .B1 ( n120 ) , 
    .B2 ( gre_net_559 ) , .X ( n6172 ) ) ;
SAEDRVT14_INV_PS_1 U2815 ( .A ( n4802 ) , .X ( n4861 ) ) ;
SAEDRVT14_INV_PS_1 U2817 ( .A ( n4644 ) , .X ( n4696 ) ) ;
SAEDRVT14_EO2_0P5 U2818 ( .A1 ( n2897 ) , .A2 ( n375 ) , .X ( n4376 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2820 ( .A1 ( n3430 ) , .A2 ( n5547 ) , .X ( n2626 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2821 ( .A1 ( n3430 ) , .A2 ( n5547 ) , .X ( n2852 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2824 ( .A1 ( n5597 ) , .A2 ( n4331 ) , .X ( n3380 ) ) ;
SAEDRVT14_ND2_CDC_1 U2825 ( .A1 ( n3051 ) , .A2 ( n5621 ) , .X ( n4331 ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_2_1984 ( .D0 ( tmp_net181 ) , .D1 ( n3258 ) , 
    .S ( n5502 ) , .X ( tmp_net183 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1680 ( .A1 ( n6367 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_2__1_ ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_3__1_ ) , .B2 ( HFSNET_19 ) , .C ( n3719 ) , 
    .X ( n3724 ) ) ;
SAEDRVT14_EN3_U_0P5 U2829 ( .A1 ( n2667 ) , .A2 ( n4604 ) , 
    .A3 ( i_tv80_core_BusA_4__CDR1 ) , .X ( n4388 ) ) ;
SAEDRVT14_AO21B_0P5 U2830 ( .A1 ( n4375 ) , .A2 ( n358 ) , .B ( n4483 ) , 
    .X ( n2627 ) ) ;
SAEDRVT14_OAI22_0P5 U2832 ( .A1 ( n4642 ) , .A2 ( n369 ) , .B1 ( n4641 ) , 
    .B2 ( n4640 ) , .X ( n4677 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1781 ( .A1 ( n4691 ) , .A2 ( n4693 ) , 
    .B1 ( n4948 ) , .B2 ( n4838 ) , .C ( n4837 ) , .X ( tmp_net104 ) ) ;
SAEDRVT14_AN4_0P5 U2836 ( .A1 ( n5099_CDR1 ) , .A2 ( n4930 ) , 
    .A3 ( n5139_CDR1 ) , .A4 ( n3466_CDR1 ) , .X ( n4943_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U2837 ( .A1 ( n4168 ) , .A2 ( n4320 ) , .A3 ( n5999 ) , 
    .X ( n5231 ) ) ;
SAEDRVT14_AOI21_0P5 U2838 ( .A1 ( n4320 ) , .A2 ( n5725 ) , .B ( n4125 ) , 
    .X ( n4049 ) ) ;
SAEDRVT14_INV_S_0P5 U2839 ( .A ( n4320 ) , .X ( n6005 ) ) ;
SAEDRVT14_AOI21_0P5 U2840 ( .A1 ( n4320 ) , .A2 ( n2777 ) , .B ( n4319 ) , 
    .X ( n4321 ) ) ;
SAEDRVT14_AO32_U_0P5 U2841 ( .A1 ( n4265 ) , .A2 ( n4266 ) , .A3 ( n4267 ) , 
    .B1 ( n4264 ) , .B2 ( n4263 ) , .X ( n4268 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2842 ( .A1 ( n3997 ) , .A2 ( i_tv80_core_IR_2_ ) , 
    .X ( n2680 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2843 ( .A1 ( n3103 ) , .A2 ( n3051 ) , .X ( n3439 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1627 ( .A ( n4160 ) , .X ( tmp_net37 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8288 ( .A ( n5533 ) , .X ( tmp_net401 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1856 ( .A ( n4786 ) , .X ( tmp_net129 ) ) ;
SAEDRVT14_OAI22_0P5 U2852 ( .A1 ( n5265 ) , .A2 ( mcycle_0_ ) , 
    .B1 ( i_tv80_core_Pre_XY_F_M_0_ ) , .B2 ( n5264 ) , .X ( n5266 ) ) ;
SAEDRVT14_INV_S_0P5 U2853 ( .A ( n5265 ) , .X ( n5258 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8125 ( .A1 ( tmp_net304 ) , .A2 ( tmp_net42 ) , 
    .A3 ( n4729 ) , .X ( n4731 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2855 ( .A1 ( i_tv80_core_RegBusA_12_ ) , .A2 ( n5491 ) , 
    .X ( n5379 ) ) ;
SAEDRVT14_NR4_0P75 U2857 ( .A1 ( n3253 ) , .A2 ( n5429 ) , .A3 ( n2664 ) , 
    .A4 ( n5404 ) , .X ( n2631 ) ) ;
SAEDRVT14_NR4_0P75 U2858 ( .A1 ( n3253 ) , .A2 ( n5429 ) , .A3 ( n2664 ) , 
    .A4 ( n5404 ) , .X ( n3274 ) ) ;
SAEDRVT14_AN3_0P5 U2862 ( .A1 ( n5391 ) , .A2 ( n5331 ) , .A3 ( n5330 ) , 
    .X ( n2681 ) ) ;
SAEDRVT14_OR4_1 U2864 ( .A1 ( n5432 ) , .A2 ( n5431 ) , .A3 ( n5433 ) , 
    .A4 ( n5512 ) , .X ( n5442 ) ) ;
SAEDRVT14_AO32_U_0P5 U2865 ( .A1 ( n3292 ) , .A2 ( n2938 ) , .A3 ( n4778 ) , 
    .B1 ( n3033 ) , .B2 ( n4777 ) , .X ( n2903 ) ) ;
SAEDRVT14_INV_S_0P5 U2868 ( .A ( n6373 ) , .X ( n2632 ) ) ;
SAEDRVT14_OR3_0P5 U2870 ( .A1 ( n3004 ) , .A2 ( n4309 ) , .A3 ( n3104 ) , 
    .X ( n2633 ) ) ;
SAEDRVT14_INV_S_0P5 U2872 ( .A ( n5939 ) , .X ( n5938 ) ) ;
SAEDRVT14_OR4_1 U2878 ( .A1 ( n3434 ) , .A2 ( n3906 ) , .A3 ( n3440 ) , 
    .A4 ( n3438 ) , .X ( n2634 ) ) ;
SAEDRVT14_INV_PS_1 U2880 ( .A ( n3938 ) , .X ( n2643 ) ) ;
SAEDRVT14_EN3_U_0P5 ctmTdsLR_2_1801 ( .A1 ( n5077_CDR1 ) , 
    .A2 ( tmp_net109 ) , .A3 ( n5069_CDR1 ) , .X ( n5083_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U2892 ( .A1 ( n2837 ) , .A2 ( n4574 ) , .B1 ( n4381 ) , 
    .B2 ( n4380 ) , .X ( n3020 ) ) ;
SAEDRVT14_ND2_ECO_1 U2897 ( .A1 ( n2851 ) , .A2 ( n3840 ) , .X ( n3719 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1704 ( .A1 ( n6374 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_3__3_ ) , .B ( n2850 ) , .X ( tmp_net69 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1643 ( .A1 ( n3443 ) , .A2 ( n5798 ) , 
    .X ( tmp_net43 ) ) ;
SAEDRVT14_INV_S_0P5 U2914 ( .A ( n2736 ) , .X ( n2641 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2917 ( .A1 ( n5492 ) , .A2 ( HFSNET_9 ) , .X ( n5403 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_1830 ( .A1 ( n2865 ) , .A2 ( n6366 ) , 
    .B ( tmp_net119 ) , .X ( i_tv80_core_N1102 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_8053 ( .A1 ( n5648 ) , .A2 ( n6376 ) , 
    .B ( tmp_net261 ) , .X ( n5302 ) ) ;
SAEDRVT14_INV_S_0P5 U2931 ( .A ( n4553 ) , .X ( n4552 ) ) ;
SAEDRVT14_AN3_0P5 U2932 ( .A1 ( n5258 ) , .A2 ( n5254 ) , .A3 ( n5211 ) , 
    .X ( n5217 ) ) ;
SAEDRVT14_ND2_ECO_1 U2933 ( .A1 ( n2994 ) , .A2 ( n4035 ) , .X ( n4097 ) ) ;
SAEDRVT14_AOI21_0P75 U2934 ( .A1 ( n4588 ) , .A2 ( n4596 ) , .B ( n3356 ) , 
    .X ( n4589 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_1644 ( .A1 ( tmp_net43 ) , .A2 ( n5796 ) , 
    .X ( n3369 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1681 ( .A1 ( HFSNET_20 ) , .A2 ( n2886 ) , 
    .B1 ( gre_net_556 ) , .B2 ( n2880 ) , .X ( n3792 ) ) ;
SAEDRVT14_ND2_ECO_1 U2941 ( .A1 ( i_tv80_core_PC_0_ ) , .A2 ( n5768 ) , 
    .X ( n5794 ) ) ;
SAEDRVT14_TIE0_4 optlc_8505 ( .X ( optlc_net_547 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1553 ( .A1 ( i_tv80_core_i_reg_RegsL_1__2_ ) , 
    .A2 ( n3452 ) , .B1 ( n3378 ) , .B2 ( n3011 ) , .X ( n3516 ) ) ;
SAEDRVT14_AN3_0P5 U2952 ( .A1 ( n6367 ) , .A2 ( n3042 ) , .A3 ( n6343 ) , 
    .X ( n3745 ) ) ;
SAEDRVT14_OR3_1 U2956 ( .A1 ( n5285 ) , .A2 ( n6366 ) , .A3 ( n5284 ) , 
    .X ( n5286 ) ) ;
SAEDRVT14_ND2_CDC_1 U2969 ( .A1 ( n3030 ) , .A2 ( i_tv80_core_IR_6_ ) , 
    .X ( n4330 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1831 ( .A1 ( n5491 ) , 
    .A2 ( i_tv80_core_RegBusA_15_ ) , .X ( tmp_net120 ) ) ;
SAEDRVT14_NR2_MM_0P5 U2974 ( .A1 ( n2851 ) , .A2 ( n3819 ) , .X ( n3243 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1705 ( .A1 ( n3042 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__3_ ) , .B ( tmp_net69 ) , 
    .X ( tmp_net70 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_3_1706 ( .A1 ( tmp_net70 ) , .A2 ( HFSNET_19 ) , 
    .X ( n3737 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_2026 ( .A1 ( n4987 ) , .A2 ( n5690 ) , 
    .B ( tmp_net205 ) , .X ( tmp_net206 ) ) ;
SAEDRVT14_NR3_0P5 U2982 ( .A1 ( n5543 ) , .A2 ( n3277 ) , .A3 ( n5544 ) , 
    .X ( n3353 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8165 ( .A ( tmp_net104 ) , .X ( tmp_net326 ) ) ;
SAEDRVT14_OAI22_0P5 U2986 ( .A1 ( n5403 ) , .A2 ( n5524 ) , .B1 ( n2975 ) , 
    .B2 ( HFSNET_9 ) , .X ( n5430 ) ) ;
SAEDRVT14_OR3_0P5 U2988 ( .A1 ( n3732 ) , .A2 ( n3731 ) , .A3 ( HFSNET_20 ) , 
    .X ( n3220 ) ) ;
SAEDRVT14_OR3_0P5 U2992 ( .A1 ( n3046 ) , .A2 ( mcycle_0_ ) , .A3 ( n2853 ) , 
    .X ( n5610 ) ) ;
SAEDRVT14_OR2_0P5 U3002 ( .A1 ( n4439 ) , .A2 ( n3426 ) , .X ( n3367 ) ) ;
SAEDRVT14_AOI21_0P75 U3007 ( .A1 ( n3051 ) , .A2 ( n3050 ) , .B ( n5621 ) , 
    .X ( n3979 ) ) ;
SAEDRVT14_NR4_0P75 U3009 ( .A1 ( n5621 ) , .A2 ( n3103 ) , .A3 ( n3051 ) , 
    .A4 ( n3005 ) , .X ( n3440 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_8166 ( .A1 ( n3442 ) , 
    .A2 ( i_tv80_core_BusB_7_ ) , .B ( tmp_net327 ) , .X ( tmp_net328 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_1_1707 ( .A1 ( gre_net_556 ) , .A2 ( n2805 ) , 
    .A3 ( n2862 ) , .B1 ( gre_net_556 ) , .B2 ( n3812 ) , .B3 ( n2860 ) , 
    .X ( n3798 ) ) ;
SAEDRVT14_AO33_U_0P5 U3028 ( .A1 ( n2864 ) , .A2 ( n3812 ) , 
    .A3 ( HFSNET_20 ) , .B1 ( n2805 ) , .B2 ( HFSNET_20 ) , .B3 ( n2823 ) , 
    .X ( n3797 ) ) ;
SAEDRVT14_INV_PS_1 U3030 ( .A ( n4377 ) , .X ( n4520 ) ) ;
SAEDRVT14_INV_S_0P5 U3031 ( .A ( i_tv80_core_RegBusA_11_ ) , .X ( n5353 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1619 ( .A ( n2837 ) , .X ( tmp_net36 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_1_1682 ( .A1 ( n6367 ) , .A2 ( n3042 ) , 
    .A3 ( n3135 ) , .X ( tmp_net59 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3036 ( .D0 ( n557 ) , .D1 ( n6130 ) , 
    .S ( HFSNET_23 ) , .X ( n4534 ) ) ;
SAEDRVT14_AO21_U_0P5 U3037 ( .A1 ( n4379 ) , .A2 ( n4416 ) , .B ( n4378 ) , 
    .X ( n4380 ) ) ;
SAEDRVT14_INV_S_0P5 U3038 ( .A ( n5597 ) , .X ( n4556 ) ) ;
SAEDRVT14_OR3_0P5 U3039 ( .A1 ( n5911 ) , .A2 ( n5913 ) , .A3 ( n5912 ) , 
    .X ( n5936 ) ) ;
SAEDRVT14_INV_S_0P5 U3040 ( .A ( n4384 ) , .X ( n4574 ) ) ;
SAEDRVT14_INV_0P5 U3041 ( .A ( n3351 ) , .X ( n2747 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8067 ( .A1 ( tmp_net270 ) , .A2 ( n4804 ) , 
    .B ( n3449 ) , .X ( n4694 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3043 ( .A1 ( n3903 ) , .A2 ( n6039 ) , .X ( n6041 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3044 ( .A1 ( n2974 ) , .A2 ( n2660 ) , .X ( n6269 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_3_1730 ( .A1 ( n6374 ) , .A2 ( n3074 ) , 
    .B1 ( n3042 ) , .B2 ( n3070 ) , .C ( n2851 ) , .X ( tmp_net81 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3046 ( .D0 ( n560 ) , .D1 ( n5801 ) , 
    .S ( HFSNET_23 ) , .X ( n4592 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3047 ( .A1 ( n4198 ) , .A2 ( n4197 ) , .X ( n5587 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_8068 ( .A1 ( n4698 ) , .A2 ( n4696 ) , 
    .X ( tmp_net270 ) ) ;
SAEDRVT14_ND2_ECO_1 U3052 ( .A1 ( tstate_0_ ) , .A2 ( n5756 ) , .X ( n5248 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8017 ( .A1 ( n5444 ) , .A2 ( n5525 ) , 
    .B ( tmp_net241 ) , .X ( n3055 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3055 ( .A1 ( n6350 ) , .A2 ( n555 ) , .X ( n2658 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3057 ( .A1 ( n4556 ) , .A2 ( n3992 ) , .X ( n2660 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3058 ( .A1 ( n2780 ) , .A2 ( n5274 ) , .X ( n5311 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3059 ( .A1 ( n2780 ) , .A2 ( n5274 ) , .X ( n3424 ) ) ;
SAEDRVT14_AO222_U_0P5 ctmTdsLR_1_7983 ( .A1 ( n3388 ) , .A2 ( n2984 ) , 
    .B1 ( n3389 ) , .B2 ( n2980 ) , .C1 ( n3390 ) , .C2 ( n2978 ) , 
    .X ( tmp_net113 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3061 ( .A1 ( n2744 ) , .A2 ( n6349 ) , .X ( n2663 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3063 ( .D0 ( i_tv80_core_SP_8_ ) , 
    .D1 ( i_tv80_core_RegBusC_8_ ) , .S ( HFSNET_23 ) , .X ( n2665 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8018 ( .A ( n5443 ) , .X ( tmp_net241 ) ) ;
SAEDRVT14_OR2_0P5 U3067 ( .A1 ( n5603 ) , .A2 ( n4439 ) , .X ( n2670 ) ) ;
SAEDRVT14_INV_S_0P5 U3070 ( .A ( i_tv80_core_RegBusA_8_ ) , .X ( n5374 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8223 ( .A ( HFSNET_11 ) , .X ( tmp_net362 ) ) ;
SAEDRVT14_INV_PS_1 U3080 ( .A ( n5378 ) , .X ( n5384 ) ) ;
SAEDRVT14_OAI22_0P5 U3082 ( .A1 ( n5403 ) , .A2 ( n5524 ) , .B1 ( n2975 ) , 
    .B2 ( HFSNET_9 ) , .X ( n2675 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3083 ( .A1 ( n3137 ) , .A2 ( n5388 ) , .X ( n3270 ) ) ;
SAEDRVT14_OR3_0P5 U3086 ( .A1 ( n3473 ) , .A2 ( n3479 ) , .A3 ( n5695 ) , 
    .X ( n2678 ) ) ;
SAEDRVT14_ND2_ECO_1 U3088 ( .A1 ( i_tv80_core_RegBusA_1_ ) , 
    .A2 ( i_tv80_core_RegBusA_0_ ) , .X ( n5490 ) ) ;
SAEDRVT14_EN3_U_0P5 U3089 ( .A1 ( i_tv80_core_RegBusA_1_ ) , 
    .A2 ( i_tv80_core_RegBusA_0_ ) , .A3 ( HFSNET_9 ) , .X ( n5520_CDR1 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8327 ( .A1 ( n4664 ) , .A2 ( n4665 ) , 
    .X ( tmp_net427 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_1528 ( .A1 ( n6281 ) , .A2 ( tmp_net8 ) , 
    .X ( n5288 ) ) ;
SAEDRVT14_INV_S_0P5 U3106 ( .A ( n4040 ) , .X ( n4004 ) ) ;
SAEDRVT14_ND3_ECO_1 U3111 ( .A1 ( n6377 ) , .A2 ( i_tv80_core_IR_2_ ) , 
    .A3 ( n3104 ) , .X ( n4032 ) ) ;
SAEDRVT14_ND2_ECO_1 U3112 ( .A1 ( n518 ) , .A2 ( n3104 ) , .X ( n3975 ) ) ;
SAEDRVT14_AOI21_0P75 U3113 ( .A1 ( n3103 ) , .A2 ( n3104 ) , 
    .B ( i_tv80_core_IR_2_ ) , .X ( n4027 ) ) ;
SAEDRVT14_AOI21_0P75 U3114 ( .A1 ( HFSNET_11 ) , .A2 ( n5400 ) , 
    .B ( n3287 ) , .X ( n5331 ) ) ;
SAEDRVT14_AOI21_0P75 U3133 ( .A1 ( n6304 ) , .A2 ( n575 ) , .B ( n5311 ) , 
    .X ( n5297 ) ) ;
SAEDRVT14_AOI21_0P75 U3134 ( .A1 ( mcycle_0_ ) , .A2 ( n575 ) , .B ( n5311 ) , 
    .X ( n5312 ) ) ;
SAEDRVT14_OAI22_0P5 U3136 ( .A1 ( n6311 ) , .A2 ( n575 ) , .B1 ( n6309 ) , 
    .B2 ( n6308 ) , .X ( n6318 ) ) ;
SAEDRVT14_OAI22_0P5 U3137 ( .A1 ( n3936 ) , .A2 ( n575 ) , .B1 ( n4059 ) , 
    .B2 ( n5605 ) , .X ( n4272 ) ) ;
SAEDRVT14_OAI22_0P5 U3138 ( .A1 ( n3418 ) , .A2 ( n5635 ) , .B1 ( n5634 ) , 
    .B2 ( n575 ) , .X ( n5642 ) ) ;
SAEDRVT14_OAI22_0P5 U3139 ( .A1 ( n5596 ) , .A2 ( n575 ) , .B1 ( n4286 ) , 
    .B2 ( n6366 ) , .X ( n4324 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8180 ( .A1 ( tmp_net335 ) , 
    .A2 ( i_tv80_core_RegBusA_8_ ) , .X ( n2802 ) ) ;
SAEDRVT14_OR2_MM_0P5 U3141 ( .A1 ( n3976 ) , .A2 ( n3975 ) , .X ( n3978 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1832 ( .A1 ( tmp_net120 ) , .A2 ( n5512 ) , 
    .X ( n3122 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1654 ( .A ( n5724_CDR1 ) , .X ( tmp_net46 ) ) ;
SAEDRVT14_INV_S_0P5 U3145 ( .A ( n3039 ) , .X ( n5583 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_4_1731 ( .A1 ( n6367 ) , .A2 ( tmp_net81 ) , 
    .X ( tmp_net83 ) ) ;
SAEDRVT14_ND2_ECO_1 U3147 ( .A1 ( n2681 ) , .A2 ( n3112 ) , .X ( n5367 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3148 ( .A1 ( n3364 ) , .A2 ( n5525 ) , .X ( n3281 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3149 ( .A1 ( n6378_CDR1 ) , .A2 ( n5525 ) , 
    .X ( n3282 ) ) ;
SAEDRVT14_OA22_U_0P5 ctmTdsLR_2_1628 ( .A1 ( tmp_net37 ) , .A2 ( n4165 ) , 
    .B1 ( n6262 ) , .B2 ( n4164 ) , .X ( n6382 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3153 ( .A1 ( n255 ) , .A2 ( n3951 ) , .X ( n3954 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3154 ( .A1 ( tstate_1_ ) , .A2 ( n3942 ) , 
    .X ( n5697 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_1763 ( .A1 ( n2931 ) , .A2 ( n3388 ) , 
    .B1 ( n3394 ) , .B2 ( n2757 ) , .C ( tmp_net96 ) , .X ( n3392_CDR1 ) ) ;
SAEDRVT14_AO21B_0P5 U3156 ( .A1 ( n5843 ) , .A2 ( n2693 ) , .B ( n5834 ) , 
    .X ( n5842 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3157 ( .A1 ( n3840 ) , .A2 ( gre_net_556 ) , 
    .X ( n3410 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3159 ( .A1 ( n3361 ) , .A2 ( n5525 ) , .X ( n3278 ) ) ;
SAEDRVT14_ND2_ECO_1 U3160 ( .A1 ( n3351 ) , .A2 ( n3103 ) , .X ( n4539 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3161 ( .A1 ( n3354 ) , .A2 ( n2918 ) , .X ( n4537 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8224 ( .A1 ( n5424 ) , .A2 ( tmp_net364 ) , 
    .X ( n5413 ) ) ;
SAEDRVT14_ND2_ECO_1 U3163 ( .A1 ( n3903 ) , .A2 ( n3103 ) , .X ( n4932 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1684 ( .A ( HFSNET_19 ) , .X ( tmp_net60 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1685 ( .A1 ( n6367 ) , .A2 ( n6340 ) , 
    .B ( n3720 ) , .X ( tmp_net61 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_2_1655 ( .A1 ( tmp_net46 ) , .A2 ( n5725 ) , 
    .B1 ( n5726 ) , .B2 ( n6301 ) , .X ( n5727 ) ) ;
SAEDRVT14_ND2_ECO_1 U3167 ( .A1 ( i_tv80_core_ISet_1_ ) , .A2 ( n2991 ) , 
    .X ( n5275 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3168 ( .A1 ( n5636 ) , .A2 ( n5992_CDR1 ) , 
    .X ( n4538 ) ) ;
SAEDRVT14_ND2_ECO_1 U3170 ( .A1 ( n6349 ) , .A2 ( n6258 ) , .X ( n5314 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8016 ( .A ( n5494 ) , .B ( n3258 ) , 
    .X ( tmp_net184 ) ) ;
SAEDRVT14_OR2_0P5 U3173 ( .A1 ( n5429 ) , .A2 ( n2664 ) , .X ( n5434 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3174 ( .A1 ( n3979 ) , .A2 ( n4467 ) , .X ( n3448 ) ) ;
SAEDRVT14_INV_S_0P5 U3175 ( .A ( n4935 ) , .X ( n2995 ) ) ;
SAEDRVT14_OAI31_0P5 U3177 ( .A1 ( n4458 ) , .A2 ( n575 ) , .A3 ( n4332 ) , 
    .B ( n4355 ) , .X ( n4333 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_1629 ( .A1 ( n4593 ) , .A2 ( n4594 ) , 
    .B ( n2635 ) , .X ( n4602 ) ) ;
SAEDRVT14_ND2_ECO_1 U3179 ( .A1 ( n3047 ) , .A2 ( n2854 ) , .X ( n5725 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3180 ( .A1 ( n4057 ) , .A2 ( n4469 ) , .X ( n4058 ) ) ;
SAEDRVT14_OR4_1 U3181 ( .A1 ( n4449 ) , .A2 ( n3986 ) , .A3 ( n4470 ) , 
    .A4 ( n4078 ) , .X ( n3987 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_5_1987 ( .A1 ( tmp_net183 ) , .A2 ( tmp_net184 ) , 
    .A3 ( tmp_net166 ) , .X ( n2676 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3184 ( .A1 ( HFSNET_9 ) , .A2 ( n2600 ) , 
    .X ( n5513 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_7996 ( .A1 ( n4324 ) , .A2 ( n4324 ) , 
    .B1 ( i_tv80_core_IR_1_ ) , .B2 ( n6099 ) , .C ( n4289 ) , 
    .X ( tmp_net235 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1111_7129 ( .A ( net1618 ) , .X ( ZCTSNET_53 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3188 ( .A1 ( i_tv80_core_ISet_1_ ) , .A2 ( n1940 ) , 
    .X ( n6098 ) ) ;
SAEDRVT14_NR3_0P5 U3190 ( .A1 ( n4465 ) , .A2 ( i_tv80_core_IR_1_ ) , 
    .A3 ( i_tv80_core_IR_0_ ) , .X ( n3441 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3191 ( .A1 ( n3046 ) , .A2 ( n6373 ) , .X ( n5719 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8009 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_11_ ) , .B ( n5510 ) , .X ( tmp_net237 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1876 ( .D0 ( n3033 ) , .D1 ( n3031 ) , 
    .S ( n4982 ) , .X ( n5932 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8490 ( .A1 ( n4996 ) , .A2 ( n6361 ) , 
    .B ( tmp_net538 ) , .X ( tmp_net539 ) ) ;
SAEDRVT14_INV_PS_1 U3198 ( .A ( n4153 ) , .X ( n5224 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3199 ( .A1 ( i_tv80_core_RegBusA_14_ ) , 
    .A2 ( HFSNET_12 ) , .X ( n5031 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1990 ( .A ( n5053 ) , .B ( n5051 ) , 
    .X ( tmp_net185 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8328 ( .A1 ( n4283 ) , .A2 ( n6316 ) , 
    .A3 ( n4014 ) , .X ( tmp_net428 ) ) ;
SAEDRVT14_ND2_CDC_1 U3211 ( .A1 ( n6102 ) , .A2 ( n5254 ) , .X ( n5255 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8359 ( .A1 ( n5813 ) , .A2 ( tmp_net448 ) , 
    .B ( tmp_net218 ) , .X ( n2363 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1909 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_2_ ) , .B ( n5516 ) , .X ( tmp_net154 ) ) ;
SAEDRVT14_EN2_0P5 U3229 ( .A1 ( n5491 ) , .A2 ( i_tv80_core_RegBusA_10_ ) , 
    .X ( n2683 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1991 ( .A1 ( n5054 ) , .A2 ( tmp_net185 ) , 
    .X ( tmp_net186 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_3_1992 ( .A1 ( tmp_net186 ) , 
    .A2 ( n5050_CDR1 ) , .X ( tmp_net187 ) ) ;
SAEDRVT14_INV_0P5 U3237 ( .A ( n4277 ) , .X ( n4289 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1877 ( .A ( n5340 ) , .B ( n3122 ) , 
    .X ( n2682 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3239 ( .D0 ( i_tv80_core_i_reg_RegsL_1__2_ ) , 
    .D1 ( n5518 ) , .S ( n3324 ) , .X ( n2719 ) ) ;
SAEDRVT14_OAI22_0P5 U3242 ( .A1 ( n183 ) , .A2 ( n4581 ) , .B1 ( n3462 ) , 
    .B2 ( n4707 ) , .X ( n4530 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1527_7130 ( .A ( net1620 ) , .X ( ZCTSNET_54 ) ) ;
SAEDRVT14_OR3_0P5 U3245 ( .A1 ( n6317 ) , .A2 ( n6318 ) , .A3 ( n6319 ) , 
    .X ( n6323 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1336_7131 ( .A ( net1620 ) , .X ( ZCTSNET_55 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3252 ( .D0 ( n6383 ) , .D1 ( n6350 ) , .S ( n1966 ) , 
    .X ( n2740 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3254 ( .D0 ( n5268 ) , .D1 ( mcycle_0_ ) , 
    .S ( n5267 ) , .X ( n2456 ) ) ;
SAEDRVT14_AOI21_0P75 U3255 ( .A1 ( n5257 ) , .A2 ( n5213 ) , .B ( n5267 ) , 
    .X ( n5214 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8329 ( .A1 ( n4589 ) , .A2 ( tmp_net429 ) , 
    .B ( tmp_net430 ) , .X ( n5792 ) ) ;
SAEDRVT14_AO32_U_0P5 U3259 ( .A1 ( n4917 ) , .A2 ( n4916 ) , .A3 ( n4915 ) , 
    .B1 ( i_tv80_core_Z16_r ) , .B2 ( n4914 ) , .X ( n2423 ) ) ;
SAEDRVT14_OAI22_0P5 U3260 ( .A1 ( n4917 ) , .A2 ( n5223 ) , .B1 ( n3101 ) , 
    .B2 ( n6046 ) , .X ( n2420 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_2027 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_11_ ) , .B ( tmp_net206 ) , .X ( tmp_net207 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_1686 ( .A1 ( tmp_net60 ) , .A2 ( n2724 ) , 
    .B ( tmp_net61 ) , .X ( n3715 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8126 ( .A ( n2728 ) , .X ( tmp_net304 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_1_1708 ( .A1 ( n3801 ) , .A2 ( n2851 ) , 
    .A3 ( n2856 ) , .B1 ( n3803 ) , .B2 ( n2858 ) , .B3 ( gre_net_556 ) , 
    .X ( n3800 ) ) ;
SAEDRVT14_OA31_1 U3265 ( .A1 ( n4139 ) , .A2 ( n6366 ) , .A3 ( n3104 ) , 
    .B ( n4138 ) , .X ( n4140 ) ) ;
SAEDRVT14_INV_S_0P5 U3266 ( .A ( n4916 ) , .X ( n4144 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_8360 ( .A ( n5931 ) , .X ( tmp_net448 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1833 ( .A1 ( n5942 ) , .A2 ( n5934 ) , 
    .A3 ( n5833 ) , .X ( n5968 ) ) ;
SAEDRVT14_AOI21_0P75 U3278 ( .A1 ( n5245 ) , .A2 ( HFSNET_23 ) , 
    .B ( n3956 ) , .X ( n3959 ) ) ;
SAEDRVT14_BUF_ECO_3 ZCTSBUF_892_7132 ( .A ( net1620 ) , .X ( ZCTSNET_56 ) ) ;
SAEDRVT14_OAI22_0P5 U3283 ( .A1 ( n5856 ) , .A2 ( n5931 ) , 
    .B1 ( n184_CDR1 ) , .B2 ( n5945 ) , .X ( n5857 ) ) ;
SAEDRVT14_INV_S_0P5 U3284 ( .A ( n5855 ) , .X ( n5856 ) ) ;
SAEDRVT14_AO21_U_0P5 U3285 ( .A1 ( n3335 ) , .A2 ( n6351 ) , .B ( n5857 ) , 
    .X ( n2361 ) ) ;
SAEDRVT14_OR4_1 U3286 ( .A1 ( n5524 ) , .A2 ( n6378_CDR1 ) , 
    .A3 ( n5467_CDR1 ) , .A4 ( n5459_CDR1 ) , .X ( n5047_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U3287 ( .A1 ( n184_CDR1 ) , .A2 ( n5828 ) , 
    .B1 ( n5710 ) , .B2 ( n5931 ) , .X ( n5711 ) ) ;
SAEDRVT14_OAI22_0P5 U3288 ( .A1 ( n177 ) , .A2 ( n5828 ) , .B1 ( n5827 ) , 
    .B2 ( n5931 ) , .X ( n5829 ) ) ;
SAEDRVT14_OAI22_0P5 U3289 ( .A1 ( n414 ) , .A2 ( n5814 ) , .B1 ( n181_CDR1 ) , 
    .B2 ( n5828 ) , .X ( n5708 ) ) ;
SAEDRVT14_OAI22_0P5 U3290 ( .A1 ( n416 ) , .A2 ( n5814 ) , .B1 ( n179_CDR1 ) , 
    .B2 ( n5828 ) , .X ( n5805 ) ) ;
SAEDRVT14_OAI22_0P5 U3291 ( .A1 ( n415 ) , .A2 ( n5814 ) , .B1 ( n180_CDR1 ) , 
    .B2 ( n5828 ) , .X ( n5791 ) ) ;
SAEDRVT14_OAI222_0P5 U3292 ( .A1 ( n183 ) , .A2 ( n5828 ) , .B1 ( n5766 ) , 
    .B2 ( n5931 ) , .C1 ( n412 ) , .C2 ( n5814 ) , .X ( n2368 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8491 ( .A1 ( n4997 ) , 
    .A2 ( i_tv80_core_ACC_2_ ) , .X ( tmp_net538 ) ) ;
SAEDRVT14_AN3_0P5 U3296 ( .A1 ( n6195 ) , .A2 ( n6090 ) , .A3 ( n6199 ) , 
    .X ( n5757 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3298 ( .A1 ( n6199 ) , .A2 ( n6195 ) , .X ( n3264 ) ) ;
SAEDRVT14_OAI22_0P5 U3299 ( .A1 ( n178 ) , .A2 ( n6195 ) , .B1 ( n433 ) , 
    .B2 ( n6191 ) , .X ( n5937 ) ) ;
SAEDRVT14_OAI22_0P5 U3300 ( .A1 ( n177 ) , .A2 ( n6195 ) , .B1 ( n434 ) , 
    .B2 ( n6191 ) , .X ( n5972 ) ) ;
SAEDRVT14_OAI22_0P5 U3301 ( .A1 ( n180_CDR1 ) , .A2 ( n6195 ) , .B1 ( n431 ) , 
    .B2 ( n6191 ) , .X ( n5901 ) ) ;
SAEDRVT14_OAI22_0P5 U3302 ( .A1 ( n184_CDR1 ) , .A2 ( n6195 ) , .B1 ( n427 ) , 
    .B2 ( n6191 ) , .X ( n5858 ) ) ;
SAEDRVT14_OAI22_0P5 U3303 ( .A1 ( n183 ) , .A2 ( n6195 ) , .B1 ( n428 ) , 
    .B2 ( n6191 ) , .X ( n5869 ) ) ;
SAEDRVT14_OAI22_0P5 U3304 ( .A1 ( n182_CDR1 ) , .A2 ( n6195 ) , .B1 ( n429 ) , 
    .B2 ( n6191 ) , .X ( n5880 ) ) ;
SAEDRVT14_OAI22_0P5 U3305 ( .A1 ( n179_CDR1 ) , .A2 ( n6195 ) , .B1 ( n432 ) , 
    .B2 ( n6191 ) , .X ( n5923 ) ) ;
SAEDRVT14_AO21_U_0P5 U3307 ( .A1 ( do_7_ ) , .A2 ( n6089 ) , .B ( n6088 ) , 
    .X ( n2330 ) ) ;
SAEDRVT14_OAI22_0P5 U3308 ( .A1 ( n6087 ) , .A2 ( n6086 ) , .B1 ( n6085 ) , 
    .B2 ( n6084 ) , .X ( n6088 ) ) ;
SAEDRVT14_AOI21_0P75 U3311 ( .A1 ( n5664_CDR1 ) , .A2 ( n5674 ) , 
    .B ( n5662 ) , .X ( n4629 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8330 ( .A1 ( n4592 ) , .A2 ( n4591 ) , 
    .X ( tmp_net429 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1834 ( .A ( n4732 ) , .X ( tmp_net121 ) ) ;
SAEDRVT14_AOI311_0P5 U3315 ( .A1 ( n5664_CDR1 ) , .A2 ( n5675 ) , 
    .A3 ( n5674 ) , .B1 ( n5663 ) , .B2 ( n5662 ) , .X ( n5666 ) ) ;
SAEDRVT14_BUF_S_3 ZCTSBUF_1059_7133 ( .A ( net1620 ) , .X ( ZCTSNET_57 ) ) ;
SAEDRVT14_INV_S_0P5 U3322 ( .A ( n6134 ) , .X ( n5771 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_1835 ( .A1 ( tmp_net121 ) , .A2 ( n4731 ) , 
    .B ( n3027 ) , .X ( n4739 ) ) ;
SAEDRVT14_AOI21_0P5 U3325 ( .A1 ( n2135 ) , .A2 ( n6322 ) , .B ( n2991 ) , 
    .X ( n6324 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1836 ( .A1 ( n2678 ) , .A2 ( n5224 ) , 
    .X ( tmp_net122 ) ) ;
SAEDRVT14_AO21_U_0P5 U3327 ( .A1 ( n3335 ) , .A2 ( n6354 ) , .B ( n5888 ) , 
    .X ( n2358 ) ) ;
SAEDRVT14_INV_S_0P5 U3331 ( .A ( n6332 ) , .X ( n4270 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_8151 ( .A1 ( tmp_net318 ) , .A2 ( n3803 ) , 
    .X ( n3246 ) ) ;
SAEDRVT14_OAI22_0P5 U3333 ( .A1 ( n2666 ) , .A2 ( n5931 ) , 
    .B1 ( n181_CDR1 ) , .B2 ( n5945 ) , .X ( n5888 ) ) ;
SAEDRVT14_AO21B_0P5 U3334 ( .A1 ( n6324 ) , .A2 ( n6323 ) , .B ( reset_n ) , 
    .X ( n2722 ) ) ;
SAEDRVT14_OAI22_0P5 U3335 ( .A1 ( n3851 ) , .A2 ( n438 ) , .B1 ( n3852 ) , 
    .B2 ( n3853 ) , .X ( n3850 ) ) ;
SAEDRVT14_AO221_0P5 U3336 ( .A1 ( i_tv80_core_SP_7_ ) , .A2 ( n3384 ) , 
    .B1 ( n3005 ) , .B2 ( n3302 ) , .C ( n3895 ) , .X ( n3894 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8492 ( .A1 ( n3408 ) , 
    .A2 ( i_tv80_core_N159 ) , .B ( tmp_net541 ) , .X ( n2339 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3338 ( .D0 ( n4238 ) , .D1 ( n4145 ) , .S ( n4270 ) , 
    .X ( n2454 ) ) ;
SAEDRVT14_EN3_U_0P5 U3341 ( .A1 ( n3033 ) , .A2 ( n4760 ) , .A3 ( n4744 ) , 
    .X ( n5879 ) ) ;
SAEDRVT14_OAI22_0P5 U3346 ( .A1 ( n5252 ) , .A2 ( n3047 ) , .B1 ( n270 ) , 
    .B2 ( n5251 ) , .X ( n2441 ) ) ;
SAEDRVT14_OR2_0P5 U3347 ( .A1 ( n3869 ) , .A2 ( n3870 ) , 
    .X ( i_tv80_core_N1218 ) ) ;
SAEDRVT14_OR2_0P5 U3348 ( .A1 ( n3881 ) , .A2 ( n3882 ) , 
    .X ( i_tv80_core_N1220 ) ) ;
SAEDRVT14_INV_S_0P5 U3349 ( .A ( n4215 ) , .X ( n5188 ) ) ;
SAEDRVT14_OR3_0P5 U3350 ( .A1 ( n5042 ) , .A2 ( n5697 ) , .A3 ( n5696 ) , 
    .X ( n5756 ) ) ;
SAEDRVT14_OR2_0P5 U3354 ( .A1 ( n3875 ) , .A2 ( n3876 ) , 
    .X ( i_tv80_core_N1219 ) ) ;
SAEDRVT14_OR2_0P5 U3355 ( .A1 ( n3856 ) , .A2 ( n3857 ) , 
    .X ( i_tv80_core_N1216 ) ) ;
SAEDRVT14_AN2_0P5 U3357 ( .A1 ( n3483 ) , .A2 ( n3974 ) , 
    .X ( i_tv80_core_N1441 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8493 ( .A1 ( n4996 ) , .A2 ( n6357 ) , 
    .B ( tmp_net540 ) , .X ( tmp_net541 ) ) ;
SAEDRVT14_AOI21_0P75 U3359 ( .A1 ( n4265 ) , .A2 ( n3423 ) , .B ( n4247 ) , 
    .X ( n4248 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1911 ( .D0 ( i_tv80_core_RegBusB_7_ ) , 
    .D1 ( i_tv80_core_RegBusB_15_ ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1214 ) ) ;
SAEDRVT14_AOI21_0P5 U3363 ( .A1 ( n5262 ) , .A2 ( n5263 ) , .B ( n5261 ) , 
    .X ( n2477 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1688 ( .A1 ( HFSNET_20 ) , .A2 ( n6367 ) , 
    .A3 ( n3840 ) , .A4 ( n5559 ) , .X ( n3768 ) ) ;
SAEDRVT14_AOI21_0P75 U3366 ( .A1 ( n4565 ) , .A2 ( n2837 ) , .B ( n4564 ) , 
    .X ( n4566 ) ) ;
SAEDRVT14_OAI22_0P5 U3367 ( .A1 ( n5004 ) , .A2 ( n2697 ) , .B1 ( n6085 ) , 
    .B2 ( n5003 ) , .X ( n4894 ) ) ;
SAEDRVT14_OAI22_0P5 U3368 ( .A1 ( n5004 ) , .A2 ( n2698 ) , .B1 ( n6058 ) , 
    .B2 ( n5003 ) , .X ( n5006 ) ) ;
SAEDRVT14_EO2_0P5 U3371 ( .A1 ( n4807 ) , .A2 ( n4808 ) , .X ( n3370 ) ) ;
SAEDRVT14_OAI22_0P5 U3373 ( .A1 ( n5621 ) , .A2 ( n5640 ) , .B1 ( n5620 ) , 
    .B2 ( n6366 ) , .X ( n5622 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3375 ( .A1 ( i_tv80_core_Set_BusB_To_2_ ) , 
    .A2 ( n2752 ) , .X ( n3901 ) ) ;
SAEDRVT14_AN3_0P5 U3376 ( .A1 ( n2658 ) , .A2 ( n5644 ) , 
    .A3 ( i_tv80_core_Set_BusB_To_2_ ) , .X ( n2052 ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_1_7968 ( .A1 ( tmp_net224 ) , 
    .A2 ( i_tv80_core_i_reg_N21 ) , .X ( n3456 ) ) ;
SAEDRVT14_INV_PS_1 U3386 ( .A ( n4283 ) , .X ( n4284 ) ) ;
SAEDRVT14_OAI22_0P5 U3387 ( .A1 ( n557 ) , .A2 ( n5009 ) , .B1 ( n565 ) , 
    .B2 ( n5008 ) , .X ( n5010 ) ) ;
SAEDRVT14_INV_S_0P5 U3388 ( .A ( n4182 ) , .X ( n4190 ) ) ;
SAEDRVT14_AOI311_0P5 U3389 ( .A1 ( n5757 ) , .A2 ( n5762 ) , .A3 ( n6091 ) , 
    .B1 ( n5756 ) , .B2 ( n6096 ) , .X ( n5758 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_2028 ( .A1 ( n2666 ) , .A2 ( n4908 ) , 
    .B ( tmp_net207 ) , .X ( n2374 ) ) ;
SAEDRVT14_AOI311_0P5 U3396 ( .A1 ( wait_n ) , .A2 ( n255 ) , .A3 ( n6334 ) , 
    .B1 ( n6332 ) , .B2 ( n6333 ) , .X ( n6335 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8494 ( .A1 ( n4997 ) , 
    .A2 ( i_tv80_core_ACC_6_ ) , .X ( tmp_net540 ) ) ;
SAEDRVT14_TIE0_4 optlc_8507 ( .X ( optlc_net_548 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3403 ( .D0 ( n4802 ) , .D1 ( n5020 ) , .S ( n3382 ) , 
    .X ( n4819 ) ) ;
SAEDRVT14_INV_S_0P5 U3404 ( .A ( n5826 ) , .X ( n5827 ) ) ;
SAEDRVT14_TIE1_V1_2 optlc_8510 ( .X ( optlc_net_549 ) ) ;
SAEDRVT14_AO21_U_0P5 U3406 ( .A1 ( n5830 ) , .A2 ( i_tv80_core_TmpAddr_7_ ) , 
    .B ( n5829 ) , .X ( n2362 ) ) ;
SAEDRVT14_OAI22_0P5 U3407 ( .A1 ( n4938 ) , .A2 ( n4810 ) , .B1 ( n4493 ) , 
    .B2 ( n4656 ) , .X ( n4494 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3408 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_7_ ) , .X ( n4895 ) ) ;
SAEDRVT14_ND2_ECO_1 U3411 ( .A1 ( n4856 ) , .A2 ( n4418 ) , .X ( n4569 ) ) ;
SAEDRVT14_OR4_1 U3412 ( .A1 ( n2784_CDR1 ) , .A2 ( n5047_CDR1 ) , 
    .A3 ( n3373_CDR1 ) , .A4 ( n5046 ) , .X ( n5048_CDR1 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3416 ( .D0 ( n5503 ) , .D1 ( n2676 ) , .S ( n3328 ) , 
    .X ( n2229 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3419 ( .A1 ( i_tv80_core_IR_0_ ) , .A2 ( n6099 ) , 
    .X ( n6008 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3421 ( .A1 ( n5486_CDR1 ) , .A2 ( n5525 ) , 
    .X ( n3258 ) ) ;
SAEDRVT14_OAI22_0P5 U3423 ( .A1 ( n2944 ) , .A2 ( n6081 ) , .B1 ( n375 ) , 
    .B2 ( n6297 ) , .X ( n6061 ) ) ;
SAEDRVT14_INV_S_0P5 U3425 ( .A ( n4301 ) , .X ( n4313 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3426 ( .A1 ( n5991 ) , .A2 ( n5990 ) , .X ( n3401 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_4_1993 ( .D0 ( n2762 ) , .D1 ( tmp_net187 ) , 
    .S ( n5058 ) , .X ( n5059 ) ) ;
SAEDRVT14_AO32_U_0P5 U3433 ( .A1 ( n5721_CDR1 ) , .A2 ( n3431 ) , 
    .A3 ( n5989 ) , .B1 ( n5714 ) , .B2 ( n5713 ) , .X ( n6314 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1994 ( .A1 ( i_tv80_core_PC_4_ ) , 
    .A2 ( n5807 ) , .X ( tmp_net188 ) ) ;
SAEDRVT14_AO21_U_0P5 U3435 ( .A1 ( n3335 ) , .A2 ( n6356 ) , .B ( n5922 ) , 
    .X ( n2356 ) ) ;
SAEDRVT14_OAI31_0P5 ctmTdsLR_1_8361 ( .A1 ( n5147 ) , .A2 ( n5146 ) , 
    .A3 ( tmp_net449 ) , .B ( n5150 ) , .X ( n2405 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_5_1732 ( .A1 ( n2585 ) , .A2 ( tmp_net82 ) , 
    .B1 ( n3754 ) , .B2 ( n3755 ) , .C ( tmp_net83 ) , .X ( tmp_net84 ) ) ;
SAEDRVT14_OR3_0P5 U3438 ( .A1 ( n6152 ) , .A2 ( n6151 ) , .A3 ( n6150 ) , 
    .X ( n2310 ) ) ;
SAEDRVT14_OR3_0P5 U3439 ( .A1 ( n6129 ) , .A2 ( n6128 ) , .A3 ( n6127 ) , 
    .X ( n2313 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_7969 ( .A1 ( i_tv80_core_i_reg_N20 ) , 
    .A2 ( i_tv80_core_i_reg_N22 ) , .X ( tmp_net224 ) ) ;
SAEDRVT14_OR3_0P5 U3442 ( .A1 ( n5674 ) , .A2 ( n4365 ) , .A3 ( n4802 ) , 
    .X ( n5660 ) ) ;
SAEDRVT14_OAI22_0P5 U3443 ( .A1 ( n4816 ) , .A2 ( n5016 ) , .B1 ( n4815 ) , 
    .B2 ( n4814 ) , .X ( n4817 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3444 ( .A1 ( n4814 ) , .A2 ( n4803 ) , .X ( n3449 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3445 ( .D0 ( n358 ) , .D1 ( n4814 ) , .S ( n3050 ) , 
    .X ( n4670 ) ) ;
SAEDRVT14_OR3_0P5 U3447 ( .A1 ( n4087 ) , .A2 ( n4109 ) , .A3 ( n4132 ) , 
    .X ( n4161 ) ) ;
SAEDRVT14_NR3_0P5 ctmTdsLR_1_8289 ( .A1 ( tmp_net402 ) , .A2 ( n5536 ) , 
    .A3 ( n5534 ) , .X ( n3399 ) ) ;
SAEDRVT14_OAI22_0P5 U3454 ( .A1 ( n4517 ) , .A2 ( n6081 ) , .B1 ( n373 ) , 
    .B2 ( n6297 ) , .X ( n6057 ) ) ;
SAEDRVT14_OR3_0P5 U3456 ( .A1 ( n5084 ) , .A2 ( n4365 ) , .A3 ( n4814 ) , 
    .X ( n4373 ) ) ;
SAEDRVT14_OR3_0P5 U3457 ( .A1 ( n2897 ) , .A2 ( n4365 ) , .A3 ( n3101 ) , 
    .X ( n4372 ) ) ;
SAEDRVT14_EN3_U_0P5 U3459 ( .A1 ( n3033 ) , .A2 ( n4725 ) , .A3 ( n4669 ) , 
    .X ( n5826 ) ) ;
SAEDRVT14_OR3_0P5 U3460 ( .A1 ( n6216 ) , .A2 ( n6218 ) , .A3 ( n6217 ) , 
    .X ( n2303 ) ) ;
SAEDRVT14_AN3_0P5 U3461 ( .A1 ( n6098 ) , .A2 ( n6262 ) , .A3 ( n4208 ) , 
    .X ( n4233 ) ) ;
SAEDRVT14_INV_S_0P5 U3464 ( .A ( n5946 ) , .X ( n4903 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_1_7970 ( .A1 ( n6381 ) , .A2 ( tmp_net226 ) , 
    .A3 ( n2808 ) , .B1 ( n6381 ) , .B2 ( n5289 ) , .X ( n6375 ) ) ;
SAEDRVT14_OR2_0P5 U3467 ( .A1 ( n5413 ) , .A2 ( n2802 ) , .X ( n5421 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8249 ( .A ( tmp_net380 ) , .B ( n3368 ) , 
    .X ( n5939 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1802 ( .A1 ( n5491 ) , 
    .A2 ( i_tv80_core_RegBusA_5_ ) , .X ( tmp_net110 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1995 ( .A1 ( tmp_net188 ) , .A2 ( n5808 ) , 
    .X ( n5803 ) ) ;
SAEDRVT14_OR4_1 U3486 ( .A1 ( n5201_CDR1 ) , .A2 ( n5723_CDR1 ) , 
    .A3 ( n4188_CDR1 ) , .A4 ( n4187_CDR1 ) , .X ( n4189_CDR1 ) ) ;
SAEDRVT14_AN3_0P5 U3487 ( .A1 ( n5734 ) , .A2 ( n6113 ) , .A3 ( n5761 ) , 
    .X ( n5759 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3488 ( .A1 ( n4469 ) , .A2 ( n5162 ) , .X ( n4064 ) ) ;
SAEDRVT14_OAI22_0P5 U3495 ( .A1 ( n181_CDR1 ) , .A2 ( n6195 ) , .B1 ( n430 ) , 
    .B2 ( n6191 ) , .X ( n5889 ) ) ;
SAEDRVT14_OA33_U_0P5 U3496 ( .A1 ( n5016 ) , .A2 ( i_tv80_core_F_1_ ) , 
    .A3 ( n4928 ) , .B1 ( n5016 ) , .B2 ( n401 ) , .B3 ( n3370 ) , 
    .X ( n4705 ) ) ;
SAEDRVT14_OAI22_0P5 U3497 ( .A1 ( n3370 ) , .A2 ( n401 ) , .B1 ( n4928 ) , 
    .B2 ( i_tv80_core_F_1_ ) , .X ( n5100 ) ) ;
SAEDRVT14_INV_S_0P5 U3498 ( .A ( n3041 ) , .X ( n6085 ) ) ;
SAEDRVT14_OR3_0P5 U3507 ( .A1 ( n6366 ) , .A2 ( n4157 ) , .A3 ( n5629 ) , 
    .X ( n5049 ) ) ;
SAEDRVT14_OAI22_0P5 U3508 ( .A1 ( n4384 ) , .A2 ( n2836 ) , .B1 ( n4382 ) , 
    .B2 ( n4383 ) , .X ( n3028 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1912 ( .D0 ( i_tv80_core_RegBusB_5_ ) , 
    .D1 ( i_tv80_core_RegBusB_13_ ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1212 ) ) ;
SAEDRVT14_AOI311_0P5 U3511 ( .A1 ( n5979 ) , .A2 ( i_tv80_core_PC_15_ ) , 
    .A3 ( n2621 ) , .B1 ( n5978 ) , .B2 ( n5977 ) , .X ( n5980 ) ) ;
SAEDRVT14_AO32_U_0P5 U3513 ( .A1 ( n5319 ) , .A2 ( n5325 ) , .A3 ( n4536 ) , 
    .B1 ( HFSNET_23 ) , .B2 ( di_reg_1__CDR1 ) , .X ( n4511 ) ) ;
SAEDRVT14_INV_S_0P5 U3516 ( .A ( n5736 ) , .X ( n4073 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3517 ( .A1 ( n4057 ) , .A2 ( n2994 ) , .X ( n5608 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1647 ( .A ( n5180_CDR1 ) , .B ( n4213 ) , 
    .X ( n4231 ) ) ;
SAEDRVT14_AOI21_0P75 U3519 ( .A1 ( n4031 ) , .A2 ( n4198 ) , .B ( n6304 ) , 
    .X ( n3933 ) ) ;
SAEDRVT14_INV_S_0P5 U3521 ( .A ( n4097 ) , .X ( n4101 ) ) ;
SAEDRVT14_INV_0P5 U3522 ( .A ( n6267 ) , .X ( n6273 ) ) ;
SAEDRVT14_ND2_ECO_1 U3523 ( .A1 ( n5379 ) , .A2 ( n5378 ) , .X ( n2731 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3526 ( .A1 ( n5430 ) , .A2 ( n5505 ) , .X ( n3253 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_8250 ( .A1 ( n5959 ) , .A2 ( n5933 ) , 
    .X ( tmp_net380 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1709 ( .A1 ( n4760 ) , .A2 ( n3033 ) , 
    .X ( tmp_net71 ) ) ;
SAEDRVT14_OA31_1 U3536 ( .A1 ( n5449 ) , .A2 ( n5422 ) , .A3 ( n5399 ) , 
    .B ( HFSNET_11 ) , .X ( n3279 ) ) ;
SAEDRVT14_AO221_0P5 U3537 ( .A1 ( i_tv80_core_i_reg_RegsL_3__0_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( i_tv80_core_i_reg_RegsL_2__0_ ) , 
    .B2 ( n6367 ) , .C ( n3727 ) , .X ( n3716 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1554 ( .A1 ( n3015 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n3017 ) , .X ( n3518 ) ) ;
SAEDRVT14_OA21B_1 U3553 ( .A1 ( n5636 ) , .A2 ( n6040 ) , .B ( n4163 ) , 
    .X ( n4164 ) ) ;
SAEDRVT14_OAI22_0P5 U3554 ( .A1 ( n4124 ) , .A2 ( n5223 ) , .B1 ( n2898 ) , 
    .B2 ( n6046 ) , .X ( n2421 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_6_1733 ( .A1 ( n2928 ) , .A2 ( n3753 ) , 
    .B ( tmp_net84 ) , .X ( i_tv80_core_RegBusA_5_ ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_2029 ( .A1 ( n6330 ) , .A2 ( n6331 ) , 
    .B ( HFSNET_15 ) , .X ( tmp_net208 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_2_2030 ( .D0 ( tmp_net208 ) , .D1 ( n6336 ) , 
    .S ( n6335 ) , .X ( n3157 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3558 ( .A ( n6347 ) , .B ( n2740 ) , .X ( n2741 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8495 ( .A1 ( n3408 ) , 
    .A2 ( i_tv80_core_N157 ) , .B ( tmp_net543 ) , .X ( n2341 ) ) ;
SAEDRVT14_OR2_MM_0P5 U3560 ( .A1 ( n1896 ) , .A2 ( HFSNET_15 ) , 
    .X ( n2745 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_2_1516 ( .A1 ( n4444 ) , .A2 ( tmp_net3 ) , 
    .B1 ( n2670 ) , .B2 ( n4442 ) , .X ( n4445 ) ) ;
SAEDRVT14_OAI22_0P5 U3563 ( .A1 ( n4381 ) , .A2 ( n4380 ) , .B1 ( n4574 ) , 
    .B2 ( n2837 ) , .X ( n4382 ) ) ;
SAEDRVT14_AO21B_0P5 U3564 ( .A1 ( n4460 ) , .A2 ( n3439 ) , .B ( n2633 ) , 
    .X ( n3142 ) ) ;
SAEDRVT14_AO32_U_0P5 U3568 ( .A1 ( n3003 ) , .A2 ( n5280 ) , 
    .A3 ( i_tv80_core_ISet_1_ ) , .B1 ( n2918 ) , .B2 ( n6380 ) , 
    .X ( n5282 ) ) ;
SAEDRVT14_OAI31_0P5 ctmTdsLR_1_8069 ( .A1 ( n2974 ) , .A2 ( n4051 ) , 
    .A3 ( tmp_net271 ) , .B ( n6379 ) , .X ( n6276 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_1_1605 ( .A1 ( n6276 ) , .A2 ( n4134 ) , 
    .X ( tmp_net32 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1583 ( .A ( i_tv80_core_BusA_5__CDR1 ) , 
    .X ( tmp_net23 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_1584 ( .A1 ( n4618 ) , .A2 ( tmp_net23 ) , 
    .A3 ( n370_CDR1 ) , .X ( n4614 ) ) ;
SAEDRVT14_OAI311_0P75 U3574 ( .A1 ( n5490 ) , .A2 ( n5489 ) , .A3 ( n2600 ) , 
    .B1 ( n5487 ) , .B2 ( n5511 ) , .X ( n5502 ) ) ;
SAEDRVT14_AOI21_0P5 U3575 ( .A1 ( n5603 ) , .A2 ( n4331 ) , .B ( n4330 ) , 
    .X ( n4003 ) ) ;
SAEDRVT14_OAI22_0P5 U3577 ( .A1 ( n3051 ) , .A2 ( n5640 ) , .B1 ( n5639 ) , 
    .B2 ( n6366 ) , .X ( n5641 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3578 ( .D0 ( n2688 ) , .D1 ( n2962 ) , .S ( n3328 ) , 
    .X ( n2228 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3579 ( .D0 ( n3065 ) , .D1 ( n2962 ) , .S ( n3324 ) , 
    .X ( n2180 ) ) ;
SAEDRVT14_INV_PS_1 U3580 ( .A ( n5367 ) , .X ( n5366 ) ) ;
SAEDRVT14_AN4_1 ctmTdsLR_1_1734 ( .A1 ( n3738 ) , .A2 ( n3737 ) , 
    .A3 ( n3736 ) , .A4 ( n3739 ) , .X ( i_tv80_core_RegBusA_3_ ) ) ;
SAEDRVT14_OA22_U_0P5 U3587 ( .A1 ( n3792 ) , .A2 ( n3820 ) , .B1 ( n3793 ) , 
    .B2 ( n2992 ) , .X ( n2786 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2031 ( .A ( n5932 ) , .X ( tmp_net209 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8496 ( .A1 ( n4996 ) , .A2 ( n6363 ) , 
    .B ( tmp_net542 ) , .X ( tmp_net543 ) ) ;
SAEDRVT14_AOI21_0P75 U3594 ( .A1 ( n3112 ) , .A2 ( n2681 ) , .B ( n5343 ) , 
    .X ( n5336 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_1710 ( .A1 ( n4761 ) , .A2 ( n4758 ) , 
    .A3 ( tmp_net71 ) , .X ( n3291 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1764 ( .A1 ( n3385 ) , .A2 ( n2968 ) , 
    .B1 ( n3396 ) , .B2 ( n2755 ) , .X ( tmp_net97 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_1_8127 ( .A1 ( tmp_net305 ) , .A2 ( n4199 ) , 
    .X ( n4206 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_1_1735 ( .A1 ( n3803 ) , .A2 ( n2851 ) , 
    .A3 ( n2840 ) , .B1 ( n3801 ) , .B2 ( n2838 ) , .B3 ( gre_net_556 ) , 
    .X ( n3808 ) ) ;
SAEDRVT14_AN3_0P5 U3600 ( .A1 ( i_tv80_core_IR_0_ ) , .A2 ( n5635 ) , 
    .A3 ( n518 ) , .X ( n4048 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_1765 ( .A1 ( n2970 ) , .A2 ( n3299 ) , 
    .B1 ( gre_net_563 ) , .B2 ( n2759 ) , .C ( tmp_net97 ) , 
    .X ( n3393_CDR1 ) ) ;
SAEDRVT14_NR3_0P5 U3608 ( .A1 ( n5543 ) , .A2 ( n3277 ) , .A3 ( n5544 ) , 
    .X ( n2768 ) ) ;
SAEDRVT14_OR3_0P5 U3615 ( .A1 ( n2812 ) , .A2 ( n5299 ) , .A3 ( n3363 ) , 
    .X ( n5308 ) ) ;
SAEDRVT14_INV_S_0P5 U3617 ( .A ( n6379 ) , .X ( n2772 ) ) ;
SAEDRVT14_ND2_ECO_1 U3619 ( .A1 ( n5621 ) , .A2 ( n4670 ) , .X ( n4671 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_8026 ( .A1 ( n3304 ) , 
    .A2 ( i_tv80_core_SP_8_ ) , .B1 ( n3295 ) , .B2 ( di_reg_0__CDR1 ) , 
    .C ( tmp_net245 ) , .X ( i_tv80_core_N1215 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_8054 ( .A1 ( i_tv80_core_RegAddrA_r_2_ ) , 
    .A2 ( n6375 ) , .X ( tmp_net261 ) ) ;
SAEDRVT14_INV_PS_1 U3633 ( .A ( i_tv80_core_RegBusA_7_ ) , .X ( n5449 ) ) ;
SAEDRVT14_AO21B_0P5 U3634 ( .A1 ( n6123 ) , .A2 ( n6174 ) , .B ( n6168 ) , 
    .X ( n2778 ) ) ;
SAEDRVT14_OR2_0P5 U3638 ( .A1 ( n3033 ) , .A2 ( n2665 ) , .X ( n4763 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3642 ( .A1 ( n3909 ) , .A2 ( n3278 ) , .X ( n3256 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_2032 ( .A1 ( n4992 ) , .A2 ( n4987 ) , 
    .B1 ( i_tv80_core_RegBusC_14_ ) , .B2 ( n3310 ) , .C ( tmp_net198 ) , 
    .X ( tmp_net210 ) ) ;
SAEDRVT14_INV_PS_1 U3646 ( .A ( n5037 ) , .X ( n5482_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8290 ( .A ( n5529 ) , .X ( tmp_net402 ) ) ;
SAEDRVT14_OAI21_0P5 U3653 ( .A1 ( n4533 ) , .A2 ( n4534 ) , .B ( n3386 ) , 
    .X ( n4593 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3654 ( .A1 ( n3144 ) , .A2 ( HFSNET_11 ) , 
    .X ( n3287 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8362 ( .A1 ( n5148 ) , .A2 ( n5153 ) , 
    .X ( tmp_net449 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3657 ( .A1 ( n5336 ) , .A2 ( n2682 ) , .X ( n3277 ) ) ;
SAEDRVT14_AO221_0P5 U3658 ( .A1 ( HFSNET_11 ) , .A2 ( n5329 ) , 
    .B1 ( HFSNET_11 ) , .B2 ( n5328 ) , .C ( n3365 ) , .X ( n5340 ) ) ;
SAEDRVT14_AO21_U_0P5 U3663 ( .A1 ( n3441 ) , .A2 ( n5167 ) , .B ( n5166 ) , 
    .X ( n5168 ) ) ;
SAEDRVT14_OA22_U_0P5 U3664 ( .A1 ( i_tv80_core_RegBusA_3_ ) , 
    .A2 ( HFSNET_12 ) , .B1 ( n3026 ) , .B2 ( HFSNET_12 ) , .X ( n2789 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3666 ( .A1 ( i_tv80_core_RegBusA_5_ ) , 
    .A2 ( HFSNET_12 ) , .X ( n5468 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3667 ( .A1 ( i_tv80_core_RegBusA_7_ ) , .A2 ( n5491 ) , 
    .X ( n5457 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_1_1736 ( .A1 ( n3812 ) , .A2 ( n2851 ) , 
    .A3 ( n2842 ) , .B1 ( n2805 ) , .B2 ( n2844 ) , .B3 ( gre_net_556 ) , 
    .X ( n3806 ) ) ;
SAEDRVT14_INV_0P5 U3670 ( .A ( n2928 ) , .X ( n3758 ) ) ;
SAEDRVT14_OR4_1 U3671 ( .A1 ( n5041 ) , .A2 ( n5040 ) , .A3 ( n5039 ) , 
    .A4 ( n3347 ) , .X ( n5326 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1712 ( .A ( HFSNET_20 ) , .X ( tmp_net72 ) ) ;
SAEDRVT14_ND2_CDC_1 U3674 ( .A1 ( n3840 ) , .A2 ( HFSNET_20 ) , .X ( n3718 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1913 ( .D0 ( i_tv80_core_RegBusB_4_ ) , 
    .D1 ( i_tv80_core_RegBusB_12_ ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1211 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8363 ( .A1 ( tmp_net450 ) , .A2 ( n4588 ) , 
    .X ( n5709 ) ) ;
SAEDRVT14_ND2_ECO_1 U3677 ( .A1 ( n2671 ) , .A2 ( n2850 ) , .X ( n3720 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_1_1766 ( .A1 ( n6008 ) , .A2 ( n6007 ) , 
    .A3 ( n6006 ) , .B1 ( n6008 ) , .B2 ( n575 ) , .X ( tmp_net98 ) ) ;
SAEDRVT14_AO32_U_0P5 U3682 ( .A1 ( n5452 ) , .A2 ( n5489 ) , .A3 ( n5524 ) , 
    .B1 ( HFSNET_9 ) , .B2 ( n5451 ) , .X ( n5453 ) ) ;
SAEDRVT14_INV_S_0P5 U3685 ( .A ( n5432 ) , .X ( n5428 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3694 ( .A1 ( n3820 ) , .A2 ( n2851 ) , .X ( n3245 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1859 ( .A ( n6117 ) , .X ( tmp_net131 ) ) ;
SAEDRVT14_OAI33_0P5 U3702 ( .A1 ( n2835 ) , .A2 ( n2851 ) , .A3 ( n3819 ) , 
    .B1 ( n2829 ) , .B2 ( n2851 ) , .B3 ( n3820 ) , .X ( n3809 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1997 ( .A1 ( n3036 ) , .A2 ( n123 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6221 ) , .X ( tmp_net189 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1579 ( .A ( n4536 ) , .B ( n4548 ) , 
    .X ( tmp_net22 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1648 ( .A ( n3356 ) , .B ( n4595 ) , 
    .X ( tmp_net45 ) ) ;
SAEDRVT14_OA21B_1 U3709 ( .A1 ( n3104 ) , .A2 ( n3103 ) , .B ( n4028 ) , 
    .X ( n4029 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8192 ( .A1 ( tmp_net344 ) , .A2 ( n6097 ) , 
    .X ( n6119 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1714 ( .A1 ( n3903 ) , .A2 ( n5626 ) , 
    .A3 ( n3051 ) , .X ( tmp_net73 ) ) ;
SAEDRVT14_ND2_ECO_1 U3720 ( .A1 ( i_tv80_core_RegBusA_12_ ) , 
    .A2 ( i_tv80_core_RegBusA_11_ ) , .X ( n5329 ) ) ;
SAEDRVT14_OAI311_1 ctmTdsLR_2_1580 ( .A1 ( n4545 ) , .A2 ( n5319 ) , 
    .A3 ( n4546 ) , .B1 ( tmp_net22 ) , .B2 ( n5325 ) , .X ( n2749 ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_2_1837 ( .A1 ( n5210 ) , .A2 ( tmp_net122 ) , 
    .X ( n4263 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_2_1860 ( .A1 ( n6119 ) , .A2 ( tmp_net131 ) , 
    .B1 ( n6118 ) , .B2 ( n6350 ) , .X ( n6121 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1585 ( .A ( n5310 ) , .X ( tmp_net24 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8497 ( .A1 ( n4997 ) , 
    .A2 ( i_tv80_core_ACC_4_ ) , .X ( tmp_net542 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8498 ( .A1 ( n3408 ) , 
    .A2 ( i_tv80_core_N158 ) , .B ( tmp_net545 ) , .X ( n2340 ) ) ;
SAEDRVT14_INV_PS_1 U3735 ( .A ( n3976 ) , .X ( n4026 ) ) ;
SAEDRVT14_OR3_0P5 U3736 ( .A1 ( n3446 ) , .A2 ( n3450 ) , .A3 ( n3369 ) , 
    .X ( n5839 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_1_1737 ( .A1 ( n5903 ) , .A2 ( n5904 ) , 
    .X ( tmp_net85 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8225 ( .A1 ( n3273 ) , .A2 ( tmp_net363 ) , 
    .X ( tmp_net364 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1914 ( .D0 ( i_tv80_core_RegBusB_3_ ) , 
    .D1 ( i_tv80_core_RegBusB_11_ ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1210 ) ) ;
SAEDRVT14_AO21_U_0P5 U3758 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_1_ ) , 
    .B ( n6131 ) , .X ( n6136 ) ) ;
SAEDRVT14_AO21_U_0P5 U3759 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_2_ ) , 
    .B ( n6139 ) , .X ( n6144 ) ) ;
SAEDRVT14_AO21_U_0P5 U3760 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_6_ ) , 
    .B ( n6170 ) , .X ( n6176 ) ) ;
SAEDRVT14_AO21_U_0P5 U3761 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_5_ ) , 
    .B ( n6161 ) , .X ( n6166 ) ) ;
SAEDRVT14_INV_S_0P5 U3762 ( .A ( n5305 ) , .X ( n2808 ) ) ;
SAEDRVT14_AO21_U_0P5 U3763 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_3_ ) , 
    .B ( n6147 ) , .X ( n6151 ) ) ;
SAEDRVT14_OAI22_0P5 U3766 ( .A1 ( n6250 ) , .A2 ( n439 ) , .B1 ( n183 ) , 
    .B2 ( n3286 ) , .X ( n6210 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3769 ( .A1 ( n2588 ) , .A2 ( n5274 ) , .X ( n2922 ) ) ;
SAEDRVT14_INV_S_0P5 U3771 ( .A ( n6314 ) , .X ( n5769 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8152 ( .A ( HFSNET_20 ) , .X ( tmp_net318 ) ) ;
SAEDRVT14_EN2_0P5 U3776 ( .A1 ( HFSNET_9 ) , .A2 ( n2600 ) , 
    .X ( n2942_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U3779 ( .A1 ( n5621 ) , .A2 ( n3030 ) , 
    .A3 ( i_tv80_core_IR_6_ ) , .X ( n2816 ) ) ;
SAEDRVT14_OR3_0P5 U3786 ( .A1 ( n5277 ) , .A2 ( n6304 ) , .A3 ( n575 ) , 
    .X ( n4541 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_1606 ( .A1 ( n4055 ) , .A2 ( tmp_net32 ) , 
    .X ( n4225 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3789 ( .D0 ( n5560 ) , .D1 ( n2803 ) , .S ( n3324 ) , 
    .X ( n2179 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3790 ( .D0 ( n5540 ) , .D1 ( n3100 ) , .S ( n3330 ) , 
    .X ( n2211 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3791 ( .D0 ( n5553 ) , .D1 ( n2803 ) , .S ( n3326 ) , 
    .X ( n2195 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3792 ( .D0 ( n5537 ) , .D1 ( n3100 ) , .S ( n3318 ) , 
    .X ( n2219 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3793 ( .D0 ( n90 ) , .D1 ( n2803 ) , .S ( n3320 ) , 
    .X ( n2171 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3794 ( .D0 ( n5556 ) , .D1 ( n3100 ) , .S ( n3317 ) , 
    .X ( n2187 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3795 ( .D0 ( n5476 ) , .D1 ( n2803 ) , .S ( n3328 ) , 
    .X ( n2227 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3796 ( .D0 ( n5550 ) , .D1 ( n3100 ) , .S ( n3319 ) , 
    .X ( n2203 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_1998 ( .A1 ( n2778 ) , 
    .A2 ( i_tv80_core_RegBusC_11_ ) , .B ( tmp_net189 ) , .X ( n6222 ) ) ;
SAEDRVT14_OAI22_0P5 U3799 ( .A1 ( n2851 ) , .A2 ( n2800 ) , 
    .B1 ( HFSNET_20 ) , .B2 ( n2874 ) , .X ( n3139 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1915 ( .D0 ( i_tv80_core_RegBusB_2_ ) , 
    .D1 ( i_tv80_core_RegBusB_10_ ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1209 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_2_1715 ( .A1 ( n5627 ) , .A2 ( tmp_net73 ) , 
    .B ( n5625 ) , .X ( tmp_net74 ) ) ;
SAEDRVT14_OAI22_0P5 U3819 ( .A1 ( n5176 ) , .A2 ( n6262 ) , .B1 ( n575 ) , 
    .B2 ( n5175 ) , .X ( n5177 ) ) ;
SAEDRVT14_OAI22_0P5 U3820 ( .A1 ( n575 ) , .A2 ( n5850 ) , .B1 ( n6366 ) , 
    .B2 ( n5849 ) , .X ( n6109 ) ) ;
SAEDRVT14_OR3_0P5 U3821 ( .A1 ( n6301 ) , .A2 ( n6047 ) , .A3 ( n575 ) , 
    .X ( n6048 ) ) ;
SAEDRVT14_ND2_CDC_1 U3829 ( .A1 ( n3840 ) , .A2 ( HFSNET_20 ) , .X ( n3726 ) ) ;
SAEDRVT14_OAI22_0P5 U3831 ( .A1 ( n5628 ) , .A2 ( n5610 ) , .B1 ( n5630 ) , 
    .B2 ( n5621 ) , .X ( n5600 ) ) ;
SAEDRVT14_OAI22_0P5 U3832 ( .A1 ( n5621 ) , .A2 ( n4318 ) , .B1 ( n5601 ) , 
    .B2 ( n4305 ) , .X ( n4306 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8499 ( .A1 ( n4996 ) , .A2 ( n6358 ) , 
    .B ( tmp_net544 ) , .X ( tmp_net545 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7997 ( .A1 ( n3388 ) , .A2 ( n6340 ) , 
    .B1 ( n3390 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__0_ ) , .X ( n3605 ) ) ;
SAEDRVT14_INV_S_0P5 U3841 ( .A ( n5690 ) , .X ( n6066 ) ) ;
SAEDRVT14_OAI22_0P5 U3842 ( .A1 ( n6067 ) , .A2 ( n6086 ) , .B1 ( n6066 ) , 
    .B2 ( n6084 ) , .X ( n6068 ) ) ;
SAEDRVT14_AOI22_0P5 U3852 ( .A1 ( HFSNET_20 ) , .A2 ( n3063 ) , 
    .B1 ( gre_net_556 ) , .B2 ( n2867 ) , .X ( n3818 ) ) ;
SAEDRVT14_OA33_U_0P5 U3856 ( .A1 ( n5507 ) , .A2 ( n5508 ) , 
    .A3 ( n2942_CDR1 ) , .B1 ( n5506 ) , .B2 ( n5513 ) , .B3 ( n5512 ) , 
    .X ( n5509 ) ) ;
SAEDRVT14_ND3B_0P5 ctmTdsLR_1_1838 ( .A ( n3901 ) , .B1 ( n3900 ) , 
    .B2 ( i_tv80_core_Set_BusB_To_0_ ) , .X ( n3851 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_1_1861 ( .A1 ( n5525 ) , .A2 ( n5353 ) , 
    .A3 ( n5491 ) , .B1 ( n5525 ) , .B2 ( i_tv80_core_RegBusA_11_ ) , 
    .B3 ( HFSNET_11 ) , .X ( n3359 ) ) ;
SAEDRVT14_AOI21_0P5 U3862 ( .A1 ( n5987 ) , .A2 ( i_tv80_core_IR_2_ ) , 
    .B ( n5615 ) , .X ( n5617 ) ) ;
SAEDRVT14_OAI22_0P5 U3863 ( .A1 ( n5602 ) , .A2 ( n5601 ) , .B1 ( n3418 ) , 
    .B2 ( n518 ) , .X ( n5623 ) ) ;
SAEDRVT14_OAI22_0P5 U3864 ( .A1 ( n2609 ) , .A2 ( n4239 ) , .B1 ( n4073 ) , 
    .B2 ( n3367 ) , .X ( n5700 ) ) ;
SAEDRVT14_OAI22_0P5 U3868 ( .A1 ( n4144 ) , .A2 ( n5223 ) , .B1 ( n4365 ) , 
    .B2 ( n6046 ) , .X ( n2422 ) ) ;
SAEDRVT14_OAI22_0P5 U3869 ( .A1 ( n379 ) , .A2 ( n4365 ) , .B1 ( n375 ) , 
    .B2 ( i_tv80_core_ALU_Op_r_0_ ) , .X ( n4918_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U3870 ( .A1 ( n373 ) , .A2 ( i_tv80_core_ALU_Op_r_0_ ) , 
    .B1 ( n378 ) , .B2 ( n4365 ) , .X ( n4921_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U3871 ( .A1 ( n376 ) , .A2 ( i_tv80_core_ALU_Op_r_0_ ) , 
    .B1 ( n380 ) , .B2 ( n4365 ) , .X ( n4920_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U3872 ( .A1 ( n4363 ) , .A2 ( n4365 ) , .A3 ( n5084 ) , 
    .X ( n4811 ) ) ;
SAEDRVT14_OAI22_0P5 U3873 ( .A1 ( n6250 ) , .A2 ( n438 ) , .B1 ( n184_CDR1 ) , 
    .B2 ( n3286 ) , .X ( n6203 ) ) ;
SAEDRVT14_OAI22_0P5 U3874 ( .A1 ( n6250 ) , .A2 ( n442 ) , .B1 ( n180_CDR1 ) , 
    .B2 ( n3286 ) , .X ( n6230 ) ) ;
SAEDRVT14_OAI22_0P5 U3875 ( .A1 ( n6250 ) , .A2 ( n443 ) , .B1 ( n179_CDR1 ) , 
    .B2 ( n3286 ) , .X ( n6237 ) ) ;
SAEDRVT14_OAI22_0P5 U3876 ( .A1 ( n6250 ) , .A2 ( n444 ) , .B1 ( n178 ) , 
    .B2 ( n3286 ) , .X ( n6244 ) ) ;
SAEDRVT14_OAI22_0P5 U3877 ( .A1 ( n6250 ) , .A2 ( n445 ) , .B1 ( n177 ) , 
    .B2 ( n3286 ) , .X ( n6256 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1916 ( .D0 ( i_tv80_core_RegBusB_1_ ) , 
    .D1 ( i_tv80_core_RegBusB_9_ ) , .S ( n3854 ) , .X ( i_tv80_core_N1208 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8364 ( .A1 ( n4584 ) , .A2 ( n4585 ) , 
    .X ( tmp_net450 ) ) ;
SAEDRVT14_OAI22_0P5 U3888 ( .A1 ( n6180 ) , .A2 ( n413 ) , .B1 ( n6138 ) , 
    .B2 ( n6168 ) , .X ( n6139 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8365 ( .A1 ( tmp_net451 ) , .A2 ( n4636 ) , 
    .X ( n5806 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_8029 ( .A1 ( tmp_net1 ) , .A2 ( tmp_net247 ) , 
    .X ( n5991 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8055 ( .A1 ( n3539 ) , .A2 ( n3542 ) , 
    .A3 ( tmp_net263 ) , .X ( i_tv80_core_RegBusC_6_ ) ) ;
SAEDRVT14_INV_S_0P5 U3893 ( .A ( n5314 ) , .X ( n5044 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_1_1517 ( .A1 ( n6379 ) , .A2 ( n4450 ) , 
    .A3 ( n2919 ) , .B ( n6380 ) , .X ( tmp_net4 ) ) ;
SAEDRVT14_OAI22_0P5 U3900 ( .A1 ( n5004 ) , .A2 ( n2710 ) , .B1 ( n6070 ) , 
    .B2 ( n5003 ) , .X ( n4401 ) ) ;
SAEDRVT14_OAI22_0P5 U3901 ( .A1 ( n5004 ) , .A2 ( n2711 ) , .B1 ( n6062 ) , 
    .B2 ( n5003 ) , .X ( n4430 ) ) ;
SAEDRVT14_OAI22_0P5 U3902 ( .A1 ( n5004 ) , .A2 ( n2712 ) , .B1 ( n6066 ) , 
    .B2 ( n5003 ) , .X ( n4756 ) ) ;
SAEDRVT14_OAI22_0P5 U3903 ( .A1 ( n5004 ) , .A2 ( n2699 ) , .B1 ( n6074 ) , 
    .B2 ( n5003 ) , .X ( n4774 ) ) ;
SAEDRVT14_OAI22_0P5 U3904 ( .A1 ( n5004 ) , .A2 ( n2700 ) , .B1 ( n6054 ) , 
    .B2 ( n5003 ) , .X ( n4885 ) ) ;
SAEDRVT14_OAI22_0P5 U3905 ( .A1 ( n5004 ) , .A2 ( n2701 ) , .B1 ( n6078 ) , 
    .B2 ( n5003 ) , .X ( n4994 ) ) ;
SAEDRVT14_OAI31_0P5 U3906 ( .A1 ( n6263 ) , .A2 ( n6262 ) , .A3 ( n6278 ) , 
    .B ( n6261 ) , .X ( n6296 ) ) ;
SAEDRVT14_AO21B_0P5 U3908 ( .A1 ( n5525 ) , .A2 ( n5444 ) , .B ( n5443 ) , 
    .X ( n2901 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3909 ( .A1 ( n2994 ) , .A2 ( n5162 ) , .X ( n5607 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_2_8030 ( .A1 ( tmp_net246 ) , .A2 ( n3050 ) , 
    .A3 ( n4455 ) , .A4 ( i_tv80_core_IR_2_ ) , .X ( tmp_net247 ) ) ;
SAEDRVT14_OAI22_0P5 U3912 ( .A1 ( n3040 ) , .A2 ( n417 ) , .B1 ( n6169 ) , 
    .B2 ( n6168 ) , .X ( n6170 ) ) ;
SAEDRVT14_OAI22_0P5 U3913 ( .A1 ( n3040 ) , .A2 ( n412 ) , .B1 ( n6130 ) , 
    .B2 ( n6168 ) , .X ( n6131 ) ) ;
SAEDRVT14_OAI22_0P5 U3914 ( .A1 ( n3040 ) , .A2 ( n416 ) , .B1 ( n6160 ) , 
    .B2 ( n6168 ) , .X ( n6161 ) ) ;
SAEDRVT14_AO21B_0P5 U3917 ( .A1 ( n3448 ) , .A2 ( n4447 ) , .B ( n5712 ) , 
    .X ( n2907 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3919 ( .D0 ( n5979 ) , .D1 ( n5971 ) , .S ( n5891 ) , 
    .X ( n5893 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3925 ( .D0 ( n5979 ) , .D1 ( n5971 ) , .S ( n2619 ) , 
    .X ( n5874 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3927 ( .D0 ( n5979 ) , .D1 ( n5971 ) , .S ( n5859 ) , 
    .X ( n5861 ) ) ;
SAEDRVT14_OAI31_0P5 U3928 ( .A1 ( n3450 ) , .A2 ( n3369 ) , .A3 ( n3446 ) , 
    .B ( n5840 ) , .X ( n5808 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_3_2033 ( .A1 ( tmp_net209 ) , .A2 ( n4986 ) , 
    .B ( tmp_net210 ) , .X ( n2371 ) ) ;
SAEDRVT14_ND2_ECO_1 U3936 ( .A1 ( n5214 ) , .A2 ( n6102 ) , .X ( n5216 ) ) ;
SAEDRVT14_OR3_0P5 U3938 ( .A1 ( n5282 ) , .A2 ( n5283 ) , .A3 ( n3347 ) , 
    .X ( n5305 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1607 ( .A ( n4637 ) , .X ( tmp_net33 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3943 ( .A1 ( n3433 ) , .A2 ( n4026 ) , .X ( n2926 ) ) ;
SAEDRVT14_INV_S_0P5 U3947 ( .A ( n2877 ) , .X ( n2933 ) ) ;
SAEDRVT14_AO32_U_0P5 U3948 ( .A1 ( n5452 ) , .A2 ( n5489 ) , .A3 ( n5524 ) , 
    .B1 ( n5451 ) , .B2 ( HFSNET_9 ) , .X ( n2935 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3951 ( .A ( n4732 ) , .B ( n4731 ) , .X ( n2938 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3952 ( .A ( n4732 ) , .B ( n4731 ) , .X ( n2939 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1608 ( .A1 ( n3028 ) , .A2 ( n4638 ) , 
    .B ( tmp_net33 ) , .X ( n4642 ) ) ;
SAEDRVT14_OA22_U_0P5 U3958 ( .A1 ( n5485 ) , .A2 ( n3042 ) , .B1 ( n3067 ) , 
    .B2 ( n6374 ) , .X ( n3753 ) ) ;
SAEDRVT14_OR3_0P5 U3960 ( .A1 ( n6366 ) , .A2 ( n5990 ) , .A3 ( n6278 ) , 
    .X ( n5753 ) ) ;
SAEDRVT14_OAI22_0P5 U3961 ( .A1 ( n5610 ) , .A2 ( n6269 ) , .B1 ( n6278 ) , 
    .B2 ( n6267 ) , .X ( n5609 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_3_1716 ( .A1 ( n5630 ) , .A2 ( n3051 ) , 
    .B1 ( n5628 ) , .B2 ( n5629 ) , .C ( tmp_net74 ) , .X ( n5634 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1530 ( .A1 ( n3456 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_2__0_ ) , .B1 ( n3457 ) , .B2 ( n6340 ) , 
    .X ( n3494 ) ) ;
SAEDRVT14_ND2_ECO_1 U3965 ( .A1 ( i_tv80_core_BusA_6__CDR1 ) , .A2 ( n3044 ) , 
    .X ( n2945 ) ) ;
SAEDRVT14_INV_S_0P5 U3976 ( .A ( n4804 ) , .X ( n4699 ) ) ;
SAEDRVT14_OA22_U_0P5 ctmTdsLR_1_1879 ( .A1 ( n5092 ) , .A2 ( n581 ) , 
    .B1 ( n5091 ) , .B2 ( n133 ) , .X ( tmp_net139 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_8076 ( .A1 ( tmp_net274 ) , 
    .A2 ( tmp_net275 ) , .X ( tmp_net276 ) ) ;
SAEDRVT14_OAI22_0P5 U3981 ( .A1 ( n5252 ) , .A2 ( n4169 ) , .B1 ( n268 ) , 
    .B2 ( n5251 ) , .X ( n2442 ) ) ;
SAEDRVT14_MUX2_U_0P5 ctmTdsLR_1_1917 ( .D0 ( i_tv80_core_RegBusB_0_ ) , 
    .D1 ( i_tv80_core_RegBusB_8_ ) , .S ( n3854 ) , .X ( i_tv80_core_N1207 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1999 ( .A ( n4254 ) , .B ( reset_n ) , 
    .X ( n4238 ) ) ;
SAEDRVT14_INV_S_0P5 U3985 ( .A ( n4239 ) , .X ( n2974 ) ) ;
SAEDRVT14_OAI22_0P5 U3986 ( .A1 ( n111 ) , .A2 ( n3036 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6251 ) , .X ( n6253 ) ) ;
SAEDRVT14_OAI22_0P5 U3987 ( .A1 ( n112 ) , .A2 ( n3036 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6241 ) , .X ( n6242 ) ) ;
SAEDRVT14_OAI22_0P5 U3988 ( .A1 ( n121 ) , .A2 ( n3036 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6234 ) , .X ( n6235 ) ) ;
SAEDRVT14_OAI22_0P5 U3989 ( .A1 ( n122 ) , .A2 ( n3036 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6227 ) , .X ( n6228 ) ) ;
SAEDRVT14_OAI22_0P5 U3990 ( .A1 ( n125 ) , .A2 ( n3036 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6207 ) , .X ( n6208 ) ) ;
SAEDRVT14_OAI22_0P5 U3991 ( .A1 ( n3036 ) , .A2 ( n126 ) , 
    .B1 ( gre_net_560 ) , .B2 ( n6200 ) , .X ( n6201 ) ) ;
SAEDRVT14_OAI22_0P5 U3992 ( .A1 ( gre_net_560 ) , .A2 ( n6178 ) , 
    .B1 ( n6250 ) , .B2 ( n177 ) , .X ( n6187 ) ) ;
SAEDRVT14_OAI22_0P5 U3993 ( .A1 ( gre_net_560 ) , .A2 ( n2693 ) , 
    .B1 ( n6250 ) , .B2 ( n178 ) , .X ( n6177 ) ) ;
SAEDRVT14_OAI22_0P5 U3994 ( .A1 ( gre_net_560 ) , .A2 ( n2694 ) , 
    .B1 ( n6250 ) , .B2 ( n179_CDR1 ) , .X ( n6167 ) ) ;
SAEDRVT14_OAI22_0P5 U3995 ( .A1 ( gre_net_560 ) , .A2 ( n6153 ) , 
    .B1 ( n6250 ) , .B2 ( n180_CDR1 ) , .X ( n6159 ) ) ;
SAEDRVT14_OAI22_0P5 U3996 ( .A1 ( gre_net_560 ) , .A2 ( n6146 ) , 
    .B1 ( n6250 ) , .B2 ( n181_CDR1 ) , .X ( n6152 ) ) ;
SAEDRVT14_OAI22_0P5 U3997 ( .A1 ( gre_net_560 ) , .A2 ( n3451 ) , 
    .B1 ( n6250 ) , .B2 ( n182_CDR1 ) , .X ( n6145 ) ) ;
SAEDRVT14_OAI22_0P5 U3998 ( .A1 ( gre_net_560 ) , .A2 ( n2689 ) , 
    .B1 ( n6250 ) , .B2 ( n183 ) , .X ( n6137 ) ) ;
SAEDRVT14_OAI22_0P5 U3999 ( .A1 ( gre_net_560 ) , .A2 ( n6106 ) , 
    .B1 ( n6250 ) , .B2 ( n184_CDR1 ) , .X ( n6129 ) ) ;
SAEDRVT14_OAI21_0P5 U4001 ( .A1 ( n3044 ) , .A2 ( i_tv80_core_BusA_6__CDR1 ) , 
    .B ( n3474 ) , .X ( n4799 ) ) ;
SAEDRVT14_OAI22_0P5 U4013 ( .A1 ( n4958 ) , .A2 ( tmp_net361 ) , 
    .B1 ( n4957_CDR1 ) , .B2 ( n4952_CDR1 ) , .X ( n5054 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_1803 ( .A1 ( n5375 ) , .A2 ( n5402 ) , 
    .A3 ( tmp_net110 ) , .X ( n5341 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1656 ( .A ( n4615 ) , .X ( tmp_net47 ) ) ;
SAEDRVT14_OR3_0P5 U4019 ( .A1 ( n4363 ) , .A2 ( i_tv80_core_ALU_Op_r_0_ ) , 
    .A3 ( n5084 ) , .X ( n4810 ) ) ;
SAEDRVT14_INV_S_0P5 U4022 ( .A ( n6376 ) , .X ( n2999 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1918 ( .A1 ( n4767 ) , .A2 ( n3291 ) , 
    .B ( n4778 ) , .X ( tmp_net155 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8035 ( .A1 ( tmp_net250 ) , .A2 ( n5621 ) , 
    .X ( n3437 ) ) ;
SAEDRVT14_AO21B_0P5 U4044 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n2749 ) , .X ( n3031 ) ) ;
SAEDRVT14_AO21B_0P5 U4045 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n2749 ) , .X ( n3032 ) ) ;
SAEDRVT14_AO21B_0P5 U4048 ( .A1 ( n3435 ) , .A2 ( n5274 ) , .B ( n2922 ) , 
    .X ( n3038 ) ) ;
SAEDRVT14_AO21B_0P5 U4049 ( .A1 ( n3435 ) , .A2 ( n5274 ) , .B ( n2922 ) , 
    .X ( n3039 ) ) ;
SAEDRVT14_AO21B_0P5 U4050 ( .A1 ( n6194 ) , .A2 ( n2775 ) , .B ( n6122 ) , 
    .X ( n3040 ) ) ;
SAEDRVT14_AO21B_0P5 U4051 ( .A1 ( n4713 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n4712 ) , .X ( n3041 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1804 ( .A1 ( n6036 ) , .A2 ( n4300 ) , 
    .A3 ( n4304 ) , .A4 ( n4303 ) , .X ( tmp_net111 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4053 ( .D0 ( n3023 ) , .D1 ( n3350 ) , .S ( n3328 ) , 
    .X ( n2226 ) ) ;
SAEDRVT14_OR4_1 U4054 ( .A1 ( n5351 ) , .A2 ( n5310 ) , .A3 ( n5044 ) , 
    .A4 ( n5043 ) , .X ( n5050_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U4064 ( .A1 ( n5312 ) , .A2 ( n3431 ) , .A3 ( n6322 ) , 
    .X ( n5316 ) ) ;
SAEDRVT14_OAI22_0P5 U4067 ( .A1 ( n5473 ) , .A2 ( n5472 ) , .B1 ( n6078 ) , 
    .B2 ( n5471 ) , .X ( n5474 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_2034 ( .A1 ( n2991 ) , .A2 ( n6325 ) , 
    .B ( HFSNET_15 ) , .X ( tmp_net211 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_1880 ( .A1 ( n5097 ) , .A2 ( n5098 ) , 
    .X ( tmp_net138 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_8331 ( .A1 ( tmp_net429 ) , .A2 ( n4589 ) , 
    .X ( tmp_net430 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8366 ( .A1 ( n4632 ) , .A2 ( n4633 ) , 
    .X ( tmp_net451 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4087 ( .D0 ( n5979 ) , .D1 ( n5971 ) , .S ( n5910 ) , 
    .X ( n5845 ) ) ;
SAEDRVT14_OR3_0P5 U4089 ( .A1 ( n3746 ) , .A2 ( n3745 ) , .A3 ( HFSNET_20 ) , 
    .X ( n3197 ) ) ;
SAEDRVT14_AOI21_0P75 U4094 ( .A1 ( n6036 ) , .A2 ( n3903 ) , .B ( n6035 ) , 
    .X ( n6037 ) ) ;
SAEDRVT14_OAI31_0P5 U4095 ( .A1 ( n4246 ) , .A2 ( n6349 ) , .A3 ( n5337 ) , 
    .B ( n4252 ) , .X ( n4258 ) ) ;
SAEDRVT14_OAI22_0P5 U4096 ( .A1 ( n3104 ) , .A2 ( n4318 ) , .B1 ( n4317 ) , 
    .B2 ( n4316 ) , .X ( n4319 ) ) ;
SAEDRVT14_OAI22_0P5 U4097 ( .A1 ( n380 ) , .A2 ( n4932 ) , .B1 ( n377 ) , 
    .B2 ( n4931 ) , .X ( n4942 ) ) ;
SAEDRVT14_OAI22_0P5 U4098 ( .A1 ( n372 ) , .A2 ( n4938 ) , .B1 ( n379 ) , 
    .B2 ( n4937 ) , .X ( n4939 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_2_1589 ( .A1 ( n4037 ) , .A2 ( n5235 ) , 
    .A3 ( n4356 ) , .B1 ( n4037 ) , .B2 ( n2772 ) , .X ( tmp_net27 ) ) ;
SAEDRVT14_NR3_0P5 U4101 ( .A1 ( n2683 ) , .A2 ( n5408 ) , .A3 ( n5512 ) , 
    .X ( n3276 ) ) ;
SAEDRVT14_AOI21_0P75 U4106 ( .A1 ( n4217 ) , .A2 ( n3047 ) , .B ( n3467 ) , 
    .X ( n4219 ) ) ;
SAEDRVT14_OR3_0P5 U4107 ( .A1 ( n5376 ) , .A2 ( n5477 ) , .A3 ( n5032 ) , 
    .X ( n5033 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_7987 ( .A1 ( gre_net_563 ) , .A2 ( n2988 ) , 
    .B ( tmp_net232 ) , .X ( n3650 ) ) ;
SAEDRVT14_OR3_0P5 U4113 ( .A1 ( n4203 ) , .A2 ( n5730 ) , .A3 ( n4168 ) , 
    .X ( n4046 ) ) ;
SAEDRVT14_OA33_U_0P5 ctmTdsLR_1_1920 ( .A1 ( n124 ) , .A2 ( n6199 ) , 
    .A3 ( n6198 ) , .B1 ( n124 ) , .B2 ( n6196 ) , .B3 ( n6197 ) , 
    .X ( tmp_net156 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8251 ( .A1 ( n6094 ) , .A2 ( tmp_net381 ) , 
    .X ( n3322 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4116 ( .A1 ( n4376 ) , .A2 ( n2944 ) , .X ( n4571 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1531 ( .A1 ( i_tv80_core_i_reg_RegsL_1__0_ ) , 
    .A2 ( n3452 ) , .B1 ( n3378 ) , .B2 ( i_tv80_core_i_reg_RegsL_3__0_ ) , 
    .X ( n3488 ) ) ;
SAEDRVT14_OAI22_0P5 U4121 ( .A1 ( n5252 ) , .A2 ( n2853 ) , .B1 ( n269 ) , 
    .B2 ( n5251 ) , .X ( n2440 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4122 ( .A1 ( n5795 ) , .A2 ( n5832 ) , .X ( n5777 ) ) ;
SAEDRVT14_OR3_0P5 U4125 ( .A1 ( n4956_CDR1 ) , 
    .A2 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .A3 ( n5664_CDR1 ) , 
    .X ( n4957_CDR1 ) ) ;
SAEDRVT14_INV_PS_1 U4126 ( .A ( n4723 ) , .X ( n4729 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_1657 ( .A ( i_tv80_core_F_1_ ) , .B ( n358 ) , 
    .X ( tmp_net48 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_1658 ( .A1 ( tmp_net47 ) , .A2 ( tmp_net48 ) , 
    .B ( i_tv80_core_i_alu_N185 ) , .X ( n5102_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U4133 ( .A1 ( n4543 ) , .A2 ( n4542 ) , .A3 ( n4544 ) , 
    .X ( n4545 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4134 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n6099 ) , 
    .X ( n4090 ) ) ;
SAEDRVT14_OAI22_0P5 U4135 ( .A1 ( n6106 ) , .A2 ( n5974 ) , .B1 ( n5763 ) , 
    .B2 ( n5831 ) , .X ( n5764 ) ) ;
SAEDRVT14_OAI22_0P5 U4136 ( .A1 ( n6153 ) , .A2 ( n5974 ) , .B1 ( n5801 ) , 
    .B2 ( n5831 ) , .X ( n5802 ) ) ;
SAEDRVT14_OAI22_0P5 U4137 ( .A1 ( n6146 ) , .A2 ( n5974 ) , .B1 ( n5788 ) , 
    .B2 ( n5831 ) , .X ( n5789 ) ) ;
SAEDRVT14_OR3_0P5 U4138 ( .A1 ( n2736 ) , .A2 ( n5723_CDR1 ) , .A3 ( n4184 ) , 
    .X ( n5578_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U4139 ( .A1 ( HFSNET_12 ) , 
    .A2 ( i_tv80_core_RegBusA_3_ ) , .X ( n5487 ) ) ;
SAEDRVT14_OAI21_0P5 U4141 ( .A1 ( n2935 ) , .A2 ( n5456 ) , .B ( n5468 ) , 
    .X ( n3097 ) ) ;
SAEDRVT14_AN2B_MM_1 ctmTdsLR_1_2000 ( .B ( n4343 ) , .A ( n4342 ) , 
    .X ( n4997 ) ) ;
SAEDRVT14_OAI22_0P5 U4146 ( .A1 ( n6283 ) , .A2 ( n5606 ) , .B1 ( n5626 ) , 
    .B2 ( n6264 ) , .X ( n6039 ) ) ;
SAEDRVT14_AOI21_0P75 U4147 ( .A1 ( n3401 ) , .A2 ( n6283 ) , .B ( n6282 ) , 
    .X ( n6284 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1921 ( .A1 ( gre_net_560 ) , .A2 ( n6214 ) , 
    .B ( tmp_net156 ) , .X ( n6215 ) ) ;
SAEDRVT14_AO33_U_0P5 U4160 ( .A1 ( n4903 ) , .A2 ( n5949 ) , .A3 ( n5948 ) , 
    .B1 ( n5946 ) , .B2 ( n5947 ) , .B3 ( n5951 ) , .X ( n4910 ) ) ;
SAEDRVT14_AO21_U_0P5 U4162 ( .A1 ( n5942 ) , .A2 ( i_tv80_core_PC_6_ ) , 
    .B ( n5825 ) , .X ( n2322 ) ) ;
SAEDRVT14_AO21_U_0P5 U4163 ( .A1 ( n5942 ) , .A2 ( i_tv80_core_PC_5_ ) , 
    .B ( n5812 ) , .X ( n2323 ) ) ;
SAEDRVT14_AO21_U_0P5 U4164 ( .A1 ( n5942 ) , .A2 ( i_tv80_core_PC_2_ ) , 
    .B ( n5782 ) , .X ( n2326 ) ) ;
SAEDRVT14_AO21_U_0P5 U4165 ( .A1 ( n5942 ) , .A2 ( i_tv80_core_PC_1_ ) , 
    .B ( n5772 ) , .X ( n2327 ) ) ;
SAEDRVT14_OR4_1 U4167 ( .A1 ( n3426 ) , .A2 ( n3935 ) , .A3 ( n3050 ) , 
    .A4 ( n3911 ) , .X ( n4437 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_1_1717 ( .A1 ( HFSNET_20 ) , .A2 ( n2890 ) , 
    .B1 ( gre_net_556 ) , .B2 ( n2888 ) , .C ( n3840 ) , .X ( tmp_net76 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2001 ( .A ( n5693 ) , .X ( tmp_net190 ) ) ;
SAEDRVT14_AO33_U_0P5 U4175 ( .A1 ( HFSNET_20 ) , .A2 ( n2821 ) , 
    .A3 ( n3803 ) , .B1 ( HFSNET_20 ) , .B2 ( n2825 ) , .B3 ( n3801 ) , 
    .X ( n3799 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_1922 ( .A1 ( i_tv80_core_RegBusB_6_ ) , 
    .A2 ( n5643 ) , .B ( n5474 ) , .X ( n2685 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4179 ( .D0 ( n5086 ) , .D1 ( n5087 ) , 
    .S ( tmp_net133 ) , .X ( n5089 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_1738 ( .A1 ( tmp_net85 ) , .A2 ( n5906 ) , 
    .X ( n5908 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2002 ( .A1 ( n5098 ) , .A2 ( HFSNET_14 ) , 
    .B ( tmp_net190 ) , .X ( n5022 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_1_2003 ( .A1 ( n3045 ) , .A2 ( n5459_CDR1 ) , 
    .A3 ( n5460 ) , .B ( tmp_net169 ) , .X ( tmp_net191 ) ) ;
SAEDRVT14_NR3_0P5 U4184 ( .A1 ( n3372 ) , .A2 ( n5512 ) , .A3 ( n3364 ) , 
    .X ( n3280 ) ) ;
SAEDRVT14_INV_S_0P5 U4185 ( .A ( i_tv80_core_RegBusA_14_ ) , .X ( n5328 ) ) ;
SAEDRVT14_OA22_U_0P5 U4187 ( .A1 ( n2965 ) , .A2 ( gre_net_556 ) , 
    .B1 ( n2930 ) , .B2 ( HFSNET_20 ) , .X ( n3832 ) ) ;
SAEDRVT14_OA22_U_0P5 U4188 ( .A1 ( n2756 ) , .A2 ( gre_net_556 ) , 
    .B1 ( n2969 ) , .B2 ( HFSNET_20 ) , .X ( n3829 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1718 ( .A1 ( HFSNET_20 ) , .A2 ( n5532 ) , 
    .B ( n3819 ) , .X ( tmp_net75 ) ) ;
SAEDRVT14_AO21_U_0P5 U4196 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_0_ ) , 
    .B ( n6116 ) , .X ( n6128 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2035 ( .A1 ( n6323 ) , .A2 ( tmp_net211 ) , 
    .X ( n2743 ) ) ;
SAEDRVT14_NR4_0P75 U4199 ( .A1 ( n3909 ) , .A2 ( n2731 ) , .A3 ( n5512 ) , 
    .A4 ( n2784_CDR1 ) , .X ( n3269 ) ) ;
SAEDRVT14_NR4_0P75 ctmTdsLR_1_1924 ( .A1 ( n3252 ) , .A2 ( n5384 ) , 
    .A3 ( n6378_CDR1 ) , .A4 ( n5512 ) , .X ( n3268 ) ) ;
SAEDRVT14_AO21_U_0P5 U4203 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_7_ ) , 
    .B ( n6181 ) , .X ( n6186 ) ) ;
SAEDRVT14_OAI22_0P5 U4204 ( .A1 ( n3829 ) , .A2 ( n3817 ) , .B1 ( n3830 ) , 
    .B2 ( n2992 ) , .X ( n3828 ) ) ;
SAEDRVT14_AO21_U_0P5 U4209 ( .A1 ( n3377 ) , .A2 ( i_tv80_core_SP_4_ ) , 
    .B ( n6154 ) , .X ( n6158 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1925 ( .A ( tmp_net142 ) , .X ( tmp_net157 ) ) ;
SAEDRVT14_INV_S_0P5 U4216 ( .A ( n2809 ) , .X ( n4119 ) ) ;
SAEDRVT14_AO21_U_0P5 U4217 ( .A1 ( i_tv80_core_RegBusC_15_ ) , .A2 ( n2778 ) , 
    .B ( n6253 ) , .X ( n6255 ) ) ;
SAEDRVT14_AO21_U_0P5 U4218 ( .A1 ( i_tv80_core_RegBusC_14_ ) , .A2 ( n2778 ) , 
    .B ( n6242 ) , .X ( n6243 ) ) ;
SAEDRVT14_AO21_U_0P5 U4219 ( .A1 ( i_tv80_core_RegBusC_13_ ) , .A2 ( n2778 ) , 
    .B ( n6235 ) , .X ( n6236 ) ) ;
SAEDRVT14_AO21_U_0P5 U4220 ( .A1 ( i_tv80_core_RegBusC_12_ ) , .A2 ( n2778 ) , 
    .B ( n6228 ) , .X ( n6229 ) ) ;
SAEDRVT14_AO21_U_0P5 U4221 ( .A1 ( i_tv80_core_RegBusC_8_ ) , .A2 ( n2778 ) , 
    .B ( n6201 ) , .X ( n6202 ) ) ;
SAEDRVT14_AO21_U_0P5 U4222 ( .A1 ( i_tv80_core_RegBusC_9_ ) , .A2 ( n2778 ) , 
    .B ( n6208 ) , .X ( n6209 ) ) ;
SAEDRVT14_OAI22_0P5 U4223 ( .A1 ( n6304 ) , .A2 ( n4134 ) , .B1 ( n6326 ) , 
    .B2 ( n4133 ) , .X ( n4135 ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U4226 ( .A1 ( n2968 ) , .A2 ( gre_net_556 ) , 
    .B1 ( n2760 ) , .B2 ( n2851 ) , .X ( n3830 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_2004 ( .A1 ( i_tv80_core_RegBusB_7_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net159 ) , .X ( tmp_net192 ) ) ;
SAEDRVT14_OAI22_0P5 U4236 ( .A1 ( i_tv80_core_IR_1_ ) , .A2 ( n6012 ) , 
    .B1 ( n5642 ) , .B2 ( n5641 ) , .X ( n5644 ) ) ;
SAEDRVT14_AN3_0P5 U4250 ( .A1 ( n6374 ) , .A2 ( HFSNET_19 ) , .A3 ( n3011 ) , 
    .X ( n3732 ) ) ;
SAEDRVT14_AO32_U_0P5 U4262 ( .A1 ( n5367 ) , .A2 ( n3280 ) , .A3 ( n5368 ) , 
    .B1 ( n5366 ) , .B2 ( n3257 ) , .X ( n5369 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1555 ( .A1 ( n5316 ) , .A2 ( n2659 ) , 
    .X ( n5344 ) ) ;
SAEDRVT14_ND2_ECO_1 U4267 ( .A1 ( n3840 ) , .A2 ( n2850 ) , .X ( n3727 ) ) ;
SAEDRVT14_ND2_ECO_1 U4271 ( .A1 ( n5505 ) , .A2 ( n5504 ) , .X ( n5506 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_2036 ( .A ( n2677 ) , .X ( tmp_net213 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_7971 ( .A1 ( n5291 ) , .A2 ( tmp_net225 ) , 
    .B ( n6366 ) , .X ( tmp_net226 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_2037 ( .A1 ( n6365 ) , .A2 ( n3335 ) , 
    .B1 ( n2677 ) , .B2 ( n5954 ) , .C ( n3052 ) , .X ( tmp_net212 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1840 ( .A1 ( n2600 ) , .A2 ( n5450 ) , 
    .A3 ( n3144 ) , .X ( tmp_net123 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1863 ( .A ( n4731 ) , .X ( tmp_net132 ) ) ;
SAEDRVT14_OR3_0P5 U4287 ( .A1 ( tmp_net195 ) , .A2 ( tmp_net196 ) , 
    .A3 ( tmp_net197 ) , .X ( n5943 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_2005 ( .A1 ( tmp_net191 ) , 
    .A2 ( tmp_net192 ) , .X ( n3350 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7998 ( .A1 ( n3388 ) , .A2 ( n6341 ) , 
    .B1 ( n3390 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__1_ ) , .X ( n3611 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_2038 ( .A1 ( n5953 ) , .A2 ( tmp_net212 ) , 
    .X ( tmp_net214 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1864 ( .A1 ( tmp_net132 ) , .A2 ( n4732 ) , 
    .B ( n3292 ) , .X ( n4767 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1630 ( .A ( i_tv80_core_PC_1_ ) , 
    .X ( tmp_net38 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1631 ( .A1 ( n5795 ) , .A2 ( tmp_net38 ) , 
    .B ( n5794 ) , .X ( n5798 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1691 ( .A1 ( n4856 ) , .A2 ( n4418 ) , 
    .X ( tmp_net63 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2006 ( .A ( di_reg_7__CDR1 ) , 
    .X ( tmp_net193 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8077 ( .A1 ( n4469 ) , .A2 ( n4007 ) , 
    .X ( tmp_net274 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1789 ( .A ( n5165 ) , .B ( n6293 ) , 
    .X ( tmp_net107 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1790 ( .A1 ( tmp_net107 ) , .A2 ( n4017 ) , 
    .B ( n5618 ) , .X ( n4303 ) ) ;
SAEDRVT14_OR3_0P5 U4322 ( .A1 ( n4440 ) , .A2 ( n4441 ) , .A3 ( n3975 ) , 
    .X ( n4442 ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_2_1593 ( .A1 ( n5320 ) , .A2 ( tmp_net28 ) , 
    .X ( n5323 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2007 ( .A1 ( n5945 ) , .A2 ( tmp_net193 ) , 
    .X ( n3052 ) ) ;
SAEDRVT14_INV_PS_1 U4329 ( .A ( n5949 ) , .X ( n5954 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1865 ( .A1 ( n5084 ) , .A2 ( n5085 ) , 
    .X ( tmp_net133 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8019 ( .A1 ( n5524 ) , .A2 ( n5525 ) , 
    .B ( tmp_net243 ) , .X ( n5568 ) ) ;
SAEDRVT14_AO21_U_0P5 U4337 ( .A1 ( i_tv80_core_RegBusC_10_ ) , .A2 ( n2778 ) , 
    .B ( n6215 ) , .X ( n6216 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1866 ( .A ( n4734 ) , .X ( tmp_net134 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1594 ( .A ( n3195 ) , .X ( tmp_net29 ) ) ;
SAEDRVT14_AOI21_0P75 U4351 ( .A1 ( n2922 ) , .A2 ( n5276 ) , .B ( n5275 ) , 
    .X ( n5283 ) ) ;
SAEDRVT14_NR2_MM_0P5 U4352 ( .A1 ( HFSNET_20 ) , .A2 ( n6367 ) , 
    .X ( n3774 ) ) ;
SAEDRVT14_INV_0P5 U4353 ( .A ( n6260 ) , .X ( n6298 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1805 ( .A1 ( n4301 ) , 
    .A2 ( i_tv80_core_IR_5_ ) , .B ( tmp_net111 ) , .X ( n2865 ) ) ;
SAEDRVT14_AOI22_0P5 U4365 ( .A1 ( HFSNET_20 ) , .A2 ( n3061 ) , 
    .B1 ( n2869 ) , .B2 ( gre_net_556 ) , .X ( n3816 ) ) ;
SAEDRVT14_OAI22_0P5 U4366 ( .A1 ( n5976 ) , .A2 ( n5975 ) , .B1 ( n6251 ) , 
    .B2 ( n5974 ) , .X ( n5977 ) ) ;
SAEDRVT14_OAI22_0P5 U4367 ( .A1 ( n5824 ) , .A2 ( n5975 ) , .B1 ( n5823 ) , 
    .B2 ( n5822 ) , .X ( n5825 ) ) ;
SAEDRVT14_OAI22_0P5 U4368 ( .A1 ( n5811 ) , .A2 ( n5975 ) , .B1 ( n5810 ) , 
    .B2 ( n5822 ) , .X ( n5812 ) ) ;
SAEDRVT14_OAI22_0P5 U4369 ( .A1 ( n5781 ) , .A2 ( n5975 ) , .B1 ( n5780 ) , 
    .B2 ( n5822 ) , .X ( n5782 ) ) ;
SAEDRVT14_OAI22_0P5 U4370 ( .A1 ( n5771 ) , .A2 ( n5975 ) , .B1 ( n5770 ) , 
    .B2 ( n5822 ) , .X ( n5772 ) ) ;
SAEDRVT14_OAI22_0P5 U4372 ( .A1 ( n2982 ) , .A2 ( n3840 ) , .B1 ( n3042 ) , 
    .B2 ( n2986 ) , .X ( n3790 ) ) ;
SAEDRVT14_OAI22_0P5 U4373 ( .A1 ( n2984 ) , .A2 ( n3840 ) , .B1 ( n2978 ) , 
    .B2 ( n2671 ) , .X ( n3788 ) ) ;
SAEDRVT14_ND2_CDC_1 U4374 ( .A1 ( HFSNET_9 ) , .A2 ( n5489 ) , .X ( n5505 ) ) ;
SAEDRVT14_AOI21_0P75 U4375 ( .A1 ( n5267 ) , .A2 ( n3046 ) , .B ( n5260 ) , 
    .X ( n5261 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4382 ( .A ( n2812 ) , .B ( n5205 ) , .X ( n5319 ) ) ;
SAEDRVT14_AO32_U_0P5 U4385 ( .A1 ( n2736 ) , .A2 ( n3431 ) , .A3 ( n6281 ) , 
    .B1 ( n3977 ) , .B2 ( i_tv80_core_ISet_1_ ) , .X ( n4287 ) ) ;
SAEDRVT14_OAI22_0P5 U4389 ( .A1 ( n2988 ) , .A2 ( n3840 ) , .B1 ( n2990 ) , 
    .B2 ( n2671 ) , .X ( n3789 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_8332 ( .A1 ( tmp_net431 ) , .A2 ( n6053 ) , 
    .X ( n6086 ) ) ;
SAEDRVT14_NR3_ECO_1 U4395 ( .A1 ( n3709 ) , .A2 ( n3713 ) , 
    .A3 ( i_tv80_core_i_reg_N17 ) , .X ( n3394 ) ) ;
SAEDRVT14_NR3_1 U4396 ( .A1 ( i_tv80_core_i_reg_N18 ) , 
    .A2 ( i_tv80_core_i_reg_N19 ) , .A3 ( i_tv80_core_i_reg_N17 ) , 
    .X ( n3388 ) ) ;
SAEDRVT14_NR3_0P75 U4397 ( .A1 ( i_tv80_core_i_reg_N21 ) , .A2 ( n3596 ) , 
    .A3 ( i_tv80_core_i_reg_N20 ) , .X ( n3460 ) ) ;
SAEDRVT14_NR3_0P75 U4398 ( .A1 ( i_tv80_core_i_reg_N21 ) , .A2 ( n3597 ) , 
    .A3 ( i_tv80_core_i_reg_N22 ) , .X ( n3452 ) ) ;
SAEDRVT14_NR3_1 U4399 ( .A1 ( i_tv80_core_i_reg_N21 ) , 
    .A2 ( i_tv80_core_i_reg_N20 ) , .A3 ( i_tv80_core_i_reg_N22 ) , 
    .X ( n3457 ) ) ;
SAEDRVT14_AO21_U_0P5 U4400 ( .A1 ( HFSNET_14 ) , .A2 ( n5090 ) , 
    .B ( n4845 ) , .X ( n4968 ) ) ;
SAEDRVT14_OA22_U_0P5 U4401 ( .A1 ( n3993 ) , .A2 ( n6326 ) , .B1 ( n6263 ) , 
    .B2 ( n5610 ) , .X ( n3407 ) ) ;
SAEDRVT14_NR3_0P75 U4402 ( .A1 ( n3597 ) , .A2 ( n3596 ) , 
    .A3 ( i_tv80_core_i_reg_N21 ) , .X ( n3455 ) ) ;
SAEDRVT14_NR2_MM_0P5 U4403 ( .A1 ( n4845 ) , .A2 ( n4831 ) , .X ( n4832 ) ) ;
SAEDRVT14_AOI21_0P75 U4404 ( .A1 ( n401 ) , .A2 ( n5110 ) , .B ( n5112 ) , 
    .X ( n4816 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1926 ( .A1 ( n5470 ) , .A2 ( n5469 ) , 
    .B ( n5512 ) , .X ( tmp_net158 ) ) ;
SAEDRVT14_OAI22_0P5 U4406 ( .A1 ( busak_n ) , .A2 ( n3955 ) , 
    .B1 ( i_tv80_core_Auto_Wait_t2 ) , .B2 ( n4274 ) , .X ( n3469 ) ) ;
SAEDRVT14_NR3_0P5 U4408 ( .A1 ( n5414 ) , .A2 ( n5418 ) , .A3 ( n5512 ) , 
    .X ( n3260 ) ) ;
SAEDRVT14_ND2_ECO_1 U4409 ( .A1 ( n3339 ) , .A2 ( HFSNET_14 ) , .X ( n5931 ) ) ;
SAEDRVT14_AOI21_0P75 U4410 ( .A1 ( n5242 ) , .A2 ( n5718 ) , .B ( n3972 ) , 
    .X ( n3266 ) ) ;
SAEDRVT14_INV_S_0P5 U4411 ( .A ( n3362 ) , .X ( n5983 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_1742 ( .A1 ( n4557 ) , .A2 ( n4810 ) , 
    .X ( tmp_net86 ) ) ;
SAEDRVT14_AN3_0P5 U4413 ( .A1 ( n5744 ) , .A2 ( n5737 ) , .A3 ( n5736 ) , 
    .X ( n5748 ) ) ;
SAEDRVT14_AO32_U_0P5 U4415 ( .A1 ( n5741 ) , .A2 ( n3431 ) , .A3 ( n5702 ) , 
    .B1 ( n6291 ) , .B2 ( n5701 ) , .X ( n5703 ) ) ;
SAEDRVT14_AO21_U_0P5 U4417 ( .A1 ( n5580 ) , .A2 ( n5587 ) , .B ( n4098 ) , 
    .X ( n4125 ) ) ;
SAEDRVT14_AOI21_0P75 U4419 ( .A1 ( n5221 ) , .A2 ( n6347 ) , .B ( n5220 ) , 
    .X ( n3341 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1743 ( .A1 ( n2995 ) , .A2 ( n4691 ) , 
    .B ( n5680 ) , .X ( tmp_net87 ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_3_1719 ( .A1 ( HFSNET_20 ) , .A2 ( n2882 ) , 
    .B ( tmp_net75 ) , .X ( tmp_net77 ) ) ;
SAEDRVT14_OAI22_0P5 U4422 ( .A1 ( n5428 ) , .A2 ( n5435 ) , .B1 ( n5433 ) , 
    .B2 ( n5427 ) , .X ( n5444 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4424 ( .A1 ( n5835 ) , .A2 ( n5836 ) , .X ( n3379 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1595 ( .A1 ( n5308 ) , .A2 ( tmp_net29 ) , 
    .B ( n3349 ) , .X ( n3348 ) ) ;
SAEDRVT14_NR3_0P5 U4426 ( .A1 ( n3710 ) , .A2 ( n3709 ) , 
    .A3 ( i_tv80_core_i_reg_N18 ) , .X ( n3387 ) ) ;
SAEDRVT14_NR3_0P75 U4427 ( .A1 ( i_tv80_core_i_reg_N18 ) , .A2 ( n3709 ) , 
    .A3 ( i_tv80_core_i_reg_N17 ) , .X ( n3389 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4428 ( .A1 ( i_tv80_core_i_reg_N18 ) , 
    .A2 ( i_tv80_core_i_reg_N17 ) , .X ( n3395 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_7972 ( .A ( n5299 ) , .X ( tmp_net225 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_2009 ( .A1 ( n4094 ) , 
    .A2 ( i_tv80_core_ISet_1_ ) , .B ( n4092 ) , .X ( tmp_net194 ) ) ;
SAEDRVT14_INV_PS_1 U4431 ( .A ( n4684 ) , .X ( n4675 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4432 ( .A1 ( n6272 ) , .A2 ( n6109 ) , .X ( n3411 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4433 ( .A1 ( n370_CDR1 ) , .A2 ( n369 ) , .X ( n3397 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1867 ( .A1 ( n3338 ) , .A2 ( n4823 ) , 
    .B ( tmp_net134 ) , .X ( n4736 ) ) ;
SAEDRVT14_NR3_0P5 U4435 ( .A1 ( n5092 ) , .A2 ( n5707 ) , .A3 ( n4996 ) , 
    .X ( n3408 ) ) ;
SAEDRVT14_NR3_0P5 U4436 ( .A1 ( n5014 ) , .A2 ( n4962 ) , .A3 ( n4877 ) , 
    .X ( n3415 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4437 ( .A1 ( n6012 ) , .A2 ( n6262 ) , .X ( n3418 ) ) ;
SAEDRVT14_NR3_0P5 U4438 ( .A1 ( n6051 ) , .A2 ( n3420 ) , .A3 ( n6045 ) , 
    .X ( n3419 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_4_1720 ( .A1 ( tmp_net76 ) , .A2 ( HFSNET_19 ) , 
    .B ( tmp_net77 ) , .X ( n2785 ) ) ;
SAEDRVT14_AN3_0P5 U4440 ( .A1 ( n5832 ) , .A2 ( n5793 ) , .A3 ( n3451 ) , 
    .X ( n3450 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4441 ( .A1 ( i_tv80_core_i_reg_N21 ) , 
    .A2 ( i_tv80_core_i_reg_N20 ) , .X ( n3453 ) ) ;
SAEDRVT14_OR3_0P5 U4442 ( .A1 ( n3004 ) , .A2 ( n3104 ) , .A3 ( n4309 ) , 
    .X ( n3463 ) ) ;
SAEDRVT14_INV_S_0P5 U4443 ( .A ( n5100 ) , .X ( n4930 ) ) ;
SAEDRVT14_OA22_U_0P5 U4444 ( .A1 ( n4516 ) , .A2 ( n401 ) , .B1 ( n4515 ) , 
    .B2 ( i_tv80_core_F_1_ ) , .X ( n3466_CDR1 ) ) ;
SAEDRVT14_OAI22_0P5 U4445 ( .A1 ( n5707 ) , .A2 ( n4830 ) , .B1 ( n5683 ) , 
    .B2 ( n5223 ) , .X ( n4831 ) ) ;
SAEDRVT14_OAI22_0P5 U4446 ( .A1 ( n3466_CDR1 ) , .A2 ( n5016 ) , 
    .B1 ( n4924_CDR1 ) , .B2 ( n5124_CDR1 ) , .X ( n4528 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1868 ( .A ( n5958 ) , .X ( tmp_net135 ) ) ;
SAEDRVT14_NR3_0P5 U4449 ( .A1 ( n4156 ) , .A2 ( n4155 ) , .A3 ( n4154 ) , 
    .X ( n3473 ) ) ;
SAEDRVT14_ND3_0P5 ctmTdsLR_1_7973 ( .A1 ( tmp_net227 ) , .A2 ( tmp_net228 ) , 
    .A3 ( tmp_net230 ) , .X ( i_tv80_core_RegBusC_1_ ) ) ;
SAEDRVT14_OAI22_0P5 U4451 ( .A1 ( n375 ) , .A2 ( n4936 ) , .B1 ( n376 ) , 
    .B2 ( n4935 ) , .X ( n4940 ) ) ;
SAEDRVT14_AOI21_0P75 U4452 ( .A1 ( n4856 ) , .A2 ( i_tv80_core_BusA_1_ ) , 
    .B ( n401 ) , .X ( n4857 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8500 ( .A1 ( n4997 ) , 
    .A2 ( i_tv80_core_ACC_5_ ) , .X ( tmp_net544 ) ) ;
SAEDRVT14_OR3_0P5 U4454 ( .A1 ( n3267 ) , .A2 ( n5707 ) , .A3 ( n5695 ) , 
    .X ( n3241 ) ) ;
SAEDRVT14_OA22_U_0P5 U4455 ( .A1 ( n5208 ) , .A2 ( n6366 ) , .B1 ( n5207 ) , 
    .B2 ( n575 ) , .X ( n5209 ) ) ;
SAEDRVT14_NR3_0P5 U4456 ( .A1 ( n5049 ) , .A2 ( n5610 ) , .A3 ( n2761 ) , 
    .X ( n3479 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8333 ( .A1 ( n6051 ) , .A2 ( n3420 ) , 
    .A3 ( n6052 ) , .X ( tmp_net431 ) ) ;
SAEDRVT14_OA22_U_0P5 U4458 ( .A1 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , 
    .A2 ( n5675 ) , .B1 ( n5661 ) , .B2 ( n5660 ) , .X ( n3482 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4459 ( .A ( n4193 ) , .B ( n5573 ) , .X ( n5192_CDR1 ) ) ;
SAEDRVT14_OR2_0P5 U4460 ( .A1 ( n5612 ) , .A2 ( n5160_CDR1 ) , .X ( n4304 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4461 ( .A1 ( n4472 ) , .A2 ( n4077 ) , 
    .X ( n3262_CDR1 ) ) ;
SAEDRVT14_OR2_0P5 U4462 ( .A1 ( n4225 ) , .A2 ( n4224 ) , .X ( n4193 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4463 ( .A ( n5091 ) , .B ( HFSNET_14 ) , .X ( n5063 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4464 ( .A ( n4116 ) , .B ( n4105 ) , .X ( n4089 ) ) ;
SAEDRVT14_INV_0P75 U4465 ( .A ( n4827 ) , .X ( n5672 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_2039 ( .A1 ( n5952 ) , .A2 ( tmp_net213 ) , 
    .B ( tmp_net214 ) , .X ( n2354 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4467 ( .A1 ( n5163 ) , .A2 ( n3431 ) , .X ( n3265 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4468 ( .A ( n5749 ) , .B ( n6322 ) , .X ( n4256 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4469 ( .A1 ( n5151 ) , .A2 ( n6260 ) , .X ( n3267 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_3_1927 ( .A1 ( tmp_net157 ) , 
    .A2 ( n5467_CDR1 ) , .B1 ( tmp_net142 ) , .B2 ( tmp_net141 ) , 
    .C ( tmp_net158 ) , .X ( n3193 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_2_1841 ( .A1 ( tmp_net123 ) , .A2 ( n5373 ) , 
    .A3 ( n5374 ) , .B ( HFSNET_11 ) , .X ( n5394 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4472 ( .A ( n5700 ) , .B ( n4312 ) , .X ( n5724_CDR1 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_1744 ( .A1 ( tmp_net86 ) , .A2 ( n376 ) , 
    .B ( tmp_net87 ) , .X ( tmp_net88 ) ) ;
SAEDRVT14_OA31_1 U4474 ( .A1 ( n4076 ) , .A2 ( n2643 ) , .A3 ( n4470 ) , 
    .B ( n2946 ) , .X ( n3294_CDR1 ) ) ;
SAEDRVT14_AN2_0P5 U4475 ( .A1 ( n3395 ) , .A2 ( n3709 ) , .X ( n3299 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4476 ( .A1 ( n2660 ) , .A2 ( n2643 ) , 
    .X ( n3306_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4477 ( .A1 ( n3900 ) , .A2 ( n3901 ) , .X ( n3307 ) ) ;
SAEDRVT14_AOINV_IW_0P5 gre_a_INV_79_inst_8526 ( .A ( n4331 ) , 
    .X ( gre_a_INV_79_0 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4479 ( .A1 ( n4737 ) , .A2 ( n4736 ) , .X ( n3310 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_1928 ( .A1 ( n5410 ) , .A2 ( n3276 ) , 
    .B ( n5409 ) , .X ( n3430 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2010 ( .A1 ( n4093 ) , .A2 ( n3431 ) , 
    .B ( tmp_net194 ) , .X ( n4917 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4482 ( .A1 ( n4500 ) , .A2 ( n5570 ) , .X ( n3312 ) ) ;
SAEDRVT14_LDNQ_V1_1 \clk_gate_i_tv80_core_BusB_reg/latch ( 
    .D ( \clk_gate_i_tv80_core_BusB_reg/net1599 ) , .G ( MY_CLK ) , 
    .Q ( \clk_gate_i_tv80_core_BusB_reg/net1602 ) ) ;
SAEDRVT14_AN2_0P5 U4484 ( .A1 ( n3399 ) , .A2 ( n3412 ) , .X ( n3313 ) ) ;
SAEDRVT14_AN2_0P5 U4485 ( .A1 ( n3412 ) , .A2 ( n3400 ) , .X ( n3320 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4486 ( .A1 ( n5135 ) , .A2 ( n5691 ) , .X ( n3321 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8291 ( .A1 ( tmp_net403 ) , .A2 ( n4140 ) , 
    .X ( n4916 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4488 ( .A1 ( n3403 ) , .A2 ( n3412 ) , .X ( n3323 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4489 ( .A1 ( n3404 ) , .A2 ( n3412 ) , .X ( n3324 ) ) ;
SAEDRVT14_EO3_0P5 U4490 ( .A1 ( n4555 ) , .A2 ( n4551 ) , .A3 ( n4552 ) , 
    .X ( n5773 ) ) ;
SAEDRVT14_OA21_U_0P5 U4491 ( .A1 ( n5704 ) , .A2 ( n5703 ) , 
    .B ( HFSNET_23 ) , .X ( n3331 ) ) ;
SAEDRVT14_AN2_0P5 U4492 ( .A1 ( n4326 ) , .A2 ( n4292 ) , .X ( n3332 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4493 ( .D0 ( n4868 ) , .D1 ( n4692 ) , .S ( n4935 ) , 
    .X ( n4557 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_2040 ( .A1 ( n5945 ) , .A2 ( n182_CDR1 ) , 
    .X ( tmp_net215 ) ) ;
SAEDRVT14_OAI21_0P5 U4495 ( .A1 ( n5706 ) , .A2 ( n3339 ) , .B ( n6046 ) , 
    .X ( n5854 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_2041 ( .A1 ( n6353 ) , .A2 ( n3335 ) , 
    .B1 ( n5950 ) , .B2 ( n5879 ) , .C ( tmp_net215 ) , .X ( n2359 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4497 ( .A1 ( n6045 ) , .A2 ( n6044 ) , .X ( n3336 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4498 ( .A1 ( n3419 ) , .A2 ( n3421 ) , .X ( n3337 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4499 ( .A1 ( n3419 ) , .A2 ( n3422 ) , .X ( n3338 ) ) ;
SAEDRVT14_AN2_0P5 U4500 ( .A1 ( n6347 ) , .A2 ( HFSNET_23 ) , .X ( n3339 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4501 ( .A1 ( n4838 ) , .A2 ( n6366 ) , .X ( n3340 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_8292 ( .A1 ( tmp_net176 ) , 
    .A2 ( tmp_net175 ) , .X ( tmp_net403 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1767 ( .A1 ( n5998 ) , .A2 ( n5997 ) , 
    .B ( n3431 ) , .X ( tmp_net99 ) ) ;
SAEDRVT14_AN2B_MM_1 ctmTdsLR_1_1722 ( .B ( n6044 ) , .A ( n4823 ) , 
    .X ( n3416 ) ) ;
SAEDRVT14_AO21_U_0P5 U4505 ( .A1 ( n4193 ) , .A2 ( n5181 ) , .B ( n4192 ) , 
    .X ( n5577 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_3_1881 ( .A1 ( tmp_net138 ) , .A2 ( n5095 ) , 
    .B ( n5140 ) , .X ( tmp_net140 ) ) ;
SAEDRVT14_AN2_0P5 U4507 ( .A1 ( n3453 ) , .A2 ( n3596 ) , .X ( n3378 ) ) ;
SAEDRVT14_EO4_1 U4508 ( .A1 ( n5101_CDR1 ) , .A2 ( n3465_CDR1 ) , 
    .A3 ( n5100 ) , .A4 ( n5099_CDR1 ) , .X ( n5114 ) ) ;
SAEDRVT14_AN4_0P5 U4509 ( .A1 ( n4961 ) , .A2 ( n5135 ) , .A3 ( n5051 ) , 
    .A4 ( n4960 ) , .X ( n4966 ) ) ;
SAEDRVT14_OAI21_0P5 U4510 ( .A1 ( n4321 ) , .A2 ( n575 ) , .B ( n6008 ) , 
    .X ( n4322 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4511 ( .A1 ( n4799 ) , .A2 ( n2945 ) , .X ( n3383 ) ) ;
SAEDRVT14_OAI21_0P5 U4512 ( .A1 ( n2919 ) , .A2 ( n4003 ) , .B ( n4040 ) , 
    .X ( n4033 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1596 ( .A ( n6267 ) , .X ( tmp_net30 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1597 ( .A1 ( n5163 ) , .A2 ( n4469 ) , 
    .B ( tmp_net30 ) , .X ( n5572 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1598 ( .A1 ( n2813 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2753 ) , .X ( n3546 ) ) ;
SAEDRVT14_AOI222_0P5 ctmTdsLR_2_7974 ( .A1 ( n3457 ) , .A2 ( n6341 ) , 
    .B1 ( n3455 ) , .B2 ( i_tv80_core_i_reg_RegsL_5__1_ ) , 
    .C1 ( i_tv80_core_i_reg_RegsL_3__1_ ) , .C2 ( n3378 ) , 
    .X ( tmp_net227 ) ) ;
SAEDRVT14_NR3_1 U4517 ( .A1 ( i_tv80_core_i_reg_N18 ) , .A2 ( n3710 ) , 
    .A3 ( i_tv80_core_i_reg_N19 ) , .X ( n3385 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4518 ( .A ( n5833 ) , .B ( n5974 ) , .X ( n5822 ) ) ;
SAEDRVT14_AOI22_0P5 ctmTdsLR_3_7975 ( .A1 ( i_tv80_core_i_reg_RegsL_6__1_ ) , 
    .A2 ( n3461 ) , .B1 ( i_tv80_core_i_reg_RegsL_1__1_ ) , .B2 ( n3452 ) , 
    .X ( tmp_net228 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_7976 ( .A1 ( n3460 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_4__1_ ) , .B ( tmp_net229 ) , 
    .X ( tmp_net230 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_5_7977 ( .A1 ( i_tv80_core_i_reg_RegsL_2__1_ ) , 
    .A2 ( n3456 ) , .B1 ( n3458 ) , .B2 ( i_tv80_core_i_reg_RegsL_7__1_ ) , 
    .X ( tmp_net229 ) ) ;
SAEDRVT14_OA221_U_0P5 ctmTdsLR_1_1534 ( .A1 ( n5629 ) , .A2 ( n4459 ) , 
    .B1 ( n5981 ) , .B2 ( n5626 ) , .C ( n4461 ) , .X ( n5291 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4523 ( .A1 ( n4504 ) , .A2 ( n4503 ) , .X ( n3386 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_1_2011 ( .A1 ( n5979 ) , .A2 ( n5938 ) , 
    .A3 ( i_tv80_core_PC_14_ ) , .B1 ( n2623 ) , .B2 ( n5937 ) , 
    .X ( tmp_net195 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8128 ( .A ( n4198 ) , .B ( n3003 ) , 
    .X ( tmp_net305 ) ) ;
SAEDRVT14_NR3_1 U4526 ( .A1 ( i_tv80_core_i_reg_N19 ) , .A2 ( n3713 ) , 
    .A3 ( i_tv80_core_i_reg_N17 ) , .X ( n3390 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_1_1535 ( .A1 ( n4509 ) , .A2 ( n3351 ) , 
    .A3 ( n5274 ) , .X ( n3914 ) ) ;
SAEDRVT14_NR2_MM_0P5 U4528 ( .A1 ( n3392_CDR1 ) , .A2 ( n3393_CDR1 ) , 
    .X ( n3391 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1843 ( .A1 ( n5353 ) , .A2 ( HFSNET_11 ) , 
    .B ( n5371 ) , .X ( n5377 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1792 ( .A ( n4309 ) , .X ( tmp_net108 ) ) ;
SAEDRVT14_AN2_MM_1 U4532 ( .A1 ( i_tv80_core_i_reg_N19 ) , .A2 ( n3395 ) , 
    .X ( n3396 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4533 ( .A ( n4849 ) , .B ( n3033 ) , .X ( n4897 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4534 ( .A1 ( n4167 ) , .A2 ( n5206 ) , .X ( n3398 ) ) ;
SAEDRVT14_INV_PS_1 U4535 ( .A ( n4372 ) , .X ( n4683 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4536 ( .A1 ( n4713 ) , .A2 ( di_reg_6__CDR1 ) , 
    .X ( n3402 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4537 ( .A1 ( n5529 ) , .A2 ( n5463 ) , .X ( n3403 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4538 ( .A1 ( n5533 ) , .A2 ( n5463 ) , .X ( n3404 ) ) ;
SAEDRVT14_NR4_0P75 U4539 ( .A1 ( n3339 ) , .A2 ( n5707 ) , .A3 ( n3331 ) , 
    .A4 ( n5830 ) , .X ( n3405 ) ) ;
SAEDRVT14_ND2_ECO_1 U4540 ( .A1 ( n3650 ) , .A2 ( n3649 ) , 
    .X ( i_tv80_core_RegBusB_8_ ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1844 ( .A1 ( n2991 ) , .A2 ( n5715 ) , 
    .B1 ( n6258 ) , .B2 ( n255 ) , .X ( tmp_net124 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7999 ( .A1 ( n3388 ) , .A2 ( n3015 ) , 
    .B1 ( n3390 ) , .B2 ( n3017 ) , .X ( n3617 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7984 ( .A1 ( n3388 ) , .A2 ( n2886 ) , 
    .B1 ( n3390 ) , .B2 ( n2882 ) , .X ( n3667 ) ) ;
SAEDRVT14_OAI21_0P5 U4544 ( .A1 ( n4295 ) , .A2 ( n4309 ) , .B ( n4277 ) , 
    .X ( n4748 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4545 ( .A1 ( n4676 ) , 
    .A2 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .X ( n5016 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4546 ( .A1 ( n5645 ) , .A2 ( n5473 ) , .X ( n3406 ) ) ;
SAEDRVT14_INV_PS_1 U4547 ( .A ( n5660 ) , .X ( n4868 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4548 ( .D0 ( n4868 ) , .D1 ( n4692 ) , .S ( n4936 ) , 
    .X ( n4409 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4549 ( .A ( n5534 ) , .B ( n5653 ) , .X ( n5463 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4550 ( .A1 ( n5014 ) , .A2 ( n6190 ) , .X ( n3413 ) ) ;
SAEDRVT14_NR4_0P75 U4551 ( .A1 ( n5231 ) , .A2 ( n5230 ) , .A3 ( n5229 ) , 
    .A4 ( n5228 ) , .X ( n3414 ) ) ;
SAEDRVT14_ND3_ECO_1 U4552 ( .A1 ( n5853 ) , .A2 ( HFSNET_14 ) , 
    .A3 ( HFSNET_23 ) , .X ( n5945 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4553 ( .A ( n4822 ) , .B ( n6044 ) , .X ( n4733 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4554 ( .A ( n4432 ) , .B ( n6044 ) , .X ( n4477 ) ) ;
SAEDRVT14_OAI31_0P5 U4555 ( .A1 ( n3336 ) , .A2 ( HFSNET_16 ) , 
    .A3 ( n3417 ) , .B ( n6046 ) , .X ( n6089 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_1745 ( .A1 ( n5676_CDR1 ) , .A2 ( n5674 ) , 
    .B ( tmp_net88 ) , .X ( n3444 ) ) ;
SAEDRVT14_ND2B_U_0P5 U4557 ( .A ( n4475 ) , .B ( n6044 ) , .X ( n4396 ) ) ;
SAEDRVT14_EO4_1 U4558 ( .A1 ( n5120_CDR1 ) , .A2 ( n5121_CDR1 ) , 
    .A3 ( n5119_CDR1 ) , .A4 ( n3476_CDR1 ) , .X ( n5122_CDR1 ) ) ;
SAEDRVT14_EO4_1 U4559 ( .A1 ( n5118_CDR1 ) , .A2 ( n5115_CDR1 ) , 
    .A3 ( n5117_CDR1 ) , .A4 ( n5116_CDR1 ) , .X ( n5123_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4560 ( .A1 ( n4855 ) , .A2 ( n2691 ) , .X ( n3417 ) ) ;
SAEDRVT14_ND2_ECO_1 U4561 ( .A1 ( n5715 ) , .A2 ( reset_n ) , .X ( n4405 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U4562 ( .D0 ( n4868 ) , .D1 ( n4692 ) , .S ( n4938 ) , 
    .X ( n4480 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4563 ( .A1 ( n6048 ) , .A2 ( n6081 ) , .X ( n6297 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1793 ( .A1 ( n4312 ) , .A2 ( tmp_net108 ) , 
    .B ( n4308 ) , .X ( n4311 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4565 ( .A1 ( n4822 ) , .A2 ( n4823 ) , .X ( n3421 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4566 ( .A1 ( n4475 ) , .A2 ( n4432 ) , .X ( n3422 ) ) ;
SAEDRVT14_OAI21_0P5 U4567 ( .A1 ( n3963 ) , .A2 ( n5705 ) , .B ( n6092 ) , 
    .X ( n3965 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_2012 ( .A1 ( n5971 ) , .A2 ( n5939 ) , 
    .A3 ( i_tv80_core_PC_14_ ) , .X ( tmp_net196 ) ) ;
SAEDRVT14_EN2_0P5 U4569 ( .A1 ( n4504 ) , .A2 ( n4503 ) , .X ( n5710 ) ) ;
SAEDRVT14_OAI21_0P5 U4570 ( .A1 ( n4019 ) , .A2 ( n6366 ) , .B ( n4277 ) , 
    .X ( n4292 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1561 ( .A1 ( n358 ) , .A2 ( n4375 ) , 
    .X ( tmp_net18 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8040 ( .A1 ( tmp_net24 ) , 
    .A2 ( tmp_net254 ) , .B ( n5344 ) , .X ( tmp_net28 ) ) ;
SAEDRVT14_AOI21_0P75 U4573 ( .A1 ( n3783 ) , .A2 ( n3784 ) , 
    .B ( HFSNET_19 ) , .X ( n3781 ) ) ;
SAEDRVT14_OAI22_0P5 U4574 ( .A1 ( n2851 ) , .A2 ( n2892 ) , .B1 ( n2884 ) , 
    .B2 ( HFSNET_20 ) , .X ( n3793 ) ) ;
SAEDRVT14_NR4_0P75 U4575 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n3050 ) , 
    .A3 ( i_tv80_core_F_6_ ) , .A4 ( n3103 ) , .X ( n3438 ) ) ;
SAEDRVT14_ND2_ECO_1 U4576 ( .A1 ( HFSNET_19 ) , .A2 ( gre_net_556 ) , 
    .X ( n3755 ) ) ;
SAEDRVT14_ND2_ECO_1 U4577 ( .A1 ( n3024 ) , .A2 ( n3840 ) , .X ( n3775 ) ) ;
SAEDRVT14_AN4_0P5 U4578 ( .A1 ( halt_n ) , .A2 ( n5718 ) , .A3 ( n5717 ) , 
    .A4 ( n5716 ) , .X ( n5760 ) ) ;
SAEDRVT14_ND2_ECO_1 U4579 ( .A1 ( n3133 ) , .A2 ( n3840 ) , .X ( n3783 ) ) ;
SAEDRVT14_AO222_U_0P5 ctmTdsLR_2_7988 ( .A1 ( n3299 ) , .A2 ( n2986 ) , 
    .B1 ( n3396 ) , .B2 ( n2990 ) , .C1 ( n3385 ) , .C2 ( n2982 ) , 
    .X ( tmp_net232 ) ) ;
SAEDRVT14_AO21_U_0P5 U4581 ( .A1 ( n4692 ) , .A2 ( n4932 ) , .B ( n4691 ) , 
    .X ( n3442 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8181 ( .A ( HFSNET_11 ) , .X ( tmp_net335 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4583 ( .A1 ( n5784 ) , .A2 ( i_tv80_core_PC_2_ ) , 
    .X ( n3443 ) ) ;
SAEDRVT14_OR2_0P5 U4584 ( .A1 ( n4618 ) , .A2 ( n369 ) , .X ( n4612 ) ) ;
SAEDRVT14_NR2_MM_0P5 U4585 ( .A1 ( n5799 ) , .A2 ( i_tv80_core_PC_3_ ) , 
    .X ( n3446 ) ) ;
SAEDRVT14_OAI21_0P5 U4586 ( .A1 ( n5090 ) , .A2 ( n585 ) , .B ( n4843 ) , 
    .X ( n4844 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_2_7980 ( .A1 ( n3801 ) , .A2 ( n2851 ) , 
    .A3 ( n3059 ) , .B1 ( n3801 ) , .B2 ( HFSNET_20 ) , .B3 ( n2871 ) , 
    .X ( tmp_net231 ) ) ;
SAEDRVT14_OR2_MM_0P5 U4588 ( .A1 ( n5807 ) , .A2 ( i_tv80_core_PC_4_ ) , 
    .X ( n5837 ) ) ;
SAEDRVT14_AN2_0P5 U4589 ( .A1 ( n3453 ) , .A2 ( i_tv80_core_i_reg_N22 ) , 
    .X ( n3458 ) ) ;
SAEDRVT14_EO2_V1_0P75 U4590 ( .A1 ( n268 ) , .A2 ( n269 ) , .X ( n5213 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8153 ( .A1 ( n3587 ) , .A2 ( n3590 ) , 
    .A3 ( tmp_net320 ) , .X ( i_tv80_core_RegBusC_14_ ) ) ;
SAEDRVT14_MUX2_U_0P5 U4592 ( .D0 ( n4820 ) , .D1 ( n4821 ) , .S ( n4830 ) , 
    .X ( n4825 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_1562 ( .A1 ( n4483 ) , .A2 ( n4416 ) , 
    .A3 ( tmp_net18 ) , .X ( n4381 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1563 ( .A ( n4461 ) , .X ( tmp_net19 ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_2_1564 ( .A1 ( n2589 ) , .A2 ( tmp_net19 ) , 
    .B ( n5309 ) , .X ( n3344 ) ) ;
SAEDRVT14_AN2_8 \clk_gate_i_tv80_core_BusB_reg/main_gate ( 
    .A1 ( \clk_gate_i_tv80_core_BusB_reg/net1602 ) , .A2 ( MY_CLK ) , 
    .X ( net1618 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1566 ( .A1 ( n4331 ) , .A2 ( n4330 ) , 
    .B ( n4332 ) , .X ( n3945 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1567 ( .A ( n6260 ) , .X ( tmp_net21 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1568 ( .A1 ( tmp_net21 ) , .A2 ( n5040 ) , 
    .B ( n3103 ) , .X ( n4548 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1569 ( .A1 ( i_tv80_core_i_reg_RegsL_1__4_ ) , 
    .A2 ( n3452 ) , .B1 ( n3378 ) , .B2 ( i_tv80_core_i_reg_RegsL_3__4_ ) , 
    .X ( n3528 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1570 ( .A1 ( n6343 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__4_ ) , .X ( n3530 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1571 ( .A1 ( n3065 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n3068 ) , .X ( n3534 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1536 ( .A1 ( n6326 ) , .A2 ( tstate_2_ ) , 
    .A3 ( n257 ) , .X ( tmp_net9 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_1537 ( .A1 ( tmp_net9 ) , .A2 ( n6349 ) , 
    .B1 ( n3346 ) , .B2 ( n3050 ) , .C ( n5294 ) , .X ( n5298 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7982 ( .A1 ( n2964 ) , .A2 ( n3390 ) , 
    .B1 ( n3389 ) , .B2 ( n2966 ) , .X ( tmp_net96 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7985 ( .A1 ( n3388 ) , .A2 ( n2856 ) , 
    .B1 ( n3390 ) , .B2 ( n2858 ) , .X ( n3673 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7986 ( .A1 ( n3388 ) , .A2 ( n2838 ) , 
    .B1 ( n3390 ) , .B2 ( n2840 ) , .X ( n3679 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_7989 ( .A1 ( n4673 ) , 
    .A2 ( i_tv80_core_BusB_7_ ) , .B ( tmp_net233 ) , .X ( n4712 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1542 ( .A1 ( i_tv80_core_i_reg_RegsL_1__3_ ) , 
    .A2 ( n3452 ) , .B1 ( n3378 ) , .B2 ( i_tv80_core_i_reg_RegsL_3__3_ ) , 
    .X ( n3522 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1543 ( .A1 ( n6342 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__3_ ) , .X ( n3524 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1544 ( .A1 ( n3906 ) , .A2 ( n3438 ) , 
    .A3 ( n3913 ) , .X ( tmp_net10 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_1545 ( .A1 ( n4169 ) , .A2 ( n3046 ) , 
    .A3 ( n2853 ) , .X ( tmp_net11 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_3_1768 ( .A1 ( tmp_net98 ) , .A2 ( tmp_net99 ) , 
    .X ( n6013 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_1769 ( .A1 ( n4643 ) , .A2 ( n4679 ) , 
    .B ( n4954 ) , .X ( n5076_CDR1 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1770 ( .A1 ( n3798 ) , .A2 ( n3797 ) , 
    .A3 ( n3800 ) , .A4 ( n3799 ) , .X ( i_tv80_core_RegBusA_10_ ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1771 ( .A1 ( n3033 ) , .A2 ( n4777 ) , 
    .B ( n3291 ) , .X ( tmp_net100 ) ) ;
SAEDRVT14_AOI31_0P5 ctmTdsLR_2_1772 ( .A1 ( n3292 ) , .A2 ( n4778 ) , 
    .A3 ( n2939 ) , .B ( tmp_net100 ) , .X ( n4972 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1773 ( .A ( n4353 ) , .X ( tmp_net101 ) ) ;
SAEDRVT14_OA22_U_0P5 U4619 ( .A1 ( n4370 ) , .A2 ( n401 ) , .B1 ( n4369 ) , 
    .B2 ( i_tv80_core_F_1_ ) , .X ( n3465_CDR1 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1774 ( .A1 ( n6052 ) , .A2 ( tmp_net101 ) , 
    .X ( n3420 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1775 ( .A ( HFSNET_17 ) , .X ( tmp_net102 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8182 ( .A1 ( n5075_CDR1 ) , .A2 ( n5076_CDR1 ) , 
    .A3 ( tmp_net337 ) , .X ( n4956_CDR1 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_1776 ( .A1 ( n3416 ) , .A2 ( HFSNET_14 ) , 
    .B ( tmp_net102 ) , .X ( n4878 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1777 ( .A1 ( n2950 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2960 ) , .X ( n3594 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1778 ( .A1 ( n2948 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2954 ) , .X ( n3598 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4626 ( .D0 ( i_tv80_core_SP_7_ ) , 
    .D1 ( i_tv80_core_RegBusC_7_ ) , .S ( HFSNET_23 ) , .X ( n4719 ) ) ;
SAEDRVT14_OAI21_0P5 U4627 ( .A1 ( n4049 ) , .A2 ( n5621 ) , .B ( n4793 ) , 
    .X ( n4094 ) ) ;
SAEDRVT14_AN4_0P5 U4628 ( .A1 ( n5677 ) , .A2 ( n4924_CDR1 ) , .A3 ( n5660 ) , 
    .A4 ( n5016 ) , .X ( n4815 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4629 ( .D0 ( i_tv80_core_SP_15_ ) , 
    .D1 ( i_tv80_core_RegBusC_15_ ) , .S ( HFSNET_23 ) , .X ( n4902 ) ) ;
SAEDRVT14_EO4_1 U4630 ( .A1 ( di_reg_6__CDR1 ) , .A2 ( di_reg_1__CDR1 ) , 
    .A3 ( n181_CDR1 ) , .A4 ( di_reg_7__CDR1 ) , .X ( n5094_CDR1 ) ) ;
SAEDRVT14_ND2_CDC_1 U4631 ( .A1 ( n2897 ) , .A2 ( n4371 ) , .X ( n4684 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4632 ( .D0 ( i_tv80_core_SP_9_ ) , 
    .D1 ( i_tv80_core_RegBusC_9_ ) , .S ( HFSNET_23 ) , .X ( n4742 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1869 ( .A1 ( n5961 ) , .A2 ( n5962 ) , 
    .B ( tmp_net135 ) , .X ( n5925 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_8226 ( .A1 ( i_tv80_core_RegBusA_5_ ) , 
    .A2 ( n5491 ) , .B ( n5423 ) , .X ( tmp_net363 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4635 ( .D0 ( i_tv80_core_SP_10_ ) , 
    .D1 ( i_tv80_core_RegBusC_10_ ) , .S ( HFSNET_23 ) , .X ( n4765 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_1808 ( .A1 ( n3394 ) , 
    .A2 ( i_tv80_core_i_reg_RegsH_6__0_ ) , .B ( tmp_net113 ) , .X ( n3649 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1809 ( .A1 ( n5592 ) , 
    .A2 ( i_tv80_core_ISet_1_ ) , .B ( n6382 ) , .X ( tmp_net114 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_2_1810 ( .A1 ( n3275 ) , .A2 ( n3431 ) , 
    .A3 ( n5593 ) , .B1 ( n3275 ) , .B2 ( tmp_net114 ) , .X ( n6383 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8000 ( .A1 ( n3388 ) , .A2 ( n6342 ) , 
    .B1 ( n3390 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__3_ ) , .X ( n3623 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8001 ( .A1 ( n3388 ) , .A2 ( n6343 ) , 
    .B1 ( n3390 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__4_ ) , .X ( n3629 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8183 ( .A1 ( n5676_CDR1 ) , .A2 ( n5077_CDR1 ) , 
    .A3 ( tmp_net336 ) , .X ( tmp_net337 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_3_8184 ( .A1 ( n5069_CDR1 ) , .A2 ( n5070_CDR1 ) , 
    .A3 ( n5072_CDR1 ) , .X ( tmp_net336 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_1815 ( .A1 ( i_tv80_core_RegBusA_10_ ) , 
    .A2 ( n5491 ) , .B ( n2802 ) , .X ( n5330 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1816 ( .A ( n2910 ) , .X ( tmp_net117 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4645 ( .D0 ( i_tv80_core_SP_11_ ) , 
    .D1 ( i_tv80_core_RegBusC_11_ ) , .S ( HFSNET_23 ) , .X ( n4776 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4646 ( .D0 ( i_tv80_core_SP_13_ ) , 
    .D1 ( i_tv80_core_RegBusC_13_ ) , .S ( HFSNET_23 ) , .X ( n4896 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1817 ( .A1 ( tmp_net117 ) , .A2 ( n4978 ) , 
    .B ( n4976 ) , .X ( n4900 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_7991 ( .A1 ( tmp_net234 ) , .A2 ( n3111 ) , 
    .X ( n3285 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4649 ( .D0 ( i_tv80_core_SP_12_ ) , 
    .D1 ( i_tv80_core_RegBusC_12_ ) , .S ( HFSNET_23 ) , .X ( n4849 ) ) ;
SAEDRVT14_OAI21_0P5 U4650 ( .A1 ( n5049 ) , .A2 ( n436 ) , .B ( n5050_CDR1 ) , 
    .X ( n5058 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4651 ( .D0 ( i_tv80_core_SP_14_ ) , 
    .D1 ( i_tv80_core_RegBusC_14_ ) , .S ( HFSNET_23 ) , .X ( n4974 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_7992 ( .A1 ( n5333 ) , .A2 ( n5334 ) , 
    .X ( tmp_net234 ) ) ;
SAEDRVT14_OR2_MM_0P5 U4653 ( .A1 ( n5085 ) , .A2 ( n3101 ) , .X ( n5675 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4654 ( .D0 ( i_tv80_core_BusA_5__CDR1 ) , 
    .D1 ( i_tv80_core_BusA_7__CDR1 ) , .S ( n3103 ) , .X ( n3476_CDR1 ) ) ;
SAEDRVT14_EO4_1 U4655 ( .A1 ( i_tv80_core_BusA_5__CDR1 ) , .A2 ( n367_CDR1 ) , 
    .A3 ( n370_CDR1 ) , .A4 ( n371_CDR1 ) , .X ( n5129_CDR1 ) ) ;
SAEDRVT14_EO4_1 U4656 ( .A1 ( n5127 ) , .A2 ( n5126 ) , .A3 ( n5125_CDR1 ) , 
    .A4 ( n5124_CDR1 ) , .X ( n5128_CDR1 ) ) ;
SAEDRVT14_NR4_0P75 U4657 ( .A1 ( n4942 ) , .A2 ( n4941 ) , .A3 ( n4940 ) , 
    .A4 ( n4939 ) , .X ( n3478 ) ) ;
SAEDRVT14_OR3_0P5 U4658 ( .A1 ( n6301 ) , .A2 ( n6303 ) , .A3 ( n575 ) , 
    .X ( n6081 ) ) ;
SAEDRVT14_OA21B_1 U4659 ( .A1 ( n4859 ) , .A2 ( n4858 ) , .B ( n404 ) , 
    .X ( n4867 ) ) ;
SAEDRVT14_MUXI2_0P5 U4660 ( .D0 ( n4339 ) , .D1 ( n110 ) , .S ( n4341 ) , 
    .X ( n2338 ) ) ;
SAEDRVT14_NR4_0P75 U4661 ( .A1 ( n3966 ) , .A2 ( n6124 ) , 
    .A3 ( i_tv80_core_IStatus_1_ ) , .A4 ( n134 ) , .X ( n3480 ) ) ;
SAEDRVT14_AN2_MM_0P5 U4662 ( .A1 ( n3964 ) , .A2 ( n3965 ) , .X ( n3481 ) ) ;
SAEDRVT14_AN4_0P5 U4663 ( .A1 ( n5698 ) , .A2 ( n5205 ) , .A3 ( n5981 ) , 
    .A4 ( n5204 ) , .X ( n5208 ) ) ;
SAEDRVT14_EO4_1 U4664 ( .A1 ( n179_CDR1 ) , .A2 ( n180_CDR1 ) , 
    .A3 ( n184_CDR1 ) , .A4 ( n182_CDR1 ) , .X ( n5093_CDR1 ) ) ;
SAEDRVT14_AN2_0P5 U4665 ( .A1 ( i_tv80_core_BusReq_s ) , .A2 ( reset_n ) , 
    .X ( n3483 ) ) ;
SAEDRVT14_DEL_R2V1_1 HFSBUF_533_1495 ( .A ( HFSNET_16 ) , .X ( HFSNET_15 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8056 ( .A1 ( n3461 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_6__6_ ) , .B ( tmp_net262 ) , 
    .X ( tmp_net263 ) ) ;
SAEDRVT14_AO221_0P5 U4668 ( .A1 ( n3009 ) , .A2 ( n3455 ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_7__2_ ) , .B2 ( n3458 ) , .C ( n3516 ) , 
    .X ( n3515 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1572 ( .A1 ( n3074 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n3070 ) , .X ( n3536 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1573 ( .A1 ( i_tv80_core_i_reg_RegsL_1__6_ ) , 
    .A2 ( n3452 ) , .B1 ( n3378 ) , .B2 ( i_tv80_core_i_reg_RegsL_3__6_ ) , 
    .X ( n3540 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8057 ( .A1 ( i_tv80_core_i_reg_RegsL_4__6_ ) , 
    .A2 ( n3460 ) , .X ( tmp_net262 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1574 ( .A1 ( n6344 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__6_ ) , .X ( n3542 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1599 ( .A1 ( n3135 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2832 ) , .X ( n3548 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8058 ( .A1 ( n3533 ) , .A2 ( n3536 ) , 
    .A3 ( tmp_net265 ) , .X ( i_tv80_core_RegBusC_5_ ) ) ;
SAEDRVT14_AO221_0P5 U4675 ( .A1 ( i_tv80_core_i_reg_RegsL_5__3_ ) , 
    .A2 ( n3455 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__3_ ) , .B2 ( n3458 ) , 
    .C ( n3522 ) , .X ( n3521 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1600 ( .A1 ( n2982 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2986 ) , .X ( n3552 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1601 ( .A1 ( n2984 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2978 ) , .X ( n3554 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8059 ( .A1 ( n3461 ) , .A2 ( n3072 ) , 
    .B ( tmp_net264 ) , .X ( tmp_net265 ) ) ;
SAEDRVT14_AO31_1 ctmTdsLR_1_1602 ( .A1 ( i_tv80_core_RegAddrA_r_1_ ) , 
    .A2 ( n6381 ) , .A3 ( n5646 ) , .B ( n5643 ) , .X ( n3227 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1609 ( .A1 ( n5232_CDR1 ) , .A2 ( n3308 ) , 
    .X ( tmp_net34 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8070 ( .A1 ( n4052 ) , .A2 ( n2994 ) , 
    .X ( tmp_net271 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8071 ( .A ( tmp_net272 ) , .B ( tmp_net27 ) , 
    .X ( n4044 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_1610 ( .A1 ( tmp_net34 ) , .A2 ( n4033 ) , 
    .X ( n4203 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1611 ( .A ( n369 ) , .X ( tmp_net35 ) ) ;
SAEDRVT14_AO221_0P5 U4685 ( .A1 ( i_tv80_core_i_reg_RegsL_4__4_ ) , 
    .A2 ( n3460 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__4_ ) , .B2 ( n3461 ) , 
    .C ( n3530 ) , .X ( n3526 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1612 ( .A1 ( n4638 ) , .A2 ( tmp_net35 ) , 
    .B ( n3472 ) , .X ( n4640 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1613 ( .A1 ( n2884 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2890 ) , .X ( n3558 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_2_8072 ( .A1 ( n4039 ) , .A2 ( n4040 ) , 
    .A3 ( n4078 ) , .B ( n5274 ) , .X ( tmp_net272 ) ) ;
SAEDRVT14_AO221_0P5 U4689 ( .A1 ( n3066 ) , .A2 ( n3455 ) , .B1 ( n2688 ) , 
    .B2 ( n3458 ) , .C ( n3534 ) , .X ( n3533 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1614 ( .A1 ( n2886 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2882 ) , .X ( n3560 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1615 ( .A1 ( n2862 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2860 ) , .X ( n3564 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1616 ( .A1 ( n2856 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2858 ) , .X ( n3566 ) ) ;
SAEDRVT14_AO33_U_0P5 ctmTdsLR_2_1620 ( .A1 ( tmp_net36 ) , .A2 ( n4558 ) , 
    .A3 ( n4864 ) , .B1 ( n2837 ) , .B2 ( n4559 ) , .B3 ( n2944 ) , 
    .X ( n4562 ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_1_8073 ( .A1 ( n3227 ) , .A2 ( tmp_net273 ) , 
    .X ( n2671 ) ) ;
SAEDRVT14_AO221_0P5 U4695 ( .A1 ( i_tv80_core_i_reg_RegsL_5__6_ ) , 
    .A2 ( n3455 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__6_ ) , .B2 ( n3458 ) , 
    .C ( n3540 ) , .X ( n3539 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1621 ( .A1 ( n2844 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2842 ) , .X ( n3570 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1622 ( .A1 ( n2838 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2840 ) , .X ( n3572 ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_2_8074 ( .A1 ( n3348 ) , .A2 ( n5323 ) , 
    .X ( tmp_net273 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1623 ( .A1 ( n2867 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2869 ) , .X ( n3576 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1624 ( .A1 ( n3059 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2873 ) , .X ( n3578 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8089 ( .A1 ( tmp_net282 ) , 
    .A2 ( tmp_net283 ) , .B ( n4702 ) , .X ( n4807 ) ) ;
SAEDRVT14_AO221_0P5 U4702 ( .A1 ( n3131 ) , .A2 ( n3455 ) , .B1 ( n3024 ) , 
    .B2 ( n3458 ) , .C ( n3546 ) , .X ( n3545 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1625 ( .A1 ( n3093 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n3091 ) , .X ( n3582 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1626 ( .A1 ( n3081 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n3085 ) , .X ( n3584 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8090 ( .A ( n4701 ) , .X ( tmp_net282 ) ) ;
SAEDRVT14_OA21_1 ctmTdsLR_1_1632 ( .A1 ( n4591 ) , .A2 ( n4592 ) , 
    .B ( n4596 ) , .X ( n4600 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1633 ( .A ( n4185 ) , .X ( tmp_net39 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8103 ( .A1 ( n4721 ) , .A2 ( tmp_net291 ) , 
    .X ( tmp_net58 ) ) ;
SAEDRVT14_AO221_0P5 U4709 ( .A1 ( n2988 ) , .A2 ( n3455 ) , .B1 ( n2990 ) , 
    .B2 ( n3458 ) , .C ( n3552 ) , .X ( n3551 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_1634 ( .A1 ( n4068 ) , .A2 ( n2777 ) , 
    .B ( tmp_net39 ) , .X ( n4794 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1635 ( .A ( n5610 ) , .X ( tmp_net40 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8104 ( .A ( n4720 ) , .B ( n4723 ) , 
    .X ( tmp_net291 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1636 ( .A1 ( n6270 ) , .A2 ( tmp_net40 ) , 
    .B ( n2641 ) , .X ( n4195 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8136 ( .A ( n5583 ) , .B ( n5580 ) , 
    .X ( tmp_net310 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8105 ( .A1 ( tmp_net293 ) , .A2 ( n4070 ) , 
    .X ( n4192 ) ) ;
SAEDRVT14_AO221_0P5 U4716 ( .A1 ( n2892 ) , .A2 ( n3455 ) , .B1 ( n2888 ) , 
    .B2 ( n3458 ) , .C ( n3558 ) , .X ( n3557 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8137 ( .A1 ( n4527 ) , .A2 ( tmp_net311 ) , 
    .X ( n3462 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_1639 ( .A1 ( n3259 ) , .A2 ( n3948 ) , 
    .B ( n6366 ) , .X ( n3949 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8106 ( .A1 ( n4068 ) , .A2 ( n4204 ) , 
    .B ( tmp_net292 ) , .X ( tmp_net293 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1649 ( .A1 ( n4602 ) , .A2 ( tmp_net45 ) , 
    .B ( n4600 ) , .X ( n2728 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1650 ( .A1 ( n2968 ) , .A2 ( n3452 ) , 
    .B1 ( n3378 ) , .B2 ( n2970 ) , .X ( n3588 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_3_8107 ( .A ( n5173 ) , .B ( n4212 ) , 
    .X ( tmp_net292 ) ) ;
SAEDRVT14_AO221_0P5 U4723 ( .A1 ( n2823 ) , .A2 ( n3455 ) , .B1 ( n2864 ) , 
    .B2 ( n3458 ) , .C ( n3564 ) , .X ( n3563 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1651 ( .A1 ( n2931 ) , .A2 ( n3457 ) , 
    .B1 ( n3456 ) , .B2 ( n2964 ) , .X ( n3590 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1659 ( .A1 ( i_tv80_core_BusA_1_ ) , 
    .A2 ( n4520 ) , .X ( tmp_net49 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_8108 ( .A1 ( HFSNET_20 ) , .A2 ( n3771 ) , 
    .B ( tmp_net295 ) , .X ( n3767 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1660 ( .A1 ( n4518 ) , .A2 ( tmp_net49 ) , 
    .X ( n4523 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1661 ( .A ( n6029 ) , .X ( tmp_net50 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8129 ( .A1 ( n3581 ) , .A2 ( n3584 ) , 
    .A3 ( tmp_net307 ) , .X ( i_tv80_core_RegBusC_13_ ) ) ;
SAEDRVT14_AO221_0P5 U4730 ( .A1 ( n2826 ) , .A2 ( n3455 ) , .B1 ( n2846 ) , 
    .B2 ( n3458 ) , .C ( n3570 ) , .X ( n3569 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_1662 ( .A1 ( n3309 ) , .A2 ( n6003 ) , 
    .B ( tmp_net50 ) , .X ( n5630 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1663 ( .A ( n6382 ) , .X ( tmp_net51 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8130 ( .A1 ( n3461 ) , 
    .A2 ( i_tv80_core_i_reg_RegsH_6__5_ ) , .B ( tmp_net306 ) , 
    .X ( tmp_net307 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1664 ( .A1 ( n4174 ) , 
    .A2 ( i_tv80_core_ISet_1_ ) , .B ( tmp_net51 ) , .X ( n6105 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1665 ( .A ( n5832 ) , .X ( tmp_net52 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8138 ( .A1 ( n4529 ) , .A2 ( n4528 ) , 
    .X ( tmp_net311 ) ) ;
SAEDRVT14_AO221_0P5 U4737 ( .A1 ( n3063 ) , .A2 ( n3455 ) , .B1 ( n3061 ) , 
    .B2 ( n3458 ) , .C ( n3576 ) , .X ( n3575 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_1666 ( .A1 ( n3029 ) , .A2 ( di_reg_6__CDR1 ) , 
    .B ( tmp_net52 ) , .X ( n5843 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1667 ( .A1 ( n4677 ) , 
    .A2 ( i_tv80_core_BusA_6__CDR1 ) , .B ( n4678 ) , .X ( tmp_net53 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8139 ( .A1 ( n3033 ) , .A2 ( tmp_net312 ) , 
    .X ( n3376 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8185 ( .A1 ( n3593 ) , .A2 ( n3598 ) , 
    .A3 ( tmp_net339 ) , .X ( i_tv80_core_RegBusC_15_ ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_8109 ( .A1 ( n3774 ) , .A2 ( n3840 ) , 
    .A3 ( tmp_net294 ) , .X ( tmp_net295 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8140 ( .A ( n4742 ) , .X ( tmp_net312 ) ) ;
SAEDRVT14_AO221_0P5 U4744 ( .A1 ( n3089 ) , .A2 ( n3455 ) , .B1 ( n3087 ) , 
    .B2 ( n3458 ) , .C ( n3582 ) , .X ( n3581 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_3_8110 ( .A ( n2754 ) , .X ( tmp_net294 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1671 ( .A1 ( n4572 ) , .A2 ( n4571 ) , 
    .B ( n4569 ) , .X ( tmp_net55 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8141 ( .A1 ( n3033 ) , .A2 ( tmp_net313 ) , 
    .X ( n3027 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1672 ( .A1 ( n2837 ) , .A2 ( n4574 ) , 
    .X ( tmp_net56 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_3_1673 ( .A1 ( tmp_net55 ) , 
    .A2 ( tmp_net56 ) , .X ( n4577 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_8167 ( .A ( n4839 ) , .X ( tmp_net327 ) ) ;
SAEDRVT14_AO221_0P5 U4751 ( .A1 ( n2759 ) , .A2 ( n3455 ) , .B1 ( n2755 ) , 
    .B2 ( n3458 ) , .C ( n3588 ) , .X ( n3587 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8131 ( .A1 ( n3083 ) , .A2 ( n3460 ) , 
    .X ( tmp_net306 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8132 ( .A1 ( n3575 ) , .A2 ( n3578 ) , 
    .A3 ( tmp_net309 ) , .X ( i_tv80_core_RegBusC_12_ ) ) ;
SAEDRVT14_OA22_U_0P5 ctmTdsLR_1_8168 ( .A1 ( n3383 ) , .A2 ( n4801 ) , 
    .B1 ( tmp_net329 ) , .B2 ( n371_CDR1 ) , .X ( n3382 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_3_1676 ( .A1 ( n3033 ) , .A2 ( n4725 ) , 
    .B ( tmp_net58 ) , .X ( n4732 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1692 ( .A1 ( n4572 ) , .A2 ( tmp_net63 ) , 
    .X ( n4421 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8193 ( .A1 ( n6099 ) , .A2 ( tmp_net343 ) , 
    .X ( tmp_net344 ) ) ;
SAEDRVT14_AO221_0P5 U4758 ( .A1 ( n2956 ) , .A2 ( n3455 ) , .B1 ( n2958 ) , 
    .B2 ( n3458 ) , .C ( n3594 ) , .X ( n3593 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1794 ( .A ( i_tv80_core_RegBusA_12_ ) , 
    .B ( HFSNET_11 ) , .X ( n5371 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1795 ( .A1 ( n2975 ) , .A2 ( n5524 ) , 
    .B ( HFSNET_12 ) , .X ( n5333 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8194 ( .A ( n6098 ) , .X ( tmp_net343 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1796 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__2_ ) , .B1 ( n3299 ) , .B2 ( n3011 ) , 
    .X ( n3615 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8195 ( .A1 ( tmp_net345 ) , 
    .A2 ( HFSNET_11 ) , .X ( n3358 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7993 ( .A1 ( n3388 ) , .A2 ( n6344 ) , 
    .B1 ( n3390 ) , .B2 ( i_tv80_core_i_reg_RegsL_2__6_ ) , .X ( n3641 ) ) ;
SAEDRVT14_INV_S_0P5 U4765 ( .A ( i_tv80_core_i_reg_N22 ) , .X ( n3596 ) ) ;
SAEDRVT14_OR2_0P5 U4766 ( .A1 ( n3601 ) , .A2 ( n3602 ) , 
    .X ( i_tv80_core_RegBusB_0_ ) ) ;
SAEDRVT14_AO221_0P5 U4767 ( .A1 ( i_tv80_core_i_reg_RegsL_5__0_ ) , 
    .A2 ( gre_net_563 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__0_ ) , 
    .B2 ( n3396 ) , .C ( n3603 ) , .X ( n3602 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_1845 ( .A1 ( tmp_net124 ) , .A2 ( n5349 ) , 
    .X ( tmp_net125 ) ) ;
SAEDRVT14_OA21_MM_1 ctmTdsLR_3_1846 ( .A1 ( n5351 ) , .A2 ( tmp_net125 ) , 
    .B ( n3406 ) , .X ( n3470 ) ) ;
SAEDRVT14_AO221_0P5 U4770 ( .A1 ( i_tv80_core_i_reg_RegsL_4__0_ ) , 
    .A2 ( n3389 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__0_ ) , .B2 ( n3394 ) , 
    .C ( n3605 ) , .X ( n3601 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8334 ( .A1 ( tmp_net432 ) , 
    .A2 ( i_tv80_core_RegBusA_15_ ) , .X ( n2895_CDR1 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8007 ( .A1 ( n4780 ) , .A2 ( n4847 ) , 
    .B ( tmp_net129 ) , .X ( tmp_net236 ) ) ;
SAEDRVT14_OR2_0P5 U4773 ( .A1 ( n3607 ) , .A2 ( n3608 ) , 
    .X ( i_tv80_core_RegBusB_1_ ) ) ;
SAEDRVT14_AO221_0P5 U4774 ( .A1 ( i_tv80_core_i_reg_RegsL_5__1_ ) , 
    .A2 ( gre_net_563 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__1_ ) , 
    .B2 ( n3396 ) , .C ( n3609 ) , .X ( n3608 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1847 ( .A ( n4113 ) , .X ( tmp_net126 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1848 ( .A1 ( n4109 ) , .A2 ( tmp_net126 ) , 
    .X ( n3993 ) ) ;
SAEDRVT14_AO221_0P5 U4777 ( .A1 ( i_tv80_core_i_reg_RegsL_4__1_ ) , 
    .A2 ( n3389 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__1_ ) , .B2 ( n3394 ) , 
    .C ( n3611 ) , .X ( n3607 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8010 ( .A1 ( n2910 ) , .A2 ( tmp_net238 ) , 
    .B ( tmp_net239 ) , .X ( n5920 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_8011 ( .A1 ( n4897 ) , .A2 ( n4786 ) , 
    .X ( tmp_net238 ) ) ;
SAEDRVT14_OR2_0P5 U4780 ( .A1 ( n3613 ) , .A2 ( n3614 ) , 
    .X ( i_tv80_core_RegBusB_2_ ) ) ;
SAEDRVT14_AO221_0P5 U4781 ( .A1 ( n3009 ) , .A2 ( gre_net_563 ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_7__2_ ) , .B2 ( n3396 ) , .C ( n3615 ) , 
    .X ( n3614 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1818 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__0_ ) , .B1 ( n3299 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_3__0_ ) , .X ( n3603 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1819 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__1_ ) , .B1 ( n3299 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_3__1_ ) , .X ( n3609 ) ) ;
SAEDRVT14_AO221_0P5 U4784 ( .A1 ( n3019 ) , .A2 ( n3389 ) , .B1 ( n3013 ) , 
    .B2 ( n3394 ) , .C ( n3617 ) , .X ( n3613 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_3_8012 ( .A1 ( n4972 ) , .A2 ( n4786 ) , 
    .A3 ( n4978 ) , .B ( tmp_net137 ) , .X ( tmp_net239 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_4_8013 ( .A1 ( n4897 ) , .A2 ( n4786 ) , 
    .B ( tmp_net236 ) , .X ( tmp_net137 ) ) ;
SAEDRVT14_OR2_0P5 U4787 ( .A1 ( n3619 ) , .A2 ( n3620 ) , 
    .X ( i_tv80_core_RegBusB_3_ ) ) ;
SAEDRVT14_AO221_0P5 U4788 ( .A1 ( i_tv80_core_i_reg_RegsL_5__3_ ) , 
    .A2 ( gre_net_563 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__3_ ) , 
    .B2 ( n3396 ) , .C ( n3621 ) , .X ( n3620 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1849 ( .A ( n4397 ) , .X ( tmp_net127 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1850 ( .A1 ( n4398 ) , .A2 ( tmp_net127 ) , 
    .B ( reset_n ) , .X ( n4338 ) ) ;
SAEDRVT14_AO221_0P5 U4791 ( .A1 ( i_tv80_core_i_reg_RegsL_4__3_ ) , 
    .A2 ( n3389 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__3_ ) , .B2 ( n3394 ) , 
    .C ( n3623 ) , .X ( n3619 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8014 ( .A1 ( n3337 ) , .A2 ( n4475 ) , 
    .B ( tmp_net240 ) , .X ( n4500 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8015 ( .A ( n4478 ) , .X ( tmp_net240 ) ) ;
SAEDRVT14_OR2_0P5 U4794 ( .A1 ( n3625 ) , .A2 ( n3626 ) , 
    .X ( i_tv80_core_RegBusB_4_ ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8252 ( .A ( n5767 ) , .X ( tmp_net381 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1851 ( .A ( n5181 ) , .B ( n5182 ) , 
    .X ( n5187 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1852 ( .A ( n2689 ) , .X ( tmp_net128 ) ) ;
SAEDRVT14_AO221_0P5 U4798 ( .A1 ( i_tv80_core_i_reg_RegsL_4__4_ ) , 
    .A2 ( n3389 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__4_ ) , .B2 ( n3394 ) , 
    .C ( n3629 ) , .X ( n3625 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8022 ( .A1 ( n6180 ) , .A2 ( n6179 ) , 
    .B ( n414 ) , .X ( n6147 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8023 ( .A1 ( n6180 ) , .A2 ( n6179 ) , 
    .B ( n6115 ) , .X ( n6116 ) ) ;
SAEDRVT14_OR2_0P5 U4801 ( .A1 ( n3631 ) , .A2 ( n3632 ) , 
    .X ( i_tv80_core_RegBusB_5_ ) ) ;
SAEDRVT14_AO221_0P5 U4802 ( .A1 ( n3066 ) , .A2 ( gre_net_563 ) , 
    .B1 ( n2688 ) , .B2 ( n3396 ) , .C ( n3633 ) , .X ( n3632 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1853 ( .A1 ( n5777 ) , .A2 ( tmp_net128 ) , 
    .B ( n5775 ) , .X ( n5778 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_3_2013 ( .A1 ( n2623 ) , .A2 ( n5973 ) , 
    .A3 ( n6364 ) , .B1 ( i_tv80_core_PC_14_ ) , .B2 ( n5942 ) , 
    .X ( tmp_net197 ) ) ;
SAEDRVT14_AO221_0P5 U4805 ( .A1 ( n3076 ) , .A2 ( n3389 ) , .B1 ( n3072 ) , 
    .B2 ( n3394 ) , .C ( n3635 ) , .X ( n3631 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8024 ( .A1 ( n3040 ) , .A2 ( n6179 ) , 
    .B ( n418 ) , .X ( n6181 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8025 ( .A1 ( n6180 ) , .A2 ( n6179 ) , 
    .B ( n415 ) , .X ( n6154 ) ) ;
SAEDRVT14_OR2_0P5 U4808 ( .A1 ( n3637 ) , .A2 ( n3638 ) , 
    .X ( i_tv80_core_RegBusB_6_ ) ) ;
SAEDRVT14_AO221_0P5 U4809 ( .A1 ( i_tv80_core_i_reg_RegsL_5__6_ ) , 
    .A2 ( gre_net_563 ) , .B1 ( i_tv80_core_i_reg_RegsL_7__6_ ) , 
    .B2 ( n3396 ) , .C ( n3639 ) , .X ( n3638 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1855 ( .A1 ( n2991 ) , .A2 ( n4132 ) , 
    .B1 ( n5176 ) , .B2 ( n2777 ) , .X ( n4136 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1930 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_7_ ) , .B ( n5446 ) , .X ( tmp_net159 ) ) ;
SAEDRVT14_AO221_0P5 U4812 ( .A1 ( i_tv80_core_i_reg_RegsL_4__6_ ) , 
    .A2 ( n3389 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__6_ ) , .B2 ( n3394 ) , 
    .C ( n3641 ) , .X ( n3637 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8002 ( .A1 ( n3388 ) , .A2 ( n3074 ) , 
    .B1 ( n3390 ) , .B2 ( n3070 ) , .X ( n3635 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8003 ( .A1 ( n3388 ) , .A2 ( n3135 ) , 
    .B1 ( n3390 ) , .B2 ( n2832 ) , .X ( n3647 ) ) ;
SAEDRVT14_OR2_0P5 U4815 ( .A1 ( n3643 ) , .A2 ( n3644 ) , 
    .X ( i_tv80_core_RegBusB_7_ ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8253 ( .A1 ( tmp_net382 ) , .A2 ( n5512 ) , 
    .X ( n2877 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1871 ( .A1 ( n3459 ) , .A2 ( n3402 ) , 
    .A3 ( n3471 ) , .X ( tmp_net136 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1872 ( .A1 ( tmp_net136 ) , .A2 ( n5437 ) , 
    .B ( n5359 ) , .X ( n5361 ) ) ;
SAEDRVT14_AO221_0P5 U4819 ( .A1 ( n2830 ) , .A2 ( n3389 ) , .B1 ( n3133 ) , 
    .B2 ( n3394 ) , .C ( n3647 ) , .X ( n3643 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_3_8031 ( .A1 ( n4456 ) , 
    .A2 ( i_tv80_core_IR_5_ ) , .A3 ( n3103 ) , .X ( tmp_net246 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8033 ( .A ( n3431 ) , .X ( tmp_net248 ) ) ;
SAEDRVT14_OR2_0P5 U4822 ( .A1 ( n3663 ) , .A2 ( n3664 ) , 
    .X ( i_tv80_core_RegBusB_9_ ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8196 ( .A ( i_tv80_core_RegBusA_10_ ) , 
    .X ( tmp_net345 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1820 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__3_ ) , .B1 ( n3299 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_3__3_ ) , .X ( n3621 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8254 ( .A ( n2683 ) , .X ( tmp_net382 ) ) ;
SAEDRVT14_AO221_0P5 U4826 ( .A1 ( n2880 ) , .A2 ( n3389 ) , 
    .B1 ( i_tv80_core_i_reg_RegsH_6__1_ ) , .B2 ( n3394 ) , .C ( n3667 ) , 
    .X ( n3663 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_7994 ( .A1 ( n3388 ) , .A2 ( n2948 ) , 
    .B1 ( n3390 ) , .B2 ( n2954 ) , .X ( n3711 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8004 ( .A1 ( n3388 ) , .A2 ( n3059 ) , 
    .B1 ( n3390 ) , .B2 ( n2873 ) , .X ( n3685 ) ) ;
SAEDRVT14_OR2_0P5 U4829 ( .A1 ( n3669 ) , .A2 ( n3670 ) , 
    .X ( i_tv80_core_RegBusB_10_ ) ) ;
SAEDRVT14_AO221_0P5 U4830 ( .A1 ( n2823 ) , .A2 ( gre_net_563 ) , 
    .B1 ( n2864 ) , .B2 ( n3396 ) , .C ( n3671 ) , .X ( n3670 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1822 ( .A1 ( n3385 ) , .A2 ( n3065 ) , 
    .B1 ( n3299 ) , .B2 ( n3068 ) , .X ( n3633 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1823 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__6_ ) , .B1 ( n3299 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_3__6_ ) , .X ( n3639 ) ) ;
SAEDRVT14_AO221_0P5 U4833 ( .A1 ( n2825 ) , .A2 ( n3389 ) , .B1 ( n2821 ) , 
    .B2 ( n3394 ) , .C ( n3673 ) , .X ( n3669 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_8005 ( .A1 ( n3388 ) , .A2 ( n3081 ) , 
    .B1 ( n3390 ) , .B2 ( n3085 ) , .X ( n3691 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_8034 ( .A1 ( n6369 ) , .A2 ( n3932 ) , 
    .B ( n4463 ) , .X ( tmp_net249 ) ) ;
SAEDRVT14_OR2_0P5 U4836 ( .A1 ( n3675 ) , .A2 ( n3676 ) , 
    .X ( i_tv80_core_RegBusB_11_ ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_1_8227 ( .A1 ( n5678 ) , .A2 ( tmp_net365 ) , 
    .A3 ( i_tv80_core_F_1_ ) , .X ( n5017 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8255 ( .A1 ( n3274 ) , .A2 ( n3260 ) , 
    .B ( tmp_net384 ) , .X ( n5419 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8256 ( .A1 ( n5414 ) , .A2 ( tmp_net383 ) , 
    .B ( n5417 ) , .X ( tmp_net384 ) ) ;
SAEDRVT14_AO221_0P5 U4840 ( .A1 ( n2828 ) , .A2 ( n3389 ) , .B1 ( n2834 ) , 
    .B2 ( n3394 ) , .C ( n3679 ) , .X ( n3675 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8036 ( .A ( n3347 ) , .X ( tmp_net250 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8037 ( .A1 ( tmp_net251 ) , 
    .A2 ( tmp_net252 ) , .B ( n5298 ) , .X ( n3427 ) ) ;
SAEDRVT14_OR2_0P5 U4843 ( .A1 ( n3681 ) , .A2 ( n3682 ) , 
    .X ( i_tv80_core_RegBusB_12_ ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8257 ( .A1 ( n5418 ) , .A2 ( n5525 ) , 
    .X ( tmp_net383 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1883 ( .A1 ( n5468 ) , .A2 ( n5467_CDR1 ) , 
    .X ( tmp_net141 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1884 ( .A1 ( n2935 ) , .A2 ( n5456 ) , 
    .X ( tmp_net142 ) ) ;
SAEDRVT14_AO221_0P5 U4847 ( .A1 ( n2871 ) , .A2 ( n3389 ) , .B1 ( n2801 ) , 
    .B2 ( n3394 ) , .C ( n3685 ) , .X ( n3681 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8038 ( .A1 ( n3346 ) , .A2 ( n5297 ) , 
    .X ( tmp_net251 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8039 ( .A1 ( n2918 ) , .A2 ( n6322 ) , 
    .X ( tmp_net252 ) ) ;
SAEDRVT14_OR2_0P5 U4850 ( .A1 ( n3687 ) , .A2 ( n3688 ) , 
    .X ( i_tv80_core_RegBusB_13_ ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8258 ( .A1 ( tmp_net386 ) , .A2 ( n2608 ) , 
    .X ( n5866 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_2014 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_14_ ) , .B ( HFSNET_16 ) , .X ( tmp_net198 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1886 ( .A ( n4878 ) , .X ( tmp_net143 ) ) ;
SAEDRVT14_AO221_0P5 U4854 ( .A1 ( n3083 ) , .A2 ( n3389 ) , 
    .B1 ( i_tv80_core_i_reg_RegsH_6__5_ ) , .B2 ( n3394 ) , .C ( n3691 ) , 
    .X ( n3687 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8041 ( .A1 ( n3344 ) , .A2 ( tmp_net253 ) , 
    .X ( tmp_net254 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8042 ( .A1 ( n3194 ) , .A2 ( n3195 ) , 
    .X ( tmp_net253 ) ) ;
SAEDRVT14_OR2_0P5 U4857 ( .A1 ( n3705 ) , .A2 ( n3706 ) , 
    .X ( i_tv80_core_RegBusB_15_ ) ) ;
SAEDRVT14_AO221_0P5 U4858 ( .A1 ( n2956 ) , .A2 ( gre_net_563 ) , 
    .B1 ( n2958 ) , .B2 ( n3396 ) , .C ( n3707 ) , .X ( n3706 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1887 ( .A1 ( n4879 ) , .A2 ( HFSNET_14 ) , 
    .B ( tmp_net143 ) , .X ( n5693 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1888 ( .A ( n4359 ) , .X ( tmp_net144 ) ) ;
SAEDRVT14_INV_S_0P5 U4861 ( .A ( i_tv80_core_i_reg_N17 ) , .X ( n3710 ) ) ;
SAEDRVT14_AO221_0P5 U4862 ( .A1 ( n2952 ) , .A2 ( n3389 ) , .B1 ( n3107 ) , 
    .B2 ( n3394 ) , .C ( n3711 ) , .X ( n3705 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8043 ( .A1 ( tmp_net255 ) , .A2 ( n4057 ) , 
    .X ( n3283 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8044 ( .A1 ( n2909 ) , .A2 ( n5162 ) , 
    .X ( tmp_net255 ) ) ;
SAEDRVT14_INV_S_0P5 U4865 ( .A ( i_tv80_core_i_reg_N18 ) , .X ( n3713 ) ) ;
SAEDRVT14_INV_S_0P5 U4866 ( .A ( i_tv80_core_i_reg_N19 ) , .X ( n3709 ) ) ;
SAEDRVT14_AO33_U_0P5 U4867 ( .A1 ( HFSNET_19 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__2_ ) , .A3 ( n3042 ) , .B1 ( n6374 ) , 
    .B2 ( n6367 ) , .B3 ( n3017 ) , .X ( n3733 ) ) ;
SAEDRVT14_AO33_U_0P5 U4868 ( .A1 ( HFSNET_19 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__4_ ) , .A3 ( n3042 ) , .B1 ( n6374 ) , 
    .B2 ( n6367 ) , .B3 ( i_tv80_core_i_reg_RegsL_2__4_ ) , .X ( n3747 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_1779 ( .A1 ( n3759 ) , .A2 ( n3760 ) , 
    .B ( n3761 ) , .X ( tmp_net103 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_8045 ( .A1 ( n5289 ) , .A2 ( tmp_net256 ) , 
    .X ( n5646 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1780 ( .A1 ( n3758 ) , .A2 ( n3757 ) , 
    .B ( tmp_net103 ) , .X ( n5399 ) ) ;
SAEDRVT14_AO33_U_0P5 U4872 ( .A1 ( n2846 ) , .A2 ( HFSNET_20 ) , 
    .A3 ( n3812 ) , .B1 ( n2826 ) , .B2 ( HFSNET_20 ) , .B3 ( n2805 ) , 
    .X ( n3807 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1798 ( .A1 ( n3385 ) , .A2 ( n2862 ) , 
    .B1 ( n3299 ) , .B2 ( n2860 ) , .X ( n3671 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_8228 ( .A1 ( n5016 ) , .A2 ( n5677 ) , 
    .X ( tmp_net365 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8259 ( .A1 ( n3033 ) , .A2 ( tmp_net385 ) , 
    .X ( tmp_net386 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1827 ( .A1 ( n3385 ) , .A2 ( n2950 ) , 
    .B1 ( n3299 ) , .B2 ( n2960 ) , .X ( n3707 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1889 ( .A1 ( n4399 ) , .A2 ( tmp_net144 ) , 
    .X ( n4361 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1890 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_8_ ) , .B ( n5523 ) , .X ( tmp_net145 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1891 ( .A1 ( i_tv80_core_RegBusB_8_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net145 ) , .X ( tmp_net146 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_3_1892 ( .A1 ( n5442 ) , .A2 ( n5441 ) , 
    .A3 ( tmp_net146 ) , .X ( n5443 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1893 ( .A1 ( n3285 ) , .A2 ( n5341 ) , 
    .X ( tmp_net147 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1725 ( .A ( n5749 ) , .X ( tmp_net79 ) ) ;
SAEDRVT14_OAI21_0P5 U4883 ( .A1 ( n6344 ) , .A2 ( n3840 ) , .B ( n6367 ) , 
    .X ( n3764 ) ) ;
SAEDRVT14_AN3_0P5 U4884 ( .A1 ( n6367 ) , .A2 ( n3042 ) , .A3 ( n3015 ) , 
    .X ( n3731 ) ) ;
SAEDRVT14_AOI21_0P75 U4885 ( .A1 ( n3775 ) , .A2 ( n3776 ) , .B ( n6367 ) , 
    .X ( n3771 ) ) ;
SAEDRVT14_ND2_ECO_1 U4886 ( .A1 ( n2830 ) , .A2 ( n3042 ) , .X ( n3784 ) ) ;
SAEDRVT14_ND2_ECO_1 U4887 ( .A1 ( n3131 ) , .A2 ( n3042 ) , .X ( n3776 ) ) ;
SAEDRVT14_OAI21_0P5 U4890 ( .A1 ( n3042 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_2__6_ ) , .B ( n2850 ) , .X ( n3763 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8046 ( .A ( n5305 ) , .X ( tmp_net256 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8047 ( .A1 ( n3521 ) , .A2 ( n3524 ) , 
    .A3 ( tmp_net258 ) , .X ( i_tv80_core_RegBusC_3_ ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8048 ( .A1 ( n3460 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_4__3_ ) , .B ( tmp_net257 ) , 
    .X ( tmp_net258 ) ) ;
SAEDRVT14_AOI21_0P75 U4894 ( .A1 ( i_tv80_core_SP_0_ ) , .A2 ( n3854 ) , 
    .B ( n3855 ) , .X ( n3852 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8049 ( .A1 ( i_tv80_core_i_reg_RegsL_6__3_ ) , 
    .A2 ( n3461 ) , .X ( tmp_net257 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2016 ( .A ( HFSNET_14 ) , .X ( tmp_net199 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_2_2017 ( .A1 ( reset_n ) , .A2 ( n5241 ) , 
    .A3 ( n5238 ) , .B1 ( reset_n ) , .B2 ( tmp_net199 ) , .X ( n3334 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2018 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_1_ ) , .B ( n5519 ) , .X ( tmp_net200 ) ) ;
SAEDRVT14_AO221_0P5 U4899 ( .A1 ( i_tv80_core_SP_2_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_2_ ) , .B2 ( n3302 ) , .C ( n3865 ) , .X ( n3864 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_2019 ( .A1 ( i_tv80_core_RegBusB_1_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net200 ) , .X ( tmp_net201 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_2020 ( .A1 ( n5520_CDR1 ) , .A2 ( n5525 ) , 
    .B ( tmp_net201 ) , .X ( n5567 ) ) ;
SAEDRVT14_AO221_0P5 U4902 ( .A1 ( i_tv80_core_N1209 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_10_ ) , .B2 ( n3304 ) , .C ( n3867 ) , .X ( n3863 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8335 ( .A ( n5491 ) , .X ( tmp_net432 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8050 ( .A1 ( n3515 ) , .A2 ( n3518 ) , 
    .A3 ( tmp_net260 ) , .X ( i_tv80_core_RegBusC_2_ ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_3_2023 ( .A1 ( n3359 ) , .A2 ( n3270 ) , 
    .B1 ( n3359 ) , .B2 ( n2798 ) , .C ( tmp_net202 ) , .X ( tmp_net204 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_2024 ( .A1 ( tmp_net203 ) , .A2 ( n5396 ) , 
    .B ( tmp_net204 ) , .X ( n5563 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2042 ( .A ( n3334 ) , .X ( tmp_net216 ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_2_2043 ( .A1 ( tmp_net216 ) , 
    .A2 ( HFSNET_14 ) , .A3 ( n5241 ) , .B1 ( n3334 ) , 
    .B2 ( i_tv80_core_IStatus_1_ ) , .X ( n2409 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2044 ( .A1 ( n2658 ) , 
    .A2 ( i_tv80_core_N1102 ) , .X ( tmp_net217 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2045 ( .A1 ( tmp_net217 ) , .A2 ( n1491 ) , 
    .X ( n2087 ) ) ;
SAEDRVT14_OA22_U_0P5 ctmTdsLR_1_2046 ( .A1 ( n5828 ) , .A2 ( n178 ) , 
    .B1 ( n417 ) , .B2 ( n5814 ) , .X ( tmp_net218 ) ) ;
SAEDRVT14_OR2_0P5 \clk_gate_i_tv80_core_BusB_reg/test_or ( .A1 ( busak_n ) , 
    .A2 ( optlc_net_547 ) , .X ( \clk_gate_i_tv80_core_BusB_reg/net1599 ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 ctmTdsLR_1_2048 ( .A1 ( n6364 ) , .A2 ( n3335 ) , 
    .B1 ( n5945 ) , .B2 ( n178 ) , .X ( tmp_net219 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_2049 ( .A1 ( n5932 ) , .A2 ( n5931 ) , 
    .B ( tmp_net219 ) , .X ( n2355 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8051 ( .A1 ( n3461 ) , .A2 ( n3013 ) , 
    .B ( tmp_net259 ) , .X ( tmp_net260 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8052 ( .A1 ( n3019 ) , .A2 ( n3460 ) , 
    .X ( tmp_net259 ) ) ;
SAEDRVT14_OR2_0P5 U4917 ( .A1 ( n3887 ) , .A2 ( n3888 ) , 
    .X ( i_tv80_core_N1221 ) ) ;
SAEDRVT14_AO221_0P5 U4918 ( .A1 ( i_tv80_core_SP_6_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_6_ ) , .B2 ( n3302 ) , .C ( n3889 ) , .X ( n3888 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8060 ( .A1 ( n3076 ) , .A2 ( n3460 ) , 
    .X ( tmp_net264 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8061 ( .A1 ( n3526 ) , .A2 ( n3528 ) , 
    .A3 ( tmp_net267 ) , .X ( i_tv80_core_RegBusC_4_ ) ) ;
SAEDRVT14_AO221_0P5 U4921 ( .A1 ( i_tv80_core_N1213 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_14_ ) , .B2 ( n3304 ) , .C ( n3891 ) , .X ( n3887 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8062 ( .A1 ( n3455 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_5__4_ ) , .B ( tmp_net266 ) , 
    .X ( tmp_net267 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8063 ( .A1 ( i_tv80_core_i_reg_RegsL_7__4_ ) , 
    .A2 ( n3458 ) , .X ( tmp_net266 ) ) ;
SAEDRVT14_OR2_0P5 U4924 ( .A1 ( n3893 ) , .A2 ( n3894 ) , 
    .X ( i_tv80_core_N1222 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_8064 ( .A1 ( n5646 ) , .A2 ( tmp_net268 ) , 
    .B ( tmp_net269 ) , .X ( n5654 ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_2_8065 ( .A1 ( n6381 ) , 
    .A2 ( i_tv80_core_RegAddrA_r_0_ ) , .X ( tmp_net268 ) ) ;
SAEDRVT14_NR3_0P5 ctmTdsLR_3_8066 ( .A1 ( n5648 ) , .A2 ( n6376 ) , 
    .A3 ( n2659 ) , .X ( tmp_net269 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_8078 ( .A ( n4470 ) , .X ( tmp_net275 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_1894 ( .A ( n5343 ) , .B ( n2674 ) , 
    .X ( tmp_net148 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_3_1895 ( .A1 ( n2681 ) , .A2 ( tmp_net147 ) , 
    .B ( tmp_net148 ) , .X ( n3185 ) ) ;
SAEDRVT14_OAI22_0P5 U4931 ( .A1 ( i_tv80_core_F_6_ ) , .A2 ( n5165 ) , 
    .B1 ( i_tv80_core_F_0_ ) , .B2 ( n5164 ) , .X ( n5167 ) ) ;
SAEDRVT14_OAI22_0P5 U4932 ( .A1 ( n3283 ) , .A2 ( n2774 ) , .B1 ( n3998 ) , 
    .B2 ( n5164 ) , .X ( n5159 ) ) ;
SAEDRVT14_AOI21_0P75 U4933 ( .A1 ( n2675 ) , .A2 ( n5505 ) , .B ( n5434 ) , 
    .X ( n5431 ) ) ;
SAEDRVT14_OR3_0P5 U4934 ( .A1 ( n5489 ) , .A2 ( n5524 ) , .A3 ( n5492 ) , 
    .X ( n5451 ) ) ;
SAEDRVT14_OA22_U_0P5 U4935 ( .A1 ( n4139 ) , .A2 ( n3051 ) , .B1 ( n4119 ) , 
    .B2 ( n4118 ) , .X ( n4120 ) ) ;
SAEDRVT14_OAI22_0P5 U4936 ( .A1 ( n4114 ) , .A2 ( n3051 ) , .B1 ( n4113 ) , 
    .B2 ( n6326 ) , .X ( n4115 ) ) ;
SAEDRVT14_AO32_U_0P5 U4937 ( .A1 ( n5971 ) , .A2 ( i_tv80_core_PC_15_ ) , 
    .A3 ( n5970 ) , .B1 ( n5969 ) , .B2 ( i_tv80_core_RegBusC_15_ ) , 
    .X ( n5978 ) ) ;
SAEDRVT14_OAI22_0P5 U4938 ( .A1 ( n3104 ) , .A2 ( n4313 ) , .B1 ( n5993 ) , 
    .B2 ( n4312 ) , .X ( n4315 ) ) ;
SAEDRVT14_OAI22_0P5 U4939 ( .A1 ( n6304 ) , .A2 ( n2641 ) , .B1 ( n4312 ) , 
    .B2 ( n5725 ) , .X ( n4298 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1693 ( .A1 ( i_tv80_core_i_alu_N185 ) , 
    .A2 ( n4485 ) , .X ( tmp_net64 ) ) ;
SAEDRVT14_NR4_0P75 U4942 ( .A1 ( n3103 ) , .A2 ( n3050 ) , 
    .A3 ( i_tv80_core_F_2_ ) , .A4 ( n5621 ) , .X ( n3913 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1896 ( .A1 ( n4258 ) , .A2 ( n4259 ) , 
    .X ( tmp_net149 ) ) ;
SAEDRVT14_OAI31_0P5 U4945 ( .A1 ( n3255 ) , .A2 ( n3344 ) , .A3 ( n5310 ) , 
    .B ( n5043 ) , .X ( n5349 ) ) ;
SAEDRVT14_AO32_U_0P5 U4947 ( .A1 ( n2991 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .A3 ( n5992_CDR1 ) , .B1 ( n5614 ) , .B2 ( n6306 ) , .X ( n5615 ) ) ;
SAEDRVT14_AO32_U_0P5 U4948 ( .A1 ( n5989 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .A3 ( n2736 ) , .B1 ( n4299 ) , .B2 ( n4298 ) , .X ( n4300 ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_8079 ( .A ( tmp_net277 ) , .X ( n3042 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_1504 ( .A1 ( n3047 ) , .A2 ( n2853 ) , 
    .B1 ( n3046 ) , .B2 ( n2854 ) , .C ( n4169 ) , .X ( n4440 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4953 ( .A1 ( n5274 ) , .A2 ( n4077 ) , .X ( n4197 ) ) ;
SAEDRVT14_INV_S_0P5 U4954 ( .A ( n4197 ) , .X ( n3934 ) ) ;
SAEDRVT14_INV_S_0P5 U4955 ( .A ( n4028 ) , .X ( n4447 ) ) ;
SAEDRVT14_ND2_CDC_1 U4956 ( .A1 ( n4447 ) , .A2 ( n4035 ) , .X ( n4835 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4957 ( .A1 ( n5598 ) , .A2 ( n4835 ) , .X ( n4170 ) ) ;
SAEDRVT14_INV_S_0P5 U4958 ( .A ( n4170 ) , .X ( n4031 ) ) ;
SAEDRVT14_ND2_ECO_1 U4959 ( .A1 ( n4017 ) , .A2 ( n4001 ) , .X ( n5736 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4960 ( .A1 ( n5274 ) , .A2 ( n5736 ) , .X ( n4198 ) ) ;
SAEDRVT14_AOI21_0P75 U4961 ( .A1 ( n3934 ) , .A2 ( n5989 ) , .B ( n3933 ) , 
    .X ( n3936 ) ) ;
SAEDRVT14_INV_S_0P5 U4962 ( .A ( n4439 ) , .X ( n3992 ) ) ;
SAEDRVT14_AO21B_0P5 U4963 ( .A1 ( n2660 ) , .A2 ( n4470 ) , .B ( n6269 ) , 
    .X ( n4221 ) ) ;
SAEDRVT14_INV_S_0P5 U4964 ( .A ( n6268 ) , .X ( n5744 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4966 ( .A1 ( n3992 ) , .A2 ( n3903 ) , .X ( n4246 ) ) ;
SAEDRVT14_INV_S_0P5 U4967 ( .A ( n4246 ) , .X ( n4472 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4968 ( .A1 ( n4472 ) , .A2 ( n2643 ) , .X ( n4218 ) ) ;
SAEDRVT14_INV_0P5 U4969 ( .A ( n4218 ) , .X ( n4066 ) ) ;
SAEDRVT14_AOI21_0P75 U4970 ( .A1 ( n4066 ) , .A2 ( n3431 ) , .B ( n6326 ) , 
    .X ( n3941 ) ) ;
SAEDRVT14_INV_S_0P5 U4971 ( .A ( n4077 ) , .X ( n3939 ) ) ;
SAEDRVT14_OR3_0P5 U4972 ( .A1 ( n3939 ) , .A2 ( n6366 ) , .A3 ( n4119 ) , 
    .X ( n3940 ) ) ;
SAEDRVT14_AOI21_0P75 U4973 ( .A1 ( n3941 ) , .A2 ( n3940 ) , .B ( n6347 ) , 
    .X ( n3942 ) ) ;
SAEDRVT14_EO2_0P5 ctmTdsLR_2_1694 ( .A1 ( n4483 ) , .A2 ( tmp_net64 ) , 
    .X ( n4488 ) ) ;
SAEDRVT14_AOI21_0P75 U4975 ( .A1 ( n4036 ) , .A2 ( n4197 ) , .B ( n575 ) , 
    .X ( n3950 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4976 ( .A1 ( n5737 ) , .A2 ( n4078 ) , .X ( n5990 ) ) ;
SAEDRVT14_INV_S_0P5 U4977 ( .A ( n5990 ) , .X ( n5193_CDR1 ) ) ;
SAEDRVT14_ND2_CDC_1 U4978 ( .A1 ( n4447 ) , .A2 ( n4446 ) , .X ( n4215 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4979 ( .A1 ( n6370 ) , .A2 ( n2643 ) , .X ( n5184 ) ) ;
SAEDRVT14_INV_S_0P5 U4980 ( .A ( n4438 ) , .X ( n3946 ) ) ;
SAEDRVT14_ND2_ECO_1 U4981 ( .A1 ( n6320 ) , .A2 ( n4145 ) , .X ( n4452 ) ) ;
SAEDRVT14_AOI21_0P75 U4982 ( .A1 ( n5186 ) , .A2 ( n4452 ) , 
    .B ( n5721_CDR1 ) , .X ( n3948 ) ) ;
SAEDRVT14_MUX2_U_0P5 U4983 ( .D0 ( n4165 ) , .D1 ( n3952 ) , 
    .S ( tstate_2_ ) , .X ( n3953 ) ) ;
SAEDRVT14_INV_S_0P5 U4984 ( .A ( n6349 ) , .X ( n6322 ) ) ;
SAEDRVT14_INV_S_0P5 U4985 ( .A ( wait_n ) , .X ( n6259 ) ) ;
SAEDRVT14_ND2_ECO_1 U4986 ( .A1 ( n6322 ) , .A2 ( n6259 ) , .X ( n6312 ) ) ;
SAEDRVT14_INV_S_0P5 U4987 ( .A ( i_tv80_core_BusReq_s ) , .X ( n3955 ) ) ;
SAEDRVT14_ND2_ECO_1 U4988 ( .A1 ( n4145 ) , .A2 ( n6320 ) , .X ( n3960 ) ) ;
SAEDRVT14_ND2_CDC_1 U4989 ( .A1 ( n2991 ) , .A2 ( n3960 ) , .X ( n4274 ) ) ;
SAEDRVT14_ND2_CDC_1 U4990 ( .A1 ( n257 ) , .A2 ( tstate_2_ ) , .X ( n4433 ) ) ;
SAEDRVT14_INV_S_0P5 U4991 ( .A ( n4433 ) , .X ( n3956 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8080 ( .A1 ( n3227 ) , .A2 ( n2911 ) , 
    .A3 ( n5323 ) , .X ( tmp_net277 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8086 ( .A1 ( n3545 ) , .A2 ( n3548 ) , 
    .A3 ( tmp_net281 ) , .X ( i_tv80_core_RegBusC_7_ ) ) ;
SAEDRVT14_LDNQ_V1_1 \clk_gate_i_tv80_core_BusAck_reg/latch ( 
    .D ( \clk_gate_i_tv80_core_BusAck_reg/net1599 ) , .G ( MY_CLK ) , 
    .Q ( \clk_gate_i_tv80_core_BusAck_reg/net1602 ) ) ;
SAEDRVT14_AN2_8 \clk_gate_i_tv80_core_BusAck_reg/main_gate ( 
    .A1 ( \clk_gate_i_tv80_core_BusAck_reg/net1602 ) , .A2 ( MY_CLK ) , 
    .X ( net1620 ) ) ;
SAEDRVT14_ND2_MM_0P5 U4996 ( .A1 ( n134 ) , .A2 ( i_tv80_core_IStatus_1_ ) , 
    .X ( n5735 ) ) ;
SAEDRVT14_INV_S_0P5 U4997 ( .A ( n3960 ) , .X ( n5717 ) ) ;
SAEDRVT14_INV_S_0P5 U4998 ( .A ( halt_n ) , .X ( n5227 ) ) ;
SAEDRVT14_OA21_1 ctmTdsLR_2_1518 ( .A1 ( n4076 ) , .A2 ( n3946 ) , 
    .B ( tmp_net4 ) , .X ( n3223 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_8336 ( .A1 ( n5090 ) , .A2 ( n584 ) , 
    .B ( tmp_net434 ) , .X ( n4970 ) ) ;
SAEDRVT14_ND2_ECO_1 U5001 ( .A1 ( wait_n ) , .A2 ( n6322 ) , .X ( n5715 ) ) ;
SAEDRVT14_INV_S_0P5 U5002 ( .A ( n4405 ) , .X ( n5705 ) ) ;
SAEDRVT14_OA31_U_0P5 U5003 ( .A1 ( n6096 ) , .A2 ( n6262 ) , .A3 ( n5719 ) , 
    .B ( reset_n ) , .X ( n3963 ) ) ;
SAEDRVT14_OR3_0P5 U5004 ( .A1 ( n6190 ) , .A2 ( n5715 ) , .A3 ( n5707 ) , 
    .X ( n6092 ) ) ;
SAEDRVT14_INV_S_0P5 U5005 ( .A ( n3965 ) , .X ( n5269 ) ) ;
SAEDRVT14_ND2_ECO_1 U5006 ( .A1 ( HFSNET_14 ) , .A2 ( n5042 ) , .X ( n6124 ) ) ;
SAEDRVT14_ND2_CDC_1 U5007 ( .A1 ( n3965 ) , .A2 ( i_tv80_core_IntCycle ) , 
    .X ( n3966 ) ) ;
SAEDRVT14_AO221_0P5 U5008 ( .A1 ( di_7_ ) , .A2 ( n3481 ) , .B1 ( n3935 ) , 
    .B2 ( n5269 ) , .C ( n3480 ) , .X ( n2452 ) ) ;
SAEDRVT14_AO221_0P5 U5009 ( .A1 ( di_4_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( n3050 ) , .C ( n3480 ) , .X ( n2445 ) ) ;
SAEDRVT14_AO221_0P5 U5010 ( .A1 ( di_5_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( i_tv80_core_IR_5_ ) , .C ( n3480 ) , .X ( n2444 ) ) ;
SAEDRVT14_AO21B_0P5 U5011 ( .A1 ( n2905 ) , .A2 ( n4246 ) , .B ( n4076 ) , 
    .X ( n4071 ) ) ;
SAEDRVT14_AO21B_0P5 U5012 ( .A1 ( n4076 ) , .A2 ( n2946 ) , .B ( n4071 ) , 
    .X ( n3968 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5013 ( .A1 ( n3431 ) , .A2 ( n3968 ) , .X ( n5219 ) ) ;
SAEDRVT14_INV_S_0P5 U5014 ( .A ( n5219 ) , .X ( n4151 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5015 ( .A1 ( n4470 ) , .A2 ( n6370 ) , .X ( n4079 ) ) ;
SAEDRVT14_AO21B_0P5 U5016 ( .A1 ( n4071 ) , .A2 ( n4079 ) , .B ( n3431 ) , 
    .X ( n5243 ) ) ;
SAEDRVT14_INV_S_0P5 U5017 ( .A ( n5243 ) , .X ( n5221 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5018 ( .A1 ( n4151 ) , .A2 ( n5221 ) , .X ( n3970 ) ) ;
SAEDRVT14_OR3_0P5 U5019 ( .A1 ( n3970 ) , .A2 ( n5707 ) , .A3 ( n5621 ) , 
    .X ( n3969 ) ) ;
SAEDRVT14_INV_S_0P5 U5020 ( .A ( n3970 ) , .X ( n5242 ) ) ;
SAEDRVT14_INV_S_0P5 U5021 ( .A ( n6092 ) , .X ( n5718 ) ) ;
SAEDRVT14_AO21B_0P5 U5022 ( .A1 ( n5718 ) , .A2 ( n5243 ) , .B ( reset_n ) , 
    .X ( n3972 ) ) ;
SAEDRVT14_OR2_0P5 \clk_gate_i_tv80_core_BusAck_reg/test_or ( 
    .A1 ( i_tv80_core_N1440 ) , .A2 ( optlc_net_547 ) , 
    .X ( \clk_gate_i_tv80_core_BusAck_reg/net1599 ) ) ;
SAEDRVT14_OR3_0P5 U5024 ( .A1 ( n3970 ) , .A2 ( n5707 ) , 
    .A3 ( i_tv80_core_IR_5_ ) , .X ( n3971 ) ) ;
SAEDRVT14_BUF_S_1P5 gre_mt_inst_8517 ( .A ( n2850 ) , .X ( gre_net_556 ) ) ;
SAEDRVT14_AOI21_0P75 U5026 ( .A1 ( HFSNET_14 ) , .A2 ( n6347 ) , 
    .B ( n3972 ) , .X ( n3973 ) ) ;
SAEDRVT14_ADDH_0P5 \i_tv80_core_add_380/U1_1_5 ( .A ( n6358 ) , 
    .B ( \i_tv80_core_add_380/carry_5_ ) , 
    .CO ( \i_tv80_core_add_380/carry_6_ ) , .S ( i_tv80_core_N158 ) ) ;
SAEDRVT14_AO221_0P5 U5028 ( .A1 ( di_2_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( i_tv80_core_IR_2_ ) , .C ( n3480 ) , .X ( n2447 ) ) ;
SAEDRVT14_AO221_0P5 U5029 ( .A1 ( di_1_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( i_tv80_core_IR_1_ ) , .C ( n3480 ) , .X ( n2448 ) ) ;
SAEDRVT14_INV_S_0P5 U5030 ( .A ( n4937 ) , .X ( n6031 ) ) ;
SAEDRVT14_OR3_0P5 U5031 ( .A1 ( n6031 ) , .A2 ( n6304 ) , .A3 ( n4835 ) , 
    .X ( n4318 ) ) ;
SAEDRVT14_INV_0P5 U5032 ( .A ( n4318 ) , .X ( n3977 ) ) ;
SAEDRVT14_INV_S_0P5 U5033 ( .A ( n3978 ) , .X ( n4050 ) ) ;
SAEDRVT14_ND2_ECO_1 U5034 ( .A1 ( n4470 ) , .A2 ( n4035 ) , .X ( n4316 ) ) ;
SAEDRVT14_ND2_ECO_1 U5035 ( .A1 ( mcycle_0_ ) , .A2 ( n2853 ) , .X ( n4060 ) ) ;
SAEDRVT14_INV_S_0P5 U5036 ( .A ( n4060 ) , .X ( n4216 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5037 ( .A1 ( n4216 ) , .A2 ( n3046 ) , .X ( n4223 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5038 ( .A1 ( n4223 ) , .A2 ( n6301 ) , .X ( n6293 ) ) ;
SAEDRVT14_ND2_CDC_1 U5039 ( .A1 ( n4447 ) , .A2 ( n3448 ) , .X ( n4065 ) ) ;
SAEDRVT14_INV_S_0P5 U5040 ( .A ( n4065 ) , .X ( n5170 ) ) ;
SAEDRVT14_OR3_0P5 U5041 ( .A1 ( n4039 ) , .A2 ( n2643 ) , .A3 ( n4050 ) , 
    .X ( n3980 ) ) ;
SAEDRVT14_OR4_1 U5042 ( .A1 ( n3980 ) , .A2 ( n5736 ) , .A3 ( n4077 ) , 
    .A4 ( n4078 ) , .X ( n3983 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5043 ( .A1 ( n5712 ) , .A2 ( n4075 ) , .X ( n3982 ) ) ;
SAEDRVT14_ND2_ECO_1 U5044 ( .A1 ( n5737 ) , .A2 ( n4021 ) , .X ( n4108 ) ) ;
SAEDRVT14_OR3_0P5 U5045 ( .A1 ( i_tv80_core_IR_6_ ) , .A2 ( n3030 ) , 
    .A3 ( n3380 ) , .X ( n4037 ) ) ;
SAEDRVT14_ND2_ECO_1 U5046 ( .A1 ( n4037 ) , .A2 ( n2816 ) , .X ( n3991 ) ) ;
SAEDRVT14_ND2_ECO_1 U5047 ( .A1 ( n4108 ) , .A2 ( n4133 ) , .X ( n4087 ) ) ;
SAEDRVT14_INV_S_0P5 U5048 ( .A ( n4087 ) , .X ( n4113 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_1897 ( .A1 ( tmp_net149 ) , .A2 ( n4256 ) , 
    .X ( n4262 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5050 ( .A1 ( n4040 ) , .A2 ( n3991 ) , .X ( n4134 ) ) ;
SAEDRVT14_AO21B_0P5 U5051 ( .A1 ( n4040 ) , .A2 ( n3992 ) , .B ( n4134 ) , 
    .X ( n4116 ) ) ;
SAEDRVT14_ND2_ECO_1 U5052 ( .A1 ( n4040 ) , .A2 ( n2809 ) , .X ( n4105 ) ) ;
SAEDRVT14_INV_S_0P5 U5053 ( .A ( n4089 ) , .X ( n6263 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5054 ( .A1 ( n5737 ) , .A2 ( n4040 ) , .X ( n4063 ) ) ;
SAEDRVT14_AO21B_0P5 U5055 ( .A1 ( n4134 ) , .A2 ( n4063 ) , .B ( n3003 ) , 
    .X ( n3994 ) ) ;
SAEDRVT14_ND2_ECO_1 U5056 ( .A1 ( n3994 ) , .A2 ( n4133 ) , .X ( n5612 ) ) ;
SAEDRVT14_ND2_CDC_1 U5057 ( .A1 ( n3996 ) , .A2 ( n3995 ) , .X ( n4507 ) ) ;
SAEDRVT14_OR3_0P5 U5058 ( .A1 ( n4441 ) , .A2 ( n3103 ) , .A3 ( n518 ) , 
    .X ( n4002 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5059 ( .A1 ( n4796 ) , .A2 ( n2909 ) , .X ( n4086 ) ) ;
SAEDRVT14_AO21B_0P5 U5060 ( .A1 ( n4078 ) , .A2 ( n4507 ) , .B ( n4086 ) , 
    .X ( n5160_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5061 ( .A ( n4304 ) , .X ( n4286 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5062 ( .A1 ( n4052 ) , .A2 ( n5163 ) , .X ( n6280 ) ) ;
SAEDRVT14_INV_S_0P5 U5063 ( .A ( n6280 ) , .X ( n4068 ) ) ;
SAEDRVT14_AO21B_0P5 U5064 ( .A1 ( n3433 ) , .A2 ( n3997 ) , .B ( n2926 ) , 
    .X ( n4007 ) ) ;
SAEDRVT14_INV_S_0P5 U5065 ( .A ( n4007 ) , .X ( n3998 ) ) ;
SAEDRVT14_INV_S_0P5 U5066 ( .A ( n5159 ) , .X ( n4185 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_1695 ( .A1 ( n4062 ) , .A2 ( n4055 ) , 
    .B ( n6304 ) , .X ( n4010 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1696 ( .A ( n4742 ) , .B ( n3033 ) , 
    .X ( n4761 ) ) ;
SAEDRVT14_AO21B_0P5 U5069 ( .A1 ( n5721_CDR1 ) , .A2 ( n2991 ) , 
    .B ( n4794 ) , .X ( n5637 ) ) ;
SAEDRVT14_INV_S_0P5 U5070 ( .A ( n5637 ) , .X ( n6033 ) ) ;
SAEDRVT14_ND2_ECO_1 U5071 ( .A1 ( n2643 ) , .A2 ( n2809 ) , .X ( n4308 ) ) ;
SAEDRVT14_INV_S_0P5 U5072 ( .A ( n4308 ) , .X ( n5995_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5073 ( .A1 ( n4100 ) , .A2 ( n5995_CDR1 ) , 
    .X ( n4297 ) ) ;
SAEDRVT14_AN3_0P5 U5074 ( .A1 ( n4286 ) , .A2 ( n6033 ) , .A3 ( n4297 ) , 
    .X ( n4000 ) ) ;
SAEDRVT14_OAI22_0P5 U5075 ( .A1 ( n3407 ) , .A2 ( n6262 ) , .B1 ( n4000 ) , 
    .B2 ( n6366 ) , .X ( n4278 ) ) ;
SAEDRVT14_AO21B_0P5 U5076 ( .A1 ( n4469 ) , .A2 ( n4035 ) , .B ( n4097 ) , 
    .X ( n4320 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5077 ( .A1 ( i_tv80_core_ISet_1_ ) , .A2 ( n3309 ) , 
    .X ( n4138 ) ) ;
SAEDRVT14_INV_0P5 U5078 ( .A ( n4138 ) , .X ( n6316 ) ) ;
SAEDRVT14_OR3_0P5 U5079 ( .A1 ( n4356 ) , .A2 ( n5603 ) , .A3 ( n4330 ) , 
    .X ( n6303 ) ) ;
SAEDRVT14_OR3_0P5 U5080 ( .A1 ( n5603 ) , .A2 ( n4002 ) , .A3 ( n4330 ) , 
    .X ( n6047 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5081 ( .A1 ( n6303 ) , .A2 ( n6047 ) , .X ( n5206 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5082 ( .A1 ( n5989 ) , .A2 ( n5206 ) , .X ( n4285 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5083 ( .A1 ( n2991 ) , .A2 ( n5587 ) , .X ( n4096 ) ) ;
SAEDRVT14_AOI21_0P75 U5084 ( .A1 ( n4096 ) , .A2 ( n4285 ) , .B ( n575 ) , 
    .X ( n4014 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5085 ( .A1 ( n4033 ) , .A2 ( n5235 ) , .X ( n4055 ) ) ;
SAEDRVT14_OR3_0P5 U5086 ( .A1 ( n2643 ) , .A2 ( n3289 ) , .A3 ( n4828 ) , 
    .X ( n4006 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_3_8091 ( .A ( n4806 ) , .B ( n4700 ) , 
    .X ( tmp_net283 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1898 ( .A ( n4555 ) , .X ( tmp_net150 ) ) ;
SAEDRVT14_AO21B_0P5 U5089 ( .A1 ( n6301 ) , .A2 ( n5610 ) , .B ( n5985 ) , 
    .X ( n5618 ) ) ;
SAEDRVT14_INV_S_0P5 U5090 ( .A ( n4303 ) , .X ( n4012 ) ) ;
SAEDRVT14_AOI21_0P75 U5091 ( .A1 ( n4282 ) , .A2 ( n4012 ) , .B ( n6366 ) , 
    .X ( n4013 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8367 ( .A1 ( n2625_CDR1 ) , .A2 ( n5486_CDR1 ) , 
    .A3 ( n5038 ) , .A4 ( n5050_CDR1 ) , .X ( tmp_net452 ) ) ;
SAEDRVT14_OR4_1 U5093 ( .A1 ( n4278 ) , .A2 ( n4287 ) , .A3 ( tmp_net428 ) , 
    .A4 ( n4013 ) , .X ( n4020 ) ) ;
SAEDRVT14_ND2_0P5 U5094 ( .A1 ( n5707 ) , .A2 ( reset_n ) , .X ( n6046 ) ) ;
SAEDRVT14_INV_S_0P5 U5095 ( .A ( n6046 ) , .X ( n4914 ) ) ;
SAEDRVT14_AO21B_0P5 U5096 ( .A1 ( n4058 ) , .A2 ( n4064 ) , .B ( n3003 ) , 
    .X ( n4016 ) ) ;
SAEDRVT14_OA31_1 U5097 ( .A1 ( n2905 ) , .A2 ( n6268 ) , .A3 ( n5284 ) , 
    .B ( n4018 ) , .X ( n4019 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5098 ( .A1 ( n2680 ) , .A2 ( n4035 ) , .X ( n5595 ) ) ;
SAEDRVT14_INV_S_0P5 U5099 ( .A ( n5595 ) , .X ( n5999 ) ) ;
SAEDRVT14_AO221_0P5 U5100 ( .A1 ( n4326 ) , .A2 ( n4020 ) , .B1 ( n4914 ) , 
    .B2 ( i_tv80_core_Read_To_Reg_r_4_ ) , .C ( n3332 ) , .X ( n2427 ) ) ;
SAEDRVT14_ND2_ECO_1 U5101 ( .A1 ( n4035 ) , .A2 ( n4021 ) , .X ( n4107 ) ) ;
SAEDRVT14_INV_S_0P5 U5102 ( .A ( n4107 ) , .X ( n4132 ) ) ;
SAEDRVT14_INV_S_0P5 U5103 ( .A ( n5194 ) , .X ( n5176 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1899 ( .A1 ( tmp_net150 ) , .A2 ( n2635 ) , 
    .B ( n4595 ) , .X ( n4588 ) ) ;
SAEDRVT14_NR2B_U_0P5 ctmTdsLR_1_1900 ( .A ( n4734 ) , .B ( n4733 ) , 
    .X ( n4987 ) ) ;
SAEDRVT14_INV_S_0P5 U5106 ( .A ( n4136 ) , .X ( n4022 ) ) ;
SAEDRVT14_AOI21_0P75 U5107 ( .A1 ( n3407 ) , .A2 ( n4022 ) , .B ( n6262 ) , 
    .X ( n4023 ) ) ;
SAEDRVT14_AOI21_0P75 U5108 ( .A1 ( n5160_CDR1 ) , .A2 ( n3431 ) , 
    .B ( n4023 ) , .X ( n4024 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5109 ( .A1 ( n5206 ) , .A2 ( n3351 ) , .X ( n4275 ) ) ;
SAEDRVT14_AN2_MM_0P5 U5110 ( .A1 ( n4024 ) , .A2 ( n4275 ) , .X ( n4025 ) ) ;
SAEDRVT14_AO33_U_0P5 U5111 ( .A1 ( n2853 ) , .A2 ( n4169 ) , .A3 ( n3046 ) , 
    .B1 ( n3047 ) , .B2 ( mcycle_0_ ) , .B3 ( n2854 ) , .X ( n6306 ) ) ;
SAEDRVT14_INV_S_0P5 U5112 ( .A ( n5211 ) , .X ( n4217 ) ) ;
SAEDRVT14_OR3_0P5 U5113 ( .A1 ( n6306 ) , .A2 ( n3046 ) , .A3 ( n4217 ) , 
    .X ( n5586 ) ) ;
SAEDRVT14_INV_S_0P5 U5114 ( .A ( n5586 ) , .X ( n4030 ) ) ;
SAEDRVT14_ND2_ECO_1 U5115 ( .A1 ( n5610 ) , .A2 ( n4030 ) , .X ( n5580 ) ) ;
SAEDRVT14_AOI21_0P5 U5116 ( .A1 ( n4030 ) , .A2 ( n6326 ) , .B ( n5583 ) , 
    .X ( n4047 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5117 ( .A1 ( n4035 ) , .A2 ( n4449 ) , .X ( n4250 ) ) ;
SAEDRVT14_ND2_ECO_1 U5118 ( .A1 ( n4250 ) , .A2 ( n4031 ) , .X ( n5228 ) ) ;
SAEDRVT14_INV_S_0P5 U5119 ( .A ( n4032 ) , .X ( n5233 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5120 ( .A1 ( n5233 ) , .A2 ( n6379 ) , .X ( n4072 ) ) ;
SAEDRVT14_INV_S_0P5 U5121 ( .A ( n4072 ) , .X ( n5232_CDR1 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_1697 ( .A ( n5754 ) , .X ( tmp_net65 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1698 ( .A1 ( n5851 ) , .A2 ( tmp_net65 ) , 
    .B ( n5753 ) , .X ( n5973 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5124 ( .A1 ( n5627 ) , .A2 ( n4316 ) , .X ( n5730 ) ) ;
SAEDRVT14_INV_S_0P5 U5125 ( .A ( n4036 ) , .X ( n4045 ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_1699 ( .D0 ( n4678 ) , .D1 ( tmp_net53 ) , 
    .S ( n4799 ) , .X ( tmp_net66 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1700 ( .A1 ( n2945 ) , .A2 ( n4678 ) , 
    .B ( n4679 ) , .X ( tmp_net67 ) ) ;
SAEDRVT14_OR4_1 U5128 ( .A1 ( n4047 ) , .A2 ( n5228 ) , .A3 ( n4046 ) , 
    .A4 ( n5206 ) , .X ( n4098 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5129 ( .A1 ( n2777 ) , .A2 ( n3424 ) , .X ( n4793 ) ) ;
SAEDRVT14_OR3_0P5 U5130 ( .A1 ( n3441 ) , .A2 ( n4050 ) , .A3 ( n4796 ) , 
    .X ( n4051 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_1701 ( .A1 ( n4689 ) , 
    .A2 ( i_tv80_core_BusB_7_ ) , .B ( n4686 ) , .X ( tmp_net68 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_1702 ( .A1 ( tmp_net66 ) , .A2 ( tmp_net67 ) , 
    .B ( tmp_net68 ) , .X ( n5075_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5133 ( .A1 ( n5608 ) , .A2 ( n4058 ) , .X ( n4224 ) ) ;
SAEDRVT14_INV_S_0P5 U5134 ( .A ( n5720 ) , .X ( n5573 ) ) ;
SAEDRVT14_OAI22_0P5 U5135 ( .A1 ( n4100 ) , .A2 ( n4308 ) , .B1 ( n6280 ) , 
    .B2 ( n4060 ) , .X ( n4085 ) ) ;
SAEDRVT14_AOI21_1P5 ctmTdsLR_2_1726 ( .A1 ( n5750 ) , .A2 ( n3431 ) , 
    .B ( tmp_net79 ) , .X ( n6195 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_1746 ( .A1 ( n6105 ) , .A2 ( n6104 ) , 
    .X ( tmp_net89 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5138 ( .A1 ( n5736 ) , .A2 ( n2909 ) , .X ( n5849 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5139 ( .A1 ( n5572 ) , .A2 ( n5849 ) , 
    .X ( n5201_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5140 ( .A1 ( n5607 ) , .A2 ( n4064 ) , .X ( n4184 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5141 ( .A1 ( n5712 ) , .A2 ( n4065 ) , .X ( n5722 ) ) ;
SAEDRVT14_INV_S_0P5 U5142 ( .A ( n5722 ) , .X ( n4212 ) ) ;
SAEDRVT14_ND2_ECO_1 U5143 ( .A1 ( n5202 ) , .A2 ( n3259 ) , .X ( n4209 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5144 ( .A1 ( n5981 ) , .A2 ( n3362 ) , .X ( n5752 ) ) ;
SAEDRVT14_OR4_1 U5145 ( .A1 ( n4209 ) , .A2 ( n5752 ) , .A3 ( n4066 ) , 
    .A4 ( n5985 ) , .X ( n5161 ) ) ;
SAEDRVT14_INV_S_0P5 U5146 ( .A ( n5161 ) , .X ( n4070 ) ) ;
SAEDRVT14_OR3_0P5 U5147 ( .A1 ( n3046 ) , .A2 ( n6373 ) , .A3 ( n4217 ) , 
    .X ( n4204 ) ) ;
SAEDRVT14_ND2_ECO_1 U5148 ( .A1 ( n4077 ) , .A2 ( n2809 ) , .X ( n4213 ) ) ;
SAEDRVT14_INV_S_0P5 U5149 ( .A ( n4213 ) , .X ( n5173 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8133 ( .A1 ( n3461 ) , .A2 ( n2801 ) , 
    .B ( tmp_net308 ) , .X ( tmp_net309 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8134 ( .A1 ( n2871 ) , .A2 ( n3460 ) , 
    .X ( tmp_net308 ) ) ;
SAEDRVT14_INV_S_0P5 U5152 ( .A ( n4071 ) , .X ( n4178_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U5153 ( .A1 ( n4072 ) , .A2 ( n4133 ) , .X ( n4083 ) ) ;
SAEDRVT14_INV_S_0P5 U5154 ( .A ( n4075 ) , .X ( n4327_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5155 ( .A1 ( n5613_CDR1 ) , .A2 ( n5721_CDR1 ) , 
    .A3 ( n3294_CDR1 ) , .A4 ( n4327_CDR1 ) , .X ( n4082_CDR1 ) ) ;
SAEDRVT14_INV_0P5 U5156 ( .A ( n4079 ) , .X ( n4176_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U5157 ( .A1 ( n3306_CDR1 ) , .A2 ( n3251_CDR1 ) , 
    .A3 ( n3263_CDR1 ) , .X ( n4080_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5158 ( .A1 ( n5724_CDR1 ) , .A2 ( n4178_CDR1 ) , 
    .A3 ( n4176_CDR1 ) , .A4 ( n4080_CDR1 ) , .X ( n4081_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U5159 ( .A1 ( n4084 ) , .A2 ( n4085 ) , .A3 ( n5192_CDR1 ) , 
    .X ( n4117 ) ) ;
SAEDRVT14_AO21B_0P5 U5160 ( .A1 ( n4117 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .B ( n4086 ) , .X ( n4093 ) ) ;
SAEDRVT14_AO21B_0P5 U5161 ( .A1 ( n2777 ) , .A2 ( n6326 ) , .B ( n5176 ) , 
    .X ( n4110 ) ) ;
SAEDRVT14_INV_S_0P5 U5162 ( .A ( n4110 ) , .X ( n4088 ) ) ;
SAEDRVT14_AOI21_0P75 U5163 ( .A1 ( n4161 ) , .A2 ( n6326 ) , .B ( n4088 ) , 
    .X ( n4091 ) ) ;
SAEDRVT14_OR4_1 U5164 ( .A1 ( n2991 ) , .A2 ( n5989 ) , .A3 ( n3046 ) , 
    .A4 ( n4217 ) , .X ( n4104 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5165 ( .A1 ( n4104 ) , .A2 ( n4089 ) , .X ( n4128 ) ) ;
SAEDRVT14_AOI21_0P75 U5166 ( .A1 ( n4091 ) , .A2 ( n4128 ) , .B ( n4090 ) , 
    .X ( n4092 ) ) ;
SAEDRVT14_INV_0P5 U5167 ( .A ( n4793 ) , .X ( n4276 ) ) ;
SAEDRVT14_INV_S_0P5 U5168 ( .A ( n4096 ) , .X ( n6030 ) ) ;
SAEDRVT14_INV_S_0P5 U5169 ( .A ( n6047 ) , .X ( n4102 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8293 ( .A1 ( tmp_net405 ) , .A2 ( n4739 ) , 
    .X ( n5855 ) ) ;
SAEDRVT14_OR4_1 U5171 ( .A1 ( n5999 ) , .A2 ( n4276 ) , .A3 ( n6030 ) , 
    .A4 ( n4103 ) , .X ( n4123 ) ) ;
SAEDRVT14_INV_S_0P5 U5172 ( .A ( n4104 ) , .X ( n4106 ) ) ;
SAEDRVT14_OAI22_0P5 U5173 ( .A1 ( n2991 ) , .A2 ( n4107 ) , .B1 ( n4106 ) , 
    .B2 ( n4105 ) , .X ( n4112 ) ) ;
SAEDRVT14_INV_S_0P5 U5174 ( .A ( n4108 ) , .X ( n4129 ) ) ;
SAEDRVT14_AOI21_0P5 U5175 ( .A1 ( n6326 ) , .A2 ( n4109 ) , 
    .B ( n4187_CDR1 ) , .X ( n4111 ) ) ;
SAEDRVT14_ND2_ECO_1 U5176 ( .A1 ( n4110 ) , .A2 ( n4111 ) , .X ( n4131 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8260 ( .A ( n4742 ) , .X ( tmp_net385 ) ) ;
SAEDRVT14_AOI21_0P75 U5178 ( .A1 ( n2777 ) , .A2 ( n4116 ) , .B ( n4115 ) , 
    .X ( n4121 ) ) ;
SAEDRVT14_INV_S_0P5 U5179 ( .A ( n4117 ) , .X ( n4139 ) ) ;
SAEDRVT14_OAI22_0P5 U5180 ( .A1 ( n4121 ) , .A2 ( n6262 ) , .B1 ( n4120 ) , 
    .B2 ( n6366 ) , .X ( n4122 ) ) ;
SAEDRVT14_AOI21_0P75 U5181 ( .A1 ( n4123 ) , .A2 ( i_tv80_core_ISet_1_ ) , 
    .B ( n4122 ) , .X ( n4124 ) ) ;
SAEDRVT14_INV_S_0P5 U5182 ( .A ( n4125 ) , .X ( n4126 ) ) ;
SAEDRVT14_AOI21_0P75 U5183 ( .A1 ( n4126 ) , .A2 ( n6005 ) , .B ( n3104 ) , 
    .X ( n4127 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8087 ( .A1 ( n3461 ) , .A2 ( n3133 ) , 
    .B ( tmp_net280 ) , .X ( tmp_net281 ) ) ;
SAEDRVT14_AO21B_0P5 U5185 ( .A1 ( n4129 ) , .A2 ( n6326 ) , .B ( n4128 ) , 
    .X ( n4130 ) ) ;
SAEDRVT14_OA31_1 U5186 ( .A1 ( n4131 ) , .A2 ( n4130 ) , .A3 ( n4132 ) , 
    .B ( n3103 ) , .X ( n4137 ) ) ;
SAEDRVT14_OA31_1 U5187 ( .A1 ( n4137 ) , .A2 ( n4136 ) , .A3 ( n4135 ) , 
    .B ( n6099 ) , .X ( n4142 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8088 ( .A1 ( n2830 ) , .A2 ( n3460 ) , 
    .X ( tmp_net280 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8092 ( .A1 ( n3380 ) , .A2 ( n5603 ) , 
    .B ( tmp_net284 ) , .X ( n5984 ) ) ;
SAEDRVT14_ND2_ECO_1 U5190 ( .A1 ( n4145 ) , .A2 ( reset_n ) , .X ( n4149 ) ) ;
SAEDRVT14_INV_S_0P5 U5191 ( .A ( nmi_n ) , .X ( n4147 ) ) ;
SAEDRVT14_ND2_ECO_1 U5192 ( .A1 ( reset_n ) , .A2 ( n4145 ) , .X ( n4146 ) ) ;
SAEDRVT14_AOI21_0P75 U5193 ( .A1 ( n4147 ) , .A2 ( i_tv80_core_Oldnmi_n ) , 
    .B ( n4146 ) , .X ( n4148 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5194 ( .D0 ( n4149 ) , .D1 ( n4150 ) , .S ( n4148 ) , 
    .X ( n2389 ) ) ;
SAEDRVT14_OR3_0P5 U5195 ( .A1 ( n4151 ) , .A2 ( n4150 ) , .A3 ( n5221 ) , 
    .X ( n4254 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8093 ( .A ( n5995_CDR1 ) , .X ( tmp_net284 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8094 ( .A1 ( n3557 ) , .A2 ( n3560 ) , 
    .A3 ( tmp_net286 ) , .X ( i_tv80_core_RegBusC_9_ ) ) ;
SAEDRVT14_ND2_CDC_1 U5198 ( .A1 ( n5610 ) , .A2 ( n6326 ) , .X ( n5636 ) ) ;
SAEDRVT14_INV_0P5 U5199 ( .A ( n5719 ) , .X ( n4237 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5200 ( .A1 ( n4237 ) , .A2 ( n6262 ) , .X ( n6308 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5201 ( .A1 ( i_tv80_core_IR_2_ ) , .A2 ( n6377 ) , 
    .X ( n5659 ) ) ;
SAEDRVT14_OR3_0P5 U5202 ( .A1 ( n4937 ) , .A2 ( n5659 ) , .A3 ( n4453 ) , 
    .X ( n6307 ) ) ;
SAEDRVT14_OR4_1 U5203 ( .A1 ( n4525 ) , .A2 ( n4441 ) , .A3 ( n4439 ) , 
    .A4 ( i_tv80_core_IR_2_ ) , .X ( n4159 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5204 ( .A1 ( n4159 ) , .A2 ( n6307 ) , .X ( n4160 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5205 ( .A1 ( n2991 ) , .A2 ( n4160 ) , .X ( n4208 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5206 ( .A1 ( n5719 ) , .A2 ( n4165 ) , .X ( n6040 ) ) ;
SAEDRVT14_INV_0P5 U5207 ( .A ( n6040 ) , .X ( n6012 ) ) ;
SAEDRVT14_AO21B_0P5 U5208 ( .A1 ( n5626 ) , .A2 ( n6304 ) , .B ( n6301 ) , 
    .X ( n4167 ) ) ;
SAEDRVT14_INV_S_0P5 U5209 ( .A ( n5730 ) , .X ( n5850 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5210 ( .A1 ( n4250 ) , .A2 ( n5850 ) , .X ( n5701 ) ) ;
SAEDRVT14_OR3_0P5 U5211 ( .A1 ( n5231 ) , .A2 ( n4203 ) , .A3 ( n5701 ) , 
    .X ( n5174 ) ) ;
SAEDRVT14_INV_S_0P5 U5212 ( .A ( n5587 ) , .X ( n5628 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5213 ( .A1 ( n5586 ) , .A2 ( n6300 ) , .X ( n4199 ) ) ;
SAEDRVT14_INV_0P5 U5214 ( .A ( n4199 ) , .X ( n4172 ) ) ;
SAEDRVT14_INV_S_0P5 U5215 ( .A ( n4204 ) , .X ( n4210 ) ) ;
SAEDRVT14_AO21B_0P5 U5216 ( .A1 ( n2854 ) , .A2 ( n4169 ) , .B ( n4210 ) , 
    .X ( n5181 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5217 ( .A1 ( n5181 ) , .A2 ( n4170 ) , .X ( n4201 ) ) ;
SAEDRVT14_AO21B_0P5 U5218 ( .A1 ( n3424 ) , .A2 ( n5580 ) , .B ( n4201 ) , 
    .X ( n4171 ) ) ;
SAEDRVT14_OR4_1 U5219 ( .A1 ( n5174 ) , .A2 ( n4172 ) , .A3 ( n4171 ) , 
    .A4 ( n3398 ) , .X ( n4174 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_1747 ( .A ( n2658 ) , .X ( tmp_net90 ) ) ;
SAEDRVT14_OR4_1 U5221 ( .A1 ( n5721_CDR1 ) , .A2 ( n3294_CDR1 ) , 
    .A3 ( n4327_CDR1 ) , .A4 ( n5232_CDR1 ) , .X ( n4181_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5222 ( .A1 ( n5160_CDR1 ) , .A2 ( n3306_CDR1 ) , 
    .A3 ( n3251_CDR1 ) , .A4 ( n3263_CDR1 ) , .X ( n4179_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5223 ( .A1 ( n4179_CDR1 ) , .A2 ( n3262_CDR1 ) , 
    .A3 ( n4181_CDR1 ) , .A4 ( n4180 ) , .X ( n4191_CDR1 ) ) ;
SAEDRVT14_OR3_0P5 U5224 ( .A1 ( n5724_CDR1 ) , .A2 ( n4178_CDR1 ) , 
    .A3 ( n4176_CDR1 ) , .X ( n4183_CDR1 ) ) ;
SAEDRVT14_AOI21_0P75 U5225 ( .A1 ( n5181 ) , .A2 ( n4184 ) , 
    .B ( n4183_CDR1 ) , .X ( n4186_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U5226 ( .A1 ( n4186_CDR1 ) , .A2 ( n4185 ) , 
    .X ( n4188_CDR1 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_3_1748 ( .A1 ( tmp_net89 ) , .A2 ( n4235 ) , 
    .B1 ( n4233 ) , .B2 ( n6097 ) , .C ( tmp_net90 ) , .X ( n6102 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1901 ( .A ( HFSNET_14 ) , .X ( tmp_net151 ) ) ;
SAEDRVT14_OR4_1 U5229 ( .A1 ( n4221 ) , .A2 ( n4229 ) , .A3 ( n5577 ) , 
    .A4 ( n4195 ) , .X ( n4196 ) ) ;
SAEDRVT14_ND2_ECO_1 U5230 ( .A1 ( n3431 ) , .A2 ( n4196 ) , .X ( n6104 ) ) ;
SAEDRVT14_AOI21_0P75 U5231 ( .A1 ( n2746 ) , .A2 ( n4197 ) , .B ( n6326 ) , 
    .X ( n4207 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_8169 ( .A1 ( n3383 ) , .A2 ( n4801 ) , 
    .X ( tmp_net329 ) ) ;
SAEDRVT14_INV_S_0P5 U5233 ( .A ( n4201 ) , .X ( n4202 ) ) ;
SAEDRVT14_INV_S_0P5 U5234 ( .A ( n4209 ) , .X ( n4211 ) ) ;
SAEDRVT14_AOI21_0P75 U5235 ( .A1 ( n4211 ) , .A2 ( n2641 ) , .B ( n4210 ) , 
    .X ( n4232 ) ) ;
SAEDRVT14_ND2_CDC_1 U5236 ( .A1 ( n3447 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .X ( n4931 ) ) ;
SAEDRVT14_INV_S_0P5 U5237 ( .A ( n4931 ) , .X ( n4362 ) ) ;
SAEDRVT14_AO21B_0P5 U5238 ( .A1 ( n4362 ) , .A2 ( n5152 ) , .B ( n3463 ) , 
    .X ( n5740 ) ) ;
SAEDRVT14_AO33_U_0P5 U5239 ( .A1 ( n5621 ) , .A2 ( i_tv80_core_F_6_ ) , 
    .A3 ( n3439 ) , .B1 ( n3051 ) , .B2 ( i_tv80_core_F_2_ ) , .B3 ( n3454 ) , 
    .X ( n5739 ) ) ;
SAEDRVT14_OAI311_0P75 U5240 ( .A1 ( n6278 ) , .A2 ( n5747 ) , .A3 ( n3362 ) , 
    .B1 ( n4212 ) , .B2 ( n6280 ) , .X ( n5180_CDR1 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1751 ( .A1 ( i_tv80_core_i_reg_RegsH_6__5_ ) , 
    .A2 ( n3243 ) , .B1 ( n3245 ) , .B2 ( n3083 ) , .X ( n3825 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1902 ( .A1 ( n6089 ) , .A2 ( tmp_net151 ) , 
    .X ( n6053 ) ) ;
SAEDRVT14_INV_S_0P5 U5243 ( .A ( n5747 ) , .X ( n5182 ) ) ;
SAEDRVT14_AN3_0P5 U5244 ( .A1 ( n5182 ) , .A2 ( n5188 ) , .A3 ( n4216 ) , 
    .X ( n4228 ) ) ;
SAEDRVT14_ND3_0P5 U5245 ( .A1 ( n4219 ) , .A2 ( n4218 ) , .A3 ( n6270 ) , 
    .X ( n4220 ) ) ;
SAEDRVT14_AO221_0P5 U5246 ( .A1 ( n5717 ) , .A2 ( n5186 ) , .B1 ( n6304 ) , 
    .B2 ( n4221 ) , .C ( n4220 ) , .X ( n4227 ) ) ;
SAEDRVT14_AOI21_0P75 U5247 ( .A1 ( n2853 ) , .A2 ( n3047 ) , .B ( n3467 ) , 
    .X ( n4222 ) ) ;
SAEDRVT14_ND3_ECO_1 U5248 ( .A1 ( n4223 ) , .A2 ( n6304 ) , .A3 ( n4222 ) , 
    .X ( n5581 ) ) ;
SAEDRVT14_INV_0P5 U5249 ( .A ( n4223 ) , .X ( n5754 ) ) ;
SAEDRVT14_AO221_0P5 U5250 ( .A1 ( n4224 ) , .A2 ( n5181 ) , .B1 ( n5581 ) , 
    .B2 ( n5752 ) , .C ( n6287 ) , .X ( n4226 ) ) ;
SAEDRVT14_OR4_1 U5251 ( .A1 ( n4227 ) , .A2 ( n4226 ) , .A3 ( n4228 ) , 
    .A4 ( n4225 ) , .X ( n4230 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5252 ( .A1 ( n3467 ) , .A2 ( n6262 ) , .X ( n5212 ) ) ;
SAEDRVT14_INV_0P5 U5253 ( .A ( n5212 ) , .X ( n4236 ) ) ;
SAEDRVT14_OR4_1 U5254 ( .A1 ( n4246 ) , .A2 ( n6366 ) , .A3 ( n4239 ) , 
    .A4 ( n5325 ) , .X ( n4252 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8095 ( .A1 ( n3461 ) , 
    .A2 ( i_tv80_core_i_reg_RegsH_6__1_ ) , .B ( tmp_net285 ) , 
    .X ( tmp_net286 ) ) ;
SAEDRVT14_ND2_ECO_1 U5256 ( .A1 ( n6312 ) , .A2 ( n4240 ) , .X ( n6330 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8096 ( .A1 ( n2880 ) , .A2 ( n3460 ) , 
    .X ( tmp_net285 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8097 ( .A1 ( n3551 ) , .A2 ( n3554 ) , 
    .A3 ( tmp_net288 ) , .X ( i_tv80_core_RegBusC_8_ ) ) ;
SAEDRVT14_AN3_0P5 U5259 ( .A1 ( i_tv80_core_INT_s ) , 
    .A2 ( i_tv80_core_IntE ) , .A3 ( n5219 ) , .X ( n4244 ) ) ;
SAEDRVT14_INV_S_0P5 U5260 ( .A ( n5337 ) , .X ( n4506 ) ) ;
SAEDRVT14_AOI21_0P75 U5261 ( .A1 ( n4472 ) , .A2 ( n4506 ) , .B ( n5221 ) , 
    .X ( n4243 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5262 ( .A1 ( n4244 ) , .A2 ( n4243 ) , .X ( n4255 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8098 ( .A1 ( n3461 ) , 
    .A2 ( i_tv80_core_i_reg_RegsH_6__0_ ) , .B ( tmp_net287 ) , 
    .X ( tmp_net288 ) ) ;
SAEDRVT14_INV_S_0P5 U5264 ( .A ( n4258 ) , .X ( n4251 ) ) ;
SAEDRVT14_ND2_ECO_1 U5265 ( .A1 ( n4251 ) , .A2 ( reset_n ) , .X ( n4247 ) ) ;
SAEDRVT14_INV_S_0P5 U5266 ( .A ( n4250 ) , .X ( n5590 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5267 ( .A1 ( n5590 ) , .A2 ( n3351 ) , .X ( n5749 ) ) ;
SAEDRVT14_AN2_MM_0P5 U5268 ( .A1 ( n4251 ) , .A2 ( n4256 ) , .X ( n4260 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8294 ( .A1 ( tmp_net404 ) , .A2 ( n3032 ) , 
    .X ( tmp_net405 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8295 ( .A ( n2665 ) , .X ( tmp_net404 ) ) ;
SAEDRVT14_ND2_ECO_1 U5271 ( .A1 ( n4255 ) , .A2 ( n4254 ) , .X ( n4266 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8099 ( .A1 ( n2980 ) , .A2 ( n3460 ) , 
    .X ( tmp_net287 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_1932 ( .A1 ( n5089 ) , .A2 ( n5088 ) , 
    .A3 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .A4 ( i_tv80_core_Arith16_r ) , 
    .X ( tmp_net160 ) ) ;
SAEDRVT14_OAI22_0P5 U5274 ( .A1 ( n4260 ) , .A2 ( n4261 ) , .B1 ( n4266 ) , 
    .B2 ( n4262 ) , .X ( n4269 ) ) ;
SAEDRVT14_INV_S_0P5 U5275 ( .A ( n4261 ) , .X ( n4267 ) ) ;
SAEDRVT14_INV_S_0P5 U5276 ( .A ( n4262 ) , .X ( n4264 ) ) ;
SAEDRVT14_ND2_ECO_1 U5277 ( .A1 ( n3423 ) , .A2 ( reset_n ) , .X ( n4271 ) ) ;
SAEDRVT14_INV_S_0P5 U5278 ( .A ( n4272 ) , .X ( n6345 ) ) ;
SAEDRVT14_AOI21_0P75 U5279 ( .A1 ( n6345 ) , .A2 ( n4274 ) , .B ( n4273 ) , 
    .X ( i_tv80_core_N1450 ) ) ;
SAEDRVT14_INV_0P5 U5280 ( .A ( n4275 ) , .X ( n4280 ) ) ;
SAEDRVT14_OA31_U_0P5 U5281 ( .A1 ( n3309 ) , .A2 ( n4276 ) , .A3 ( n6030 ) , 
    .B ( i_tv80_core_ISet_1_ ) , .X ( n4279 ) ) ;
SAEDRVT14_ADDH_0P5 \i_tv80_core_add_380/U1_1_1 ( .A ( n6360 ) , .B ( n6359 ) , 
    .CO ( \i_tv80_core_add_380/carry_2_ ) , .S ( i_tv80_core_N154 ) ) ;
SAEDRVT14_OAI22_0P5 U5283 ( .A1 ( n5223 ) , .A2 ( n4281 ) , .B1 ( n6046 ) , 
    .B2 ( n436 ) , .X ( n2425 ) ) ;
SAEDRVT14_AO21B_0P5 U5284 ( .A1 ( n3039 ) , .A2 ( n2777 ) , .B ( n4285 ) , 
    .X ( n4307 ) ) ;
SAEDRVT14_INV_S_0P5 U5285 ( .A ( n4307 ) , .X ( n5596 ) ) ;
SAEDRVT14_AO221_0P5 U5286 ( .A1 ( n4914 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_1_ ) , .B1 ( n4326 ) , .B2 ( n1491 ) , 
    .C ( n3332 ) , .X ( n2430 ) ) ;
SAEDRVT14_INV_S_0P5 U5287 ( .A ( n4292 ) , .X ( n4296 ) ) ;
SAEDRVT14_INV_0P5 U5288 ( .A ( n4293 ) , .X ( n4294 ) ) ;
SAEDRVT14_AOI21_0P75 U5289 ( .A1 ( n4298 ) , .A2 ( n3431 ) , .B ( n4294 ) , 
    .X ( n4295 ) ) ;
SAEDRVT14_AO32_U_0P5 U5290 ( .A1 ( n4296 ) , .A2 ( n4326 ) , .A3 ( n4748 ) , 
    .B1 ( n4351 ) , .B2 ( n4914 ) , .X ( n2428 ) ) ;
SAEDRVT14_INV_0P5 U5291 ( .A ( n4297 ) , .X ( n6036 ) ) ;
SAEDRVT14_ND2_CDC_1 U5292 ( .A1 ( n4309 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .X ( n5601 ) ) ;
SAEDRVT14_INV_S_0P5 U5293 ( .A ( n5601 ) , .X ( n4299 ) ) ;
SAEDRVT14_AO221_0P5 U5294 ( .A1 ( n4914 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_2_ ) , .B1 ( n4326 ) , 
    .B2 ( i_tv80_core_N1102 ) , .C ( n3332 ) , .X ( n2429 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1903 ( .A ( n3281 ) , .X ( tmp_net152 ) ) ;
SAEDRVT14_ND2_ECO_1 U5296 ( .A1 ( n2777 ) , .A2 ( n3431 ) , .X ( n5606 ) ) ;
SAEDRVT14_INV_S_0P5 U5297 ( .A ( n5606 ) , .X ( n5699 ) ) ;
SAEDRVT14_OA31_1 U5298 ( .A1 ( n5985 ) , .A2 ( n2736 ) , .A3 ( n4311 ) , 
    .B ( n5699 ) , .X ( n4325 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5299 ( .A1 ( n5744 ) , .A2 ( n3903 ) , .X ( n5993 ) ) ;
SAEDRVT14_INV_S_0P5 U5300 ( .A ( n6301 ) , .X ( n6272 ) ) ;
SAEDRVT14_AO33_U_0P5 U5301 ( .A1 ( n5989 ) , .A2 ( n3903 ) , .A3 ( n2736 ) , 
    .B1 ( n6272 ) , .B2 ( n2909 ) , .B3 ( n4469 ) , .X ( n4314 ) ) ;
SAEDRVT14_AO221_0P5 U5302 ( .A1 ( n4914 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_0_ ) , .B1 ( n4326 ) , .B2 ( n4749 ) , 
    .C ( n3332 ) , .X ( n2431 ) ) ;
SAEDRVT14_INV_S_0P5 U5303 ( .A ( n4854 ) , .X ( n5014 ) ) ;
SAEDRVT14_ND2_CDC_1 U5304 ( .A1 ( HFSNET_14 ) , .A2 ( n3413 ) , .X ( n4827 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5305 ( .D0 ( i_tv80_core_Fp_1_ ) , 
    .D1 ( i_tv80_core_F_1_ ) , .S ( n5672 ) , .X ( n4328 ) ) ;
SAEDRVT14_ND2_ECO_1 U5307 ( .A1 ( n4405 ) , .A2 ( reset_n ) , .X ( n4407 ) ) ;
SAEDRVT14_INV_S_0P5 U5308 ( .A ( di_1_ ) , .X ( n4329 ) ) ;
SAEDRVT14_OAI22_0P5 U5309 ( .A1 ( n4407 ) , .A2 ( n4329 ) , .B1 ( n183 ) , 
    .B2 ( n4405 ) , .X ( n2469 ) ) ;
SAEDRVT14_ND2_CDC_1 U5310 ( .A1 ( HFSNET_23 ) , .A2 ( n4333 ) , .X ( n4359 ) ) ;
SAEDRVT14_INV_0P5 U5311 ( .A ( n4359 ) , .X ( n5092 ) ) ;
SAEDRVT14_ND2_CDC_1 U5312 ( .A1 ( HFSNET_14 ) , .A2 ( n5092 ) , .X ( n4342 ) ) ;
SAEDRVT14_ND2_ECO_1 U5313 ( .A1 ( HFSNET_14 ) , .A2 ( n4998 ) , .X ( n4999 ) ) ;
SAEDRVT14_OAI22_0P5 U5314 ( .A1 ( n444 ) , .A2 ( n4999 ) , .B1 ( n433 ) , 
    .B2 ( n4998 ) , .X ( n2347 ) ) ;
SAEDRVT14_INV_S_0P5 U5315 ( .A ( di_6_ ) , .X ( n4334 ) ) ;
SAEDRVT14_OAI22_0P5 U5316 ( .A1 ( n4407 ) , .A2 ( n4334 ) , .B1 ( n178 ) , 
    .B2 ( n4405 ) , .X ( n2464 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5317 ( .D0 ( i_tv80_core_Fp_6_ ) , 
    .D1 ( i_tv80_core_F_6_ ) , .S ( n5672 ) , .X ( n4335 ) ) ;
SAEDRVT14_ND2_CDC_1 U5318 ( .A1 ( HFSNET_17 ) , .A2 ( n4335 ) , .X ( n2394 ) ) ;
SAEDRVT14_INV_S_0P5 U5319 ( .A ( di_7_ ) , .X ( n4336 ) ) ;
SAEDRVT14_OAI22_0P5 U5320 ( .A1 ( n4407 ) , .A2 ( n4336 ) , .B1 ( n177 ) , 
    .B2 ( n4405 ) , .X ( n2463 ) ) ;
SAEDRVT14_ND2_ECO_1 U5321 ( .A1 ( i_tv80_core_ACC_7_ ) , .A2 ( HFSNET_14 ) , 
    .X ( n4339 ) ) ;
SAEDRVT14_INV_0P5 U5322 ( .A ( n4355 ) , .X ( n4397 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1904 ( .A1 ( n5363 ) , .A2 ( tmp_net152 ) , 
    .X ( n3257 ) ) ;
SAEDRVT14_NR4_0P75 ctmTdsLR_1_1905 ( .A1 ( n2799 ) , .A2 ( n3270 ) , 
    .A3 ( n3279 ) , .A4 ( n6368 ) , .X ( n3252 ) ) ;
SAEDRVT14_ND2_CDC_1 U5325 ( .A1 ( n6046 ) , .A2 ( n4338 ) , .X ( n4341 ) ) ;
SAEDRVT14_OAI22_0P5 U5326 ( .A1 ( n445 ) , .A2 ( n4999 ) , .B1 ( n434 ) , 
    .B2 ( n4998 ) , .X ( n2346 ) ) ;
SAEDRVT14_INV_S_0P5 U5327 ( .A ( di_0_ ) , .X ( n4340 ) ) ;
SAEDRVT14_OAI22_0P5 U5328 ( .A1 ( n4340 ) , .A2 ( n4407 ) , 
    .B1 ( n184_CDR1 ) , .B2 ( n4405 ) , .X ( n2470 ) ) ;
SAEDRVT14_ND2_ECO_1 U5329 ( .A1 ( n6092 ) , .A2 ( n4341 ) , .X ( n4343 ) ) ;
SAEDRVT14_INV_S_0P5 U5330 ( .A ( n4343 ) , .X ( n4996 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8100 ( .A1 ( n3563 ) , .A2 ( n3566 ) , 
    .A3 ( tmp_net290 ) , .X ( i_tv80_core_RegBusC_10_ ) ) ;
SAEDRVT14_AO222_1 U5332 ( .A1 ( i_tv80_core_N153 ) , .A2 ( n3408 ) , 
    .B1 ( n4997 ) , .B2 ( i_tv80_core_ACC_0_ ) , .C1 ( n4996 ) , 
    .C2 ( n6359 ) , .X ( n2345 ) ) ;
SAEDRVT14_OAI22_0P5 U5333 ( .A1 ( n438 ) , .A2 ( n4999 ) , .B1 ( n427 ) , 
    .B2 ( n4998 ) , .X ( n2353 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5334 ( .D0 ( i_tv80_core_Fp_4_ ) , 
    .D1 ( i_tv80_core_F_4_ ) , .S ( n5672 ) , .X ( n4345 ) ) ;
SAEDRVT14_ND2_CDC_1 U5335 ( .A1 ( HFSNET_17 ) , .A2 ( n4345 ) , .X ( n2396 ) ) ;
SAEDRVT14_INV_S_0P5 U5336 ( .A ( di_4_ ) , .X ( n4346 ) ) ;
SAEDRVT14_OAI22_0P5 U5337 ( .A1 ( n4407 ) , .A2 ( n4346 ) , 
    .B1 ( n180_CDR1 ) , .B2 ( n4405 ) , .X ( n2466 ) ) ;
SAEDRVT14_BUF_U_0P5 gre_mt_inst_8520 ( .A ( n6182 ) , .X ( gre_net_559 ) ) ;
SAEDRVT14_OAI22_0P5 U5339 ( .A1 ( n442 ) , .A2 ( n4999 ) , .B1 ( n431 ) , 
    .B2 ( n4998 ) , .X ( n2349 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5340 ( .D0 ( i_tv80_core_Ap_4_ ) , 
    .D1 ( i_tv80_core_ACC_4_ ) , .S ( n5672 ) , .X ( n4347 ) ) ;
SAEDRVT14_ND2_CDC_1 U5341 ( .A1 ( HFSNET_17 ) , .A2 ( n4347 ) , .X ( n2415 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5342 ( .A1 ( i_tv80_core_Read_To_Reg_r_2_ ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_1_ ) , .X ( n5348 ) ) ;
SAEDRVT14_OR3_0P5 U5343 ( .A1 ( n4351 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_0_ ) , .A3 ( n5348 ) , .X ( n4353 ) ) ;
SAEDRVT14_INV_0P5 U5344 ( .A ( n4353 ) , .X ( n6045 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5345 ( .A1 ( i_tv80_core_ALU_Op_r_0_ ) , .A2 ( n2897 ) , 
    .X ( n5085 ) ) ;
SAEDRVT14_INV_S_0P5 U5346 ( .A ( n5675 ) , .X ( n4813 ) ) ;
SAEDRVT14_ND2_ECO_1 U5347 ( .A1 ( n4813 ) , .A2 ( n5674 ) , .X ( n4348 ) ) ;
SAEDRVT14_OR3_0P5 U5348 ( .A1 ( tstate_2_ ) , .A2 ( n255 ) , 
    .A3 ( tstate_1_ ) , .X ( n6313 ) ) ;
SAEDRVT14_INV_S_0P5 U5349 ( .A ( n6313 ) , .X ( n4855 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8142 ( .A ( n4719 ) , .X ( tmp_net313 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8148 ( .A1 ( tmp_net317 ) , .A2 ( n5570 ) , 
    .X ( n4474 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5352 ( .A1 ( n2690 ) , .A2 ( n4351 ) , .X ( n4352 ) ) ;
SAEDRVT14_OR3_0P5 U5353 ( .A1 ( n4352 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_1_ ) , .A3 ( n4350 ) , .X ( n4822 ) ) ;
SAEDRVT14_OR3_0P5 U5354 ( .A1 ( n4352 ) , .A2 ( n4350 ) , .A3 ( n2692 ) , 
    .X ( n4823 ) ) ;
SAEDRVT14_OR3_0P5 U5355 ( .A1 ( n4351 ) , .A2 ( n4350 ) , .A3 ( n5348 ) , 
    .X ( n4475 ) ) ;
SAEDRVT14_OR3_0P5 U5356 ( .A1 ( i_tv80_core_Read_To_Reg_r_0_ ) , 
    .A2 ( n4352 ) , .A3 ( i_tv80_core_Read_To_Reg_r_1_ ) , .X ( n4432 ) ) ;
SAEDRVT14_ND2_ECO_1 U5357 ( .A1 ( n3421 ) , .A2 ( n3422 ) , .X ( n6052 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_1906 ( .A1 ( n5394 ) , .A2 ( n3279 ) , 
    .A3 ( n5377 ) , .X ( tmp_net153 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5359 ( .A1 ( n5092 ) , .A2 ( n4355 ) , .X ( n5091 ) ) ;
SAEDRVT14_INV_0P5 U5360 ( .A ( n5063 ) , .X ( n4358 ) ) ;
SAEDRVT14_INV_S_0P5 U5361 ( .A ( n6051 ) , .X ( n6044 ) ) ;
SAEDRVT14_OR3_0P5 U5362 ( .A1 ( n6366 ) , .A2 ( n5165 ) , .A3 ( n4356 ) , 
    .X ( n4875 ) ) ;
SAEDRVT14_AO21B_0P5 U5363 ( .A1 ( n3337 ) , .A2 ( n4432 ) , .B ( n5001 ) , 
    .X ( n4399 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5364 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_4_ ) , .X ( n4402 ) ) ;
SAEDRVT14_ND2_ECO_1 U5365 ( .A1 ( n3431 ) , .A2 ( n5613_CDR1 ) , 
    .X ( n4391 ) ) ;
SAEDRVT14_INV_S_0P5 U5366 ( .A ( n4391 ) , .X ( n4673 ) ) ;
SAEDRVT14_ND2_ECO_1 U5367 ( .A1 ( n436 ) , .A2 ( n4391 ) , .X ( n4581 ) ) ;
SAEDRVT14_INV_S_0P5 U5368 ( .A ( n4581 ) , .X ( n4713 ) ) ;
SAEDRVT14_INV_0P5 U5369 ( .A ( n4811 ) , .X ( n4692 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5370 ( .D0 ( n4692 ) , .D1 ( n4868 ) , .S ( n4362 ) , 
    .X ( n4364 ) ) ;
SAEDRVT14_AOI21_0P75 U5371 ( .A1 ( n4364 ) , .A2 ( n4810 ) , .B ( n377 ) , 
    .X ( n4394 ) ) ;
SAEDRVT14_ND2_ECO_1 U5372 ( .A1 ( n5084 ) , .A2 ( n4365 ) , .X ( n4385 ) ) ;
SAEDRVT14_INV_S_0P5 U5373 ( .A ( n4385 ) , .X ( n4371 ) ) ;
SAEDRVT14_AO21B_0P5 U5374 ( .A1 ( n4372 ) , .A2 ( n4684 ) , 
    .B ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .X ( n4924_CDR1 ) ) ;
SAEDRVT14_AO21B_0P5 U5375 ( .A1 ( n4864 ) , .A2 ( n2837 ) , .B ( n404 ) , 
    .X ( n4558 ) ) ;
SAEDRVT14_AO21B_0P5 U5376 ( .A1 ( n4558 ) , .A2 ( n2944 ) , .B ( n4514 ) , 
    .X ( n4366 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5377 ( .A1 ( n4366 ) , .A2 ( n2836 ) , .X ( n4563 ) ) ;
SAEDRVT14_INV_S_0P5 U5378 ( .A ( n4366 ) , .X ( n4565 ) ) ;
SAEDRVT14_OR3_0P5 U5379 ( .A1 ( n4565 ) , .A2 ( n2837 ) , 
    .A3 ( i_tv80_core_BusA_4__CDR1 ) , .X ( n4620 ) ) ;
SAEDRVT14_INV_S_0P5 U5380 ( .A ( n4620 ) , .X ( n4646 ) ) ;
SAEDRVT14_AOI21_0P75 U5381 ( .A1 ( i_tv80_core_BusA_4__CDR1 ) , 
    .A2 ( n4563 ) , .B ( n4646 ) , .X ( n4370 ) ) ;
SAEDRVT14_ND2_ECO_1 U5382 ( .A1 ( n2837 ) , .A2 ( n4864 ) , .X ( n4367 ) ) ;
SAEDRVT14_EO2_0P5 U5383 ( .A1 ( n367_CDR1 ) , .A2 ( n4367 ) , .X ( n4368 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5384 ( .D0 ( n4368 ) , 
    .D1 ( i_tv80_core_BusA_4__CDR1 ) , .S ( n4615 ) , .X ( n4369 ) ) ;
SAEDRVT14_ND2_CDC_1 U5385 ( .A1 ( n2898 ) , .A2 ( n4371 ) , .X ( n4862 ) ) ;
SAEDRVT14_INV_S_0P5 U5386 ( .A ( n4862 ) , .X ( n4676 ) ) ;
SAEDRVT14_OAI22_0P5 U5387 ( .A1 ( n367_CDR1 ) , .A2 ( n4924_CDR1 ) , 
    .B1 ( n3465_CDR1 ) , .B2 ( n5016 ) , .X ( n4393 ) ) ;
SAEDRVT14_AO221_0P5 U5388 ( .A1 ( n4683 ) , .A2 ( n367_CDR1 ) , 
    .B1 ( n4676 ) , .B2 ( i_tv80_core_BusA_4__CDR1 ) , .C ( n4675 ) , 
    .X ( n4389 ) ) ;
SAEDRVT14_EO2_0P5 U5389 ( .A1 ( n2897 ) , .A2 ( n377 ) , .X ( n4603 ) ) ;
SAEDRVT14_INV_S_0P5 U5390 ( .A ( n4603 ) , .X ( n4604 ) ) ;
SAEDRVT14_EO2_0P5 U5391 ( .A1 ( n2897 ) , .A2 ( n376 ) , .X ( n4384 ) ) ;
SAEDRVT14_INV_S_0P5 U5392 ( .A ( n4571 ) , .X ( n4383 ) ) ;
SAEDRVT14_AO32_U_0P5 U5393 ( .A1 ( n4861 ) , .A2 ( i_tv80_core_ALU_Op_r_0_ ) , 
    .A3 ( i_tv80_core_F_0_ ) , .B1 ( n4373 ) , .B2 ( n2897 ) , .X ( n4483 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1753 ( .A1 ( n3107 ) , .A2 ( n3243 ) , 
    .B1 ( n3245 ) , .B2 ( n2952 ) , .X ( n3837 ) ) ;
SAEDRVT14_EO2_0P5 U5395 ( .A1 ( n2897 ) , .A2 ( n373 ) , .X ( n4377 ) ) ;
SAEDRVT14_INV_S_0P5 U5396 ( .A ( n4375 ) , .X ( n4485 ) ) ;
SAEDRVT14_ND2_ECO_1 U5397 ( .A1 ( i_tv80_core_i_alu_N185 ) , .A2 ( n4485 ) , 
    .X ( n4413 ) ) ;
SAEDRVT14_INV_S_0P5 U5398 ( .A ( n4413 ) , .X ( n4379 ) ) ;
SAEDRVT14_ND2_ECO_1 U5399 ( .A1 ( i_tv80_core_BusA_1_ ) , .A2 ( n4520 ) , 
    .X ( n4415 ) ) ;
SAEDRVT14_ND2_ECO_1 U5400 ( .A1 ( n4569 ) , .A2 ( n4415 ) , .X ( n4378 ) ) ;
SAEDRVT14_ND2_CDC_1 U5401 ( .A1 ( n4385 ) , .A2 ( n2897 ) , .X ( n5020 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5402 ( .A1 ( n377 ) , .A2 ( n4683 ) , .X ( n4386 ) ) ;
SAEDRVT14_AOI21_0P75 U5403 ( .A1 ( n4386 ) , .A2 ( n4684 ) , 
    .B ( n367_CDR1 ) , .X ( n4387 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5404 ( .D0 ( n2837 ) , 
    .D1 ( i_tv80_core_BusA_5__CDR1 ) , .S ( n3103 ) , .X ( n4945 ) ) ;
SAEDRVT14_OR3_0P5 U5405 ( .A1 ( i_tv80_core_ALU_Op_r_0_ ) , .A2 ( n4802 ) , 
    .A3 ( n5674 ) , .X ( n4656 ) ) ;
SAEDRVT14_OAI22_0P5 U5406 ( .A1 ( n4931 ) , .A2 ( n4810 ) , .B1 ( n4945 ) , 
    .B2 ( n4656 ) , .X ( n4390 ) ) ;
SAEDRVT14_ND2_ECO_1 U5407 ( .A1 ( i_tv80_core_Save_ALU_r ) , .A2 ( n4391 ) , 
    .X ( n4707 ) ) ;
SAEDRVT14_INV_0P5 U5408 ( .A ( n4707 ) , .X ( n4662 ) ) ;
SAEDRVT14_BUF_S_1P5 gre_mt_inst_8521 ( .A ( n6252 ) , .X ( gre_net_560 ) ) ;
SAEDRVT14_INV_S_0P5 U5410 ( .A ( di_5_ ) , .X ( n4403 ) ) ;
SAEDRVT14_OAI22_0P5 U5411 ( .A1 ( n4407 ) , .A2 ( n4403 ) , 
    .B1 ( n179_CDR1 ) , .B2 ( n4405 ) , .X ( n2465 ) ) ;
SAEDRVT14_ADDH_0P5 \i_tv80_core_add_380/U1_1_2 ( .A ( n6361 ) , 
    .B ( \i_tv80_core_add_380/carry_2_ ) , 
    .CO ( \i_tv80_core_add_380/carry_3_ ) , .S ( i_tv80_core_N155 ) ) ;
SAEDRVT14_OAI22_0P5 U5413 ( .A1 ( n443 ) , .A2 ( n4999 ) , .B1 ( n432 ) , 
    .B2 ( n4998 ) , .X ( n2348 ) ) ;
SAEDRVT14_INV_S_0P5 U5414 ( .A ( di_3_ ) , .X ( n4404 ) ) ;
SAEDRVT14_OAI22_0P5 U5415 ( .A1 ( n4404 ) , .A2 ( n4407 ) , 
    .B1 ( n181_CDR1 ) , .B2 ( n4405 ) , .X ( n2467 ) ) ;
SAEDRVT14_AO222_1 U5416 ( .A1 ( i_tv80_core_N156 ) , .A2 ( n3408 ) , 
    .B1 ( n4997 ) , .B2 ( i_tv80_core_ACC_3_ ) , .C1 ( n4996 ) , 
    .C2 ( n6362 ) , .X ( n2342 ) ) ;
SAEDRVT14_OAI22_0P5 U5417 ( .A1 ( n441 ) , .A2 ( n4999 ) , .B1 ( n430 ) , 
    .B2 ( n4998 ) , .X ( n2350 ) ) ;
SAEDRVT14_INV_S_0P5 U5418 ( .A ( di_2_ ) , .X ( n4406 ) ) ;
SAEDRVT14_OAI22_0P5 U5419 ( .A1 ( n4407 ) , .A2 ( n4406 ) , 
    .B1 ( n182_CDR1 ) , .B2 ( n4405 ) , .X ( n2468 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_380/U1 ( 
    .A1 ( \i_tv80_core_add_380/carry_6_ ) , .A2 ( n6357 ) , 
    .X ( i_tv80_core_N159 ) ) ;
SAEDRVT14_OAI22_0P5 U5421 ( .A1 ( n440 ) , .A2 ( n4999 ) , .B1 ( n429 ) , 
    .B2 ( n4998 ) , .X ( n2351 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5422 ( .D0 ( i_tv80_core_Ap_2_ ) , 
    .D1 ( i_tv80_core_ACC_2_ ) , .S ( n5672 ) , .X ( n4408 ) ) ;
SAEDRVT14_ND2_CDC_1 U5423 ( .A1 ( HFSNET_17 ) , .A2 ( n4408 ) , .X ( n2417 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5424 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_2_ ) , .X ( n4431 ) ) ;
SAEDRVT14_ND2_CDC_1 U5425 ( .A1 ( n3104 ) , .A2 ( n4556 ) , .X ( n4936 ) ) ;
SAEDRVT14_AOI21_0P75 U5426 ( .A1 ( n4409 ) , .A2 ( n4810 ) , .B ( n375 ) , 
    .X ( n4426 ) ) ;
SAEDRVT14_EN3_U_0P5 U5427 ( .A1 ( n4856 ) , .A2 ( n4615 ) , .A3 ( n4514 ) , 
    .X ( n4412 ) ) ;
SAEDRVT14_AOI21_0P75 U5428 ( .A1 ( n4856 ) , .A2 ( i_tv80_core_BusA_1_ ) , 
    .B ( n4610 ) , .X ( n4410 ) ) ;
SAEDRVT14_INV_S_0P5 U5429 ( .A ( n4918_CDR1 ) , .X ( n5127 ) ) ;
SAEDRVT14_OAI22_0P5 U5430 ( .A1 ( n3464_CDR1 ) , .A2 ( n5016 ) , 
    .B1 ( n5127 ) , .B2 ( n4924_CDR1 ) , .X ( n4425 ) ) ;
SAEDRVT14_AO221_0P5 U5431 ( .A1 ( n4683 ) , .A2 ( n2944 ) , .B1 ( n4676 ) , 
    .B2 ( n4856 ) , .C ( n4675 ) , .X ( n4422 ) ) ;
SAEDRVT14_AO21B_0P5 U5432 ( .A1 ( n4518 ) , .A2 ( n4416 ) , .B ( n4415 ) , 
    .X ( n4572 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8101 ( .A1 ( n3461 ) , .A2 ( n2821 ) , 
    .B ( tmp_net289 ) , .X ( tmp_net290 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5434 ( .A1 ( n375 ) , .A2 ( n4683 ) , .X ( n4419 ) ) ;
SAEDRVT14_AOI21_0P75 U5435 ( .A1 ( n4419 ) , .A2 ( n4684 ) , .B ( n2944 ) , 
    .X ( n4420 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5436 ( .D0 ( i_tv80_core_BusA_1_ ) , .D1 ( n2837 ) , 
    .S ( n3103 ) , .X ( n4949 ) ) ;
SAEDRVT14_OAI22_0P5 U5437 ( .A1 ( n4810 ) , .A2 ( n4936 ) , .B1 ( n4949 ) , 
    .B2 ( n4656 ) , .X ( n4423 ) ) ;
SAEDRVT14_DEL_R2V2_2 gre_mt_inst_8524 ( .A ( n3387 ) , .X ( gre_net_563 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8154 ( .A1 ( n3461 ) , .A2 ( n2757 ) , 
    .B ( tmp_net319 ) , .X ( tmp_net320 ) ) ;
SAEDRVT14_INV_S_0P5 U5440 ( .A ( n4452 ) , .X ( n4456 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5441 ( .A1 ( n2777 ) , .A2 ( i_tv80_core_ISet_1_ ) , 
    .X ( n4836 ) ) ;
SAEDRVT14_INV_0P5 U5442 ( .A ( n4836 ) , .X ( n6291 ) ) ;
SAEDRVT14_AO21B_0P5 U5445 ( .A1 ( n3347 ) , .A2 ( n3050 ) , .B ( n6261 ) , 
    .X ( n5346 ) ) ;
SAEDRVT14_OR3_0P5 U5446 ( .A1 ( n3344 ) , .A2 ( n3255 ) , .A3 ( n5346 ) , 
    .X ( n5043 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5447 ( .A1 ( n3431 ) , .A2 ( n2643 ) , .X ( n5270 ) ) ;
SAEDRVT14_INV_S_0P5 U5448 ( .A ( n5270 ) , .X ( n5569 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5449 ( .A1 ( n5569 ) , .A2 ( n4472 ) , .X ( n5570 ) ) ;
SAEDRVT14_AO21B_0P5 U5450 ( .A1 ( n4477 ) , .A2 ( n4717 ) , .B ( HFSNET_14 ) , 
    .X ( n4716 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8102 ( .A1 ( n2825 ) , .A2 ( n3460 ) , 
    .X ( tmp_net289 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_8116 ( .A1 ( n3569 ) , .A2 ( n3572 ) , 
    .A3 ( tmp_net299 ) , .X ( i_tv80_core_RegBusC_11_ ) ) ;
SAEDRVT14_ND2_CDC_1 U5453 ( .A1 ( n184_CDR1 ) , .A2 ( HFSNET_23 ) , 
    .X ( n4504 ) ) ;
SAEDRVT14_INV_0P5 U5454 ( .A ( i_tv80_core_RegBusC_0_ ) , .X ( n5763 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5455 ( .D0 ( n556 ) , .D1 ( n5763 ) , 
    .S ( HFSNET_23 ) , .X ( n4503 ) ) ;
SAEDRVT14_INV_S_0P5 U5456 ( .A ( n5710 ) , .X ( n4502 ) ) ;
SAEDRVT14_AOI21_0P75 U5458 ( .A1 ( n4480 ) , .A2 ( n4810 ) , .B ( n372 ) , 
    .X ( n4497 ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_2_1755 ( .A1 ( n3817 ) , .A2 ( n3816 ) , 
    .B ( tmp_net91 ) , .X ( tmp_net92 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_1756 ( .A1 ( n2992 ) , .A2 ( n3818 ) , 
    .B ( tmp_net92 ) , .X ( i_tv80_core_RegBusA_12_ ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_1757 ( .A1 ( tmp_net72 ) , .A2 ( tmp_net59 ) , 
    .B ( n3782 ) , .X ( tmp_net93 ) ) ;
SAEDRVT14_INV_S_0P5 U5463 ( .A ( n4919_CDR1 ) , .X ( n5126 ) ) ;
SAEDRVT14_OAI22_0P5 U5464 ( .A1 ( n5016 ) , .A2 ( n5102_CDR1 ) , 
    .B1 ( n5126 ) , .B2 ( n4924_CDR1 ) , .X ( n4496 ) ) ;
SAEDRVT14_AO221_0P5 U5465 ( .A1 ( n4683 ) , .A2 ( n358 ) , .B1 ( n4676 ) , 
    .B2 ( i_tv80_core_i_alu_N185 ) , .C ( n4675 ) , .X ( n4489 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_1758 ( .A1 ( n3767 ) , .A2 ( n3768 ) , 
    .A3 ( tmp_net93 ) , .X ( tmp_net94 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5467 ( .A1 ( n372 ) , .A2 ( n4683 ) , .X ( n4486 ) ) ;
SAEDRVT14_AOI21_0P75 U5468 ( .A1 ( n4486 ) , .A2 ( n4684 ) , .B ( n358 ) , 
    .X ( n4487 ) ) ;
SAEDRVT14_AO221_0P5 U5469 ( .A1 ( n4489 ) , .A2 ( n4499 ) , .B1 ( n4488 ) , 
    .B2 ( n4679 ) , .C ( n4487 ) , .X ( n5072_CDR1 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5470 ( .D0 ( n4492 ) , .D1 ( n4517 ) , .S ( n3103 ) , 
    .X ( n5116_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5471 ( .A ( n5116_CDR1 ) , .X ( n4493 ) ) ;
SAEDRVT14_AO21_U_0P5 U5472 ( .A1 ( n5674 ) , .A2 ( n5072_CDR1 ) , 
    .B ( n4494 ) , .X ( n4495 ) ) ;
SAEDRVT14_OA31_U_0P5 U5473 ( .A1 ( n4495 ) , .A2 ( n4497 ) , .A3 ( n4496 ) , 
    .B ( n4662 ) , .X ( n4498 ) ) ;
SAEDRVT14_AO221_0P5 U5474 ( .A1 ( n4673 ) , .A2 ( n4499 ) , .B1 ( n4713 ) , 
    .B2 ( di_reg_0__CDR1 ) , .C ( n4498 ) , .X ( n5436 ) ) ;
SAEDRVT14_INV_S_0P5 U5475 ( .A ( n5570 ) , .X ( n4737 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_380/U2 ( .A ( n6359 ) , 
    .X ( i_tv80_core_N153 ) ) ;
SAEDRVT14_INV_S_0P5 U5477 ( .A ( i_tv80_core_RegBusC_1_ ) , .X ( n6130 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8117 ( .A1 ( n3460 ) , .A2 ( n2828 ) , 
    .B ( tmp_net298 ) , .X ( tmp_net299 ) ) ;
SAEDRVT14_INV_S_0P5 U5479 ( .A ( n4538 ) , .X ( n5026 ) ) ;
SAEDRVT14_INV_0P5 U5480 ( .A ( n5275 ) , .X ( n4546 ) ) ;
SAEDRVT14_OA31_1 U5481 ( .A1 ( n5026 ) , .A2 ( n4546 ) , .A3 ( n4542 ) , 
    .B ( n5325 ) , .X ( n4512 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5482 ( .A1 ( n4546 ) , .A2 ( n3038 ) , .X ( n5025 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5483 ( .A1 ( n6366 ) , .A2 ( n5025 ) , .X ( n4536 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5484 ( .A1 ( n4541 ) , .A2 ( n4537 ) , .X ( n5040 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_1759 ( .A1 ( n3781 ) , .A2 ( HFSNET_20 ) , 
    .B ( tmp_net94 ) , .X ( i_tv80_core_RegBusA_7_ ) ) ;
SAEDRVT14_ND2_MM_0P5 U5486 ( .A1 ( n5274 ) , .A2 ( n4509 ) , .X ( n4540 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_2_1907 ( .A1 ( n5388 ) , .A2 ( n3137 ) , 
    .B ( tmp_net153 ) , .X ( n3909 ) ) ;
SAEDRVT14_INV_0P5 U5488 ( .A ( n4548 ) , .X ( n5028 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_2_1933 ( .A1 ( n5098 ) , .A2 ( tmp_net160 ) , 
    .B1 ( n5090 ) , .B2 ( tmp_net139 ) , .X ( tmp_net161 ) ) ;
SAEDRVT14_EN3_U_0P5 U5490 ( .A1 ( n4533 ) , .A2 ( n3386 ) , .A3 ( n4534 ) , 
    .X ( n5766 ) ) ;
SAEDRVT14_INV_S_0P5 U5491 ( .A ( n5766 ) , .X ( n4532 ) ) ;
SAEDRVT14_INV_S_0P5 U5492 ( .A ( n4525 ) , .X ( n4934 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5493 ( .D0 ( n4692 ) , .D1 ( n4868 ) , .S ( n4934 ) , 
    .X ( n4513 ) ) ;
SAEDRVT14_AOI21_0P75 U5494 ( .A1 ( n4513 ) , .A2 ( n4810 ) , .B ( n373 ) , 
    .X ( n4529 ) ) ;
SAEDRVT14_INV_S_0P5 U5495 ( .A ( n4514 ) , .X ( n4559 ) ) ;
SAEDRVT14_AOI21_0P75 U5496 ( .A1 ( n4615 ) , .A2 ( i_tv80_core_BusA_1_ ) , 
    .B ( n4559 ) , .X ( n4516 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5497 ( .D0 ( n4517 ) , .D1 ( i_tv80_core_BusA_1_ ) , 
    .S ( n4615 ) , .X ( n4515 ) ) ;
SAEDRVT14_INV_S_0P5 U5498 ( .A ( n4921_CDR1 ) , .X ( n5124_CDR1 ) ) ;
SAEDRVT14_AO221_0P5 U5499 ( .A1 ( n4683 ) , .A2 ( n4517 ) , .B1 ( n4676 ) , 
    .B2 ( i_tv80_core_BusA_1_ ) , .C ( n4675 ) , .X ( n4524 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5500 ( .A1 ( n373 ) , .A2 ( n4683 ) , .X ( n4521 ) ) ;
SAEDRVT14_AOI21_0P75 U5501 ( .A1 ( n4521 ) , .A2 ( n4684 ) , .B ( n4517 ) , 
    .X ( n4522 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5502 ( .D0 ( i_tv80_core_i_alu_N185 ) , .D1 ( n4856 ) , 
    .S ( n3103 ) , .X ( n4950 ) ) ;
SAEDRVT14_OAI22_0P5 U5503 ( .A1 ( n4525 ) , .A2 ( n4810 ) , .B1 ( n4950 ) , 
    .B2 ( n4656 ) , .X ( n4526 ) ) ;
SAEDRVT14_AO21_U_0P5 U5504 ( .A1 ( n5674 ) , .A2 ( n5070_CDR1 ) , 
    .B ( n4526 ) , .X ( n4527 ) ) ;
SAEDRVT14_INV_S_0P5 U5505 ( .A ( i_tv80_core_RegBusC_2_ ) , .X ( n6138 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5506 ( .D0 ( n558 ) , .D1 ( n6138 ) , 
    .S ( HFSNET_23 ) , .X ( n4554 ) ) ;
SAEDRVT14_INV_S_0P5 U5507 ( .A ( n4554 ) , .X ( n4551 ) ) ;
SAEDRVT14_ND2_CDC_1 U5508 ( .A1 ( n4534 ) , .A2 ( n4533 ) , .X ( n4594 ) ) ;
SAEDRVT14_ND2_CDC_1 U5509 ( .A1 ( n4594 ) , .A2 ( n4593 ) , .X ( n4555 ) ) ;
SAEDRVT14_AO21B_0P5 U5510 ( .A1 ( n5317 ) , .A2 ( n3103 ) , .B ( n4538 ) , 
    .X ( n4544 ) ) ;
SAEDRVT14_AO21B_0P5 U5511 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_2__CDR1 ) , 
    .B ( n2749 ) , .X ( n4553 ) ) ;
SAEDRVT14_INV_S_0P5 U5512 ( .A ( i_tv80_core_RegBusC_3_ ) , .X ( n5788 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5513 ( .D0 ( n559 ) , .D1 ( n5788 ) , 
    .S ( HFSNET_23 ) , .X ( n4586 ) ) ;
SAEDRVT14_INV_S_0P5 U5514 ( .A ( n4586 ) , .X ( n4585 ) ) ;
SAEDRVT14_ND2_CDC_1 U5515 ( .A1 ( n4554 ) , .A2 ( n4553 ) , .X ( n4595 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_1934 ( .A1 ( tmp_net140 ) , 
    .A2 ( tmp_net161 ) , .X ( n5146 ) ) ;
SAEDRVT14_AO21B_0P5 U5517 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_3__CDR1 ) , 
    .B ( n2749 ) , .X ( n4587 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5518 ( .A1 ( n3103 ) , .A2 ( n4556 ) , .X ( n4935 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1935 ( .A1 ( n5783 ) , 
    .A2 ( i_tv80_core_PC_2_ ) , .X ( tmp_net162 ) ) ;
SAEDRVT14_INV_S_0P5 U5520 ( .A ( n5016 ) , .X ( n5139_CDR1 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1936 ( .A1 ( tmp_net162 ) , .A2 ( n5785 ) , 
    .X ( n5780 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1937 ( .A1 ( n5816 ) , 
    .A2 ( i_tv80_core_PC_5_ ) , .X ( tmp_net163 ) ) ;
SAEDRVT14_AOI21_0P75 U5523 ( .A1 ( n4615 ) , .A2 ( n2837 ) , .B ( n4562 ) , 
    .X ( n4567 ) ) ;
SAEDRVT14_INV_S_0P5 U5524 ( .A ( n4563 ) , .X ( n4564 ) ) ;
SAEDRVT14_OAI22_0P5 U5525 ( .A1 ( n4567 ) , .A2 ( i_tv80_core_F_1_ ) , 
    .B1 ( n4566 ) , .B2 ( n401 ) , .X ( n4925 ) ) ;
SAEDRVT14_INV_S_0P5 U5526 ( .A ( n4920_CDR1 ) , .X ( n5125_CDR1 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5527 ( .D0 ( n4856 ) , 
    .D1 ( i_tv80_core_BusA_4__CDR1 ) , .S ( n3103 ) , .X ( n4946 ) ) ;
SAEDRVT14_OAI22_0P5 U5528 ( .A1 ( n5125_CDR1 ) , .A2 ( n4924_CDR1 ) , 
    .B1 ( n4946 ) , .B2 ( n4656 ) , .X ( n4568 ) ) ;
SAEDRVT14_AO21_U_0P5 U5529 ( .A1 ( n5139_CDR1 ) , .A2 ( n4925 ) , 
    .B ( n4568 ) , .X ( n5680 ) ) ;
SAEDRVT14_AO221_0P5 U5530 ( .A1 ( n4683 ) , .A2 ( n2836 ) , .B1 ( n4676 ) , 
    .B2 ( n2837 ) , .C ( n4675 ) , .X ( n4578 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5531 ( .A1 ( n376 ) , .A2 ( n4683 ) , .X ( n4575 ) ) ;
SAEDRVT14_AOI21_0P75 U5532 ( .A1 ( n4575 ) , .A2 ( n4684 ) , .B ( n2836 ) , 
    .X ( n4576 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_1938 ( .A1 ( tmp_net163 ) , .A2 ( n5819 ) , 
    .X ( n5810 ) ) ;
SAEDRVT14_INV_S_0P5 U5534 ( .A ( i_tv80_core_RegBusC_4_ ) , .X ( n5801 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8118 ( .A1 ( n2834 ) , .A2 ( n3461 ) , 
    .X ( tmp_net298 ) ) ;
SAEDRVT14_AO21B_0P5 U5536 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_4__CDR1 ) , 
    .B ( n2749 ) , .X ( n4591 ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_8119 ( .A1 ( tmp_net300 ) , 
    .A2 ( tmp_net301 ) , .X ( n6051 ) ) ;
SAEDRVT14_INV_S_0P5 U5538 ( .A ( i_tv80_core_RegBusC_5_ ) , .X ( n6160 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5539 ( .D0 ( n561 ) , .D1 ( n6160 ) , 
    .S ( HFSNET_23 ) , .X ( n4634 ) ) ;
SAEDRVT14_INV_S_0P5 U5540 ( .A ( n4634 ) , .X ( n4633 ) ) ;
SAEDRVT14_ND2_CDC_1 U5541 ( .A1 ( n4592 ) , .A2 ( n4591 ) , .X ( n4727 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8120 ( .A ( i_tv80_core_Read_To_Reg_r_4_ ) , 
    .X ( tmp_net300 ) ) ;
SAEDRVT14_ND2_CDC_1 U5543 ( .A1 ( n4727 ) , .A2 ( n2728 ) , .X ( n4636 ) ) ;
SAEDRVT14_AO21B_0P5 U5544 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_5__CDR1 ) , 
    .B ( n2749 ) , .X ( n4635 ) ) ;
SAEDRVT14_AO221_0P5 U5545 ( .A1 ( n4683 ) , .A2 ( n369 ) , .B1 ( n4676 ) , 
    .B2 ( i_tv80_core_BusA_5__CDR1 ) , .C ( n4675 ) , .X ( n4609 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5546 ( .A1 ( n4603 ) , .A2 ( n367_CDR1 ) , 
    .X ( n4638 ) ) ;
SAEDRVT14_ND2_ECO_1 U5547 ( .A1 ( i_tv80_core_BusA_4__CDR1 ) , .A2 ( n4604 ) , 
    .X ( n4637 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_1940 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_4_ ) , .B ( n5495 ) , .X ( tmp_net164 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5549 ( .A1 ( n378 ) , .A2 ( n4683 ) , .X ( n4606 ) ) ;
SAEDRVT14_AOI21_0P75 U5550 ( .A1 ( n4606 ) , .A2 ( n4684 ) , .B ( n369 ) , 
    .X ( n4607 ) ) ;
SAEDRVT14_OR3_0P5 U5551 ( .A1 ( n367_CDR1 ) , .A2 ( n2836 ) , .A3 ( n4610 ) , 
    .X ( n4618 ) ) ;
SAEDRVT14_OR3_0P5 U5552 ( .A1 ( n371_CDR1 ) , .A2 ( n4614 ) , .A3 ( n4615 ) , 
    .X ( n4803 ) ) ;
SAEDRVT14_EO2_0P5 U5553 ( .A1 ( n4618 ) , .A2 ( i_tv80_core_BusA_5__CDR1 ) , 
    .X ( n4611 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5554 ( .D0 ( n4611 ) , .D1 ( n369 ) , .S ( n4615 ) , 
    .X ( n4644 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5555 ( .D0 ( n4616 ) , .D1 ( n371_CDR1 ) , 
    .S ( n4615 ) , .X ( n4804 ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_3_8121 ( .D0 ( n4348 ) , .D1 ( n3417 ) , 
    .S ( n436 ) , .X ( tmp_net301 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5557 ( .A1 ( n4694 ) , .A2 ( n4696 ) , .X ( n4624 ) ) ;
SAEDRVT14_AO21B_0P5 U5558 ( .A1 ( n3397 ) , .A2 ( n4618 ) , 
    .B ( i_tv80_core_BusA_7__CDR1 ) , .X ( n4619 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5559 ( .A1 ( n4814 ) , .A2 ( n4619 ) , .X ( n4647 ) ) ;
SAEDRVT14_INV_S_0P5 U5560 ( .A ( n4647 ) , .X ( n4806 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5561 ( .A1 ( n4620 ) , 
    .A2 ( i_tv80_core_BusA_5__CDR1 ) , .X ( n4621 ) ) ;
SAEDRVT14_INV_S_0P5 U5562 ( .A ( n4621 ) , .X ( n4648 ) ) ;
SAEDRVT14_ND2_ECO_1 U5563 ( .A1 ( n4647 ) , .A2 ( n4621 ) , .X ( n4702 ) ) ;
SAEDRVT14_INV_S_0P5 U5564 ( .A ( n4702 ) , .X ( n4622 ) ) ;
SAEDRVT14_AOI21_0P75 U5565 ( .A1 ( n4806 ) , .A2 ( n4648 ) , .B ( n4622 ) , 
    .X ( n4623 ) ) ;
SAEDRVT14_OAI22_0P5 U5566 ( .A1 ( n4624 ) , .A2 ( i_tv80_core_F_1_ ) , 
    .B1 ( n4623 ) , .B2 ( n401 ) , .X ( n4929 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5567 ( .D0 ( i_tv80_core_BusA_4__CDR1 ) , 
    .D1 ( i_tv80_core_BusA_6__CDR1 ) , .S ( n3103 ) , .X ( n4947 ) ) ;
SAEDRVT14_OAI22_0P5 U5568 ( .A1 ( n369 ) , .A2 ( n4924_CDR1 ) , 
    .B1 ( n4947 ) , .B2 ( n4656 ) , .X ( n4625 ) ) ;
SAEDRVT14_AO21_U_0P5 U5569 ( .A1 ( n5139_CDR1 ) , .A2 ( n4929 ) , 
    .B ( n4625 ) , .X ( n5662 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5570 ( .D0 ( n4692 ) , .D1 ( n4868 ) , .S ( n3477 ) , 
    .X ( n4626 ) ) ;
SAEDRVT14_AOI21_0P75 U5571 ( .A1 ( n4626 ) , .A2 ( n4810 ) , .B ( n378 ) , 
    .X ( n4627 ) ) ;
SAEDRVT14_AOI21_0P75 U5572 ( .A1 ( n4691 ) , .A2 ( n3477 ) , .B ( n4627 ) , 
    .X ( n4628 ) ) ;
SAEDRVT14_AOI21_0P75 U5573 ( .A1 ( n4629 ) , .A2 ( n4628 ) , .B ( n4707 ) , 
    .X ( n4630 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_380/ctmTdsLR_1_8280 ( .A1 ( n6362 ) , 
    .A2 ( \i_tv80_core_add_380/carry_3_ ) , .X ( i_tv80_core_N156 ) ) ;
SAEDRVT14_INV_S_0P5 U5575 ( .A ( i_tv80_core_RegBusC_6_ ) , .X ( n6169 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5576 ( .D0 ( n562 ) , .D1 ( n6169 ) , 
    .S ( HFSNET_23 ) , .X ( n4666 ) ) ;
SAEDRVT14_INV_S_0P5 U5577 ( .A ( n4666 ) , .X ( n4665 ) ) ;
SAEDRVT14_ND2_ECO_1 U5578 ( .A1 ( n4633 ) , .A2 ( n4632 ) , .X ( n4720 ) ) ;
SAEDRVT14_AO21B_0P5 U5579 ( .A1 ( n4636 ) , .A2 ( n4720 ) , .B ( n4726 ) , 
    .X ( n4668 ) ) ;
SAEDRVT14_AO21B_0P5 U5580 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_6__CDR1 ) , 
    .B ( n2749 ) , .X ( n4667 ) ) ;
SAEDRVT14_INV_S_0P5 U5581 ( .A ( n4667 ) , .X ( n4664 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_1941 ( .A1 ( i_tv80_core_RegBusB_4_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net164 ) , .X ( tmp_net166 ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 ctmTdsLR_1_8122 ( .A1 ( n6374 ) , .A2 ( n3072 ) , 
    .B1 ( tmp_net302 ) , .B2 ( tmp_net303 ) , .X ( tmp_net82 ) ) ;
SAEDRVT14_ND2_ECO_1 U5584 ( .A1 ( n4694 ) , .A2 ( n4644 ) , .X ( n4645 ) ) ;
SAEDRVT14_EN3_U_0P5 U5585 ( .A1 ( n4645 ) , .A2 ( n4698 ) , .A3 ( n4694 ) , 
    .X ( n4652 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5586 ( .A1 ( n4646 ) , .A2 ( n3397 ) , .X ( n4700 ) ) ;
SAEDRVT14_AO21B_0P5 U5587 ( .A1 ( n4646 ) , .A2 ( n369 ) , 
    .B ( i_tv80_core_BusA_6__CDR1 ) , .X ( n4701 ) ) ;
SAEDRVT14_ND2_ECO_1 U5588 ( .A1 ( n4700 ) , .A2 ( n4701 ) , .X ( n4650 ) ) ;
SAEDRVT14_ND2_ECO_1 U5589 ( .A1 ( n4648 ) , .A2 ( n4647 ) , .X ( n4649 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5590 ( .A1 ( n4650 ) , .A2 ( n4649 ) , .X ( n4651 ) ) ;
SAEDRVT14_INV_0P5 U5591 ( .A ( n4924_CDR1 ) , .X ( n5132 ) ) ;
SAEDRVT14_AOI21_0P75 U5592 ( .A1 ( n4683 ) , .A2 ( n370_CDR1 ) , 
    .B ( n4675 ) , .X ( n4653 ) ) ;
SAEDRVT14_OA21_1 U5593 ( .A1 ( n370_CDR1 ) , .A2 ( n4862 ) , .B ( n4653 ) , 
    .X ( n4655 ) ) ;
SAEDRVT14_AOI21_0P75 U5594 ( .A1 ( n379 ) , .A2 ( n4683 ) , .B ( n4675 ) , 
    .X ( n4654 ) ) ;
SAEDRVT14_OAI22_0P5 U5595 ( .A1 ( n379 ) , .A2 ( n4655 ) , .B1 ( n370_CDR1 ) , 
    .B2 ( n4654 ) , .X ( n4954 ) ) ;
SAEDRVT14_INV_S_0P5 U5596 ( .A ( n4656 ) , .X ( n4838 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5597 ( .D0 ( n4692 ) , .D1 ( n4868 ) , .S ( n6031 ) , 
    .X ( n4657 ) ) ;
SAEDRVT14_AOI21_0P75 U5598 ( .A1 ( n4657 ) , .A2 ( n4810 ) , .B ( n379 ) , 
    .X ( n4658 ) ) ;
SAEDRVT14_AO221_0P5 U5599 ( .A1 ( n4838 ) , .A2 ( n3476_CDR1 ) , 
    .B1 ( n4691 ) , .B2 ( n6031 ) , .C ( n4658 ) , .X ( n4659 ) ) ;
SAEDRVT14_AO221_0P5 U5600 ( .A1 ( n5132 ) , .A2 ( i_tv80_core_BusA_6__CDR1 ) , 
    .B1 ( n5674 ) , .B2 ( n4954 ) , .C ( n4659 ) , .X ( n4660 ) ) ;
SAEDRVT14_NR2_1 \i_tv80_core_add_380/ctmTdsLR_2_8281 ( 
    .A1 ( \i_tv80_core_add_380/tmp_net398 ) , 
    .A2 ( \i_tv80_core_add_380/tmp_net399 ) , 
    .X ( \i_tv80_core_add_380/carry_5_ ) ) ;
SAEDRVT14_AO21B_0P5 U5602 ( .A1 ( HFSNET_23 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n2749 ) , .X ( n4901 ) ) ;
SAEDRVT14_INV_S_0P5 U5603 ( .A ( n4719 ) , .X ( n4725 ) ) ;
SAEDRVT14_ND2_ECO_1 U5604 ( .A1 ( n4665 ) , .A2 ( n4664 ) , .X ( n4721 ) ) ;
SAEDRVT14_ND2_CDC_1 U5605 ( .A1 ( n4666 ) , .A2 ( n4667 ) , .X ( n4723 ) ) ;
SAEDRVT14_AOI21_0P75 U5606 ( .A1 ( n4668 ) , .A2 ( n4721 ) , .B ( n4729 ) , 
    .X ( n4669 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5607 ( .D0 ( n370_CDR1 ) , .D1 ( n4671 ) , 
    .S ( n3103 ) , .X ( n4672 ) ) ;
SAEDRVT14_AO21_U_0P5 U5608 ( .A1 ( i_tv80_core_BusA_7__CDR1 ) , 
    .A2 ( n3477 ) , .B ( n4672 ) , .X ( n4948 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8123 ( .A ( n3076 ) , .X ( tmp_net302 ) ) ;
SAEDRVT14_NR2B_U_0P5 ctmTdsLR_1_1943 ( .A ( n4478 ) , .B ( n4477 ) , 
    .X ( n4714 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_1944 ( .A ( n5457 ) , .B ( n5402 ) , 
    .X ( tmp_net167 ) ) ;
SAEDRVT14_INV_S_0P5 U5612 ( .A ( n4932 ) , .X ( n4693 ) ) ;
SAEDRVT14_AO221_0P5 U5613 ( .A1 ( n371_CDR1 ) , .A2 ( n4683 ) , 
    .B1 ( n4676 ) , .B2 ( i_tv80_core_BusA_7__CDR1 ) , .C ( n4675 ) , 
    .X ( n4689 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5614 ( .A1 ( n4801 ) , 
    .A2 ( i_tv80_core_BusA_7__CDR1 ) , .X ( n4678 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_1945 ( .A1 ( n5457 ) , .A2 ( n5458 ) , 
    .B1 ( n5460 ) , .B2 ( n5449 ) , .C ( n5512 ) , .X ( tmp_net168 ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_3_1946 ( .A1 ( n3097 ) , .A2 ( tmp_net167 ) , 
    .B ( tmp_net168 ) , .X ( tmp_net169 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8124 ( .A ( n3042 ) , .X ( tmp_net303 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_2_8149 ( .A1 ( n5715 ) , .A2 ( tmp_net316 ) , 
    .B ( n5349 ) , .X ( tmp_net317 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_3_8150 ( .A1 ( n6326 ) , .A2 ( n4433 ) , 
    .A3 ( tstate_0_ ) , .X ( tmp_net316 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5620 ( .A1 ( n380 ) , .A2 ( n4683 ) , .X ( n4685 ) ) ;
SAEDRVT14_AOI21_0P75 U5621 ( .A1 ( n4685 ) , .A2 ( n4684 ) , 
    .B ( n371_CDR1 ) , .X ( n4686 ) ) ;
SAEDRVT14_ND2_CDC_1 U5622 ( .A1 ( n5674 ) , .A2 ( n5075_CDR1 ) , 
    .X ( n4839 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8337 ( .A1 ( n5095 ) , .A2 ( tmp_net433 ) , 
    .B ( n4966 ) , .X ( tmp_net434 ) ) ;
SAEDRVT14_AO32_U_0P5 U5624 ( .A1 ( i_tv80_core_BusB_7_ ) , .A2 ( n4693 ) , 
    .A3 ( n4868 ) , .B1 ( n5132 ) , .B2 ( i_tv80_core_BusA_7__CDR1 ) , 
    .X ( n4706 ) ) ;
SAEDRVT14_INV_S_0P5 U5625 ( .A ( n4694 ) , .X ( n4697 ) ) ;
SAEDRVT14_AN2_MM_0P5 U5626 ( .A1 ( n4699 ) , .A2 ( n3449 ) , .X ( n4695 ) ) ;
SAEDRVT14_OAI22_0P5 U5627 ( .A1 ( n4698 ) , .A2 ( n4697 ) , .B1 ( n4696 ) , 
    .B2 ( n4695 ) , .X ( n4805 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5628 ( .A1 ( n4805 ) , .A2 ( n4699 ) , .X ( n4928 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5629 ( .A1 ( n4700 ) , 
    .A2 ( i_tv80_core_BusA_7__CDR1 ) , .X ( n4808 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_3_8338 ( .A1 ( n5135 ) , .A2 ( n4963_CDR1 ) , 
    .A3 ( n4964_CDR1 ) , .X ( tmp_net433 ) ) ;
SAEDRVT14_OAI21_0P75 ctmTdsLR_1_8339 ( .A1 ( n5945 ) , .A2 ( n179_CDR1 ) , 
    .B ( tmp_net435 ) , .X ( n5922 ) ) ;
SAEDRVT14_ND2B_U_0P5 U5632 ( .A ( n4706 ) , .B ( n4705 ) , .X ( n4837 ) ) ;
SAEDRVT14_AO21B_0P5 U5633 ( .A1 ( n4713 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n4712 ) , .X ( n5339 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_380/ctmTdsLR_3_8282 ( .A1 ( n6362 ) , 
    .A2 ( \i_tv80_core_add_380/carry_3_ ) , 
    .X ( \i_tv80_core_add_380/tmp_net398 ) ) ;
SAEDRVT14_AO21B_0P5 U5635 ( .A1 ( n4733 ) , .A2 ( n4717 ) , .B ( HFSNET_14 ) , 
    .X ( n4983 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8340 ( .A ( n5931 ) , .B ( n5920 ) , 
    .X ( tmp_net435 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1954 ( .A ( n4254 ) , .X ( tmp_net173 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1955 ( .A1 ( n4255 ) , .A2 ( tmp_net173 ) , 
    .X ( n3423 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1956 ( .A ( n255 ) , .X ( tmp_net174 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1957 ( .A1 ( n4273 ) , .A2 ( tmp_net174 ) , 
    .B ( n5245 ) , .X ( n5250 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_1958 ( .A1 ( n5995_CDR1 ) , .A2 ( n5714 ) , 
    .B ( n4142 ) , .X ( tmp_net175 ) ) ;
SAEDRVT14_INV_0P5 \i_tv80_core_add_380/ctmTdsLR_4_8283 ( .A ( n6363 ) , 
    .X ( \i_tv80_core_add_380/tmp_net399 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1959 ( .A1 ( n4127 ) , .A2 ( n4276 ) , 
    .B ( i_tv80_core_ISet_1_ ) , .X ( tmp_net176 ) ) ;
SAEDRVT14_ND2_ECO_1 U5644 ( .A1 ( n2665 ) , .A2 ( n3033 ) , .X ( n4758 ) ) ;
SAEDRVT14_AO21B_0P5 U5645 ( .A1 ( n4739 ) , .A2 ( n4758 ) , .B ( n4763 ) , 
    .X ( n4743 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_380/ctmTdsLR_5_8284 ( 
    .A1 ( \i_tv80_core_add_380/tmp_net399 ) , 
    .A2 ( \i_tv80_core_add_380/tmp_net398 ) , .X ( i_tv80_core_N157 ) ) ;
SAEDRVT14_INV_S_0P5 U5647 ( .A ( n4765 ) , .X ( n4760 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8341 ( .A1 ( i_tv80_core_RegBusB_5_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net436 ) , .X ( n5481 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8111 ( 
    .A1 ( i_tv80_core_TmpAddr_5_ ) , .A2 ( \i_tv80_core_add_548/n11 ) , 
    .X ( i_tv80_core_N252 ) ) ;
SAEDRVT14_INV_S_0P5 U5650 ( .A ( n4749 ) , .X ( n4746 ) ) ;
SAEDRVT14_INV_S_0P5 U5651 ( .A ( n4748 ) , .X ( n4747 ) ) ;
SAEDRVT14_OAI22_0P5 U5652 ( .A1 ( n558 ) , .A2 ( n5009 ) , .B1 ( n566 ) , 
    .B2 ( n5008 ) , .X ( n4750 ) ) ;
SAEDRVT14_AO221_0P5 U5653 ( .A1 ( n3290 ) , .A2 ( di_reg_2__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_2_ ) , .C ( n4750 ) , .X ( n4752 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8155 ( .A1 ( n2966 ) , .A2 ( n3460 ) , 
    .X ( tmp_net319 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U5655 ( .D0 ( n4752 ) , .D1 ( n4856 ) , .S ( n5011 ) , 
    .X ( n4753 ) ) ;
SAEDRVT14_AO221_0P5 U5656 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_2_ ) , 
    .B1 ( n3305 ) , .B2 ( i_tv80_core_RegBusA_10_ ) , .C ( n4753 ) , 
    .X ( n2436 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5657 ( .D0 ( i_tv80_core_Ap_3_ ) , 
    .D1 ( i_tv80_core_ACC_3_ ) , .S ( n5672 ) , .X ( n4754 ) ) ;
SAEDRVT14_ND2_CDC_1 U5658 ( .A1 ( HFSNET_17 ) , .A2 ( n4754 ) , .X ( n2416 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5659 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_3_ ) , .X ( n4757 ) ) ;
SAEDRVT14_ADDH_0P5 \i_tv80_core_add_548/U21 ( 
    .A ( \i_tv80_core_add_548/n14 ) , .B ( i_tv80_core_TmpAddr_2_ ) , 
    .CO ( \i_tv80_core_add_548/n13 ) , .S ( i_tv80_core_N249 ) ) ;
SAEDRVT14_INV_S_0P5 U5661 ( .A ( n4776 ) , .X ( n4777 ) ) ;
SAEDRVT14_AN2B_MM_1 ctmTdsLR_1_1961 ( .B ( n1491 ) , .A ( n5008 ) , 
    .X ( n5011 ) ) ;
SAEDRVT14_ND2_CDC_1 U5663 ( .A1 ( n4765 ) , .A2 ( n4901 ) , .X ( n4778 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8156 ( .A1 ( n3249 ) , .A2 ( n3091 ) , 
    .B ( tmp_net323 ) , .X ( n3822 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8157 ( .A1 ( n3247 ) , .A2 ( n3087 ) , 
    .B ( tmp_net322 ) , .X ( tmp_net323 ) ) ;
SAEDRVT14_OAI22_0P5 U5666 ( .A1 ( n559 ) , .A2 ( n5009 ) , .B1 ( n567 ) , 
    .B2 ( n5008 ) , .X ( n4769 ) ) ;
SAEDRVT14_AO221_0P5 U5667 ( .A1 ( n3290 ) , .A2 ( di_reg_3__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_3_ ) , .C ( n4769 ) , .X ( n4770 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U5668 ( .D0 ( n4770 ) , .D1 ( n2837 ) , .S ( n5011 ) , 
    .X ( n4771 ) ) ;
SAEDRVT14_AO221_0P5 U5669 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_3_ ) , 
    .B1 ( n3305 ) , .B2 ( n3119 ) , .C ( n4771 ) , .X ( n2435 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5670 ( .D0 ( i_tv80_core_Ap_5_ ) , 
    .D1 ( i_tv80_core_ACC_5_ ) , .S ( n5672 ) , .X ( n4772 ) ) ;
SAEDRVT14_ND2_CDC_1 U5671 ( .A1 ( HFSNET_17 ) , .A2 ( n4772 ) , .X ( n2414 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5672 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_5_ ) , .X ( n4775 ) ) ;
SAEDRVT14_INV_S_0P5 U5673 ( .A ( n5669 ) , .X ( n6074 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8112 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net296 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net297 ) , .X ( \i_tv80_core_add_548/n9 ) ) ;
SAEDRVT14_ND2_CDC_1 U5675 ( .A1 ( n4776 ) , .A2 ( n3032 ) , .X ( n4847 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8158 ( .A1 ( n3248 ) , .A2 ( n3089 ) , 
    .B ( tmp_net321 ) , .X ( tmp_net322 ) ) ;
SAEDRVT14_ND2_CDC_1 U5677 ( .A1 ( n4849 ) , .A2 ( n4901 ) , .X ( n4780 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_1962 ( .A1 ( n5665 ) , .A2 ( n5666 ) , 
    .B1 ( n5686 ) , .B2 ( n3462 ) , .X ( tmp_net177 ) ) ;
SAEDRVT14_ND2_ECO_1 U5679 ( .A1 ( n4780 ) , .A2 ( n4847 ) , .X ( n4978 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_1963 ( .A1 ( n5657 ) , .A2 ( n5657 ) , 
    .B1 ( n443 ) , .B2 ( n5658 ) , .C ( tmp_net177 ) , .X ( n5670 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/U23 ( .A ( i_tv80_core_TmpAddr_0_ ) , 
    .X ( i_tv80_core_N247 ) ) ;
SAEDRVT14_OAI22_0P5 U5682 ( .A1 ( n561 ) , .A2 ( n5009 ) , .B1 ( n569 ) , 
    .B2 ( n5008 ) , .X ( n4789 ) ) ;
SAEDRVT14_AO221_0P5 U5683 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_5_ ) , 
    .B1 ( n3305 ) , .B2 ( i_tv80_core_RegBusA_13_ ) , .C ( n4791 ) , 
    .X ( n2433 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5684 ( .D0 ( i_tv80_core_Fp_0_ ) , 
    .D1 ( i_tv80_core_F_0_ ) , .S ( n5672 ) , .X ( n4792 ) ) ;
SAEDRVT14_OA22_U_0P5 U5686 ( .A1 ( n4794 ) , .A2 ( n6366 ) , .B1 ( n575 ) , 
    .B2 ( n4793 ) , .X ( n4795 ) ) ;
SAEDRVT14_OAI22_0P5 U5687 ( .A1 ( n4795 ) , .A2 ( n5707 ) , .B1 ( n130 ) , 
    .B2 ( n6046 ) , .X ( n2424 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5688 ( .A1 ( i_tv80_core_F_0_ ) , .A2 ( n4870 ) , 
    .X ( n4797 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U5689 ( .D0 ( n4797 ) , .D1 ( i_tv80_core_Fp_0_ ) , 
    .S ( n5014 ) , .X ( n4821 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5690 ( .D0 ( n371_CDR1 ) , .D1 ( n358 ) , 
    .S ( n3103 ) , .X ( n4818 ) ) ;
SAEDRVT14_AO21B_0P5 U5691 ( .A1 ( n4805 ) , .A2 ( n4804 ) , .B ( n4803 ) , 
    .X ( n5110 ) ) ;
SAEDRVT14_AOI21_0P75 U5692 ( .A1 ( n4808 ) , .A2 ( n4807 ) , .B ( n4806 ) , 
    .X ( n4809 ) ) ;
SAEDRVT14_ND2_ECO_1 U5693 ( .A1 ( i_tv80_core_F_1_ ) , .A2 ( n4809 ) , 
    .X ( n5105 ) ) ;
SAEDRVT14_INV_S_0P5 U5694 ( .A ( n5105 ) , .X ( n5112 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5695 ( .A1 ( n4811 ) , .A2 ( n4810 ) , .X ( n4812 ) ) ;
SAEDRVT14_AO21_U_0P5 U5696 ( .A1 ( n4813 ) , 
    .A2 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .B ( n4812 ) , .X ( n4858 ) ) ;
SAEDRVT14_INV_S_0P5 U5697 ( .A ( n4858 ) , .X ( n5677 ) ) ;
SAEDRVT14_AO21B_0P5 U5698 ( .A1 ( i_tv80_core_Save_ALU_r ) , .A2 ( n5049 ) , 
    .B ( n5660 ) , .X ( n4962 ) ) ;
SAEDRVT14_ND2_ECO_1 U5699 ( .A1 ( n130 ) , .A2 ( n4962 ) , .X ( n4830 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5700 ( .A1 ( n3338 ) , .A2 ( n4822 ) , .X ( n5691 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1964 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_9_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_1_ ) , 
    .X ( n3858 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1965 ( .A1 ( i_tv80_core_PC_1_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_1__CDR1 ) , .X ( n3861 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1966 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_10_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_2_ ) , 
    .X ( n3865 ) ) ;
SAEDRVT14_ND2_ECO_1 U5704 ( .A1 ( n4878 ) , .A2 ( n4827 ) , .X ( n4845 ) ) ;
SAEDRVT14_AO21B_0P5 U5705 ( .A1 ( n3265 ) , .A2 ( n4828 ) , .B ( n4870 ) , 
    .X ( n4829 ) ) ;
SAEDRVT14_INV_S_0P5 U5706 ( .A ( n4829 ) , .X ( n5683 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5707 ( .D0 ( i_tv80_core_Fp_7_ ) , .D1 ( n3005 ) , 
    .S ( n5672 ) , .X ( n4834 ) ) ;
SAEDRVT14_ND2_CDC_1 U5708 ( .A1 ( HFSNET_17 ) , .A2 ( n4834 ) , .X ( n2393 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5709 ( .A1 ( n3431 ) , .A2 ( n6036 ) , .X ( n6299 ) ) ;
SAEDRVT14_OAI22_0P5 U5710 ( .A1 ( n5707 ) , .A2 ( n6299 ) , .B1 ( n437 ) , 
    .B2 ( n6046 ) , .X ( n2411 ) ) ;
SAEDRVT14_INV_S_0P5 U5711 ( .A ( n4962 ) , .X ( n5088 ) ) ;
SAEDRVT14_OR3_1 U5712 ( .A1 ( n5756 ) , .A2 ( n4836 ) , .A3 ( n4835 ) , 
    .X ( n5135 ) ) ;
SAEDRVT14_ND2_ECO_1 U5713 ( .A1 ( n5088 ) , .A2 ( n5135 ) , .X ( n5090 ) ) ;
SAEDRVT14_AOI21_0P5 U5714 ( .A1 ( n3340 ) , .A2 ( n4948 ) , .B ( n4837 ) , 
    .X ( n4841 ) ) ;
SAEDRVT14_AO221_0P5 U5715 ( .A1 ( n4838 ) , .A2 ( n3431 ) , .B1 ( n5674 ) , 
    .B2 ( i_tv80_core_Arith16_r ) , .C ( n4858 ) , .X ( n5130 ) ) ;
SAEDRVT14_AOI21_0P75 U5716 ( .A1 ( n4840 ) , .A2 ( n4841 ) , .B ( n5088 ) , 
    .X ( n4842 ) ) ;
SAEDRVT14_INV_0P5 U5717 ( .A ( n5135 ) , .X ( n5098 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5718 ( .D0 ( n4842 ) , .D1 ( di_reg_7__CDR1 ) , 
    .S ( n5098 ) , .X ( n4843 ) ) ;
SAEDRVT14_AO221_0P5 U5719 ( .A1 ( n4844 ) , .A2 ( n5691 ) , .B1 ( n3416 ) , 
    .B2 ( n3041 ) , .C ( HFSNET_16 ) , .X ( n4846 ) ) ;
SAEDRVT14_INV_S_0P5 U5720 ( .A ( n4968 ) , .X ( n5064 ) ) ;
SAEDRVT14_MUX2_U_0P5 U5721 ( .D0 ( n4846 ) , .D1 ( n3005 ) , .S ( n5064 ) , 
    .X ( n2482 ) ) ;
SAEDRVT14_ND2_CDC_1 U5722 ( .A1 ( n4847 ) , .A2 ( n2910 ) , .X ( n4848 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8275 ( .A1 ( n6356 ) , 
    .A2 ( \i_tv80_core_add_548/n3 ) , .X ( i_tv80_core_N260 ) ) ;
SAEDRVT14_OAI22_0P5 U5724 ( .A1 ( n560 ) , .A2 ( n5009 ) , .B1 ( n568 ) , 
    .B2 ( n5008 ) , .X ( n4851 ) ) ;
SAEDRVT14_AO221_0P5 U5725 ( .A1 ( n3303 ) , .A2 ( n3026 ) , .B1 ( n3305 ) , 
    .B2 ( i_tv80_core_RegBusA_12_ ) , .C ( n4853 ) , .X ( n2434 ) ) ;
SAEDRVT14_INV_0P5 U5726 ( .A ( n5691 ) , .X ( n5148 ) ) ;
SAEDRVT14_OR4_1 U5727 ( .A1 ( n5090 ) , .A2 ( n4854 ) , .A3 ( n5148 ) , 
    .A4 ( n2696 ) , .X ( n4874 ) ) ;
SAEDRVT14_ND2_ECO_1 U5728 ( .A1 ( n5294 ) , .A2 ( n4855 ) , .X ( n5686 ) ) ;
SAEDRVT14_INV_0P5 U5729 ( .A ( n5686 ) , .X ( n4877 ) ) ;
SAEDRVT14_ND2_ECO_1 U5730 ( .A1 ( n5683 ) , .A2 ( n3415 ) , .X ( n5685 ) ) ;
SAEDRVT14_INV_S_0P5 U5731 ( .A ( n5685 ) , .X ( n5658 ) ) ;
SAEDRVT14_ND2_ECO_1 U5732 ( .A1 ( n5686 ) , .A2 ( n4962 ) , .X ( n5665 ) ) ;
SAEDRVT14_INV_S_0P5 U5733 ( .A ( n5665 ) , .X ( n5678 ) ) ;
SAEDRVT14_AN3_0P5 U5734 ( .A1 ( n2836 ) , .A2 ( n5139_CDR1 ) , .A3 ( n4857 ) , 
    .X ( n4859 ) ) ;
SAEDRVT14_INV_S_0P5 U5735 ( .A ( n5020 ) , .X ( n4860 ) ) ;
SAEDRVT14_AOI21_0P75 U5736 ( .A1 ( n4863 ) , .A2 ( n4862 ) , 
    .B ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .X ( n4866 ) ) ;
SAEDRVT14_OR4_1 U5737 ( .A1 ( n4867 ) , .A2 ( n4866 ) , .A3 ( n4865 ) , 
    .A4 ( n4868 ) , .X ( n4869 ) ) ;
SAEDRVT14_AO32_U_0P5 U5738 ( .A1 ( n3415 ) , .A2 ( i_tv80_core_F_0_ ) , 
    .A3 ( n4870 ) , .B1 ( n5678 ) , .B2 ( n4869 ) , .X ( n4871 ) ) ;
SAEDRVT14_OA21_1 U5739 ( .A1 ( n5658 ) , .A2 ( n4871 ) , .B ( n3321 ) , 
    .X ( n4872 ) ) ;
SAEDRVT14_AOI21_0P75 U5740 ( .A1 ( n3001 ) , .A2 ( n3416 ) , .B ( n4872 ) , 
    .X ( n4873 ) ) ;
SAEDRVT14_AN3_0P5 U5741 ( .A1 ( n4874 ) , .A2 ( n4873 ) , .A3 ( HFSNET_17 ) , 
    .X ( n4882 ) ) ;
SAEDRVT14_AOI21_0P75 U5742 ( .A1 ( n5683 ) , .A2 ( n4875 ) , .B ( n5756 ) , 
    .X ( n4876 ) ) ;
SAEDRVT14_OR4_1 U5743 ( .A1 ( n4876 ) , .A2 ( n4877 ) , .A3 ( n4962 ) , 
    .A4 ( n3413 ) , .X ( n4879 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1967 ( .A1 ( i_tv80_core_PC_2_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_2__CDR1 ) , .X ( n3867 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_4_8159 ( .A1 ( n3093 ) , .A2 ( n3250 ) , 
    .X ( tmp_net321 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8160 ( .A1 ( n3249 ) , .A2 ( n2960 ) , 
    .B ( tmp_net325 ) , .X ( n3834 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5747 ( .D0 ( n4882 ) , .D1 ( n404 ) , .S ( n5022 ) , 
    .X ( n2406 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5748 ( .D0 ( i_tv80_core_Ap_0_ ) , 
    .D1 ( i_tv80_core_ACC_0_ ) , .S ( n5672 ) , .X ( n4883 ) ) ;
SAEDRVT14_ND2_CDC_1 U5749 ( .A1 ( HFSNET_17 ) , .A2 ( n4883 ) , .X ( n2419 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5750 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_0_ ) , .X ( n4886 ) ) ;
SAEDRVT14_INV_S_0P5 U5751 ( .A ( n5436 ) , .X ( n6054 ) ) ;
SAEDRVT14_ADDH_0P5 \i_tv80_core_add_548/U25 ( .A ( i_tv80_core_TmpAddr_0_ ) , 
    .B ( i_tv80_core_TmpAddr_1_ ) , .CO ( \i_tv80_core_add_548/n14 ) , 
    .S ( i_tv80_core_N248 ) ) ;
SAEDRVT14_OAI22_0P5 U5753 ( .A1 ( n556 ) , .A2 ( n5009 ) , .B1 ( n564 ) , 
    .B2 ( n5008 ) , .X ( n4887 ) ) ;
SAEDRVT14_AO221_0P5 U5754 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_0_ ) , 
    .B1 ( n3305 ) , .B2 ( i_tv80_core_RegBusA_8_ ) , .C ( n4890 ) , 
    .X ( n2438 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5755 ( .D0 ( i_tv80_core_Ap_7_ ) , 
    .D1 ( i_tv80_core_ACC_7_ ) , .S ( n5672 ) , .X ( n4891 ) ) ;
SAEDRVT14_ND2_CDC_1 U5756 ( .A1 ( HFSNET_17 ) , .A2 ( n4891 ) , .X ( n2412 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8143 ( 
    .A1 ( i_tv80_core_TmpAddr_7_ ) , .A2 ( \i_tv80_core_add_548/n9 ) , 
    .X ( i_tv80_core_N254 ) ) ;
SAEDRVT14_ND2_CDC_1 U5758 ( .A1 ( n4896 ) , .A2 ( n4901 ) , .X ( n4973 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1968 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_11_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_3_ ) , 
    .X ( n3871 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1969 ( .A1 ( i_tv80_core_PC_3_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_3__CDR1 ) , .X ( n3873 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1970 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_12_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_4_ ) , 
    .X ( n3877 ) ) ;
SAEDRVT14_INV_S_0P5 U5762 ( .A ( n4971 ) , .X ( n4976 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1971 ( .A1 ( i_tv80_core_PC_4_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_4__CDR1 ) , .X ( n3879 ) ) ;
SAEDRVT14_ND2_CDC_1 U5764 ( .A1 ( n4973 ) , .A2 ( n4900 ) , .X ( n5946 ) ) ;
SAEDRVT14_ND2_CDC_1 U5765 ( .A1 ( n4974 ) , .A2 ( n4901 ) , .X ( n5949 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5766 ( .A1 ( n4902 ) , .A2 ( n3033 ) , .X ( n5948 ) ) ;
SAEDRVT14_INV_S_0P5 U5767 ( .A ( n4974 ) , .X ( n4979 ) ) ;
SAEDRVT14_ND2_ECO_1 U5768 ( .A1 ( n4979 ) , .A2 ( n3033 ) , .X ( n5947 ) ) ;
SAEDRVT14_INV_S_0P5 U5769 ( .A ( n5948 ) , .X ( n5951 ) ) ;
SAEDRVT14_INV_S_0P5 U5770 ( .A ( n5947 ) , .X ( n4904 ) ) ;
SAEDRVT14_AOI21_0P5 U5771 ( .A1 ( n4904 ) , .A2 ( n5948 ) , .B ( n5954 ) , 
    .X ( n4905 ) ) ;
SAEDRVT14_AOI21_0P75 U5772 ( .A1 ( n5954 ) , .A2 ( n5948 ) , .B ( n4905 ) , 
    .X ( n4909 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8368 ( .A1 ( n5482_CDR1 ) , .A2 ( n5525 ) , 
    .B ( tmp_net453 ) , .X ( n2962 ) ) ;
SAEDRVT14_AOI21_0P75 U5774 ( .A1 ( n3310 ) , .A2 ( i_tv80_core_RegBusC_15_ ) , 
    .B ( tmp_net444 ) , .X ( n4907 ) ) ;
SAEDRVT14_OAI31_0P5 U5775 ( .A1 ( n4910 ) , .A2 ( n4909 ) , .A3 ( n4908 ) , 
    .B ( n4907 ) , .X ( n2370 ) ) ;
SAEDRVT14_OAI22_0P5 U5776 ( .A1 ( n563 ) , .A2 ( n5009 ) , .B1 ( n571 ) , 
    .B2 ( n5008 ) , .X ( n4911 ) ) ;
SAEDRVT14_AO221_0P5 U5777 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_7_ ) , 
    .B1 ( i_tv80_core_RegBusA_15_ ) , .B2 ( n3305 ) , .C ( n4913 ) , 
    .X ( n2479 ) ) ;
SAEDRVT14_AN3_0P5 U5778 ( .A1 ( n6346 ) , .A2 ( n3351 ) , .A3 ( HFSNET_14 ) , 
    .X ( n4915 ) ) ;
SAEDRVT14_OR3_0P5 U5779 ( .A1 ( n4924_CDR1 ) , 
    .A2 ( i_tv80_core_BusA_6__CDR1 ) , .A3 ( i_tv80_core_BusA_4__CDR1 ) , 
    .X ( n4923_CDR1 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8229 ( .A1 ( tmp_net366 ) , 
    .A2 ( i_tv80_core_RegBusA_13_ ) , .X ( n3361 ) ) ;
SAEDRVT14_OR4_1 U5781 ( .A1 ( n4923_CDR1 ) , .A2 ( tmp_net350 ) , 
    .A3 ( n4919_CDR1 ) , .A4 ( n4921_CDR1 ) , .X ( n5051 ) ) ;
SAEDRVT14_INV_S_0P5 U5782 ( .A ( n4925 ) , .X ( n5103_CDR1 ) ) ;
SAEDRVT14_AN3_0P5 U5783 ( .A1 ( n3465_CDR1 ) , .A2 ( n5103_CDR1 ) , 
    .A3 ( n3464_CDR1 ) , .X ( n4927_CDR1 ) ) ;
SAEDRVT14_AN3_0P5 U5784 ( .A1 ( n5101_CDR1 ) , .A2 ( n5102_CDR1 ) , 
    .A3 ( n4927_CDR1 ) , .X ( n4944_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5785 ( .A ( n4929 ) , .X ( n5099_CDR1 ) ) ;
SAEDRVT14_AO221_0P5 U5786 ( .A1 ( n3477 ) , .A2 ( i_tv80_core_BusB_5_ ) , 
    .B1 ( n4934 ) , .B2 ( n4933 ) , .C ( n5660 ) , .X ( n4941 ) ) ;
SAEDRVT14_INV_S_0P5 U5787 ( .A ( n4945 ) , .X ( n5121_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5788 ( .A ( n4946 ) , .X ( n5120_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5789 ( .A ( n4947 ) , .X ( n5119_CDR1 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8261 ( .A1 ( tmp_net388 ) , .A2 ( n4848 ) , 
    .X ( n5898 ) ) ;
SAEDRVT14_INV_S_0P5 U5791 ( .A ( n4948 ) , .X ( n5115_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5792 ( .A1 ( n5115_CDR1 ) , .A2 ( n3340 ) , 
    .X ( n4951 ) ) ;
SAEDRVT14_INV_S_0P5 U5793 ( .A ( n4949 ) , .X ( n5118_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U5794 ( .A ( n4950 ) , .X ( n5117_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5795 ( .A1 ( n4951 ) , .A2 ( n5116_CDR1 ) , 
    .A3 ( n5118_CDR1 ) , .A4 ( n5117_CDR1 ) , .X ( n4958 ) ) ;
SAEDRVT14_OA21_U_0P5 U5796 ( .A1 ( i_tv80_core_Z16_r ) , 
    .A2 ( i_tv80_core_Arith16_r ) , .B ( n5154 ) , .X ( n4952_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_8197 ( .A1 ( tmp_net346 ) , 
    .A2 ( tmp_net347 ) , .X ( n2674 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8198 ( .A1 ( n5491 ) , 
    .A2 ( i_tv80_core_RegBusA_15_ ) , .X ( tmp_net346 ) ) ;
SAEDRVT14_INV_S_0P5 U5799 ( .A ( n5054 ) , .X ( n4960 ) ) ;
SAEDRVT14_OR4_1 U5800 ( .A1 ( di_reg_7__CDR1 ) , .A2 ( di_reg_5__CDR1 ) , 
    .A3 ( di_reg_4__CDR1 ) , .A4 ( di_reg_0__CDR1 ) , .X ( n4964_CDR1 ) ) ;
SAEDRVT14_OR4_1 U5801 ( .A1 ( di_reg_3__CDR1 ) , .A2 ( di_reg_2__CDR1 ) , 
    .A3 ( di_reg_1__CDR1 ) , .A4 ( di_reg_6__CDR1 ) , .X ( n4963_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U5802 ( .A1 ( n5135 ) , .A2 ( n4962 ) , .X ( n5095 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8369 ( .A1 ( n5483 ) , .A2 ( n5525 ) , 
    .B ( n5481 ) , .X ( tmp_net453 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_8370 ( .A1 ( n5482_CDR1 ) , 
    .A2 ( tmp_net454 ) , .B1 ( n5481 ) , .B2 ( n5525 ) , .X ( n5565 ) ) ;
SAEDRVT14_ND2_ECO_1 U5805 ( .A1 ( n3416 ) , .A2 ( n4992 ) , .X ( n4967 ) ) ;
SAEDRVT14_AO32_U_0P5 U5806 ( .A1 ( n4968 ) , .A2 ( HFSNET_17 ) , 
    .A3 ( n4967 ) , .B1 ( n5154 ) , .B2 ( n5064 ) , .X ( n4969 ) ) ;
SAEDRVT14_OAI31_0P75 U5807 ( .A1 ( n4970 ) , .A2 ( n5148 ) , .A3 ( n5064 ) , 
    .B ( n4969 ) , .X ( n2402 ) ) ;
SAEDRVT14_ND2_ECO_1 U5808 ( .A1 ( n4974 ) , .A2 ( n4973 ) , .X ( n4975 ) ) ;
SAEDRVT14_OAI22_0P5 U5809 ( .A1 ( n4976 ) , .A2 ( n4975 ) , .B1 ( n4974 ) , 
    .B2 ( n4973 ) , .X ( n4977 ) ) ;
SAEDRVT14_AOI21_0P5 U5810 ( .A1 ( n4979 ) , .A2 ( n4978 ) , .B ( n4977 ) , 
    .X ( n4980 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8161 ( .A1 ( n3247 ) , .A2 ( n2958 ) , 
    .B ( tmp_net95 ) , .X ( tmp_net325 ) ) ;
SAEDRVT14_OAI22_0P5 U5812 ( .A1 ( n562 ) , .A2 ( n5009 ) , .B1 ( n570 ) , 
    .B2 ( n5008 ) , .X ( n4988 ) ) ;
SAEDRVT14_AO221_0P5 U5813 ( .A1 ( n3303 ) , .A2 ( n2849 ) , .B1 ( n3305 ) , 
    .B2 ( i_tv80_core_RegBusA_14_ ) , .C ( n4990 ) , .X ( n2432 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5814 ( .D0 ( i_tv80_core_Ap_6_ ) , 
    .D1 ( i_tv80_core_ACC_6_ ) , .S ( n5672 ) , .X ( n4991 ) ) ;
SAEDRVT14_ND2_CDC_1 U5815 ( .A1 ( HFSNET_17 ) , .A2 ( n4991 ) , .X ( n2413 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5816 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_6_ ) , .X ( n4995 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8144 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net314 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net315 ) , .X ( \i_tv80_core_add_548/n7 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8175 ( .A1 ( n6352 ) , 
    .A2 ( \i_tv80_core_add_548/n7 ) , .X ( i_tv80_core_N256 ) ) ;
SAEDRVT14_AO222_1 U5819 ( .A1 ( i_tv80_core_N154 ) , .A2 ( n3408 ) , 
    .B1 ( n4997 ) , .B2 ( i_tv80_core_ACC_1_ ) , .C1 ( n4996 ) , 
    .C2 ( n6360 ) , .X ( n2344 ) ) ;
SAEDRVT14_OAI22_0P5 U5820 ( .A1 ( n439 ) , .A2 ( n4999 ) , .B1 ( n428 ) , 
    .B2 ( n4998 ) , .X ( n2352 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5821 ( .D0 ( i_tv80_core_Ap_1_ ) , 
    .D1 ( i_tv80_core_ACC_1_ ) , .S ( n5672 ) , .X ( n5000 ) ) ;
SAEDRVT14_ND2_CDC_1 U5822 ( .A1 ( HFSNET_17 ) , .A2 ( n5000 ) , .X ( n2418 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5823 ( .D0 ( n5002 ) , .D1 ( n5001 ) , 
    .S ( i_tv80_core_ACC_1_ ) , .X ( n5007 ) ) ;
SAEDRVT14_INV_S_0P5 U5824 ( .A ( n5415 ) , .X ( n6058 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8200 ( .A1 ( n6354 ) , 
    .A2 ( \i_tv80_core_add_548/n5 ) , .X ( i_tv80_core_N258 ) ) ;
SAEDRVT14_AO221_0P5 U5826 ( .A1 ( n3290 ) , .A2 ( di_reg_1__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_1_ ) , .C ( n5010 ) , .X ( n5012 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U5827 ( .D0 ( n5012 ) , .D1 ( i_tv80_core_BusA_1_ ) , 
    .S ( n5011 ) , .X ( n5013 ) ) ;
SAEDRVT14_AO221_0P5 U5828 ( .A1 ( n3303 ) , .A2 ( i_tv80_core_RegBusA_1_ ) , 
    .B1 ( n3305 ) , .B2 ( i_tv80_core_RegBusA_9_ ) , .C ( n5013 ) , 
    .X ( n2437 ) ) ;
SAEDRVT14_ND2_ECO_1 U5829 ( .A1 ( n5014 ) , .A2 ( n5088 ) , .X ( n5684 ) ) ;
SAEDRVT14_INV_S_0P5 U5830 ( .A ( n5684 ) , .X ( n5018 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8262 ( .A1 ( n3033 ) , .A2 ( tmp_net387 ) , 
    .X ( tmp_net388 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8263 ( .A ( n4849 ) , .X ( tmp_net387 ) ) ;
SAEDRVT14_AOI21_0P75 U5833 ( .A1 ( n5018 ) , .A2 ( i_tv80_core_Fp_1_ ) , 
    .B ( n5017 ) , .X ( n5019 ) ) ;
SAEDRVT14_OAI311_0P75 U5834 ( .A1 ( n5665 ) , 
    .A2 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .A3 ( n5020 ) , .B1 ( n5685 ) , 
    .B2 ( n5019 ) , .X ( n5021 ) ) ;
SAEDRVT14_MUX2_U_0P5 U5835 ( .D0 ( n5023 ) , .D1 ( i_tv80_core_F_1_ ) , 
    .S ( n5022 ) , .X ( n2407 ) ) ;
SAEDRVT14_INV_S_0P5 U5836 ( .A ( n5024 ) , .X ( n5029 ) ) ;
SAEDRVT14_INV_0P5 U5837 ( .A ( n5025 ) , .X ( n5039 ) ) ;
SAEDRVT14_AO21B_0P5 U5838 ( .A1 ( n5524 ) , .A2 ( n5492 ) , .B ( HFSNET_12 ) , 
    .X ( n5030 ) ) ;
SAEDRVT14_ND2_ECO_1 U5839 ( .A1 ( n5490 ) , .A2 ( n5030 ) , .X ( n5504 ) ) ;
SAEDRVT14_ND2_ECO_1 U5840 ( .A1 ( n5433 ) , .A2 ( n5031 ) , .X ( n5038 ) ) ;
SAEDRVT14_INV_S_0P5 U5841 ( .A ( n5034 ) , .X ( n5478 ) ) ;
SAEDRVT14_INV_S_0P5 U5842 ( .A ( n5036 ) , .X ( n5032 ) ) ;
SAEDRVT14_ND2_ECO_1 U5843 ( .A1 ( n5487 ) , .A2 ( n5511 ) , .X ( n5477 ) ) ;
SAEDRVT14_AO33_U_0P5 U5844 ( .A1 ( n5478 ) , .A2 ( n5036 ) , .A3 ( n5035 ) , 
    .B1 ( n5033 ) , .B2 ( n5034 ) , .B3 ( n2789 ) , .X ( n5037 ) ) ;
SAEDRVT14_INV_S_0P5 U5845 ( .A ( n5457 ) , .X ( n5459_CDR1 ) ) ;
SAEDRVT14_AOI21_0P75 U5846 ( .A1 ( n3194 ) , .A2 ( n6034 ) , .B ( n3195 ) , 
    .X ( n5041 ) ) ;
SAEDRVT14_INV_S_0P5 U5847 ( .A ( n5326 ) , .X ( n5351 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8162 ( .A1 ( n3250 ) , .A2 ( n2950 ) , 
    .B ( tmp_net324 ) , .X ( tmp_net95 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8163 ( .A1 ( n2956 ) , .A2 ( n3248 ) , 
    .X ( tmp_net324 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8170 ( .A1 ( n5110 ) , .A2 ( tmp_net330 ) , 
    .B ( tmp_net331 ) , .X ( n5109 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8171 ( .A1 ( n5108 ) , 
    .A2 ( i_tv80_core_F_1_ ) , .X ( tmp_net330 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8172 ( .A ( n5106 ) , .X ( tmp_net331 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5853 ( .D0 ( i_tv80_core_Fp_2_ ) , 
    .D1 ( i_tv80_core_F_2_ ) , .S ( n5672 ) , .X ( n5062 ) ) ;
SAEDRVT14_ND2_CDC_1 U5854 ( .A1 ( HFSNET_17 ) , .A2 ( n5062 ) , .X ( n2398 ) ) ;
SAEDRVT14_ND2_ECO_1 U5855 ( .A1 ( n3416 ) , .A2 ( n5405 ) , .X ( n5068 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5856 ( .A1 ( n3424 ) , .A2 ( n3351 ) , .X ( n5155 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5857 ( .A1 ( n5155 ) , .A2 ( n6261 ) , .X ( n5153 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8296 ( .A1 ( n5189 ) , .A2 ( n5992_CDR1 ) , 
    .A3 ( n5193_CDR1 ) , .A4 ( n5721_CDR1 ) , .X ( tmp_net406 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_8297 ( .A1 ( n5504 ) , .A2 ( tmp_net407 ) , 
    .X ( n2625_CDR1 ) ) ;
SAEDRVT14_INV_0P5 U5860 ( .A ( n5153 ) , .X ( n5151 ) ) ;
SAEDRVT14_OA31_U_0P5 U5861 ( .A1 ( n5151 ) , .A2 ( n5148 ) , .A3 ( n2761 ) , 
    .B ( HFSNET_17 ) , .X ( n5066 ) ) ;
SAEDRVT14_INV_S_0P5 U5862 ( .A ( n5067 ) , .X ( n5147 ) ) ;
SAEDRVT14_AO32_U_0P5 U5863 ( .A1 ( n5068 ) , .A2 ( n5067 ) , .A3 ( n5066 ) , 
    .B1 ( n5152 ) , .B2 ( n5147 ) , .X ( n5150 ) ) ;
SAEDRVT14_EO2_0P5 U5864 ( .A1 ( n3382 ) , .A2 ( n3383 ) , .X ( n5087 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1972 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_13_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_5_ ) , 
    .X ( n3883 ) ) ;
SAEDRVT14_EO2_0P5 U5866 ( .A1 ( n5083_CDR1 ) , .A2 ( n5082_CDR1 ) , 
    .X ( n5086 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1973 ( .A1 ( i_tv80_core_PC_5_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_5__CDR1 ) , .X ( n3885 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1974 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_14_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_6_ ) , 
    .X ( n3889 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5869 ( .A1 ( n5094_CDR1 ) , .A2 ( n5093_CDR1 ) , 
    .X ( n5097 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1975 ( .A1 ( i_tv80_core_PC_6_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_6__CDR1 ) , .X ( n3891 ) ) ;
SAEDRVT14_INV_S_0P5 U5871 ( .A ( n5111 ) , .X ( n5108 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8186 ( .A1 ( n3461 ) , .A2 ( n3107 ) , 
    .B ( tmp_net338 ) , .X ( tmp_net339 ) ) ;
SAEDRVT14_AN2_MM_0P5 U5873 ( .A1 ( n5108 ) , .A2 ( i_tv80_core_F_1_ ) , 
    .X ( n5104 ) ) ;
SAEDRVT14_OAI22_0P5 U5874 ( .A1 ( n5111 ) , .A2 ( n5105 ) , .B1 ( n5112 ) , 
    .B2 ( n5104 ) , .X ( n5106 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8187 ( .A1 ( n2952 ) , .A2 ( n3460 ) , 
    .X ( tmp_net338 ) ) ;
SAEDRVT14_OA31_1 U5876 ( .A1 ( n5110 ) , .A2 ( n5112 ) , .A3 ( n5111 ) , 
    .B ( n5109 ) , .X ( n5113 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5877 ( .A1 ( n5123_CDR1 ) , .A2 ( n5122_CDR1 ) , 
    .X ( n5134 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5878 ( .A1 ( n5129_CDR1 ) , .A2 ( n5128_CDR1 ) , 
    .X ( n5131 ) ) ;
SAEDRVT14_AO221_0P5 U5879 ( .A1 ( n5132 ) , .A2 ( n5131 ) , 
    .B1 ( i_tv80_core_F_2_ ) , .B2 ( n5130 ) , .C ( n3478 ) , .X ( n5133 ) ) ;
SAEDRVT14_AOI21_0P5 U5880 ( .A1 ( n3340 ) , .A2 ( n5134 ) , .B ( n5133 ) , 
    .X ( n5136 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5881 ( .A1 ( n5136 ) , .A2 ( n5135 ) , .X ( n5137 ) ) ;
SAEDRVT14_AOI21_0P75 U5882 ( .A1 ( n5138 ) , .A2 ( n5139_CDR1 ) , 
    .B ( n5137 ) , .X ( n5140 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1976 ( .A1 ( n3381 ) , 
    .A2 ( i_tv80_core_PC_15_ ) , .B1 ( n3860 ) , .B2 ( i_tv80_core_ACC_7_ ) , 
    .X ( n3895 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/U30 ( .A1 ( n6365 ) , 
    .A2 ( \i_tv80_core_add_548/n1 ) , .X ( i_tv80_core_N262 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8276 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net396 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net397 ) , .X ( \i_tv80_core_add_548/n1 ) ) ;
SAEDRVT14_AO21B_0P5 U5886 ( .A1 ( n6111 ) , .A2 ( n5224 ) , .B ( reset_n ) , 
    .X ( n5251 ) ) ;
SAEDRVT14_AOI21_0P75 U5887 ( .A1 ( n5153 ) , .A2 ( n5152 ) , .B ( n3051 ) , 
    .X ( n5157 ) ) ;
SAEDRVT14_AOI21_0P75 U5888 ( .A1 ( n5155 ) , .A2 ( n6260 ) , .B ( n5154 ) , 
    .X ( n5156 ) ) ;
SAEDRVT14_OA21B_U_0P5 U5889 ( .A1 ( n3267 ) , .A2 ( n5157 ) , .B ( n5156 ) , 
    .X ( n1896 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5890 ( .A1 ( n6280 ) , .A2 ( n5849 ) , .X ( n5166 ) ) ;
SAEDRVT14_AO221_0P5 U5891 ( .A1 ( n5170 ) , .A2 ( n5610 ) , .B1 ( n3289 ) , 
    .B2 ( n5169 ) , .C ( n5168 ) , .X ( n5171 ) ) ;
SAEDRVT14_OR4_1 U5892 ( .A1 ( n5173 ) , .A2 ( n2736 ) , .A3 ( n5172 ) , 
    .A4 ( n5171 ) , .X ( n5178 ) ) ;
SAEDRVT14_INV_S_0P5 U5893 ( .A ( n5174 ) , .X ( n5175 ) ) ;
SAEDRVT14_AOI21_0P75 U5894 ( .A1 ( n3431 ) , .A2 ( n5178 ) , .B ( n5177 ) , 
    .X ( n5179 ) ) ;
SAEDRVT14_OAI22_0P5 U5895 ( .A1 ( n5179 ) , .A2 ( n5707 ) , .B1 ( n113 ) , 
    .B2 ( n6046 ) , .X ( n2388 ) ) ;
SAEDRVT14_OR3_0P5 U5896 ( .A1 ( n5192_CDR1 ) , .A2 ( n5724_CDR1 ) , 
    .A3 ( n5578_CDR1 ) , .X ( n5191_CDR1 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1977 ( .A1 ( i_tv80_core_PC_7_ ) , 
    .A2 ( n3297 ) , .B1 ( n3295 ) , .B2 ( di_reg_7__CDR1 ) , .X ( n3897 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_1978 ( .A1 ( n5843 ) , 
    .A2 ( i_tv80_core_PC_6_ ) , .X ( tmp_net178 ) ) ;
SAEDRVT14_AO221_0P5 U5899 ( .A1 ( n5188 ) , .A2 ( n5187 ) , 
    .B1 ( i_tv80_core_NMICycle ) , .B2 ( n5186 ) , .C ( n5185 ) , 
    .X ( n5189 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8342 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_5_ ) , .B ( n5480 ) , .X ( tmp_net436 ) ) ;
SAEDRVT14_OR4_1 U5901 ( .A1 ( n5191_CDR1 ) , .A2 ( n5180_CDR1 ) , 
    .A3 ( n5995_CDR1 ) , .A4 ( tmp_net406 ) , .X ( n5199 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5902 ( .A1 ( n6263 ) , .A2 ( n5194 ) , .X ( n5197 ) ) ;
SAEDRVT14_INV_S_0P5 U5903 ( .A ( n5228 ) , .X ( n5195 ) ) ;
SAEDRVT14_AOI21_0P75 U5904 ( .A1 ( n5195 ) , .A2 ( n6005 ) , .B ( n575 ) , 
    .X ( n5196 ) ) ;
SAEDRVT14_AO21_U_0P5 U5905 ( .A1 ( n6099 ) , .A2 ( n5197 ) , .B ( n5196 ) , 
    .X ( n5198 ) ) ;
SAEDRVT14_AOI21_0P75 U5906 ( .A1 ( n5199 ) , .A2 ( n3431 ) , .B ( n5198 ) , 
    .X ( n5200 ) ) ;
SAEDRVT14_OAI22_0P5 U5907 ( .A1 ( n5200 ) , .A2 ( n5707 ) , .B1 ( n129 ) , 
    .B2 ( n6046 ) , .X ( n2387 ) ) ;
SAEDRVT14_INV_S_0P5 U5908 ( .A ( n5201_CDR1 ) , .X ( n5698 ) ) ;
SAEDRVT14_OR3_0P5 U5909 ( .A1 ( n5202 ) , .A2 ( n6320 ) , 
    .A3 ( i_tv80_core_NMICycle ) , .X ( n5726 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5910 ( .A1 ( n5726 ) , .A2 ( n6279 ) , .X ( n5203 ) ) ;
SAEDRVT14_AOI21_0P75 U5911 ( .A1 ( n5983 ) , .A2 ( n5581 ) , .B ( n5203 ) , 
    .X ( n5204 ) ) ;
SAEDRVT14_OR4_1 U5912 ( .A1 ( n5730 ) , .A2 ( n3038 ) , .A3 ( n5587 ) , 
    .A4 ( n5206 ) , .X ( n5230 ) ) ;
SAEDRVT14_INV_S_0P5 U5913 ( .A ( n5230 ) , .X ( n5207 ) ) ;
SAEDRVT14_OAI22_0P5 U5914 ( .A1 ( n5209 ) , .A2 ( n5707 ) , .B1 ( n6046 ) , 
    .B2 ( n2703 ) , .X ( n2386 ) ) ;
SAEDRVT14_AO21B_0P5 U5915 ( .A1 ( n5212 ) , .A2 ( n5719 ) , .B ( n6102 ) , 
    .X ( n5264 ) ) ;
SAEDRVT14_INV_0P5 U5916 ( .A ( n5264 ) , .X ( n5257 ) ) ;
SAEDRVT14_AO21B_0P5 U5917 ( .A1 ( n5267 ) , .A2 ( n2854 ) , .B ( n5259 ) , 
    .X ( n5215 ) ) ;
SAEDRVT14_AO32_U_0P5 U5918 ( .A1 ( n2632 ) , .A2 ( reset_n ) , .A3 ( n5217 ) , 
    .B1 ( n5216 ) , .B2 ( n5215 ) , .X ( n2455 ) ) ;
SAEDRVT14_OR3_1 U5919 ( .A1 ( n5707 ) , .A2 ( n5219 ) , .A3 ( n5242 ) , 
    .X ( n5222 ) ) ;
SAEDRVT14_ND2_ECO_1 U5920 ( .A1 ( n6092 ) , .A2 ( reset_n ) , .X ( n5220 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8176 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net333 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net334 ) , .X ( \i_tv80_core_add_548/n5 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5922 ( .A1 ( n3431 ) , .A2 ( n5232_CDR1 ) , 
    .X ( n5716 ) ) ;
SAEDRVT14_INV_S_0P5 U5923 ( .A ( n5716 ) , .X ( n5226 ) ) ;
SAEDRVT14_AO21B_0P5 U5924 ( .A1 ( n5224 ) , .A2 ( reset_n ) , .B ( n5223 ) , 
    .X ( n5225 ) ) ;
SAEDRVT14_AO32_U_0P5 U5925 ( .A1 ( n5717 ) , .A2 ( reset_n ) , .A3 ( n5227 ) , 
    .B1 ( n5226 ) , .B2 ( n5225 ) , .X ( n2453 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5926 ( .A1 ( n6262 ) , .A2 ( n6366 ) , .X ( n5229 ) ) ;
SAEDRVT14_AOI21_0P75 U5927 ( .A1 ( n2919 ) , .A2 ( n5233 ) , 
    .B ( n5232_CDR1 ) , .X ( n5234 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5928 ( .A1 ( n5234 ) , .A2 ( n3414 ) , .X ( n5238 ) ) ;
SAEDRVT14_ND2_ECO_1 U5929 ( .A1 ( HFSNET_14 ) , .A2 ( n5238 ) , .X ( n5240 ) ) ;
SAEDRVT14_INV_S_0P5 U5930 ( .A ( n5235 ) , .X ( n5236 ) ) ;
SAEDRVT14_AOI21_0P75 U5931 ( .A1 ( n2919 ) , .A2 ( n5236 ) , .B ( n3308 ) , 
    .X ( n5237 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5932 ( .A1 ( n5237 ) , .A2 ( n3414 ) , .X ( n5241 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8173 ( .A1 ( n3033 ) , .A2 ( tmp_net332 ) , 
    .B ( n4897 ) , .X ( n4971 ) ) ;
SAEDRVT14_MUXI2_0P5 U5934 ( .D0 ( n5240 ) , .D1 ( n134 ) , .S ( n3334 ) , 
    .X ( n2410 ) ) ;
SAEDRVT14_AO221_0P5 U5935 ( .A1 ( di_0_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( i_tv80_core_IR_0_ ) , .C ( n3480 ) , .X ( n2449 ) ) ;
SAEDRVT14_OR3_1 U5936 ( .A1 ( n5707 ) , .A2 ( n5243 ) , .A3 ( n5242 ) , 
    .X ( n5244 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5937 ( .D0 ( n5244 ) , .D1 ( n6346 ) , .S ( n3341 ) , 
    .X ( n2451 ) ) ;
SAEDRVT14_ND2_ECO_1 U5938 ( .A1 ( n5248 ) , .A2 ( reset_n ) , .X ( n5246 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5939 ( .D0 ( n5246 ) , .D1 ( n255 ) , .S ( n5247 ) , 
    .X ( n2472 ) ) ;
SAEDRVT14_OR4_1 U5940 ( .A1 ( HFSNET_15 ) , .A2 ( n5248 ) , 
    .A3 ( tstate_1_ ) , .A4 ( n5247 ) , .X ( n5249 ) ) ;
SAEDRVT14_AO21B_0P5 U5941 ( .A1 ( n5250 ) , .A2 ( tstate_1_ ) , .B ( n5249 ) , 
    .X ( n2473 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5942 ( .A1 ( i_tv80_core_Pre_XY_F_M_0_ ) , 
    .A2 ( i_tv80_core_Pre_XY_F_M_1_ ) , .X ( n5253 ) ) ;
SAEDRVT14_EO2_V1_0P75 U5943 ( .A1 ( n5253 ) , .A2 ( n270 ) , .X ( n5256 ) ) ;
SAEDRVT14_AOI21_0P75 U5944 ( .A1 ( n5257 ) , .A2 ( n5256 ) , .B ( n5255 ) , 
    .X ( n5263 ) ) ;
SAEDRVT14_AO21B_0P5 U5945 ( .A1 ( n6278 ) , .A2 ( n3047 ) , .B ( n5258 ) , 
    .X ( n5262 ) ) ;
SAEDRVT14_INV_S_0P5 U5946 ( .A ( n5259 ) , .X ( n5260 ) ) ;
SAEDRVT14_AO221_0P5 U5947 ( .A1 ( di_3_ ) , .A2 ( n3481 ) , .B1 ( n5269 ) , 
    .B2 ( n3103 ) , .C ( n3480 ) , .X ( n2446 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8371 ( .A1 ( n5481 ) , .A2 ( n5483 ) , 
    .X ( tmp_net454 ) ) ;
SAEDRVT14_ND2_ECO_1 U5949 ( .A1 ( HFSNET_14 ) , .A2 ( n5272 ) , .X ( n5271 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5950 ( .D0 ( n5272 ) , .D1 ( n5271 ) , .S ( n132 ) , 
    .X ( n2426 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8174 ( .A ( n4896 ) , .X ( tmp_net332 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8188 ( .A1 ( gre_net_563 ) , .A2 ( n2892 ) , 
    .B ( tmp_net342 ) , .X ( n3664 ) ) ;
SAEDRVT14_INV_S_0P5 U5953 ( .A ( n6350 ) , .X ( n6112 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5954 ( .A1 ( n3435 ) , .A2 ( n5274 ) , .X ( n5276 ) ) ;
SAEDRVT14_OA31_1 U5955 ( .A1 ( n262 ) , .A2 ( tstate_0_ ) , 
    .A3 ( tstate_1_ ) , .B ( n5325 ) , .X ( n5285 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_3_1546 ( .A1 ( tmp_net10 ) , .A2 ( n3434 ) , 
    .A3 ( n3440 ) , .A4 ( tmp_net11 ) , .X ( tmp_net12 ) ) ;
SAEDRVT14_OR3_0P5 U5959 ( .A1 ( n5337 ) , .A2 ( n2670 ) , .A3 ( n5325 ) , 
    .X ( n5645 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5960 ( .D0 ( n6349 ) , .D1 ( n5325 ) , .S ( n2991 ) , 
    .X ( n5327 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_1979 ( .A1 ( n5819 ) , .A2 ( n5834 ) , 
    .B ( n5836 ) , .X ( tmp_net179 ) ) ;
SAEDRVT14_AO21B_0P5 U5962 ( .A1 ( i_tv80_core_RegBusA_10_ ) , .A2 ( n5491 ) , 
    .B ( n5379 ) , .X ( n5357 ) ) ;
SAEDRVT14_OR3_0P5 U5963 ( .A1 ( n5384 ) , .A2 ( n5357 ) , .A3 ( n3372 ) , 
    .X ( n5343 ) ) ;
SAEDRVT14_ND2_ECO_1 U5964 ( .A1 ( n3406 ) , .A2 ( n5512 ) , .X ( n5471 ) ) ;
SAEDRVT14_INV_S_0P5 U5965 ( .A ( n5471 ) , .X ( n5437 ) ) ;
SAEDRVT14_ND2_CDC_1 U5966 ( .A1 ( n5437 ) , .A2 ( n5339 ) , .X ( n5446 ) ) ;
SAEDRVT14_AO21B_0P5 U5967 ( .A1 ( n2674 ) , .A2 ( n5340 ) , .B ( n5446 ) , 
    .X ( n5544 ) ) ;
SAEDRVT14_ND2_CDC_1 U5968 ( .A1 ( n5348 ) , .A2 ( n6044 ) , .X ( n5462 ) ) ;
SAEDRVT14_OAI31_0P5 U5969 ( .A1 ( n5462 ) , 
    .A2 ( i_tv80_core_Read_To_Reg_r_0_ ) , .A3 ( n4351 ) , .B ( n3470 ) , 
    .X ( n5529 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5970 ( .D0 ( n2959 ) , .D1 ( n2768 ) , .S ( n3327 ) , 
    .X ( n2290 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_3_1980 ( .A1 ( tmp_net178 ) , 
    .A2 ( tmp_net179 ) , .X ( n5823 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8189 ( .A1 ( n3299 ) , .A2 ( n2890 ) , 
    .B ( tmp_net341 ) , .X ( tmp_net342 ) ) ;
SAEDRVT14_INV_S_0P5 U5973 ( .A ( n5371 ) , .X ( n5355 ) ) ;
SAEDRVT14_OAI22_0P5 U5974 ( .A1 ( n5645 ) , .A2 ( n3391 ) , .B1 ( n5473 ) , 
    .B2 ( n5358 ) , .X ( n5359 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8190 ( .A1 ( n3385 ) , .A2 ( n2884 ) , 
    .B ( tmp_net340 ) , .X ( tmp_net341 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8191 ( .A1 ( n2888 ) , .A2 ( n3396 ) , 
    .X ( tmp_net340 ) ) ;
SAEDRVT14_AO21B_0P5 U5977 ( .A1 ( n3372 ) , .A2 ( n3281 ) , .B ( n5361 ) , 
    .X ( n5362 ) ) ;
SAEDRVT14_INV_S_0P5 U5978 ( .A ( n5365 ) , .X ( n5368 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5979 ( .D0 ( n2756 ) , .D1 ( n3272 ) , .S ( n3327 ) , 
    .X ( n2291 ) ) ;
SAEDRVT14_ND2_CDC_1 U5980 ( .A1 ( n5437 ) , .A2 ( n5669 ) , .X ( n5479 ) ) ;
SAEDRVT14_AO21B_0P5 U5981 ( .A1 ( n3278 ) , .A2 ( n2731 ) , .B ( n5479 ) , 
    .X ( n5380 ) ) ;
SAEDRVT14_ND2_CDC_1 U5982 ( .A1 ( n5437 ) , .A2 ( n5383 ) , .X ( n5495 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8343 ( .A ( n5266 ) , .B ( tmp_net438 ) , 
    .X ( n5268 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5984 ( .D0 ( n3060 ) , .D1 ( n3910 ) , .S ( n3327 ) , 
    .X ( n2293 ) ) ;
SAEDRVT14_OR4_1 U5985 ( .A1 ( n5388 ) , .A2 ( n5390 ) , .A3 ( n3358 ) , 
    .A4 ( n5429 ) , .X ( n5396 ) ) ;
SAEDRVT14_ND2_CDC_1 U5986 ( .A1 ( n5437 ) , .A2 ( n5690 ) , .X ( n5510 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8199 ( .A1 ( n3366 ) , .A2 ( n5512 ) , 
    .X ( tmp_net347 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8205 ( .A1 ( n4918_CDR1 ) , .A2 ( n4920_CDR1 ) , 
    .A3 ( i_tv80_core_BusA_7__CDR1 ) , .A4 ( i_tv80_core_BusA_5__CDR1 ) , 
    .X ( tmp_net350 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U5989 ( .D0 ( n2847 ) , .D1 ( n5563 ) , .S ( n3327 ) , 
    .X ( n2294 ) ) ;
SAEDRVT14_AO21B_0P5 U5990 ( .A1 ( i_tv80_core_RegBusA_9_ ) , .A2 ( n5491 ) , 
    .B ( n5412 ) , .X ( n5408 ) ) ;
SAEDRVT14_ND2_CDC_1 U5991 ( .A1 ( HFSNET_11 ) , .A2 ( n5449 ) , .X ( n5424 ) ) ;
SAEDRVT14_ND2_MM_0P5 U5992 ( .A1 ( HFSNET_11 ) , .A2 ( n5399 ) , 
    .X ( n5423 ) ) ;
SAEDRVT14_OR3_0P5 U5993 ( .A1 ( n5413 ) , .A2 ( n3287 ) , .A3 ( n2802 ) , 
    .X ( n5410 ) ) ;
SAEDRVT14_INV_S_0P5 U5994 ( .A ( n5427 ) , .X ( n5404 ) ) ;
SAEDRVT14_AO21B_0P5 U5995 ( .A1 ( i_tv80_core_RegBusA_5_ ) , .A2 ( n5491 ) , 
    .B ( n5402 ) , .X ( n5429 ) ) ;
SAEDRVT14_ND2_CDC_1 U5996 ( .A1 ( n5437 ) , .A2 ( n5405 ) , .X ( n5516 ) ) ;
SAEDRVT14_INV_S_0P5 U5997 ( .A ( n5516 ) , .X ( n5406 ) ) ;
SAEDRVT14_AO221_0P5 U5998 ( .A1 ( i_tv80_core_RegBusA_r_10_ ) , 
    .A2 ( n5527 ) , .B1 ( i_tv80_core_RegBusB_10_ ) , .B2 ( n5643 ) , 
    .C ( n5406 ) , .X ( n5407 ) ) ;
SAEDRVT14_OR3_0P5 U5999 ( .A1 ( n2631 ) , .A2 ( n5410 ) , .A3 ( n2933 ) , 
    .X ( n5547 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6000 ( .D0 ( n2863 ) , .D1 ( n2626 ) , .S ( n3327 ) , 
    .X ( n2295 ) ) ;
SAEDRVT14_INV_S_0P5 U6001 ( .A ( n5412 ) , .X ( n5418 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6002 ( .A1 ( n5525 ) , .A2 ( n5414 ) , .X ( n5420 ) ) ;
SAEDRVT14_ND2_CDC_1 U6003 ( .A1 ( n5437 ) , .A2 ( n5415 ) , .X ( n5519 ) ) ;
SAEDRVT14_INV_S_0P5 U6004 ( .A ( n5519 ) , .X ( n5416 ) ) ;
SAEDRVT14_AO221_0P5 U6005 ( .A1 ( i_tv80_core_RegBusA_r_9_ ) , .A2 ( n5527 ) , 
    .B1 ( i_tv80_core_RegBusB_9_ ) , .B2 ( n5643 ) , .C ( n5416 ) , 
    .X ( n5417 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6006 ( .D0 ( n2887 ) , .D1 ( n2815 ) , .S ( n3327 ) , 
    .X ( n2296 ) ) ;
SAEDRVT14_ND2_CDC_1 U6007 ( .A1 ( HFSNET_11 ) , .A2 ( n5422 ) , .X ( n5454 ) ) ;
SAEDRVT14_INV_S_0P5 U6008 ( .A ( n5454 ) , .X ( n5426 ) ) ;
SAEDRVT14_INV_S_0P5 U6009 ( .A ( n5423 ) , .X ( n5460 ) ) ;
SAEDRVT14_INV_S_0P5 U6010 ( .A ( n5424 ) , .X ( n5425 ) ) ;
SAEDRVT14_ND2_ECO_1 U6011 ( .A1 ( n5427 ) , .A2 ( n5433 ) , .X ( n5435 ) ) ;
SAEDRVT14_ND2_CDC_1 U6012 ( .A1 ( n5437 ) , .A2 ( n5436 ) , .X ( n5523 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_8206 ( .A1 ( tmp_net351 ) , 
    .A2 ( tmp_net352 ) , .X ( n1491 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_8207 ( .A1 ( n4287 ) , .A2 ( n3050 ) , 
    .B ( tmp_net235 ) , .X ( tmp_net351 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8208 ( .A1 ( n3050 ) , .A2 ( n4288 ) , 
    .X ( tmp_net352 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8209 ( .A1 ( tmp_net353 ) , .A2 ( n379 ) , 
    .X ( n3471 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6017 ( .D0 ( n2989 ) , .D1 ( n3055 ) , .S ( n3327 ) , 
    .X ( n2297 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8210 ( .A ( n4673 ) , .X ( tmp_net353 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8211 ( .A1 ( tmp_net355 ) , .A2 ( n6247 ) , 
    .X ( n6197 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8212 ( .A ( tmp_net354 ) , .X ( tmp_net355 ) ) ;
SAEDRVT14_INV_S_0P5 U6021 ( .A ( n5402 ) , .X ( n5458 ) ) ;
SAEDRVT14_AO21B_0P5 U6022 ( .A1 ( n3026 ) , .A2 ( i_tv80_core_RegBusA_3_ ) , 
    .B ( HFSNET_9 ) , .X ( n5455 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8344 ( .A1 ( tmp_net437 ) , .A2 ( n2678 ) , 
    .B ( HFSNET_15 ) , .X ( tmp_net438 ) ) ;
SAEDRVT14_INV_S_0P5 U6024 ( .A ( n5468 ) , .X ( n5470 ) ) ;
SAEDRVT14_INV_S_0P5 U6025 ( .A ( n5479 ) , .X ( n5480 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8372 ( .A1 ( n3315 ) , .A2 ( n5531 ) , 
    .B ( tmp_net455 ) , .X ( n2284 ) ) ;
SAEDRVT14_AO21B_0P5 U6027 ( .A1 ( n2975 ) , .A2 ( n5524 ) , .B ( HFSNET_12 ) , 
    .X ( n5494 ) ) ;
SAEDRVT14_ND2_ECO_1 U6028 ( .A1 ( n5525 ) , .A2 ( n5511 ) , .X ( n5508 ) ) ;
SAEDRVT14_OAI311_0P5 U6029 ( .A1 ( n5513 ) , .A2 ( n5512 ) , .A3 ( n5511 ) , 
    .B1 ( n5509 ) , .B2 ( n5510 ) , .X ( n5514 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_3_8213 ( .A1 ( n6094 ) , .A2 ( n6096 ) , 
    .A3 ( n6095 ) , .X ( tmp_net354 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8214 ( .A1 ( tmp_net356 ) , .A2 ( n5672 ) , 
    .A3 ( n4358 ) , .A4 ( tmp_net357 ) , .X ( n5001 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_8215 ( .A1 ( n5223 ) , .A2 ( n4875 ) , 
    .X ( tmp_net356 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6033 ( .D0 ( n2718 ) , .D1 ( n5568 ) , .S ( n3328 ) , 
    .X ( n2233 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8216 ( .A1 ( n4396 ) , .A2 ( n5707 ) , 
    .X ( tmp_net357 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6035 ( .D0 ( n3108 ) , .D1 ( n2768 ) , .S ( n3315 ) , 
    .X ( n2282 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6036 ( .D0 ( n2758 ) , .D1 ( n3272 ) , .S ( n3315 ) , 
    .X ( n2283 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6037 ( .D0 ( n2800 ) , .D1 ( n3910 ) , .S ( n3315 ) , 
    .X ( n2285 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6038 ( .D0 ( n2835 ) , .D1 ( n5563 ) , .S ( n3315 ) , 
    .X ( n2286 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6039 ( .D0 ( n2820 ) , .D1 ( n2852 ) , .S ( n3315 ) , 
    .X ( n2287 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6040 ( .D0 ( n5532 ) , .D1 ( n2814 ) , .S ( n3315 ) , 
    .X ( n2288 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8217 ( .A1 ( gre_net_563 ) , .A2 ( n2826 ) , 
    .B ( tmp_net360 ) , .X ( n3676 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6042 ( .D0 ( n3134 ) , .D1 ( n3350 ) , .S ( n3318 ) , 
    .X ( n2218 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6043 ( .D0 ( n5538 ) , .D1 ( n2676 ) , .S ( n3318 ) , 
    .X ( n2221 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6044 ( .D0 ( n3012 ) , .D1 ( n5566 ) , .S ( n3318 ) , 
    .X ( n2223 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6045 ( .D0 ( n2704 ) , .D1 ( n5567 ) , .S ( n3318 ) , 
    .X ( n2224 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6046 ( .D0 ( n2713 ) , .D1 ( n5568 ) , .S ( n3318 ) , 
    .X ( n2225 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6047 ( .D0 ( n2957 ) , .D1 ( n3353 ) , .S ( n3329 ) , 
    .X ( n2274 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6048 ( .D0 ( n2760 ) , .D1 ( n3272 ) , .S ( n3329 ) , 
    .X ( n2275 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6049 ( .D0 ( n3090 ) , .D1 ( n3095 ) , .S ( n3329 ) , 
    .X ( n2276 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6050 ( .D0 ( n3062 ) , .D1 ( n3910 ) , .S ( n3329 ) , 
    .X ( n2277 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6051 ( .D0 ( n2827 ) , .D1 ( n5563 ) , .S ( n3329 ) , 
    .X ( n2278 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6052 ( .D0 ( n2822 ) , .D1 ( n2852 ) , .S ( n3329 ) , 
    .X ( n2279 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6053 ( .D0 ( n2891 ) , .D1 ( n2814 ) , .S ( n3329 ) , 
    .X ( n2280 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6054 ( .D0 ( n2987 ) , .D1 ( n3055 ) , .S ( n3329 ) , 
    .X ( n2281 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6055 ( .D0 ( n3132 ) , .D1 ( n3350 ) , .S ( n3330 ) , 
    .X ( n2210 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6056 ( .D0 ( n3067 ) , .D1 ( n5565 ) , .S ( n3330 ) , 
    .X ( n2212 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6057 ( .D0 ( n5541 ) , .D1 ( n2676 ) , .S ( n3330 ) , 
    .X ( n2213 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6058 ( .D0 ( n3008 ) , .D1 ( n5566 ) , .S ( n3330 ) , 
    .X ( n2215 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6059 ( .D0 ( n2707 ) , .D1 ( n5567 ) , .S ( n3330 ) , 
    .X ( n2216 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6060 ( .D0 ( n2706 ) , .D1 ( n5568 ) , .S ( n3330 ) , 
    .X ( n2217 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6061 ( .D0 ( n2953 ) , .D1 ( n2768 ) , .S ( n3316 ) , 
    .X ( n2266 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6062 ( .D0 ( n2965 ) , .D1 ( n3272 ) , .S ( n3316 ) , 
    .X ( n2267 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6063 ( .D0 ( n2872 ) , .D1 ( n3342 ) , .S ( n3316 ) , 
    .X ( n2269 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6064 ( .D0 ( n2829 ) , .D1 ( n5563 ) , .S ( n3316 ) , 
    .X ( n2270 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6065 ( .D0 ( n2824 ) , .D1 ( n2626 ) , .S ( n3316 ) , 
    .X ( n2271 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6066 ( .D0 ( n2879 ) , .D1 ( n2815 ) , .S ( n3316 ) , 
    .X ( n2272 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6067 ( .D0 ( n2979 ) , .D1 ( n3055 ) , .S ( n3316 ) , 
    .X ( n2273 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6068 ( .D0 ( n2831 ) , .D1 ( n3350 ) , .S ( n3319 ) , 
    .X ( n2202 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6069 ( .D0 ( n5551 ) , .D1 ( n2676 ) , .S ( n3319 ) , 
    .X ( n2205 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6070 ( .D0 ( n3018 ) , .D1 ( n5566 ) , .S ( n3319 ) , 
    .X ( n2207 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6071 ( .D0 ( n2716 ) , .D1 ( n5567 ) , .S ( n3319 ) , 
    .X ( n2208 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6072 ( .D0 ( n2705 ) , .D1 ( n5568 ) , .S ( n3319 ) , 
    .X ( n2209 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6073 ( .D0 ( n2961 ) , .D1 ( n2768 ) , .S ( n3325 ) , 
    .X ( n2258 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6074 ( .D0 ( n2969 ) , .D1 ( n3272 ) , .S ( n3325 ) , 
    .X ( n2259 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6075 ( .D0 ( n2870 ) , .D1 ( n3342 ) , .S ( n3325 ) , 
    .X ( n2261 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6076 ( .D0 ( n2843 ) , .D1 ( n5563 ) , .S ( n3325 ) , 
    .X ( n2262 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6077 ( .D0 ( n2859 ) , .D1 ( n2626 ) , .S ( n3325 ) , 
    .X ( n2263 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6078 ( .D0 ( n2889 ) , .D1 ( n2815 ) , .S ( n3325 ) , 
    .X ( n2264 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6079 ( .D0 ( n2985 ) , .D1 ( n3055 ) , .S ( n3325 ) , 
    .X ( n2265 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6080 ( .D0 ( n2754 ) , .D1 ( n3350 ) , .S ( n3326 ) , 
    .X ( n2194 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6081 ( .D0 ( n5554 ) , .D1 ( n2676 ) , .S ( n3326 ) , 
    .X ( n2197 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6082 ( .D0 ( n3010 ) , .D1 ( n5566 ) , .S ( n3326 ) , 
    .X ( n2199 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6083 ( .D0 ( n2702 ) , .D1 ( n5567 ) , .S ( n3326 ) , 
    .X ( n2200 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6084 ( .D0 ( n2709 ) , .D1 ( n5568 ) , .S ( n3326 ) , 
    .X ( n2201 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6085 ( .D0 ( n2955 ) , .D1 ( n2768 ) , .S ( n3314 ) , 
    .X ( n2250 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6086 ( .D0 ( n2963 ) , .D1 ( n3272 ) , .S ( n3314 ) , 
    .X ( n2251 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6087 ( .D0 ( n2874 ) , .D1 ( n3342 ) , .S ( n3314 ) , 
    .X ( n2253 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6088 ( .D0 ( n2841 ) , .D1 ( n5563 ) , .S ( n3314 ) , 
    .X ( n2254 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6089 ( .D0 ( n2857 ) , .D1 ( n2626 ) , .S ( n3314 ) , 
    .X ( n2255 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6090 ( .D0 ( n2881 ) , .D1 ( n2814 ) , .S ( n3314 ) , 
    .X ( n2256 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6091 ( .D0 ( n2977 ) , .D1 ( n3055 ) , .S ( n3314 ) , 
    .X ( n2257 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6092 ( .D0 ( n2833 ) , .D1 ( n3350 ) , .S ( n3317 ) , 
    .X ( n2186 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6093 ( .D0 ( n5557 ) , .D1 ( n2676 ) , .S ( n3317 ) , 
    .X ( n2189 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6094 ( .D0 ( n3016 ) , .D1 ( n5566 ) , .S ( n3317 ) , 
    .X ( n2191 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6095 ( .D0 ( n2714 ) , .D1 ( n5567 ) , .S ( n3317 ) , 
    .X ( n2192 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6096 ( .D0 ( n2708 ) , .D1 ( n5568 ) , .S ( n3317 ) , 
    .X ( n2193 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6097 ( .D0 ( n2951 ) , .D1 ( n3353 ) , .S ( n3323 ) , 
    .X ( n2242 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6098 ( .D0 ( n2967 ) , .D1 ( n3272 ) , .S ( n3323 ) , 
    .X ( n2243 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6099 ( .D0 ( n3094 ) , .D1 ( n3095 ) , .S ( n3323 ) , 
    .X ( n2244 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6100 ( .D0 ( n2868 ) , .D1 ( n3342 ) , .S ( n3323 ) , 
    .X ( n2245 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6101 ( .D0 ( n2845 ) , .D1 ( n5563 ) , .S ( n3323 ) , 
    .X ( n2246 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6102 ( .D0 ( n2861 ) , .D1 ( n2852 ) , .S ( n3323 ) , 
    .X ( n2247 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6103 ( .D0 ( n2883 ) , .D1 ( n2814 ) , .S ( n3323 ) , 
    .X ( n2248 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6104 ( .D0 ( n2981 ) , .D1 ( n3055 ) , .S ( n3323 ) , 
    .X ( n2249 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6105 ( .D0 ( n5559 ) , .D1 ( n3350 ) , .S ( n3324 ) , 
    .X ( n2178 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6106 ( .D0 ( n5561 ) , .D1 ( n2676 ) , .S ( n3324 ) , 
    .X ( n2181 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6107 ( .D0 ( n2715 ) , .D1 ( n5567 ) , .S ( n3324 ) , 
    .X ( n2184 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6108 ( .D0 ( n2724 ) , .D1 ( n5568 ) , .S ( n3324 ) , 
    .X ( n2185 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6109 ( .D0 ( n2949 ) , .D1 ( n3353 ) , .S ( n3313 ) , 
    .X ( n2234 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6110 ( .D0 ( n2930 ) , .D1 ( n3272 ) , .S ( n3313 ) , 
    .X ( n2235 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6111 ( .D0 ( n3082 ) , .D1 ( n3095 ) , .S ( n3313 ) , 
    .X ( n2236 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6112 ( .D0 ( n3058 ) , .D1 ( n3910 ) , .S ( n3313 ) , 
    .X ( n2237 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6113 ( .D0 ( n2839 ) , .D1 ( n5563 ) , .S ( n3313 ) , 
    .X ( n2238 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6114 ( .D0 ( n2855 ) , .D1 ( n2852 ) , .S ( n3313 ) , 
    .X ( n2239 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6115 ( .D0 ( n2885 ) , .D1 ( n2815 ) , .S ( n3313 ) , 
    .X ( n2240 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6116 ( .D0 ( n2983 ) , .D1 ( n3055 ) , .S ( n3313 ) , 
    .X ( n2241 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6117 ( .D0 ( n3136 ) , .D1 ( n3350 ) , .S ( n3320 ) , 
    .X ( n2170 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6118 ( .D0 ( n92 ) , .D1 ( n2676 ) , .S ( n3320 ) , 
    .X ( n2173 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6119 ( .D0 ( n3014 ) , .D1 ( n5566 ) , .S ( n3320 ) , 
    .X ( n2175 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6120 ( .D0 ( n95 ) , .D1 ( n5567 ) , .S ( n3320 ) , 
    .X ( n2176 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6122 ( .D0 ( n96 ) , .D1 ( n5568 ) , .S ( n3320 ) , 
    .X ( n2177 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6123 ( .A1 ( n2946 ) , .A2 ( n5569 ) , .X ( n5762 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6124 ( .A1 ( n5570 ) , .A2 ( n5762 ) , .X ( n1966 ) ) ;
SAEDRVT14_AOI21_0P75 U6125 ( .A1 ( n1966 ) , .A2 ( n6350 ) , .B ( n6347 ) , 
    .X ( n1939 ) ) ;
SAEDRVT14_INV_S_0P5 U6126 ( .A ( n5849 ) , .X ( n5575 ) ) ;
SAEDRVT14_OAI22_0P5 U6127 ( .A1 ( n2777 ) , .A2 ( n5573 ) , .B1 ( n5572 ) , 
    .B2 ( n5989 ) , .X ( n5574 ) ) ;
SAEDRVT14_AO21_U_0P5 U6128 ( .A1 ( n5575 ) , .A2 ( n5581 ) , .B ( n5574 ) , 
    .X ( n5576 ) ) ;
SAEDRVT14_OR4_1 U6129 ( .A1 ( n5579 ) , .A2 ( n5578_CDR1 ) , .A3 ( n5577 ) , 
    .A4 ( n5576 ) , .X ( n5593 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8218 ( .A1 ( n3385 ) , .A2 ( n2844 ) , 
    .B ( tmp_net359 ) , .X ( tmp_net360 ) ) ;
SAEDRVT14_INV_S_0P5 U6131 ( .A ( n5581 ) , .X ( n5582 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8219 ( .A1 ( n3299 ) , .A2 ( n2842 ) , 
    .B ( tmp_net358 ) , .X ( tmp_net359 ) ) ;
SAEDRVT14_AO21_U_0P5 U6133 ( .A1 ( n5587 ) , .A2 ( n5586 ) , .B ( n5585 ) , 
    .X ( n5588 ) ) ;
SAEDRVT14_OR4_1 U6134 ( .A1 ( n5590 ) , .A2 ( n5589 ) , .A3 ( n3398 ) , 
    .A4 ( n5588 ) , .X ( n5592 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6135 ( .A1 ( n5596 ) , .A2 ( n5595 ) , .X ( n5625 ) ) ;
SAEDRVT14_INV_S_0P5 U6136 ( .A ( n5598 ) , .X ( n6292 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6137 ( .A1 ( n2991 ) , .A2 ( n6292 ) , .X ( n6029 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8220 ( .A1 ( n2846 ) , .A2 ( n3396 ) , 
    .X ( tmp_net358 ) ) ;
SAEDRVT14_OA21_U_0P5 U6139 ( .A1 ( n5600 ) , .A2 ( n5625 ) , 
    .B ( i_tv80_core_ISet_1_ ) , .X ( n5624 ) ) ;
SAEDRVT14_INV_S_0P5 U6140 ( .A ( n5627 ) , .X ( n6001 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6141 ( .A1 ( n6001 ) , .A2 ( i_tv80_core_ISet_1_ ) , 
    .X ( n6264 ) ) ;
SAEDRVT14_INV_S_0P5 U6142 ( .A ( n6039 ) , .X ( n5602 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8230 ( .A ( n5491 ) , .X ( tmp_net366 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8231 ( .A1 ( n4131 ) , .A2 ( tmp_net367 ) , 
    .X ( n4114 ) ) ;
SAEDRVT14_AO21B_0P5 U6145 ( .A1 ( n5606 ) , .A2 ( n5605 ) , .B ( n5984 ) , 
    .X ( n5640 ) ) ;
SAEDRVT14_AO21_U_0P5 U6146 ( .A1 ( n2991 ) , .A2 ( n6275 ) , .B ( n5609 ) , 
    .X ( n5994 ) ) ;
SAEDRVT14_INV_S_0P5 U6147 ( .A ( n5994 ) , .X ( n5619 ) ) ;
SAEDRVT14_OR3_0P5 U6148 ( .A1 ( n5611 ) , .A2 ( n5612 ) , .A3 ( n5613_CDR1 ) , 
    .X ( n5987 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6149 ( .A1 ( n2994 ) , .A2 ( n2909 ) , .X ( n6265 ) ) ;
SAEDRVT14_INV_S_0P5 U6150 ( .A ( n6265 ) , .X ( n5614 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8232 ( .A1 ( n4112 ) , .A2 ( n4129 ) , 
    .A3 ( n4116 ) , .X ( tmp_net367 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8233 ( .A1 ( gre_net_563 ) , .A2 ( n3089 ) , 
    .B ( tmp_net370 ) , .X ( n3688 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8234 ( .A1 ( n3385 ) , .A2 ( n3093 ) , 
    .B ( tmp_net369 ) , .X ( tmp_net370 ) ) ;
SAEDRVT14_NR3_0P5 U6154 ( .A1 ( n5638 ) , .A2 ( n5994 ) , .A3 ( n5637 ) , 
    .X ( n5639 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6155 ( .D0 ( n381 ) , .D1 ( n132 ) , .S ( n5643 ) , 
    .X ( i_tv80_core_i_reg_N19 ) ) ;
SAEDRVT14_AN2_MM_0P5 U6156 ( .A1 ( i_tv80_core_RegAddrB_r_1_ ) , 
    .A2 ( n5645 ) , .X ( i_tv80_core_i_reg_N18 ) ) ;
SAEDRVT14_ND2B_U_0P5 U6157 ( .A ( i_tv80_core_RegAddrB_r_0_ ) , .B ( n5645 ) , 
    .X ( i_tv80_core_i_reg_N17 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8235 ( .A1 ( n3299 ) , .A2 ( n3091 ) , 
    .B ( tmp_net368 ) , .X ( tmp_net369 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6159 ( .D0 ( i_tv80_core_Fp_5_ ) , 
    .D1 ( i_tv80_core_F_5_ ) , .S ( n5672 ) , .X ( n5655 ) ) ;
SAEDRVT14_ND2_CDC_1 U6160 ( .A1 ( HFSNET_17 ) , .A2 ( n5655 ) , .X ( n2395 ) ) ;
SAEDRVT14_ND2_ECO_1 U6161 ( .A1 ( n3415 ) , .A2 ( i_tv80_core_ACC_5_ ) , 
    .X ( n5656 ) ) ;
SAEDRVT14_OAI22_0P5 U6162 ( .A1 ( n583 ) , .A2 ( n5684 ) , .B1 ( n5683 ) , 
    .B2 ( n5656 ) , .X ( n5657 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8236 ( .A1 ( n3087 ) , .A2 ( n3396 ) , 
    .X ( tmp_net368 ) ) ;
SAEDRVT14_INV_S_0P5 U6164 ( .A ( n5659 ) , .X ( n5661 ) ) ;
SAEDRVT14_OAI22_0P5 U6165 ( .A1 ( n405 ) , .A2 ( n5677 ) , .B1 ( n3482 ) , 
    .B2 ( n378 ) , .X ( n5663 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8237 ( .A1 ( gre_net_563 ) , .A2 ( n3063 ) , 
    .B ( tmp_net373 ) , .X ( n3682 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8238 ( .A1 ( n3385 ) , .A2 ( n2867 ) , 
    .B ( tmp_net372 ) , .X ( tmp_net373 ) ) ;
SAEDRVT14_AO221_0P5 U6168 ( .A1 ( n5670 ) , .A2 ( n5691 ) , .B1 ( n3416 ) , 
    .B2 ( n5669 ) , .C ( HFSNET_16 ) , .X ( n5671 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6169 ( .D0 ( n5671 ) , .D1 ( i_tv80_core_F_5_ ) , 
    .S ( n5693 ) , .X ( n2403 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6170 ( .D0 ( i_tv80_core_Fp_3_ ) , 
    .D1 ( i_tv80_core_F_3_ ) , .S ( n5672 ) , .X ( n5673 ) ) ;
SAEDRVT14_ND2_CDC_1 U6171 ( .A1 ( HFSNET_17 ) , .A2 ( n5673 ) , .X ( n2397 ) ) ;
SAEDRVT14_AN3_0P5 U6172 ( .A1 ( n5676_CDR1 ) , .A2 ( n5675 ) , .A3 ( n5674 ) , 
    .X ( n5681 ) ) ;
SAEDRVT14_OAI22_0P5 U6173 ( .A1 ( n403 ) , .A2 ( n5677 ) , .B1 ( n3482 ) , 
    .B2 ( n376 ) , .X ( n5679 ) ) ;
SAEDRVT14_OA31_U_0P5 U6174 ( .A1 ( n5681 ) , .A2 ( n5680 ) , .A3 ( n5679 ) , 
    .B ( n5678 ) , .X ( n5689 ) ) ;
SAEDRVT14_ND2_ECO_1 U6175 ( .A1 ( n3415 ) , .A2 ( i_tv80_core_ACC_3_ ) , 
    .X ( n5682 ) ) ;
SAEDRVT14_OAI22_0P5 U6176 ( .A1 ( n582 ) , .A2 ( n5684 ) , .B1 ( n5683 ) , 
    .B2 ( n5682 ) , .X ( n5688 ) ) ;
SAEDRVT14_OAI22_0P5 U6177 ( .A1 ( n3444 ) , .A2 ( n5686 ) , .B1 ( n5685 ) , 
    .B2 ( i_tv80_core_ACC_3_ ) , .X ( n5687 ) ) ;
SAEDRVT14_OR3_0P5 U6178 ( .A1 ( n5689 ) , .A2 ( n5688 ) , .A3 ( n5687 ) , 
    .X ( n5692 ) ) ;
SAEDRVT14_AO221_0P5 U6179 ( .A1 ( n5692 ) , .A2 ( n5691 ) , .B1 ( n3416 ) , 
    .B2 ( n5690 ) , .C ( HFSNET_16 ) , .X ( n5694 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6180 ( .D0 ( n5694 ) , .D1 ( i_tv80_core_F_3_ ) , 
    .S ( n5693 ) , .X ( n2404 ) ) ;
SAEDRVT14_INV_S_0P5 U6181 ( .A ( n5752 ) , .X ( n6266 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6182 ( .A1 ( n6266 ) , .A2 ( n5698 ) , .X ( n5728 ) ) ;
SAEDRVT14_OA31_1 U6183 ( .A1 ( n5728 ) , .A2 ( n5700 ) , .A3 ( n5746 ) , 
    .B ( n5699 ) , .X ( n5704 ) ) ;
SAEDRVT14_INV_0P5 U6184 ( .A ( n5726 ) , .X ( n5741 ) ) ;
SAEDRVT14_AOI21_0P75 U6185 ( .A1 ( n5753 ) , .A2 ( reset_n ) , .B ( n5705 ) , 
    .X ( n5706 ) ) ;
SAEDRVT14_AO21_U_0P5 U6186 ( .A1 ( n5830 ) , .A2 ( i_tv80_core_TmpAddr_0_ ) , 
    .B ( n5711 ) , .X ( n2369 ) ) ;
SAEDRVT14_AO21B_0P5 U6187 ( .A1 ( n3448 ) , .A2 ( n4447 ) , .B ( n5712 ) , 
    .X ( n5713 ) ) ;
SAEDRVT14_INV_S_0P5 U6188 ( .A ( n5715 ) , .X ( n5761 ) ) ;
SAEDRVT14_AOI21_0P75 U6189 ( .A1 ( n6307 ) , .A2 ( n6262 ) , .B ( n5719 ) , 
    .X ( n5733 ) ) ;
SAEDRVT14_OR4_1 U6190 ( .A1 ( n5723_CDR1 ) , .A2 ( n5722 ) , 
    .A3 ( n5721_CDR1 ) , .A4 ( n5720 ) , .X ( n5729 ) ) ;
SAEDRVT14_INV_S_0P5 U6191 ( .A ( n6096 ) , .X ( n6113 ) ) ;
SAEDRVT14_OR3_0P5 U6192 ( .A1 ( n6278 ) , .A2 ( n6320 ) , .A3 ( n5735 ) , 
    .X ( n6091 ) ) ;
SAEDRVT14_AO32_U_0P5 U6193 ( .A1 ( n5744 ) , .A2 ( n6370 ) , .A3 ( n2974 ) , 
    .B1 ( n5741 ) , .B2 ( n5754 ) , .X ( n5745 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8239 ( .A1 ( n3299 ) , .A2 ( n2869 ) , 
    .B ( tmp_net371 ) , .X ( tmp_net372 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6195 ( .A1 ( n3473 ) , .A2 ( i_tv80_core_NMICycle ) , 
    .X ( n6090 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6196 ( .A1 ( n3431 ) , .A2 ( n5752 ) , .X ( n5851 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8240 ( .A1 ( n3061 ) , .A2 ( n3396 ) , 
    .X ( tmp_net371 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8241 ( .A1 ( gre_net_563 ) , .A2 ( n3131 ) , 
    .B ( tmp_net376 ) , .X ( n3644 ) ) ;
SAEDRVT14_INV_S_0P5 U6199 ( .A ( n5973 ) , .X ( n6199 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6200 ( .A1 ( n5762 ) , .A2 ( n3264 ) , .X ( n6094 ) ) ;
SAEDRVT14_INV_S_0P5 U6201 ( .A ( n6090 ) , .X ( n5767 ) ) ;
SAEDRVT14_AO221_0P5 U6202 ( .A1 ( i_tv80_core_TmpAddr_1_ ) , .A2 ( n6114 ) , 
    .B1 ( n6123 ) , .B2 ( i_tv80_core_RegBusC_1_ ) , .C ( n3322 ) , 
    .X ( n6134 ) ) ;
SAEDRVT14_INV_S_0P5 U6203 ( .A ( n5794 ) , .X ( n5775 ) ) ;
SAEDRVT14_EN3_U_0P5 U6204 ( .A1 ( i_tv80_core_PC_1_ ) , .A2 ( n5775 ) , 
    .A3 ( n5777 ) , .X ( n5770 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8201 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net348 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net349 ) , .X ( \i_tv80_core_add_548/n3 ) ) ;
SAEDRVT14_AO221_0P5 U6206 ( .A1 ( i_tv80_core_TmpAddr_2_ ) , .A2 ( n6114 ) , 
    .B1 ( n6123 ) , .B2 ( i_tv80_core_RegBusC_2_ ) , .C ( n3322 ) , 
    .X ( n6142 ) ) ;
SAEDRVT14_INV_S_0P5 U6207 ( .A ( n6142 ) , .X ( n5781 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8242 ( .A1 ( n3385 ) , .A2 ( n2813 ) , 
    .B ( tmp_net375 ) , .X ( tmp_net376 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6209 ( .A1 ( i_tv80_core_PC_1_ ) , .A2 ( n5777 ) , 
    .X ( n5796 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8243 ( .A1 ( n3299 ) , .A2 ( n2753 ) , 
    .B ( tmp_net374 ) , .X ( tmp_net375 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6211 ( .A1 ( n5793 ) , .A2 ( n5832 ) , .X ( n5784 ) ) ;
SAEDRVT14_INV_S_0P5 U6212 ( .A ( n5784 ) , .X ( n5783 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8244 ( .A1 ( n3024 ) , .A2 ( n3396 ) , 
    .X ( tmp_net374 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6214 ( .A1 ( n5783 ) , .A2 ( n3451 ) , .X ( n5786 ) ) ;
SAEDRVT14_AOI21_0P75 U6215 ( .A1 ( n5786 ) , .A2 ( n5785 ) , .B ( n3443 ) , 
    .X ( n5787 ) ) ;
SAEDRVT14_AO21B_0P5 U6216 ( .A1 ( n3029 ) , .A2 ( di_reg_3__CDR1 ) , 
    .B ( n5832 ) , .X ( n5799 ) ) ;
SAEDRVT14_EN3_U_0P5 U6217 ( .A1 ( i_tv80_core_PC_3_ ) , .A2 ( n5787 ) , 
    .A3 ( n5799 ) , .X ( n5790 ) ) ;
SAEDRVT14_AO221_0P5 U6218 ( .A1 ( n3405 ) , .A2 ( n3050 ) , .B1 ( n5950 ) , 
    .B2 ( n5792 ) , .C ( n5791 ) , .X ( n2365 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6219 ( .A1 ( i_tv80_core_PC_3_ ) , .A2 ( n5799 ) , 
    .X ( n5840 ) ) ;
SAEDRVT14_AO21B_0P5 U6220 ( .A1 ( n3029 ) , .A2 ( di_reg_4__CDR1 ) , 
    .B ( n5832 ) , .X ( n5807 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8245 ( .A1 ( gre_net_563 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_5__4_ ) , .B ( tmp_net379 ) , .X ( n3626 ) ) ;
SAEDRVT14_AO221_0P5 U6222 ( .A1 ( i_tv80_core_TmpAddr_5_ ) , .A2 ( n6114 ) , 
    .B1 ( n6123 ) , .B2 ( i_tv80_core_RegBusC_5_ ) , .C ( n3322 ) , 
    .X ( n6164 ) ) ;
SAEDRVT14_INV_S_0P5 U6223 ( .A ( n6164 ) , .X ( n5811 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6224 ( .A1 ( i_tv80_core_PC_4_ ) , .A2 ( n5807 ) , 
    .X ( n5835 ) ) ;
SAEDRVT14_AO21B_0P5 U6225 ( .A1 ( n5808 ) , .A2 ( n5837 ) , .B ( n5835 ) , 
    .X ( n5819 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8246 ( .A1 ( n3385 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_1__4_ ) , .B ( tmp_net378 ) , 
    .X ( tmp_net379 ) ) ;
SAEDRVT14_AO21B_0P5 U6227 ( .A1 ( n3029 ) , .A2 ( di_reg_5__CDR1 ) , 
    .B ( n5832 ) , .X ( n5817 ) ) ;
SAEDRVT14_INV_S_0P5 U6228 ( .A ( n5817 ) , .X ( n5816 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8247 ( .A1 ( n3299 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_3__4_ ) , .B ( tmp_net377 ) , 
    .X ( tmp_net378 ) ) ;
SAEDRVT14_AO221_0P5 U6230 ( .A1 ( i_tv80_core_TmpAddr_6_ ) , .A2 ( n6114 ) , 
    .B1 ( n6123 ) , .B2 ( i_tv80_core_RegBusC_6_ ) , .C ( n3322 ) , 
    .X ( n6173 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6231 ( .A1 ( n5816 ) , .A2 ( n2694 ) , .X ( n5834 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6232 ( .A1 ( i_tv80_core_PC_5_ ) , .A2 ( n5817 ) , 
    .X ( n5836 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_8248 ( .A1 ( i_tv80_core_i_reg_RegsL_7__4_ ) , 
    .A2 ( n3396 ) , .X ( tmp_net377 ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_8264 ( .A1 ( tmp_net390 ) , .A2 ( n6330 ) , 
    .X ( n4261 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_8265 ( .A1 ( n4252 ) , .A2 ( tmp_net389 ) , 
    .X ( tmp_net390 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8266 ( .A1 ( n133 ) , .A2 ( n3351 ) , 
    .X ( tmp_net389 ) ) ;
SAEDRVT14_AO21B_0P5 U6237 ( .A1 ( n3029 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B ( n5832 ) , .X ( n5934 ) ) ;
SAEDRVT14_INV_S_0P5 U6238 ( .A ( n5837 ) , .X ( n5838 ) ) ;
SAEDRVT14_AO32_U_0P5 U6239 ( .A1 ( n3379 ) , .A2 ( n5840 ) , .A3 ( n5839 ) , 
    .B1 ( n5838 ) , .B2 ( n3379 ) , .X ( n5841 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6240 ( .D0 ( n5967 ) , .D1 ( n5968 ) , .S ( n5910 ) , 
    .X ( n5847 ) ) ;
SAEDRVT14_OAI31_0P5 ctmTdsLR_2_8373 ( .A1 ( n3269 ) , .A2 ( n3256 ) , 
    .A3 ( n5545 ) , .B ( n3315 ) , .X ( tmp_net455 ) ) ;
SAEDRVT14_INV_S_0P5 U6242 ( .A ( n6109 ) , .X ( n5852 ) ) ;
SAEDRVT14_AOI21_0P75 U6243 ( .A1 ( n5852 ) , .A2 ( n5851 ) , .B ( n6278 ) , 
    .X ( n5853 ) ) ;
SAEDRVT14_AO21_U_0P5 U6245 ( .A1 ( n5973 ) , .A2 ( n6351 ) , .B ( n5858 ) , 
    .X ( n5865 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6246 ( .A1 ( n5966 ) , .A2 ( n6178 ) , .X ( n5870 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6247 ( .A1 ( i_tv80_core_PC_7_ ) , .A2 ( n5934 ) , 
    .X ( n5871 ) ) ;
SAEDRVT14_AO21B_0P5 U6248 ( .A1 ( n5910 ) , .A2 ( n5870 ) , .B ( n5871 ) , 
    .X ( n5859 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8267 ( .A1 ( n4819 ) , .A2 ( n5674 ) , 
    .B ( tmp_net391 ) , .X ( n4820 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6250 ( .D0 ( n5967 ) , .D1 ( n5968 ) , .S ( n5859 ) , 
    .X ( n5863 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6251 ( .D0 ( n5863 ) , .D1 ( n5862 ) , 
    .S ( i_tv80_core_PC_8_ ) , .X ( n5864 ) ) ;
SAEDRVT14_AO21_U_0P5 U6252 ( .A1 ( n5973 ) , .A2 ( n6352 ) , .B ( n5869 ) , 
    .X ( n5878 ) ) ;
SAEDRVT14_AO21B_0P5 U6253 ( .A1 ( n5966 ) , .A2 ( n6200 ) , .B ( n5870 ) , 
    .X ( n5913 ) ) ;
SAEDRVT14_INV_S_0P5 U6254 ( .A ( n5913 ) , .X ( n5872 ) ) ;
SAEDRVT14_AO21B_0P5 U6255 ( .A1 ( i_tv80_core_PC_8_ ) , .A2 ( n5934 ) , 
    .B ( n5871 ) , .X ( n5906 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6256 ( .D0 ( n5967 ) , .D1 ( n5968 ) , .S ( n2619 ) , 
    .X ( n5876 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6257 ( .D0 ( n5876 ) , .D1 ( n5875 ) , 
    .S ( i_tv80_core_PC_9_ ) , .X ( n5877 ) ) ;
SAEDRVT14_AO21_U_0P5 U6258 ( .A1 ( n5973 ) , .A2 ( n6353 ) , .B ( n5880 ) , 
    .X ( n5887 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6259 ( .A1 ( n5966 ) , .A2 ( n6207 ) , .X ( n5909 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6260 ( .A1 ( i_tv80_core_PC_9_ ) , .A2 ( n5934 ) , 
    .X ( n5904 ) ) ;
SAEDRVT14_AO21B_0P5 U6261 ( .A1 ( n5881 ) , .A2 ( n5909 ) , .B ( n5904 ) , 
    .X ( n5890 ) ) ;
SAEDRVT14_INV_S_0P5 U6262 ( .A ( n5890 ) , .X ( n5882 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6263 ( .D0 ( n5968 ) , .D1 ( n5967 ) , .S ( n5882 ) , 
    .X ( n5885 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6264 ( .D0 ( n5971 ) , .D1 ( n5979 ) , .S ( n5882 ) , 
    .X ( n5883 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6265 ( .D0 ( n5885 ) , .D1 ( n5884 ) , 
    .S ( i_tv80_core_PC_10_ ) , .X ( n5886 ) ) ;
SAEDRVT14_AO21_U_0P5 U6267 ( .A1 ( n5973 ) , .A2 ( n6354 ) , .B ( n5889 ) , 
    .X ( n5897 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6268 ( .A1 ( n5966 ) , .A2 ( n6214 ) , .X ( n5902 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6269 ( .A1 ( i_tv80_core_PC_10_ ) , .A2 ( n5934 ) , 
    .X ( n5903 ) ) ;
SAEDRVT14_AO21B_0P5 U6270 ( .A1 ( n5890 ) , .A2 ( n5902 ) , .B ( n5903 ) , 
    .X ( n5891 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_8268 ( .A1 ( n4838 ) , .A2 ( n4818 ) , 
    .B ( n4817 ) , .X ( tmp_net391 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6272 ( .D0 ( n5967 ) , .D1 ( n5968 ) , .S ( n5891 ) , 
    .X ( n5895 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6273 ( .D0 ( n5895 ) , .D1 ( n5894 ) , 
    .S ( i_tv80_core_PC_11_ ) , .X ( n5896 ) ) ;
SAEDRVT14_AO21_U_0P5 U6274 ( .A1 ( n5973 ) , .A2 ( n6355 ) , .B ( n5901 ) , 
    .X ( n5919 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6275 ( .A1 ( i_tv80_core_PC_11_ ) , .A2 ( n5934 ) , 
    .X ( n5933 ) ) ;
SAEDRVT14_AO21B_0P5 U6276 ( .A1 ( n5966 ) , .A2 ( n6221 ) , .B ( n5902 ) , 
    .X ( n5912 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8269 ( .A1 ( tmp_net392 ) , .A2 ( n3050 ) , 
    .B ( tmp_net394 ) , .X ( n4103 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8270 ( .A1 ( n4098 ) , .A2 ( n5587 ) , 
    .A3 ( n5725 ) , .X ( tmp_net392 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_3_8271 ( .A1 ( n4101 ) , .A2 ( n4100 ) , 
    .B ( tmp_net393 ) , .X ( tmp_net394 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6280 ( .A1 ( n5933 ) , .A2 ( n5936 ) , .X ( n5961 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6281 ( .D0 ( n5968 ) , .D1 ( n5967 ) , .S ( n5914 ) , 
    .X ( n5917 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6282 ( .D0 ( n5971 ) , .D1 ( n5979 ) , .S ( n5914 ) , 
    .X ( n5915 ) ) ;
SAEDRVT14_ND2_ECO_1 U6283 ( .A1 ( n5974 ) , .A2 ( n5915 ) , .X ( n5916 ) ) ;
SAEDRVT14_AO21_U_0P5 U6284 ( .A1 ( n5973 ) , .A2 ( n6356 ) , .B ( n5923 ) , 
    .X ( n5930 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6285 ( .A1 ( n5966 ) , .A2 ( n6227 ) , .X ( n5962 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6286 ( .A1 ( i_tv80_core_PC_12_ ) , .A2 ( n5934 ) , 
    .X ( n5958 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8272 ( .A1 ( n5989 ) , .A2 ( n4102 ) , 
    .X ( tmp_net393 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8273 ( .A1 ( n3279 ) , .A2 ( n3359 ) , 
    .B ( tmp_net395 ) , .X ( tmp_net202 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6289 ( .D0 ( n5968 ) , .D1 ( n5967 ) , .S ( n5925 ) , 
    .X ( n5928 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6290 ( .D0 ( n5971 ) , .D1 ( n5979 ) , .S ( n5925 ) , 
    .X ( n5926 ) ) ;
SAEDRVT14_MUX2_U_0P5 U6291 ( .D0 ( n5928 ) , .D1 ( n5927 ) , 
    .S ( i_tv80_core_PC_13_ ) , .X ( n5929 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6292 ( .A1 ( i_tv80_core_PC_13_ ) , .A2 ( n5934 ) , 
    .X ( n5959 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6293 ( .A1 ( n5966 ) , .A2 ( n6234 ) , .X ( n5963 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6294 ( .A1 ( n5963 ) , .A2 ( n5962 ) , .X ( n5935 ) ) ;
SAEDRVT14_ND2_ECO_1 U6295 ( .A1 ( n5947 ) , .A2 ( n5946 ) , .X ( n5952 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6296 ( .A1 ( n5959 ) , .A2 ( n5958 ) , .X ( n5960 ) ) ;
SAEDRVT14_AOI21_0P75 U6297 ( .A1 ( n5961 ) , .A2 ( n5962 ) , .B ( n5960 ) , 
    .X ( n5965 ) ) ;
SAEDRVT14_AO21B_0P5 U6298 ( .A1 ( n5966 ) , .A2 ( n6241 ) , .B ( n5963 ) , 
    .X ( n5964 ) ) ;
SAEDRVT14_AOI21_0P75 U6299 ( .A1 ( n5973 ) , .A2 ( n6365 ) , .B ( n5972 ) , 
    .X ( n5976 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8274 ( .A1 ( i_tv80_core_RegBusB_11_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net237 ) , .X ( tmp_net395 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8285 ( .A ( tmp_net400 ) , .B ( n5064 ) , 
    .X ( n5067 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6302 ( .A1 ( n6265 ) , .A2 ( n5981 ) , .X ( n5982 ) ) ;
SAEDRVT14_AO21_U_0P5 U6303 ( .A1 ( n5983 ) , .A2 ( n5747 ) , .B ( n5982 ) , 
    .X ( n5988 ) ) ;
SAEDRVT14_AO21B_0P5 U6304 ( .A1 ( n5992_CDR1 ) , .A2 ( n3903 ) , 
    .B ( n3401 ) , .X ( n5996 ) ) ;
SAEDRVT14_INV_0P5 U6305 ( .A ( n5993 ) , .X ( n6002 ) ) ;
SAEDRVT14_AO221_0P5 U6306 ( .A1 ( n2991 ) , .A2 ( n5996 ) , .B1 ( n6002 ) , 
    .B2 ( n5995_CDR1 ) , .C ( n5994 ) , .X ( n5997 ) ) ;
SAEDRVT14_AOI21_0P75 U6307 ( .A1 ( n6001 ) , .A2 ( n6000 ) , .B ( n5999 ) , 
    .X ( n6007 ) ) ;
SAEDRVT14_AOI21_0P75 U6308 ( .A1 ( n2777 ) , .A2 ( n6003 ) , .B ( n6002 ) , 
    .X ( n6004 ) ) ;
SAEDRVT14_OA22_U_0P5 U6309 ( .A1 ( n6005 ) , .A2 ( n6004 ) , .B1 ( n3104 ) , 
    .B2 ( n6029 ) , .X ( n6006 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8286 ( .A1 ( n5153 ) , .A2 ( HFSNET_14 ) , 
    .B ( n5063 ) , .X ( tmp_net400 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8298 ( .A1 ( i_tv80_core_RegBusA_2_ ) , 
    .A2 ( HFSNET_12 ) , .X ( tmp_net407 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_8299 ( .A ( tmp_net411 ) , .X ( n2666 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_8300 ( .A1 ( tmp_net410 ) , 
    .A2 ( tmp_net155 ) , .X ( tmp_net411 ) ) ;
SAEDRVT14_INV_S_0P5 U6314 ( .A ( i_tv80_core_RegBusB_6_ ) , .X ( n6016 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U6315 ( .D0 ( n6016 ) , .D1 ( n3391 ) , .S ( n3854 ) , 
    .X ( i_tv80_core_N1213 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_8301 ( .A ( tmp_net409 ) , .X ( tmp_net410 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_4_8302 ( .A1 ( n3033 ) , .A2 ( tmp_net408 ) , 
    .X ( tmp_net409 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_8303 ( .A ( n4777 ) , .X ( tmp_net408 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8304 ( .A1 ( tmp_net412 ) , .A2 ( n2631 ) , 
    .X ( n2876 ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_2_8305 ( .A1 ( n5420 ) , .A2 ( n5421 ) , 
    .X ( tmp_net412 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8306 ( .A1 ( tmp_net414 ) , .A2 ( n2798 ) , 
    .X ( tmp_net203 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8307 ( .A ( tmp_net413 ) , .B ( n5391 ) , 
    .X ( tmp_net414 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8308 ( .A1 ( n5525 ) , .A2 ( n3373_CDR1 ) , 
    .X ( tmp_net413 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8309 ( .A1 ( i_tv80_core_RegBusB_0_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net416 ) , .X ( tmp_net243 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_8310 ( .A1 ( n5523 ) , .A2 ( tmp_net415 ) , 
    .X ( tmp_net416 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8311 ( .A1 ( i_tv80_core_RegBusA_r_0_ ) , 
    .A2 ( n5527 ) , .X ( tmp_net415 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_8312 ( .A1 ( n3122 ) , .A2 ( n3366 ) , 
    .B ( tmp_net418 ) , .X ( tmp_net419 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_8313 ( .A1 ( i_tv80_core_RegBusB_15_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net417 ) , .X ( tmp_net418 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8314 ( .A1 ( i_tv80_core_RegBusA_r_15_ ) , 
    .A2 ( n5527 ) , .X ( tmp_net417 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8315 ( .A1 ( n3282 ) , .A2 ( n5384 ) , 
    .B ( tmp_net421 ) , .X ( n5546 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8316 ( .A1 ( i_tv80_core_RegBusB_12_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net420 ) , .X ( tmp_net421 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8317 ( .A1 ( n5527 ) , 
    .A2 ( i_tv80_core_RegBusA_r_12_ ) , .B ( n5495 ) , .X ( tmp_net420 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8318 ( .A1 ( tmp_net422 ) , .A2 ( n3470 ) , 
    .X ( n5533 ) ) ;
SAEDRVT14_INV_S_0P5 U6334 ( .A ( n6029 ) , .X ( n6032 ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U6335 ( .A1 ( i_tv80_core_ISet_1_ ) , .A2 ( n6038 ) , 
    .B1 ( n6037 ) , .B2 ( n6366 ) , .X ( n6042 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6336 ( .A1 ( n3483 ) , .A2 ( n6043 ) , 
    .X ( i_tv80_core_N1440 ) ) ;
SAEDRVT14_INV_0P5 U6337 ( .A ( n6048 ) , .X ( n6083 ) ) ;
SAEDRVT14_AOI21_0P75 U6338 ( .A1 ( i_tv80_core_BusB_4_ ) , .A2 ( n6083 ) , 
    .B ( n6049 ) , .X ( n6055 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8319 ( .A1 ( n5462 ) , .A2 ( n4351 ) , 
    .A3 ( n4350 ) , .X ( tmp_net422 ) ) ;
SAEDRVT14_ND2_ECO_1 U6340 ( .A1 ( n3336 ) , .A2 ( n6053 ) , .X ( n6084 ) ) ;
SAEDRVT14_OAI22_0P5 U6341 ( .A1 ( n6055 ) , .A2 ( n6086 ) , .B1 ( n6054 ) , 
    .B2 ( n6084 ) , .X ( n6056 ) ) ;
SAEDRVT14_AO21_U_0P5 U6342 ( .A1 ( do_0_ ) , .A2 ( n6089 ) , .B ( n6056 ) , 
    .X ( n2337 ) ) ;
SAEDRVT14_AOI21_0P75 U6343 ( .A1 ( i_tv80_core_BusB_5_ ) , .A2 ( n6083 ) , 
    .B ( n6057 ) , .X ( n6059 ) ) ;
SAEDRVT14_OAI22_0P5 U6344 ( .A1 ( n6059 ) , .A2 ( n6086 ) , .B1 ( n6058 ) , 
    .B2 ( n6084 ) , .X ( n6060 ) ) ;
SAEDRVT14_AO21_U_0P5 U6345 ( .A1 ( do_1_ ) , .A2 ( n6089 ) , .B ( n6060 ) , 
    .X ( n2336 ) ) ;
SAEDRVT14_AOI21_0P75 U6346 ( .A1 ( i_tv80_core_BusB_6_ ) , .A2 ( n6083 ) , 
    .B ( n6061 ) , .X ( n6063 ) ) ;
SAEDRVT14_OAI22_0P5 U6347 ( .A1 ( n6063 ) , .A2 ( n6086 ) , .B1 ( n6062 ) , 
    .B2 ( n6084 ) , .X ( n6064 ) ) ;
SAEDRVT14_AO21_U_0P5 U6348 ( .A1 ( do_2_ ) , .A2 ( n6089 ) , .B ( n6064 ) , 
    .X ( n2335 ) ) ;
SAEDRVT14_OAI22_0P5 U6349 ( .A1 ( n2836 ) , .A2 ( n6081 ) , .B1 ( n376 ) , 
    .B2 ( n6297 ) , .X ( n6065 ) ) ;
SAEDRVT14_AOI21_0P75 U6350 ( .A1 ( n6083 ) , .A2 ( i_tv80_core_BusB_7_ ) , 
    .B ( n6065 ) , .X ( n6067 ) ) ;
SAEDRVT14_AO21_U_0P5 U6351 ( .A1 ( do_3_ ) , .A2 ( n6089 ) , .B ( n6068 ) , 
    .X ( n2334 ) ) ;
SAEDRVT14_AOI21_0P75 U6352 ( .A1 ( n6083 ) , .A2 ( i_tv80_core_i_alu_N185 ) , 
    .B ( n6069 ) , .X ( n6071 ) ) ;
SAEDRVT14_OAI22_0P5 U6353 ( .A1 ( n373 ) , .A2 ( n6081 ) , .B1 ( n378 ) , 
    .B2 ( n6297 ) , .X ( n6073 ) ) ;
SAEDRVT14_AOI21_0P75 U6354 ( .A1 ( n6083 ) , .A2 ( i_tv80_core_BusA_1_ ) , 
    .B ( n6073 ) , .X ( n6075 ) ) ;
SAEDRVT14_OAI22_0P5 U6355 ( .A1 ( n6075 ) , .A2 ( n6086 ) , .B1 ( n6074 ) , 
    .B2 ( n6084 ) , .X ( n6076 ) ) ;
SAEDRVT14_AO21_U_0P5 U6356 ( .A1 ( do_5_ ) , .A2 ( n6089 ) , .B ( n6076 ) , 
    .X ( n2332 ) ) ;
SAEDRVT14_OAI22_0P5 U6357 ( .A1 ( n375 ) , .A2 ( n6081 ) , .B1 ( n379 ) , 
    .B2 ( n6297 ) , .X ( n6077 ) ) ;
SAEDRVT14_AOI21_0P75 U6358 ( .A1 ( n6083 ) , .A2 ( n4856 ) , .B ( n6077 ) , 
    .X ( n6079 ) ) ;
SAEDRVT14_OAI22_0P5 U6359 ( .A1 ( n6079 ) , .A2 ( n6086 ) , .B1 ( n6078 ) , 
    .B2 ( n6084 ) , .X ( n6080 ) ) ;
SAEDRVT14_AO21_U_0P5 U6360 ( .A1 ( do_6_ ) , .A2 ( n6089 ) , .B ( n6080 ) , 
    .X ( n2331 ) ) ;
SAEDRVT14_OAI22_0P5 U6361 ( .A1 ( n376 ) , .A2 ( n6081 ) , .B1 ( n380 ) , 
    .B2 ( n6297 ) , .X ( n6082 ) ) ;
SAEDRVT14_AOI21_0P75 U6362 ( .A1 ( n6083 ) , .A2 ( n2837 ) , .B ( n6082 ) , 
    .X ( n6087 ) ) ;
SAEDRVT14_ND2_ECO_1 U6363 ( .A1 ( n6091 ) , .A2 ( n6090 ) , .X ( n6095 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8320 ( .A1 ( n2625_CDR1 ) , .A2 ( n5525 ) , 
    .B ( tmp_net423 ) , .X ( n5518 ) ) ;
SAEDRVT14_AO21B_0P5 U6365 ( .A1 ( n6383 ) , .A2 ( n6119 ) , .B ( n6102 ) , 
    .X ( n6103 ) ) ;
SAEDRVT14_AO21B_0P5 U6366 ( .A1 ( n6105 ) , .A2 ( n6104 ) , .B ( n3275 ) , 
    .X ( n6117 ) ) ;
SAEDRVT14_INV_S_0P5 U6367 ( .A ( n6119 ) , .X ( n6110 ) ) ;
SAEDRVT14_AO21B_0P5 U6368 ( .A1 ( n6194 ) , .A2 ( n2775 ) , .B ( n6122 ) , 
    .X ( n6180 ) ) ;
SAEDRVT14_ND2_ECO_1 U6369 ( .A1 ( n6113 ) , .A2 ( n6247 ) , .X ( n6198 ) ) ;
SAEDRVT14_INV_S_0P5 U6370 ( .A ( n6198 ) , .X ( n6174 ) ) ;
SAEDRVT14_ND2_CDC_1 U6371 ( .A1 ( n6174 ) , .A2 ( n6114 ) , .X ( n6179 ) ) ;
SAEDRVT14_OAI22_0P5 U6373 ( .A1 ( n6247 ) , .A2 ( n6125 ) , .B1 ( n118 ) , 
    .B2 ( gre_net_559 ) , .X ( n6126 ) ) ;
SAEDRVT14_OAI22_0P5 U6374 ( .A1 ( n6247 ) , .A2 ( n6132 ) , .B1 ( n117 ) , 
    .B2 ( gre_net_559 ) , .X ( n6133 ) ) ;
SAEDRVT14_OR3_0P5 U6375 ( .A1 ( n6137 ) , .A2 ( n6136 ) , .A3 ( n6135 ) , 
    .X ( n2312 ) ) ;
SAEDRVT14_OAI22_0P5 U6376 ( .A1 ( n6247 ) , .A2 ( n6140 ) , .B1 ( n116 ) , 
    .B2 ( gre_net_559 ) , .X ( n6141 ) ) ;
SAEDRVT14_AO221_0P5 U6377 ( .A1 ( i_tv80_core_N249 ) , .A2 ( n3301 ) , 
    .B1 ( n6174 ) , .B2 ( n6142 ) , .C ( n6141 ) , .X ( n6143 ) ) ;
SAEDRVT14_OR3_0P5 U6378 ( .A1 ( n6145 ) , .A2 ( n6144 ) , .A3 ( n6143 ) , 
    .X ( n2311 ) ) ;
SAEDRVT14_OAI22_0P5 U6379 ( .A1 ( n6247 ) , .A2 ( n6148 ) , .B1 ( n115 ) , 
    .B2 ( gre_net_559 ) , .X ( n6149 ) ) ;
SAEDRVT14_OAI22_0P5 U6380 ( .A1 ( n6247 ) , .A2 ( n6155 ) , .B1 ( n114 ) , 
    .B2 ( gre_net_559 ) , .X ( n6156 ) ) ;
SAEDRVT14_OAI22_0P5 U6381 ( .A1 ( n6247 ) , .A2 ( n6162 ) , .B1 ( n119 ) , 
    .B2 ( gre_net_559 ) , .X ( n6163 ) ) ;
SAEDRVT14_OR3_0P5 U6382 ( .A1 ( n6167 ) , .A2 ( n6166 ) , .A3 ( n6165 ) , 
    .X ( n2308 ) ) ;
SAEDRVT14_OR3_0P5 U6383 ( .A1 ( n6177 ) , .A2 ( n6176 ) , .A3 ( n6175 ) , 
    .X ( n2307 ) ) ;
SAEDRVT14_OAI22_0P5 U6384 ( .A1 ( n6247 ) , .A2 ( n6183 ) , .B1 ( n110 ) , 
    .B2 ( gre_net_559 ) , .X ( n6184 ) ) ;
SAEDRVT14_ND2_ECO_1 U6385 ( .A1 ( HFSNET_14 ) , .A2 ( n6247 ) , .X ( n6189 ) ) ;
SAEDRVT14_AO21_U_0P5 U6386 ( .A1 ( n6191 ) , .A2 ( n6190 ) , .B ( n6189 ) , 
    .X ( n6248 ) ) ;
SAEDRVT14_OAI22_0P5 U6387 ( .A1 ( n427 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6192 ) , .X ( n6193 ) ) ;
SAEDRVT14_OR3_0P5 U6388 ( .A1 ( n6202 ) , .A2 ( n6204 ) , .A3 ( n6203 ) , 
    .X ( n2305 ) ) ;
SAEDRVT14_OAI22_0P5 U6389 ( .A1 ( n428 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6205 ) , .X ( n6206 ) ) ;
SAEDRVT14_AO221_0P5 U6390 ( .A1 ( i_tv80_core_N256 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_9_ ) , .C ( n6206 ) , .X ( n6211 ) ) ;
SAEDRVT14_OR3_0P5 U6391 ( .A1 ( n6209 ) , .A2 ( n6211 ) , .A3 ( n6210 ) , 
    .X ( n2304 ) ) ;
SAEDRVT14_OAI22_0P5 U6392 ( .A1 ( n429 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6212 ) , .X ( n6213 ) ) ;
SAEDRVT14_OAI22_0P5 U6393 ( .A1 ( n6250 ) , .A2 ( n440 ) , .B1 ( n182_CDR1 ) , 
    .B2 ( n3286 ) , .X ( n6217 ) ) ;
SAEDRVT14_OAI22_0P5 U6394 ( .A1 ( n430 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6219 ) , .X ( n6220 ) ) ;
SAEDRVT14_OAI22_0P5 U6395 ( .A1 ( n6250 ) , .A2 ( n441 ) , .B1 ( n181_CDR1 ) , 
    .B2 ( n3286 ) , .X ( n6223 ) ) ;
SAEDRVT14_OAI22_0P5 U6396 ( .A1 ( n431 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6225 ) , .X ( n6226 ) ) ;
SAEDRVT14_AO221_0P5 U6397 ( .A1 ( i_tv80_core_N259 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_12_ ) , .C ( n6226 ) , .X ( n6231 ) ) ;
SAEDRVT14_OR3_0P5 U6398 ( .A1 ( n6229 ) , .A2 ( n6231 ) , .A3 ( n6230 ) , 
    .X ( n2301 ) ) ;
SAEDRVT14_OAI22_0P5 U6399 ( .A1 ( n432 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6232 ) , .X ( n6233 ) ) ;
SAEDRVT14_AO221_0P5 U6400 ( .A1 ( i_tv80_core_N260 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_13_ ) , .C ( n6233 ) , .X ( n6238 ) ) ;
SAEDRVT14_OR3_0P5 U6401 ( .A1 ( n6236 ) , .A2 ( n6238 ) , .A3 ( n6237 ) , 
    .X ( n2300 ) ) ;
SAEDRVT14_OAI22_0P5 U6402 ( .A1 ( n433 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6239 ) , .X ( n6240 ) ) ;
SAEDRVT14_AO221_0P5 U6403 ( .A1 ( i_tv80_core_N261 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_14_ ) , .C ( n6240 ) , .X ( n6245 ) ) ;
SAEDRVT14_OR3_0P5 U6404 ( .A1 ( n6243 ) , .A2 ( n6245 ) , .A3 ( n6244 ) , 
    .X ( n2299 ) ) ;
SAEDRVT14_OAI22_0P5 U6405 ( .A1 ( n434 ) , .A2 ( n6248 ) , .B1 ( n6247 ) , 
    .B2 ( n6246 ) , .X ( n6249 ) ) ;
SAEDRVT14_AO221_0P5 U6406 ( .A1 ( i_tv80_core_N262 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_15_ ) , .C ( n6249 ) , .X ( n6257 ) ) ;
SAEDRVT14_OR3_0P5 U6407 ( .A1 ( n6255 ) , .A2 ( n6257 ) , .A3 ( n6256 ) , 
    .X ( n2298 ) ) ;
SAEDRVT14_AOI21_0P75 U6408 ( .A1 ( n255 ) , .A2 ( n6259 ) , .B ( n6258 ) , 
    .X ( n1914 ) ) ;
SAEDRVT14_INV_0P5 U6409 ( .A ( n6264 ) , .X ( n6294 ) ) ;
SAEDRVT14_ND2_MM_0P5 U6410 ( .A1 ( n6266 ) , .A2 ( n6265 ) , .X ( n6274 ) ) ;
SAEDRVT14_AOI21_0P75 U6411 ( .A1 ( n6270 ) , .A2 ( n6269 ) , .B ( n6268 ) , 
    .X ( n6271 ) ) ;
SAEDRVT14_AO221_0P5 U6412 ( .A1 ( n6274 ) , .A2 ( n6293 ) , .B1 ( n6273 ) , 
    .B2 ( n6272 ) , .C ( n6271 ) , .X ( n6289 ) ) ;
SAEDRVT14_INV_S_0P5 U6413 ( .A ( n6275 ) , .X ( n6277 ) ) ;
SAEDRVT14_AOI21_0P75 U6414 ( .A1 ( n6277 ) , .A2 ( n6276 ) , .B ( n6304 ) , 
    .X ( n6286 ) ) ;
SAEDRVT14_AOI21_0P75 U6415 ( .A1 ( n6280 ) , .A2 ( n6279 ) , .B ( n6278 ) , 
    .X ( n6285 ) ) ;
SAEDRVT14_INV_S_0P5 U6416 ( .A ( n6281 ) , .X ( n6282 ) ) ;
SAEDRVT14_INV_S_0P5 U6417 ( .A ( n6299 ) , .X ( n6319 ) ) ;
SAEDRVT14_INV_S_0P5 U6418 ( .A ( n6300 ) , .X ( n6302 ) ) ;
SAEDRVT14_OAI22_0P5 U6419 ( .A1 ( n5610 ) , .A2 ( n6303 ) , .B1 ( n6302 ) , 
    .B2 ( n6301 ) , .X ( n6305 ) ) ;
SAEDRVT14_AOI21_0P75 U6420 ( .A1 ( n3424 ) , .A2 ( n6306 ) , .B ( n6305 ) , 
    .X ( n6311 ) ) ;
SAEDRVT14_INV_0P5 U6421 ( .A ( n6307 ) , .X ( n6309 ) ) ;
SAEDRVT14_ND2_ECO_1 U6422 ( .A1 ( n6313 ) , .A2 ( n6312 ) , .X ( n6321 ) ) ;
SAEDRVT14_INV_S_0P5 U6423 ( .A ( n6321 ) , .X ( n6315 ) ) ;
SAEDRVT14_OR4_1 U6424 ( .A1 ( n2135 ) , .A2 ( n6316 ) , .A3 ( n6315 ) , 
    .A4 ( n3029 ) , .X ( n6317 ) ) ;
SAEDRVT14_ND2_ECO_1 U6425 ( .A1 ( n6320 ) , .A2 ( n6321 ) , .X ( n6325 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8321 ( .A1 ( i_tv80_core_RegBusB_2_ ) , 
    .A2 ( n5643 ) , .B ( tmp_net154 ) , .X ( tmp_net423 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_1_8081 ( 
    .A1 ( i_tv80_core_TmpAddr_3_ ) , .A2 ( \i_tv80_core_add_548/n13 ) , 
    .X ( i_tv80_core_N250 ) ) ;
SAEDRVT14_NR2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_2_8082 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net278 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net279 ) , 
    .X ( \i_tv80_core_add_548/n11 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8083 ( 
    .A1 ( i_tv80_core_TmpAddr_3_ ) , .A2 ( \i_tv80_core_add_548/n13 ) , 
    .X ( \i_tv80_core_add_548/tmp_net278 ) ) ;
SAEDRVT14_OR3_1 U6430 ( .A1 ( tstate_0_ ) , .A2 ( tstate_1_ ) , 
    .A3 ( tstate_2_ ) , .X ( n6331 ) ) ;
SAEDRVT14_INV_S_0P5 U6431 ( .A ( n6331 ) , .X ( n6333 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8084 ( 
    .A ( i_tv80_core_TmpAddr_4_ ) , .X ( \i_tv80_core_add_548/tmp_net279 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8085 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net279 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net278 ) , .X ( i_tv80_core_N251 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8113 ( 
    .A1 ( i_tv80_core_TmpAddr_5_ ) , .A2 ( \i_tv80_core_add_548/n11 ) , 
    .X ( \i_tv80_core_add_548/tmp_net296 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_2_ ( .D ( n2447 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_IR_2_ ) , .QN ( n518 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_mcycle_reg_0_ ( .D ( n2456 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( mcycle_0_ ) , .QN ( n4169 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_5_ ( .D ( n2444 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_IR_5_ ) , .QN ( n5621 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ISet_reg_1_ ( .D ( n2450 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_ISet_1_ ) , .QN ( n575 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__0_ ( .D ( n2289 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_i_reg_RegsH_6__0_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_0_ ( .D ( n2449 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_IR_0_ ) , .QN ( n3947 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__2_ ( .D ( n2719 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( i_tv80_core_i_reg_RegsL_1__2_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__5_ ( .D ( n2252 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3085 ) , .QN ( n3086 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__5_ ( .D ( n2268 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3083 ) , .QN ( n3084 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__5_ ( .D ( n2260 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3091 ) , .QN ( n3092 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__5_ ( .D ( n2292 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3087 ) , .QN ( n3088 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__5_ ( .D ( n2172 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3074 ) , .QN ( n3075 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__5_ ( .D ( n2204 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3076 ) , .QN ( n3077 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__5_ ( .D ( n2220 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3072 ) , .QN ( n3073 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__5_ ( .D ( n2196 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3068 ) , .QN ( n3069 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__5_ ( .D ( n2188 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3070 ) , .QN ( n3071 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__7_ ( .D ( n2266 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2952 ) , .QN ( n2953 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__7_ ( .D ( n2250 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2954 ) , .QN ( n2955 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__7_ ( .D ( n2258 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2960 ) , .QN ( n2961 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__7_ ( .D ( n2290 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2958 ) , .QN ( n2959 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__7_ ( .D ( n2282 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3107 ) , .QN ( n3108 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ALU_Op_r_reg_3_ ( .D ( n2483 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .QN ( n5674 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ALU_Op_r_reg_0_ ( .D ( n2422 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_ALU_Op_r_0_ ) , .QN ( n4365 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_1_ ( .D ( n2437 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusA_1_ ) , .QN ( n4517 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_0_ ( .D ( n2408 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( i_tv80_core_F_0_ ) , .QN ( n4814 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_15_ ( .D ( n2354 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6365 ) , .QN ( n111 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_5_ ( .D ( n2433 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_BusA_5__CDR1 ) , .QN ( n369 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_6_ ( .D ( n2402 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_F_6_ ) , .QN ( n5154 ) ) ;
SAEDRVT14_FDPSYNSBQ_V2_4 iorq_n_reg ( .D ( n2722 ) , .SD ( n2742 ) , 
    .CK ( MY_CLK ) , .Q ( iorq_n ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__5_ ( .D ( n2276 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3089 ) , .QN ( n3090 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__3_ ( .D ( n2246 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2844 ) , .QN ( n2845 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_XY_State_reg_0_ ( .D ( n2391 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n2686 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegBusA_r_reg_6_ ( .D ( n2848 ) , 
    .CK ( ZCTSNET_51 ) , .QN ( n5472 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegBusA_r_reg_14_ ( 
    .D ( i_tv80_core_RegBusA_14_ ) , .CK ( ZCTSNET_51 ) , .QN ( n5358 ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegAddrB_r_reg_1_ ( .D ( n3902 ) , 
    .CK ( ZCTSNET_50 ) , .QN ( i_tv80_core_RegAddrB_r_1_ ) ) ;
SAEDRVT14_FDPQB_V2LP_1 i_tv80_core_RegBusA_r_reg_7_ ( .D ( n5449 ) , 
    .CK ( ZCTSNET_51 ) , .QN ( i_tv80_core_RegBusA_r_7_ ) ) ;
SAEDRVT14_FSDPQB_V2LP_2 i_tv80_core_Fp_reg_1_ ( .D ( n4328 ) , 
    .SI ( optlc_net_548 ) , .SE ( HFSNET_16 ) , .CK ( ZCTSNET_57 ) , 
    .QN ( i_tv80_core_Fp_1_ ) ) ;
SAEDRVT14_FSDPQB_V2LP_2 i_tv80_core_Fp_reg_0_ ( .D ( n4792 ) , 
    .SI ( optlc_net_548 ) , .SE ( HFSNET_16 ) , .CK ( ZCTSNET_57 ) , 
    .QN ( i_tv80_core_Fp_0_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_6_ ( .D ( n2443 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( i_tv80_core_IR_6_ ) , .QN ( n3911 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_4_ ( .D ( n2445 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( n3050 ) , .QN ( n3051 ) ) ;
SAEDRVT14_FDP_V2LP_2 i_tv80_core_IR_reg_3_ ( .D ( n2446 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( n3103 ) , .QN ( n3104 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_1_ ( .D ( n2448 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( i_tv80_core_IR_1_ ) , .QN ( n5635 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ALU_Op_r_reg_1_ ( .D ( n2421 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( n2897 ) , .QN ( n2898 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_mcycle_reg_2_ ( .D ( n2477 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( n3046 ) , .QN ( n3047 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_8_ ( .D ( n2305 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_8_ ) , .QN ( n6192 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_15_ ( .D ( n2298 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( A_15_ ) , .QN ( n6246 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_14_ ( .D ( n2299 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( A_14_ ) , .QN ( n6239 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_13_ ( .D ( n2300 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_13_ ) , .QN ( n6232 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_12_ ( .D ( n2301 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_12_ ) , .QN ( n6225 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_A_reg_9_ ( .D ( n2304 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( A_9_ ) , .QN ( n6205 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__4_ ( .D ( n2269 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2871 ) , .QN ( n2872 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__4_ ( .D ( n2261 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2869 ) , .QN ( n2870 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__4_ ( .D ( n2253 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2873 ) , .QN ( n2874 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__4_ ( .D ( n2245 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2867 ) , .QN ( n2868 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__7_ ( .D ( n2274 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2956 ) , .QN ( n2957 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__7_ ( .D ( n2242 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2950 ) , .QN ( n2951 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__7_ ( .D ( n2234 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2948 ) , .QN ( n2949 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__6_ ( .D ( n2283 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2757 ) , .QN ( n2758 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__6_ ( .D ( n2291 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2755 ) , .QN ( n2756 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__6_ ( .D ( n2275 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2759 ) , .QN ( n2760 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__5_ ( .D ( n2212 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3066 ) , .QN ( n3067 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__5_ ( .D ( n2244 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3093 ) , .QN ( n3094 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__5_ ( .D ( n2236 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3081 ) , .QN ( n3082 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__5_ ( .D ( n2180 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n3065 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_1__7_ ( .D ( n2178 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n2813 ) , .QN ( n5559 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__7_ ( .D ( n2210 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3131 ) , .QN ( n3132 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__7_ ( .D ( n2194 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n2753 ) , .QN ( n2754 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__7_ ( .D ( n2218 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3133 ) , .QN ( n3134 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__7_ ( .D ( n2202 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n2830 ) , .QN ( n2831 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__7_ ( .D ( n2186 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n2832 ) , .QN ( n2833 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__7_ ( .D ( n2170 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3135 ) , .QN ( n3136 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__3_ ( .D ( n2286 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2834 ) , .QN ( n2835 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__3_ ( .D ( n2294 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2846 ) , .QN ( n2847 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__3_ ( .D ( n2278 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2826 ) , .QN ( n2827 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__3_ ( .D ( n2270 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2828 ) , .QN ( n2829 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__3_ ( .D ( n2262 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2842 ) , .QN ( n2843 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__3_ ( .D ( n2254 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2840 ) , .QN ( n2841 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__3_ ( .D ( n2238 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2838 ) , .QN ( n2839 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IR_reg_7_ ( .D ( n2452 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( n3935 ) , .QN ( n3030 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_RegAddrA_r_reg_1_ ( 
    .D ( i_tv80_core_N1102 ) , .CK ( ZCTSNET_50 ) , 
    .Q ( i_tv80_core_RegAddrA_r_1_ ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_mcycles_reg_1_ ( .D ( n2387 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n129 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_ALU_Op_r_reg_2_ ( .D ( n2420 ) , 
    .CK ( ZCTSNET_57 ) , .Q ( n5084 ) , .QN ( n3101 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_F_reg_7_ ( .D ( n2482 ) , 
    .CK ( ZCTSNET_54 ) , .Q ( n3005 ) , .QN ( n3004 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_11_ ( .D ( n2358 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6354 ) , .QN ( n123 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_Pre_XY_F_M_reg_2_ ( .D ( n2441 ) , 
    .CK ( ZCTSNET_55 ) , .QN ( n270 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_TmpAddr_reg_8_ ( .D ( n2361 ) , 
    .CK ( ZCTSNET_56 ) , .Q ( n6351 ) , .QN ( n126 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_2_ ( .D ( i_tv80_core_N1217 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n4428 ) , .QN ( n375 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IntE_FF2_reg ( .D ( n2476 ) , 
    .CK ( MY_CLK ) , .QN ( n133 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusB_reg_0_ ( .D ( i_tv80_core_N1215 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n4499 ) , .QN ( n372 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_2_ ( .D ( n2436 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n4856 ) , .QN ( n2944 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_BusA_reg_3_ ( .D ( n2435 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2837 ) , .QN ( n2836 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__0_ ( .D ( n2177 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n6340 ) , .QN ( n96 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_mcycle_reg_1_ ( .D ( n2455 ) , 
    .CK ( ZCTSNET_55 ) , .Q ( n2854 ) , .QN ( n2853 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__1_ ( .D ( n2176 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n6341 ) , .QN ( n95 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_5__2_ ( .D ( n2215 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3009 ) , .QN ( n3008 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_3__2_ ( .D ( n2199 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3011 ) , .QN ( n3010 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_6__2_ ( .D ( n2223 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3013 ) , .QN ( n3012 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_4__2_ ( .D ( n2207 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3019 ) , .QN ( n3018 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_2__2_ ( .D ( n2191 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3017 ) , .QN ( n3016 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_0__2_ ( .D ( n2175 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3015 ) , .QN ( n3014 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__0_ ( .D ( n2241 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2984 ) , .QN ( n2983 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__0_ ( .D ( n2273 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2980 ) , .QN ( n2979 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__0_ ( .D ( n2257 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2978 ) , .QN ( n2977 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__0_ ( .D ( n2297 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2990 ) , .QN ( n2989 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__0_ ( .D ( n2281 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2988 ) , .QN ( n2987 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__0_ ( .D ( n2265 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2986 ) , .QN ( n2985 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__0_ ( .D ( n2249 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2982 ) , .QN ( n2981 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__1_ ( .D ( n2272 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2880 ) , .QN ( n2879 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__1_ ( .D ( n2256 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2882 ) , .QN ( n2881 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__1_ ( .D ( n2296 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2888 ) , .QN ( n2887 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__1_ ( .D ( n2280 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2892 ) , .QN ( n2891 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__1_ ( .D ( n2264 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2890 ) , .QN ( n2889 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__1_ ( .D ( n2248 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2884 ) , .QN ( n2883 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__1_ ( .D ( n2240 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2886 ) , .QN ( n2885 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__2_ ( .D ( n2287 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2821 ) , .QN ( n2820 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__2_ ( .D ( n2271 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2825 ) , .QN ( n2824 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__2_ ( .D ( n2255 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n2858 ) , .QN ( n2857 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__2_ ( .D ( n2295 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2864 ) , .QN ( n2863 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__2_ ( .D ( n2279 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2823 ) , .QN ( n2822 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__2_ ( .D ( n2263 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2860 ) , .QN ( n2859 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__2_ ( .D ( n2247 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2862 ) , .QN ( n2861 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__2_ ( .D ( n2239 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2856 ) , .QN ( n2855 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__4_ ( .D ( n2237 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3059 ) , .QN ( n3058 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_7__4_ ( .D ( n2293 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3061 ) , .QN ( n3060 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_5__4_ ( .D ( n2277 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n3063 ) , .QN ( n3062 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__4_ ( .D ( n2285 ) , 
    .CK ( ZCTSNET_52 ) , .Q ( n2801 ) , .QN ( n2800 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_6__5_ ( .D ( n2284 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( i_tv80_core_i_reg_RegsH_6__5_ ) , 
    .QN ( n5531 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_4__6_ ( .D ( n2267 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2966 ) , .QN ( n2965 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_2__6_ ( .D ( n2251 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2964 ) , .QN ( n2963 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_3__6_ ( .D ( n2259 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2970 ) , .QN ( n2969 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_1__6_ ( .D ( n2243 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2968 ) , .QN ( n2967 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsH_reg_0__6_ ( .D ( n2235 ) , 
    .CK ( ZCTSNET_51 ) , .Q ( n2931 ) , .QN ( n2930 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_IncDecZ_reg ( .D ( n2478 ) , 
    .CK ( ZCTSNET_50 ) , .Q ( n2762 ) , .QN ( n2761 ) ) ;
SAEDRVT14_FDP_V2LP_1 i_tv80_core_i_reg_RegsL_reg_7__7_ ( .D ( n2226 ) , 
    .CK ( ZCTSNET_53 ) , .Q ( n3024 ) , .QN ( n3023 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8322 ( .A1 ( n5707 ) , .A2 ( tmp_net426 ) , 
    .B ( n6096 ) , .X ( n3964 ) ) ;
SAEDRVT14_ND2_1P5 U2482 ( .A1 ( n575 ) , .A2 ( n6346 ) , .X ( n6366 ) ) ;
SAEDRVT14_AN2_0P5 U2483 ( .A1 ( n5654 ) , .A2 ( n5653 ) , .X ( n6367 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2484 ( .A1 ( n5353 ) , .A2 ( HFSNET_11 ) , 
    .X ( n6368 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2486 ( .A1 ( n3103 ) , .A2 ( n518 ) , .X ( n6369 ) ) ;
SAEDRVT14_NR3_0P5 U2488 ( .A1 ( n3050 ) , .A2 ( n4439 ) , 
    .A3 ( i_tv80_core_IR_5_ ) , .X ( n6370 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1512 ( .A1 ( n4435 ) , .A2 ( n4434 ) , 
    .B ( tmp_net2 ) , .X ( n6380 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2491 ( .A1 ( n6291 ) , .A2 ( n3039 ) , .X ( n6372 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2494 ( .A1 ( mcycle_0_ ) , .A2 ( n2854 ) , 
    .X ( n6373 ) ) ;
SAEDRVT14_OR3_1 U2495 ( .A1 ( n5323 ) , .A2 ( n2911 ) , .A3 ( n3227 ) , 
    .X ( n6374 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_8323 ( .A1 ( n5717 ) , .A2 ( tmp_net424 ) , 
    .B ( tmp_net425 ) , .X ( tmp_net426 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2498 ( .A1 ( n5308 ) , .A2 ( n5309 ) , .X ( n6376 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2499 ( .A1 ( i_tv80_core_IR_1_ ) , .A2 ( n3947 ) , 
    .X ( n6377 ) ) ;
SAEDRVT14_EN2_0P5 U2500 ( .A1 ( n5491 ) , .A2 ( i_tv80_core_RegBusA_12_ ) , 
    .X ( n6378_CDR1 ) ) ;
SAEDRVT14_NR3_0P5 U2501 ( .A1 ( n5621 ) , .A2 ( n4330 ) , .A3 ( n3051 ) , 
    .X ( n6379 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_1519 ( .A1 ( n3050 ) , .A2 ( n3051 ) , 
    .B ( n4467 ) , .X ( tmp_net5 ) ) ;
SAEDRVT14_OA22_U_0P5 U2505 ( .A1 ( n2670 ) , .A2 ( n5286 ) , .B1 ( n6350 ) , 
    .B2 ( n6349 ) , .X ( n6381 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_3_8324 ( .A1 ( n5735 ) , .A2 ( n4145 ) , 
    .X ( tmp_net424 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_8325 ( .A ( n5227 ) , .X ( tmp_net425 ) ) ;
SAEDRVT14_EO4_1 U2513 ( .A1 ( n5076_CDR1 ) , .A2 ( n5676_CDR1 ) , 
    .A3 ( n5075_CDR1 ) , .A4 ( n5664_CDR1 ) , .X ( n5082_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2514 ( .A1 ( i_tv80_core_RegBusA_14_ ) , .A2 ( n5491 ) , 
    .X ( n3366 ) ) ;
SAEDRVT14_AOI21_0P75 U2515 ( .A1 ( n4435 ) , .A2 ( n4434 ) , .B ( n575 ) , 
    .X ( n3354 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_3_8345 ( .A ( n5210 ) , .X ( tmp_net437 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8346 ( .A ( tmp_net439 ) , .B ( tmp_net440 ) , 
    .X ( tmp_net245 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_2_8347 ( .A1 ( n3297 ) , 
    .A2 ( i_tv80_core_PC_0_ ) , .B1 ( n3381 ) , .B2 ( i_tv80_core_PC_8_ ) , 
    .X ( tmp_net439 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_3_8348 ( .A1 ( i_tv80_core_N1207 ) , 
    .A2 ( n3307 ) , .B ( n3850 ) , .X ( tmp_net440 ) ) ;
SAEDRVT14_AN2_0P5 U2521 ( .A1 ( n5314 ) , .A2 ( n6112 ) , .X ( n2659 ) ) ;
SAEDRVT14_AO21_U_0P5 ctmTdsLR_1_8349 ( .A1 ( n5847 ) , .A2 ( tmp_net441 ) , 
    .B ( tmp_net442 ) , .X ( n5848 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_8350 ( .A ( i_tv80_core_PC_7_ ) , 
    .X ( tmp_net441 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_1547 ( .A1 ( n3142 ) , .A2 ( tmp_net12 ) , 
    .B ( n3363 ) , .X ( n5205 ) ) ;
SAEDRVT14_ND2_ECO_1 U2525 ( .A1 ( n6117 ) , .A2 ( n6119 ) , .X ( n6118 ) ) ;
SAEDRVT14_OA31_1 U2526 ( .A1 ( i_tv80_core_RegBusA_9_ ) , 
    .A2 ( i_tv80_core_RegBusA_8_ ) , .A3 ( i_tv80_core_RegBusA_7_ ) , 
    .B ( n5491 ) , .X ( n3111 ) ) ;
SAEDRVT14_OR4_1 U2527 ( .A1 ( n3806 ) , .A2 ( n3807 ) , .A3 ( n3809 ) , 
    .A4 ( n3808 ) , .X ( i_tv80_core_RegBusA_11_ ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_3_8351 ( .A1 ( n5845 ) , .A2 ( n5974 ) , 
    .B ( tmp_net441 ) , .X ( tmp_net442 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8352 ( .A1 ( n4987 ) , .A2 ( n3041 ) , 
    .B ( tmp_net443 ) , .X ( tmp_net444 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8353 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_15_ ) , .B ( HFSNET_16 ) , .X ( tmp_net443 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8354 ( .A1 ( n4342 ) , .A2 ( tmp_net446 ) , 
    .B ( reset_n ) , .X ( n4998 ) ) ;
SAEDRVT14_AO221_0P5 U2537 ( .A1 ( n4389 ) , .A2 ( i_tv80_core_BusB_4_ ) , 
    .B1 ( n4388 ) , .B2 ( n4679 ) , .C ( n4387 ) , .X ( n5077_CDR1 ) ) ;
SAEDRVT14_ND2_CDC_1 U2540 ( .A1 ( n5020 ) , .A2 ( n4802 ) , .X ( n4679 ) ) ;
SAEDRVT14_OAI31_0P5 U2543 ( .A1 ( n6372 ) , .A2 ( n3914 ) , .A3 ( n3437 ) , 
    .B ( n3427 ) , .X ( n3349 ) ) ;
SAEDRVT14_INV_S_0P5 U2544 ( .A ( n5506 ) , .X ( n5507 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2545 ( .A1 ( i_tv80_core_RegBusA_10_ ) , 
    .A2 ( n5491 ) , .X ( n2804 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2546 ( .A1 ( HFSNET_11 ) , 
    .A2 ( i_tv80_core_RegBusA_13_ ) , .X ( n2784_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U2547 ( .A ( n5469 ) , .X ( n5467_CDR1 ) ) ;
SAEDRVT14_EN2_0P5 U2548 ( .A1 ( n5491 ) , .A2 ( n3119 ) , .X ( n3373_CDR1 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_8355 ( .A ( tmp_net445 ) , .X ( tmp_net446 ) ) ;
SAEDRVT14_EN2_0P5 U2551 ( .A1 ( i_tv80_core_RegBusA_14_ ) , .A2 ( n5491 ) , 
    .X ( n3364 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2553 ( .A1 ( n5184 ) , .A2 ( n4215 ) , .X ( n5746 ) ) ;
SAEDRVT14_INV_S_1P5 U2554 ( .A ( n5473 ) , .X ( n5527 ) ) ;
SAEDRVT14_INV_S_1 U2555 ( .A ( n5512 ) , .X ( n5525 ) ) ;
SAEDRVT14_INV_1 U2556 ( .A ( n5645 ) , .X ( n5643 ) ) ;
SAEDRVT14_INV_S_2 U2557 ( .A ( n6278 ) , .X ( n5989 ) ) ;
SAEDRVT14_INV_S_2 U2559 ( .A ( n2671 ) , .X ( n3840 ) ) ;
SAEDRVT14_INV_S_0P5 U2561 ( .A ( n5968 ) , .X ( n5979 ) ) ;
SAEDRVT14_ND2_CDC_1 U2564 ( .A1 ( n6103 ) , .A2 ( n6122 ) , .X ( n6252 ) ) ;
SAEDRVT14_OA22_U_0P5 U2565 ( .A1 ( n6195 ) , .A2 ( n6198 ) , .B1 ( n6194 ) , 
    .B2 ( n6197 ) , .X ( n3286 ) ) ;
SAEDRVT14_OR3_0P5 U2567 ( .A1 ( n1491 ) , .A2 ( n4749 ) , .A3 ( n4747 ) , 
    .X ( n5009 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2568 ( .A1 ( n4749 ) , .A2 ( n4748 ) , .X ( n5008 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2569 ( .A1 ( n3375 ) , .A2 ( n4749 ) , .X ( n3288 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2572 ( .A1 ( n3375 ) , .A2 ( n4746 ) , .X ( n3290 ) ) ;
SAEDRVT14_NR3_0P5 U2573 ( .A1 ( n4746 ) , .A2 ( n4748 ) , .A3 ( n3375 ) , 
    .X ( n3303 ) ) ;
SAEDRVT14_NR3_0P5 U2574 ( .A1 ( n4749 ) , .A2 ( n4748 ) , .A3 ( n3375 ) , 
    .X ( n3305 ) ) ;
SAEDRVT14_NR4_0P75 ctmTdsLR_1_1513 ( .A1 ( n3426 ) , .A2 ( n3050 ) , 
    .A3 ( n3935 ) , .A4 ( n3911 ) , .X ( n4450 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1520 ( .A1 ( tmp_net5 ) , .A2 ( n3426 ) , 
    .X ( n3429 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8356 ( .A1 ( n4828 ) , .A2 ( n4355 ) , 
    .X ( tmp_net445 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8357 ( .A1 ( tmp_net447 ) , .A2 ( n6096 ) , 
    .B ( reset_n ) , .X ( n5272 ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_2_8358 ( .A1 ( n5270 ) , .A2 ( n2905 ) , 
    .X ( tmp_net447 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1532 ( .A1 ( n3455 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_5__0_ ) , .B1 ( n3458 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_7__0_ ) , .X ( n3489 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_1533 ( .A1 ( n3460 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_4__0_ ) , .B1 ( n3461 ) , 
    .B2 ( i_tv80_core_i_reg_RegsL_6__0_ ) , .X ( n3495 ) ) ;
SAEDRVT14_OA31_1 ctmTdsLR_1_1548 ( .A1 ( n6379 ) , .A2 ( n4450 ) , 
    .A3 ( n2919 ) , .B ( n3354 ) , .X ( tmp_net13 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_2_1549 ( .A1 ( n4449 ) , .A2 ( tmp_net13 ) , 
    .B ( n6366 ) , .X ( n5309 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8374 ( .A1 ( n3959 ) , .A2 ( n4273 ) , 
    .B ( tmp_net456 ) , .X ( n2471 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8375 ( .A ( n262 ) , .B ( n5250 ) , 
    .X ( tmp_net456 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8376 ( .A1 ( n6345 ) , .A2 ( n2991 ) , 
    .B ( tmp_net458 ) , .X ( n2742 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1522 ( .A ( n5991 ) , .X ( tmp_net6 ) ) ;
SAEDRVT14_EO4_1 U2595 ( .A1 ( n5103_CDR1 ) , .A2 ( n3464_CDR1 ) , 
    .A3 ( n5102_CDR1 ) , .A4 ( n3466_CDR1 ) , .X ( n5111 ) ) ;
SAEDRVT14_AN3_0P5 U2597 ( .A1 ( n3722 ) , .A2 ( n3724 ) , .A3 ( n3000 ) , 
    .X ( n3188 ) ) ;
SAEDRVT14_AO221_0P5 U2599 ( .A1 ( i_tv80_core_i_reg_RegsL_7__1_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__1_ ) , 
    .B2 ( n6367 ) , .C ( n3726 ) , .X ( n3000 ) ) ;
SAEDRVT14_OAI31_0P5 U2601 ( .A1 ( n2810 ) , .A2 ( i_tv80_core_RegBusA_4_ ) , 
    .A3 ( i_tv80_core_RegBusA_3_ ) , .B ( HFSNET_12 ) , .X ( n5375 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8377 ( .A ( tmp_net457 ) , .B ( n6321 ) , 
    .X ( tmp_net458 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_3_8378 ( .A1 ( i_tv80_core_IntCycle ) , 
    .A2 ( n2991 ) , .X ( tmp_net457 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8379 ( .A1 ( n5773 ) , .A2 ( tmp_net459 ) , 
    .B ( tmp_net460 ) , .X ( n2367 ) ) ;
SAEDRVT14_ND2_ECO_1 U2606 ( .A1 ( i_tv80_core_RegBusA_3_ ) , .A2 ( n3026 ) , 
    .X ( n5400 ) ) ;
SAEDRVT14_OA31_1 U2608 ( .A1 ( i_tv80_core_RegBusA_3_ ) , 
    .A2 ( i_tv80_core_RegBusA_2_ ) , .A3 ( i_tv80_core_RegBusA_4_ ) , 
    .B ( HFSNET_12 ) , .X ( n2664 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2610 ( .A1 ( n5400 ) , .A2 ( HFSNET_11 ) , 
    .X ( n3273 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_8380 ( .A ( n5931 ) , .X ( tmp_net459 ) ) ;
SAEDRVT14_OA31_1 U2617 ( .A1 ( n2600 ) , .A2 ( n5450 ) , .A3 ( n3144 ) , 
    .B ( HFSNET_11 ) , .X ( n2797 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2618 ( .A1 ( n3744 ) , .A2 ( n3222 ) , 
    .X ( i_tv80_core_RegBusA_4_ ) ) ;
SAEDRVT14_ND2_ECO_1 U2619 ( .A1 ( n3723 ) , .A2 ( n3188 ) , .X ( n2975 ) ) ;
SAEDRVT14_INV_S_0P5 U2623 ( .A ( n2680 ) , .X ( n3985 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2625 ( .A1 ( n5318 ) , .A2 ( n5309 ) , .X ( n3255 ) ) ;
SAEDRVT14_OA22_U_0P5 ctmTdsLR_3_8381 ( .A1 ( n5828 ) , .A2 ( n182_CDR1 ) , 
    .B1 ( n413 ) , .B2 ( n5814 ) , .X ( tmp_net460 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8382 ( .A1 ( n4248 ) , .A2 ( tmp_net463 ) , 
    .B ( tmp_net464 ) , .X ( n2476 ) ) ;
SAEDRVT14_OAI21_0P5 U2629 ( .A1 ( n2659 ) , .A2 ( n5527 ) , .B ( n5347 ) , 
    .X ( n5653 ) ) ;
SAEDRVT14_OR4_1 U2630 ( .A1 ( n3344 ) , .A2 ( n3255 ) , .A3 ( n5527 ) , 
    .A4 ( n5346 ) , .X ( n5347 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2631 ( .A1 ( n4078 ) , .A2 ( n3945 ) , .X ( n4036 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_8383 ( .A1 ( tmp_net462 ) , .A2 ( n6330 ) , 
    .X ( tmp_net463 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2636 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n5621 ) , 
    .X ( n3426 ) ) ;
SAEDRVT14_OR2_MM_0P5 U2637 ( .A1 ( n3198 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .X ( n4332 ) ) ;
SAEDRVT14_ND2_ECO_1 U2641 ( .A1 ( n3938 ) , .A2 ( n3978 ) , .X ( n3988 ) ) ;
SAEDRVT14_ND2_CDC_1 U2642 ( .A1 ( n3935 ) , .A2 ( i_tv80_core_IR_6_ ) , 
    .X ( n4439 ) ) ;
SAEDRVT14_NR2_MM_0P5 U2644 ( .A1 ( n3362 ) , .A2 ( n5626 ) , .X ( n3363 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8384 ( .A1 ( tmp_net461 ) , 
    .A2 ( HFSNET_15 ) , .X ( tmp_net462 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_8385 ( .A ( n4252 ) , .X ( tmp_net461 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2648 ( .A1 ( n3730 ) , .A2 ( n3191 ) , 
    .X ( i_tv80_core_RegBusA_2_ ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_5_8386 ( .A ( n133 ) , .B ( n4248 ) , 
    .X ( tmp_net464 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_8387 ( .A1 ( n4278 ) , .A2 ( tmp_net465 ) , 
    .X ( n4281 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_8388 ( .A1 ( n4289 ) , .A2 ( n4279 ) , 
    .A3 ( n4280 ) , .X ( tmp_net465 ) ) ;
SAEDRVT14_AO221_0P5 U2653 ( .A1 ( n3042 ) , .A2 ( n6342 ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_2__3_ ) , .B2 ( n6374 ) , .C ( n3741 ) , 
    .X ( n3736 ) ) ;
SAEDRVT14_ND2_ECO_1 U2654 ( .A1 ( n6367 ) , .A2 ( n2850 ) , .X ( n3741 ) ) ;
SAEDRVT14_AO221_0P5 U2659 ( .A1 ( n3042 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_5__3_ ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_7__3_ ) , .B2 ( n6374 ) , .C ( n3735 ) , 
    .X ( n3738 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2663 ( .A1 ( n3427 ) , .A2 ( n5310 ) , .X ( n5648 ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_8389 ( .A1 ( tmp_net468 ) , .A2 ( n2604 ) , 
    .X ( N36 ) ) ;
SAEDRVT14_OAI31_0P5 U2666 ( .A1 ( n4507 ) , .A2 ( n2909 ) , .A3 ( n5163 ) , 
    .B ( n4506 ) , .X ( n5024 ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_8390 ( .A1 ( n6325 ) , .A2 ( tmp_net466 ) , 
    .B ( tmp_net467 ) , .X ( tmp_net468 ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_3_8391 ( .A1 ( HFSNET_23 ) , .A2 ( n6326 ) , 
    .X ( tmp_net466 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2669 ( .A1 ( n2849 ) , .A2 ( HFSNET_12 ) , 
    .X ( n5469 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_8392 ( .A ( n6345 ) , .X ( tmp_net467 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8393 ( .A1 ( n5773 ) , .A2 ( n3312 ) , 
    .B ( tmp_net471 ) , .X ( n2383 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8394 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_2_ ) , .B ( tmp_net470 ) , .X ( tmp_net471 ) ) ;
SAEDRVT14_OR3_0P5 U2676 ( .A1 ( n5390 ) , .A2 ( n5429 ) , .A3 ( n3358 ) , 
    .X ( n3137 ) ) ;
SAEDRVT14_INV_S_0P5 U2678 ( .A ( n5411 ) , .X ( n5414 ) ) ;
SAEDRVT14_AO221_0P5 U2686 ( .A1 ( n4673 ) , .A2 ( i_tv80_core_BusB_4_ ) , 
    .B1 ( n4713 ) , .B2 ( di_reg_4__CDR1 ) , .C ( n4395 ) , .X ( n5383 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2687 ( .A1 ( i_tv80_core_RegBusA_5_ ) , 
    .A2 ( HFSNET_12 ) , .X ( n5034 ) ) ;
SAEDRVT14_AOI21_0P75 U2689 ( .A1 ( n5910 ) , .A2 ( n5909 ) , .B ( n5908 ) , 
    .X ( n5911 ) ) ;
SAEDRVT14_NR3_0P5 U2690 ( .A1 ( i_tv80_core_F_0_ ) , .A2 ( n5597 ) , 
    .A3 ( n3103 ) , .X ( n3906 ) ) ;
SAEDRVT14_NR3_0P5 U2693 ( .A1 ( n5597 ) , .A2 ( n3104 ) , .A3 ( n4814 ) , 
    .X ( n3434 ) ) ;
SAEDRVT14_OR4_1 U2694 ( .A1 ( n4082_CDR1 ) , .A2 ( n4083 ) , 
    .A3 ( n3262_CDR1 ) , .A4 ( n4081_CDR1 ) , .X ( n5158 ) ) ;
SAEDRVT14_ND2_CDC_1 U2695 ( .A1 ( n3716 ) , .A2 ( n3177 ) , .X ( n5524 ) ) ;
SAEDRVT14_AN3_0P5 U2697 ( .A1 ( n3714 ) , .A2 ( n3717 ) , .A3 ( n3715 ) , 
    .X ( n3177 ) ) ;
SAEDRVT14_OR4_1 U2698 ( .A1 ( n5337 ) , .A2 ( n5338 ) , .A3 ( tstate_1_ ) , 
    .A4 ( n262 ) , .X ( n5473 ) ) ;
SAEDRVT14_ND2_ECO_1 U2699 ( .A1 ( n2946 ) , .A2 ( n255 ) , .X ( n5338 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2700 ( .A1 ( n3289 ) , .A2 ( n5162 ) , .X ( n5712 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2701 ( .A1 ( di_reg_2__CDR1 ) , .A2 ( n3029 ) , 
    .X ( n5793 ) ) ;
SAEDRVT14_OR4_1 U2703 ( .A1 ( n5732 ) , .A2 ( n5733 ) , .A3 ( n3029 ) , 
    .A4 ( n6347 ) , .X ( n5734 ) ) ;
SAEDRVT14_AO221_0P5 U2704 ( .A1 ( n2777 ) , .A2 ( n5729 ) , .B1 ( n5728 ) , 
    .B2 ( n6281 ) , .C ( n5727 ) , .X ( n5731 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2706 ( .A1 ( n2897 ) , .A2 ( i_tv80_core_BusB_5_ ) , 
    .X ( n3472 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2709 ( .A1 ( n3103 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .X ( n3454 ) ) ;
SAEDRVT14_INV_S_0P5 U2710 ( .A ( n4864 ) , .X ( n4610 ) ) ;
SAEDRVT14_ND2_ECO_1 U2711 ( .A1 ( n4558 ) , .A2 ( n4517 ) , .X ( n4514 ) ) ;
SAEDRVT14_AO221_0P5 U2712 ( .A1 ( n4422 ) , .A2 ( n4428 ) , .B1 ( n4421 ) , 
    .B2 ( n4679 ) , .C ( n4420 ) , .X ( n5069_CDR1 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8395 ( .A1 ( n4714 ) , .A2 ( n5405 ) , 
    .B ( tmp_net469 ) , .X ( tmp_net470 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8396 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_2_ ) , .B ( HFSNET_15 ) , .X ( tmp_net469 ) ) ;
SAEDRVT14_INV_S_0P5 U2716 ( .A ( n4558 ) , .X ( n4615 ) ) ;
SAEDRVT14_OA22_U_0P5 U2719 ( .A1 ( n4384 ) , .A2 ( n2836 ) , .B1 ( n3020 ) , 
    .B2 ( n4383 ) , .X ( n2667 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2720 ( .A1 ( n4057 ) , .A2 ( n3289 ) , .X ( n4075 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2721 ( .A1 ( n5024 ) , .A2 ( n4508 ) , .X ( n4542 ) ) ;
SAEDRVT14_ND2_CDC_1 U2723 ( .A1 ( n4177 ) , .A2 ( n4182 ) , 
    .X ( n5613_CDR1 ) ) ;
SAEDRVT14_INV_S_0P5 U2724 ( .A ( n4017 ) , .X ( n4469 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8397 ( .A1 ( n3973 ) , .A2 ( n6096 ) , 
    .B ( tmp_net472 ) , .X ( n2392 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8398 ( .A ( n555 ) , .B ( n3973 ) , 
    .X ( tmp_net472 ) ) ;
SAEDRVT14_OR3_0P5 U2728 ( .A1 ( n3914 ) , .A2 ( n3437 ) , .A3 ( n6372 ) , 
    .X ( n5310 ) ) ;
SAEDRVT14_NR3_1 U2730 ( .A1 ( n5302 ) , .A2 ( n3224 ) , .A3 ( n3225 ) , 
    .X ( n2851 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8399 ( .A1 ( n5898 ) , .A2 ( n4986 ) , 
    .B ( tmp_net475 ) , .X ( n2373 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U2732 ( .D0 ( n6278 ) , .D1 ( n6301 ) , .S ( n3903 ) , 
    .X ( n6000 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8400 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_12_ ) , .B ( tmp_net474 ) , .X ( tmp_net475 ) ) ;
SAEDRVT14_AO221_0P5 U2735 ( .A1 ( n5989 ) , .A2 ( n5988 ) , .B1 ( n5987 ) , 
    .B2 ( i_tv80_core_IR_0_ ) , .C ( n5986 ) , .X ( n5998 ) ) ;
SAEDRVT14_INV_S_0P5 U2736 ( .A ( i_tv80_core_Set_BusB_To_2_ ) , .X ( n3902 ) ) ;
SAEDRVT14_ND2B_0P75 U2737 ( .A ( n4009 ) , .B ( n2772 ) , .X ( n4035 ) ) ;
SAEDRVT14_OAI31_0P5 U2738 ( .A1 ( n518 ) , .A2 ( n3103 ) , .A3 ( n4455 ) , 
    .B ( n4438 ) , .X ( n4052 ) ) ;
SAEDRVT14_INV_S_0P5 U2739 ( .A ( n4002 ) , .X ( n4796 ) ) ;
SAEDRVT14_INV_S_0P5 U2740 ( .A ( n4001 ) , .X ( n2994 ) ) ;
SAEDRVT14_INV_S_1P5 U2741 ( .A ( n5284 ) , .X ( n4470 ) ) ;
SAEDRVT14_ND2_ECO_1 U2742 ( .A1 ( n3991 ) , .A2 ( n4021 ) , .X ( n4133 ) ) ;
SAEDRVT14_OAI22_0P5 U2745 ( .A1 ( n5164 ) , .A2 ( n5235 ) , .B1 ( n3283 ) , 
    .B2 ( n4004 ) , .X ( n4062 ) ) ;
SAEDRVT14_EO2_V1_0P75 U2746 ( .A1 ( n5113 ) , .A2 ( n5114 ) , .X ( n5138 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2747 ( .A1 ( n5571 ) , .A2 ( n6308 ) , .X ( n3275 ) ) ;
SAEDRVT14_NR3B_U_0P5 U2750 ( .A ( n4763 ) , .B1 ( n3376 ) , .B2 ( n3027 ) , 
    .X ( n3292 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8401 ( .A1 ( n4987 ) , .A2 ( n3001 ) , 
    .B ( tmp_net473 ) , .X ( tmp_net474 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8402 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_12_ ) , .B ( HFSNET_16 ) , .X ( tmp_net473 ) ) ;
SAEDRVT14_ND2_ECO_1 U2756 ( .A1 ( n4981 ) , .A2 ( n4980 ) , .X ( n4982 ) ) ;
SAEDRVT14_OA33_U_0P5 U2760 ( .A1 ( n4972 ) , .A2 ( n4975 ) , .A3 ( n4978 ) , 
    .B1 ( n2910 ) , .B2 ( n4974 ) , .B3 ( n4971 ) , .X ( n4981 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8403 ( .A1 ( n3312 ) , .A2 ( n4502 ) , 
    .B ( tmp_net478 ) , .X ( n2385 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8404 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_0_ ) , .B ( tmp_net477 ) , .X ( tmp_net478 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8405 ( .A1 ( n4714 ) , .A2 ( n5436 ) , 
    .B ( tmp_net476 ) , .X ( tmp_net477 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8406 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_0_ ) , .B ( HFSNET_16 ) , .X ( tmp_net476 ) ) ;
SAEDRVT14_ND2_ECO_1 U2775 ( .A1 ( n6367 ) , .A2 ( n3042 ) , .X ( n3820 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2776 ( .A1 ( i_tv80_core_RegBusA_2_ ) , 
    .A2 ( HFSNET_12 ) , .X ( n5511 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8407 ( .A1 ( n5826 ) , .A2 ( n3312 ) , 
    .B ( tmp_net481 ) , .X ( n2378 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U2778 ( .D0 ( n6272 ) , .D1 ( n5754 ) , .S ( n3903 ) , 
    .X ( n4317 ) ) ;
SAEDRVT14_INV_S_0P5 U2780 ( .A ( n6279 ) , .X ( n5985 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8408 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_7_ ) , .B ( tmp_net480 ) , .X ( tmp_net481 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8409 ( .A1 ( n4714 ) , .A2 ( n3041 ) , 
    .B ( tmp_net479 ) , .X ( tmp_net480 ) ) ;
SAEDRVT14_INV_S_0P5 U2783 ( .A ( n3791 ) , .X ( n3801 ) ) ;
SAEDRVT14_OA21_MM_1 U2786 ( .A1 ( n6289 ) , .A2 ( n6288 ) , .B ( n3431 ) , 
    .X ( n6290 ) ) ;
SAEDRVT14_ND2_ECO_1 U2787 ( .A1 ( n4282 ) , .A2 ( n4794 ) , .X ( n4301 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2788 ( .A1 ( n2805 ) , .A2 ( gre_net_556 ) , 
    .X ( n3250 ) ) ;
SAEDRVT14_INV_S_0P75 U2791 ( .A ( n3819 ) , .X ( n3803 ) ) ;
SAEDRVT14_AN2_0P5 U2792 ( .A1 ( HFSNET_19 ) , .A2 ( n3042 ) , .X ( n2805 ) ) ;
SAEDRVT14_BUF_1P5 HFSBUF_3602_1500 ( .A ( HFSNET_21 ) , .X ( HFSNET_20 ) ) ;
SAEDRVT14_ND2_ECO_1 U2799 ( .A1 ( n2991 ) , .A2 ( n262 ) , .X ( n6190 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2800 ( .A1 ( n2918 ) , .A2 ( n3351 ) , .X ( n6261 ) ) ;
SAEDRVT14_AO221_0P5 U2801 ( .A1 ( n4944_CDR1 ) , .A2 ( n4943_CDR1 ) , 
    .B1 ( n5130 ) , .B2 ( i_tv80_core_F_6_ ) , .C ( n3478 ) , .X ( n5053 ) ) ;
SAEDRVT14_OR4_1 U2802 ( .A1 ( n6110 ) , .A2 ( n6117 ) , .A3 ( n6383 ) , 
    .A4 ( n3411 ) , .X ( n6194 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8410 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_7_ ) , .B ( HFSNET_16 ) , .X ( tmp_net479 ) ) ;
SAEDRVT14_OAI31_0P5 U2804 ( .A1 ( n5449 ) , .A2 ( n5422 ) , .A3 ( n5399 ) , 
    .B ( HFSNET_11 ) , .X ( n5391 ) ) ;
SAEDRVT14_OR2_0P5 U2805 ( .A1 ( n5376 ) , .A2 ( n3111 ) , .X ( n5388 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8411 ( .A1 ( n3312 ) , .A2 ( n4532 ) , 
    .B ( tmp_net484 ) , .X ( n2384 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8412 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_1_ ) , .B ( tmp_net483 ) , .X ( tmp_net484 ) ) ;
SAEDRVT14_ND2_ECO_1 U2816 ( .A1 ( n3431 ) , .A2 ( n1941 ) , .X ( n6097 ) ) ;
SAEDRVT14_AN3_0P5 U2819 ( .A1 ( n5571 ) , .A2 ( n4208 ) , .A3 ( n6308 ) , 
    .X ( n4235 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2822 ( .A1 ( i_tv80_core_RegBusA_13_ ) , .A2 ( n5491 ) , 
    .X ( n3372 ) ) ;
SAEDRVT14_ND2_0P5 U2823 ( .A1 ( n5327 ) , .A2 ( n5326 ) , .X ( n5512 ) ) ;
SAEDRVT14_OR3_0P5 U2827 ( .A1 ( n6368 ) , .A2 ( n5355 ) , .A3 ( n3365 ) , 
    .X ( n5363 ) ) ;
SAEDRVT14_ND2B_U_0P5 U2831 ( .A ( n5357 ) , .B ( n5378 ) , .X ( n5365 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8413 ( .A1 ( n4714 ) , .A2 ( n5415 ) , 
    .B ( tmp_net482 ) , .X ( tmp_net483 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8414 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_1_ ) , .B ( HFSNET_16 ) , .X ( tmp_net482 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2845 ( .A1 ( n5478 ) , .A2 ( n5477 ) , .X ( n5483 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8415 ( .A1 ( n5792 ) , .A2 ( n3312 ) , 
    .B ( tmp_net487 ) , .X ( n2381 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8416 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_4_ ) , .B ( tmp_net486 ) , .X ( tmp_net487 ) ) ;
SAEDRVT14_OA21_MM_1 U2849 ( .A1 ( n5453 ) , .A2 ( n5456 ) , .B ( n5468 ) , 
    .X ( n3045 ) ) ;
SAEDRVT14_INV_S_0P5 U2851 ( .A ( n4157 ) , .X ( n5721_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2856 ( .A1 ( n6369 ) , .A2 ( n3997 ) , .X ( n3289 ) ) ;
SAEDRVT14_INV_S_0P75 U2859 ( .A ( n5164 ) , .X ( n5163 ) ) ;
SAEDRVT14_INV_S_0P5 U2860 ( .A ( n3996 ) , .X ( n5162 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2861 ( .A1 ( n3967 ) , .A2 ( n4467 ) , .X ( n2909 ) ) ;
SAEDRVT14_INV_0P5 U2863 ( .A ( n6102 ) , .X ( n6111 ) ) ;
SAEDRVT14_AO221_0P5 U2866 ( .A1 ( n4578 ) , .A2 ( n2668 ) , .B1 ( n4577 ) , 
    .B2 ( n4679 ) , .C ( n4576 ) , .X ( n5676_CDR1 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2867 ( .A1 ( n1491 ) , .A2 ( i_tv80_core_N1102 ) , 
    .X ( n3375 ) ) ;
SAEDRVT14_INV_S_0P5 U2869 ( .A ( n5725 ) , .X ( n4100 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2871 ( .A1 ( n4463 ) , .A2 ( n6369 ) , .X ( n5284 ) ) ;
SAEDRVT14_ND2_CDC_1 U2873 ( .A1 ( mcycle_0_ ) , .A2 ( n4100 ) , .X ( n6268 ) ) ;
SAEDRVT14_ND2_CDC_1 U2874 ( .A1 ( n4467 ) , .A2 ( n3903 ) , .X ( n5164 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2875 ( .A1 ( n6377 ) , .A2 ( n6369 ) , .X ( n4017 ) ) ;
SAEDRVT14_OR3_0P5 U2876 ( .A1 ( n2854 ) , .A2 ( n3047 ) , .A3 ( mcycle_0_ ) , 
    .X ( n6301 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2877 ( .A1 ( n5999 ) , .A2 ( i_tv80_core_ISet_1_ ) , 
    .X ( n4277 ) ) ;
SAEDRVT14_ND2_ECO_1 U2879 ( .A1 ( n5756 ) , .A2 ( n6312 ) , .X ( n4240 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1506 ( .A ( n4439 ) , .X ( tmp_net0 ) ) ;
SAEDRVT14_ND2_ECO_1 U2882 ( .A1 ( HFSNET_20 ) , .A2 ( HFSNET_19 ) , 
    .X ( n2928 ) ) ;
SAEDRVT14_ND2_CDC_1 U2883 ( .A1 ( n3902 ) , 
    .A2 ( i_tv80_core_Set_BusB_To_3_ ) , .X ( n3853 ) ) ;
SAEDRVT14_MUX2_U_0P5 U2884 ( .D0 ( n3242 ) , .D1 ( di_reg_0__CDR1 ) , 
    .S ( n6314 ) , .X ( n5768 ) ) ;
SAEDRVT14_INV_S_0P5 U2885 ( .A ( n5934 ) , .X ( n5966 ) ) ;
SAEDRVT14_INV_S_0P5 U2886 ( .A ( n4263 ) , .X ( n4265 ) ) ;
SAEDRVT14_OR2_0P5 U2887 ( .A1 ( n5975 ) , .A2 ( n5762 ) , .X ( n5831 ) ) ;
SAEDRVT14_INV_S_0P5 U2889 ( .A ( n5822 ) , .X ( n5804 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8417 ( .A1 ( n4714 ) , .A2 ( n3001 ) , 
    .B ( tmp_net485 ) , .X ( tmp_net486 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8418 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_4_ ) , .B ( HFSNET_16 ) , .X ( tmp_net485 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8419 ( .A1 ( n5813 ) , .A2 ( n3312 ) , 
    .B ( tmp_net490 ) , .X ( n2379 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8420 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_6_ ) , .B ( tmp_net489 ) , .X ( tmp_net490 ) ) ;
SAEDRVT14_AN4_0P5 U2895 ( .A1 ( n6034 ) , .A2 ( n5619 ) , .A3 ( n5618 ) , 
    .A4 ( n5617 ) , .X ( n5620 ) ) ;
SAEDRVT14_ND2B_U_0P5 U2896 ( .A ( n4316 ) , .B ( n6293 ) , .X ( n4305 ) ) ;
SAEDRVT14_INV_S_0P5 U2898 ( .A ( n2660 ) , .X ( n2905 ) ) ;
SAEDRVT14_OR4_1 U2899 ( .A1 ( n5048_CDR1 ) , .A2 ( n2942_CDR1 ) , 
    .A3 ( n5520_CDR1 ) , .A4 ( n2895_CDR1 ) , .X ( n5060_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U2900 ( .A1 ( n5411 ) , .A2 ( n2804 ) , .X ( n5046 ) ) ;
SAEDRVT14_ND2_ECO_1 U2901 ( .A1 ( n5893 ) , .A2 ( n5974 ) , .X ( n5894 ) ) ;
SAEDRVT14_OR3_0P5 U2902 ( .A1 ( n6107 ) , .A2 ( n6383 ) , .A3 ( n6117 ) , 
    .X ( n6250 ) ) ;
SAEDRVT14_AN2_0P5 U2903 ( .A1 ( n3411 ) , .A2 ( n6122 ) , .X ( n3301 ) ) ;
SAEDRVT14_NR3_1 U2904 ( .A1 ( n6107 ) , .A2 ( n6117 ) , .A3 ( n2615 ) , 
    .X ( n3377 ) ) ;
SAEDRVT14_ND2_ECO_1 U2905 ( .A1 ( n5861 ) , .A2 ( n5974 ) , .X ( n5862 ) ) ;
SAEDRVT14_ND2_ECO_1 U2908 ( .A1 ( n5874 ) , .A2 ( n5974 ) , .X ( n5875 ) ) ;
SAEDRVT14_ND2_ECO_1 U2909 ( .A1 ( n5926 ) , .A2 ( n5974 ) , .X ( n5927 ) ) ;
SAEDRVT14_OR3_0P5 U2910 ( .A1 ( n5966 ) , .A2 ( n5833 ) , .A3 ( n5942 ) , 
    .X ( n5967 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8421 ( .A1 ( n4992 ) , .A2 ( n4714 ) , 
    .B ( tmp_net488 ) , .X ( tmp_net489 ) ) ;
SAEDRVT14_ND2_CDC_1 U2912 ( .A1 ( n3042 ) , .A2 ( HFSNET_20 ) , .X ( n3721 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8422 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_6_ ) , .B ( HFSNET_16 ) , .X ( tmp_net488 ) ) ;
SAEDRVT14_OR3_0P5 U2915 ( .A1 ( n6094 ) , .A2 ( n6091 ) , .A3 ( n5767 ) , 
    .X ( n6191 ) ) ;
SAEDRVT14_ND2_ECO_1 U2916 ( .A1 ( n5883 ) , .A2 ( n5974 ) , .X ( n5884 ) ) ;
SAEDRVT14_INV_S_0P5 U2918 ( .A ( n5831 ) , .X ( n5969 ) ) ;
SAEDRVT14_OR4_1 U2919 ( .A1 ( n3473 ) , .A2 ( n5695 ) , .A3 ( n3479 ) , 
    .A4 ( n5210 ) , .X ( n5265 ) ) ;
SAEDRVT14_INV_S_0P5 U2920 ( .A ( n5254 ) , .X ( n5267 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2921 ( .A1 ( n3409 ) , .A2 ( n3404 ) , .X ( n3328 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8423 ( .A1 ( n5855 ) , .A2 ( n4986 ) , 
    .B ( tmp_net493 ) , .X ( n2377 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8424 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_8_ ) , .B ( tmp_net492 ) , .X ( tmp_net493 ) ) ;
SAEDRVT14_INV_S_0P5 U2925 ( .A ( n5974 ) , .X ( n5942 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8425 ( .A1 ( n4987 ) , .A2 ( n5436 ) , 
    .B ( tmp_net491 ) , .X ( tmp_net492 ) ) ;
SAEDRVT14_AO221_0P5 U2928 ( .A1 ( n4713 ) , .A2 ( di_reg_5__CDR1 ) , 
    .B1 ( n4673 ) , .B2 ( i_tv80_core_BusB_5_ ) , .C ( n4630 ) , 
    .X ( n5669 ) ) ;
SAEDRVT14_AO21_U_0P5 U2929 ( .A1 ( n4673 ) , .A2 ( n2668 ) , .B ( n4582 ) , 
    .X ( n5690 ) ) ;
SAEDRVT14_OAI22_0P5 U2930 ( .A1 ( n181_CDR1 ) , .A2 ( n4581 ) , 
    .B1 ( n3444 ) , .B2 ( n4707 ) , .X ( n4582 ) ) ;
SAEDRVT14_AO221_0P5 U2935 ( .A1 ( n4673 ) , .A2 ( n4428 ) , .B1 ( n4713 ) , 
    .B2 ( di_reg_2__CDR1 ) , .C ( n4427 ) , .X ( n5405 ) ) ;
SAEDRVT14_OA31_1 U2936 ( .A1 ( n4426 ) , .A2 ( n4425 ) , .A3 ( n4424 ) , 
    .B ( n4662 ) , .X ( n4427 ) ) ;
SAEDRVT14_ND2_CDC_1 U2937 ( .A1 ( n3785 ) , .A2 ( n3786 ) , 
    .X ( i_tv80_core_RegBusA_8_ ) ) ;
SAEDRVT14_AO221_0P5 U2940 ( .A1 ( HFSNET_20 ) , .A2 ( n3789 ) , 
    .B1 ( n3790 ) , .B2 ( n2851 ) , .C ( n6367 ) , .X ( n3785 ) ) ;
SAEDRVT14_AO221_0P5 U2942 ( .A1 ( HFSNET_20 ) , .A2 ( n3787 ) , 
    .B1 ( n3788 ) , .B2 ( n2851 ) , .C ( HFSNET_19 ) , .X ( n3786 ) ) ;
SAEDRVT14_INV_S_0P5 U2943 ( .A ( n4908 ) , .X ( n4986 ) ) ;
SAEDRVT14_AO21_U_0P5 U2944 ( .A1 ( n4673 ) , .A2 ( n4933 ) , .B ( n4530 ) , 
    .X ( n5415 ) ) ;
SAEDRVT14_AO221_0P5 U2945 ( .A1 ( n4673 ) , .A2 ( i_tv80_core_BusB_4_ ) , 
    .B1 ( n4713 ) , .B2 ( di_reg_4__CDR1 ) , .C ( n4395 ) , .X ( n3001 ) ) ;
SAEDRVT14_NR3_0P5 U2946 ( .A1 ( n4398 ) , .A2 ( n4399 ) , .A3 ( n4397 ) , 
    .X ( n3298 ) ) ;
SAEDRVT14_NR3_0P5 U2947 ( .A1 ( n5091 ) , .A2 ( n4399 ) , .A3 ( n4828 ) , 
    .X ( n3300 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2950 ( .A1 ( n4361 ) , .A2 ( n5014 ) , .X ( n5004 ) ) ;
SAEDRVT14_INV_S_0P5 U2951 ( .A ( n4992 ) , .X ( n6078 ) ) ;
SAEDRVT14_ND2B_U_0P5 U2953 ( .A ( n4396 ) , .B ( n5001 ) , .X ( n5003 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2954 ( .A1 ( n4854 ) , .A2 ( n4361 ) , .X ( n5002 ) ) ;
SAEDRVT14_OR3_0P5 U2955 ( .A1 ( n3459 ) , .A2 ( n3402 ) , .A3 ( n3471 ) , 
    .X ( n4992 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2957 ( .A1 ( n4500 ) , .A2 ( n4737 ) , .X ( n3311 ) ) ;
SAEDRVT14_AO221_0P5 U2958 ( .A1 ( n3757 ) , .A2 ( n3758 ) , .B1 ( n3759 ) , 
    .B2 ( n3760 ) , .C ( n3761 ) , .X ( n2849 ) ) ;
SAEDRVT14_ND2_ECO_1 U2959 ( .A1 ( n5828 ) , .A2 ( n5854 ) , .X ( n5814 ) ) ;
SAEDRVT14_ND2_CDC_1 U2960 ( .A1 ( HFSNET_14 ) , .A2 ( n3331 ) , .X ( n5828 ) ) ;
SAEDRVT14_ND2_CDC_1 U2961 ( .A1 ( HFSNET_14 ) , .A2 ( n3974 ) , .X ( n5223 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2962 ( .A1 ( n4320 ) , .A2 ( n4100 ) , .X ( n3309 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8426 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_8_ ) , .B ( HFSNET_16 ) , .X ( tmp_net491 ) ) ;
SAEDRVT14_INV_S_0P75 U2964 ( .A ( i_tv80_core_Set_BusB_To_0_ ) , 
    .X ( n3854 ) ) ;
SAEDRVT14_NR3_0P5 U2965 ( .A1 ( i_tv80_core_Set_BusB_To_0_ ) , .A2 ( n3853 ) , 
    .A3 ( n2752 ) , .X ( n3384 ) ) ;
SAEDRVT14_NR3_0P5 U2966 ( .A1 ( n3854 ) , .A2 ( n5644 ) , .A3 ( n3853 ) , 
    .X ( n3302 ) ) ;
SAEDRVT14_NR3_0P5 U2967 ( .A1 ( n3854 ) , .A2 ( n3853 ) , .A3 ( n2752 ) , 
    .X ( n3304 ) ) ;
SAEDRVT14_OR3_0P5 U2968 ( .A1 ( n5231 ) , .A2 ( n4203 ) , .A3 ( n4202 ) , 
    .X ( n5589 ) ) ;
SAEDRVT14_AN3_0P5 U2970 ( .A1 ( n4169 ) , .A2 ( n3047 ) , .A3 ( n2854 ) , 
    .X ( n3003 ) ) ;
SAEDRVT14_INV_S_0P5 U2971 ( .A ( n2918 ) , .X ( n2746 ) ) ;
SAEDRVT14_ND2_0P5 U2973 ( .A1 ( n3436 ) , .A2 ( n2853 ) , .X ( n6326 ) ) ;
SAEDRVT14_OR4_1 U2975 ( .A1 ( n4189_CDR1 ) , .A2 ( n5995_CDR1 ) , 
    .A3 ( n4191_CDR1 ) , .A4 ( n4190 ) , .X ( n4229 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U2976 ( .D0 ( n4790 ) , 
    .D1 ( i_tv80_core_BusA_5__CDR1 ) , .S ( n5011 ) , .X ( n4791 ) ) ;
SAEDRVT14_AO221_0P5 U2977 ( .A1 ( n3290 ) , .A2 ( di_reg_5__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_5_ ) , .C ( n4789 ) , .X ( n4790 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8427 ( .A1 ( n5866 ) , .A2 ( n4986 ) , 
    .B ( tmp_net496 ) , .X ( n2376 ) ) ;
SAEDRVT14_AN2_MM_0P5 U2984 ( .A1 ( n3744 ) , .A2 ( n3222 ) , .X ( n3026 ) ) ;
SAEDRVT14_OR2_0P5 U2985 ( .A1 ( n3833 ) , .A2 ( n3834 ) , 
    .X ( i_tv80_core_RegBusA_15_ ) ) ;
SAEDRVT14_AO221_0P5 U2987 ( .A1 ( n3246 ) , .A2 ( n2954 ) , .B1 ( n2948 ) , 
    .B2 ( n3244 ) , .C ( n3837 ) , .X ( n3833 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8428 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_9_ ) , .B ( tmp_net495 ) , .X ( tmp_net496 ) ) ;
SAEDRVT14_OR2_0P5 U2990 ( .A1 ( n3827 ) , .A2 ( n3828 ) , 
    .X ( i_tv80_core_RegBusA_14_ ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8429 ( .A1 ( n4987 ) , .A2 ( n5415 ) , 
    .B ( tmp_net494 ) , .X ( tmp_net495 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8430 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_9_ ) , .B ( HFSNET_16 ) , .X ( tmp_net494 ) ) ;
SAEDRVT14_AN4_0P5 U2994 ( .A1 ( n3716 ) , .A2 ( n3717 ) , .A3 ( n2947 ) , 
    .A4 ( n3715 ) , .X ( i_tv80_core_RegBusA_0_ ) ) ;
SAEDRVT14_AO221_0P5 U2995 ( .A1 ( i_tv80_core_i_reg_RegsL_5__0_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( i_tv80_core_i_reg_RegsL_4__0_ ) , 
    .B2 ( n6367 ) , .C ( n3721 ) , .X ( n2947 ) ) ;
SAEDRVT14_ND2_MM_0P5 U2996 ( .A1 ( n3432 ) , .A2 ( n5274 ) , .X ( n5277 ) ) ;
SAEDRVT14_OA21_1 U2997 ( .A1 ( n3104 ) , .A2 ( n3103 ) , .B ( n4048 ) , 
    .X ( n3432 ) ) ;
SAEDRVT14_INV_S_0P5 U2998 ( .A ( n6371 ) , .X ( n4446 ) ) ;
SAEDRVT14_OR3_0P5 U2999 ( .A1 ( mcycle_0_ ) , .A2 ( n2853 ) , .A3 ( n3046 ) , 
    .X ( n4435 ) ) ;
SAEDRVT14_ND2_ECO_1 U3000 ( .A1 ( n2627 ) , .A2 ( n4413 ) , .X ( n4518 ) ) ;
SAEDRVT14_EO2_0P5 U3001 ( .A1 ( n2897 ) , .A2 ( n372 ) , .X ( n4375 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3003 ( .A1 ( n4377 ) , .A2 ( n4517 ) , .X ( n4416 ) ) ;
SAEDRVT14_AN3_0P5 U3004 ( .A1 ( n2667 ) , .A2 ( n4637 ) , .A3 ( n369 ) , 
    .X ( n4641 ) ) ;
SAEDRVT14_INV_S_0P5 U3005 ( .A ( n5277 ) , .X ( n5280 ) ) ;
SAEDRVT14_OAI21_0P5 U3006 ( .A1 ( n2750 ) , .A2 ( n2634 ) , .B ( n3363 ) , 
    .X ( n4461 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8431 ( .A1 ( n5920 ) , .A2 ( n4986 ) , 
    .B ( tmp_net499 ) , .X ( n2372 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_1523 ( .A1 ( n4078 ) , .A2 ( n4446 ) , 
    .B ( tmp_net6 ) , .X ( n4459 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8432 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_13_ ) , .B ( tmp_net498 ) , .X ( tmp_net499 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8433 ( .A1 ( n4987 ) , .A2 ( n5669 ) , 
    .B ( tmp_net497 ) , .X ( tmp_net498 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8434 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_13_ ) , .B ( HFSNET_16 ) , .X ( tmp_net497 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8435 ( .A1 ( n5879 ) , .A2 ( n4986 ) , 
    .B ( tmp_net502 ) , .X ( n2375 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8436 ( .A1 ( n3310 ) , 
    .A2 ( i_tv80_core_RegBusC_10_ ) , .B ( tmp_net501 ) , .X ( tmp_net502 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3017 ( .A1 ( n5288 ) , .A2 ( n3345 ) , .X ( n5299 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3018 ( .A1 ( n3223 ) , .A2 ( n4445 ) , .X ( n3345 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8437 ( .A1 ( n4987 ) , .A2 ( n5405 ) , 
    .B ( tmp_net500 ) , .X ( tmp_net501 ) ) ;
SAEDRVT14_AN2_MM_2 U3020 ( .A1 ( n575 ) , .A2 ( n6346 ) , .X ( n3431 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3021 ( .A1 ( n2897 ) , .A2 ( n380 ) , .X ( n4801 ) ) ;
SAEDRVT14_EO2_0P5 U3022 ( .A1 ( n4614 ) , .A2 ( i_tv80_core_BusA_7__CDR1 ) , 
    .X ( n4616 ) ) ;
SAEDRVT14_INV_S_0P5 U3023 ( .A ( i_tv80_core_RegBusA_4_ ) , .X ( n5450 ) ) ;
SAEDRVT14_INV_S_0P5 U3024 ( .A ( n2810 ) , .X ( n5489 ) ) ;
SAEDRVT14_ND2_ECO_1 U3025 ( .A1 ( n4118 ) , .A2 ( n3985 ) , .X ( n4039 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8114 ( 
    .A ( i_tv80_core_TmpAddr_6_ ) , .X ( \i_tv80_core_add_548/tmp_net297 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3029 ( .A1 ( n5296 ) , .A2 ( n3429 ) , .X ( n3346 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8438 ( .A1 ( n4983 ) , 
    .A2 ( i_tv80_core_SP_10_ ) , .B ( HFSNET_16 ) , .X ( tmp_net500 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3035 ( .A1 ( i_tv80_core_RegBusA_8_ ) , .A2 ( n5491 ) , 
    .X ( n5412 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8439 ( .A1 ( n5709 ) , .A2 ( n3312 ) , 
    .B ( tmp_net505 ) , .X ( n2382 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8440 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_3_ ) , .B ( tmp_net504 ) , .X ( tmp_net505 ) ) ;
SAEDRVT14_OR3_0P5 U3051 ( .A1 ( n5489 ) , .A2 ( n5524 ) , .A3 ( n5492 ) , 
    .X ( n5334 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8441 ( .A1 ( n4714 ) , .A2 ( n5690 ) , 
    .B ( tmp_net503 ) , .X ( tmp_net504 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8442 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_3_ ) , .B ( HFSNET_16 ) , .X ( tmp_net503 ) ) ;
SAEDRVT14_INV_S_0P5 U3062 ( .A ( n4465 ) , .X ( n3932 ) ) ;
SAEDRVT14_ND2_ECO_1 U3065 ( .A1 ( n3050 ) , .A2 ( n5621 ) , .X ( n5597 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_8443 ( .A1 ( n5806 ) , .A2 ( n3312 ) , 
    .B ( tmp_net508 ) , .X ( n2380 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_8444 ( .A1 ( n3311 ) , 
    .A2 ( i_tv80_core_RegBusC_5_ ) , .B ( tmp_net507 ) , .X ( tmp_net508 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3069 ( .A1 ( di_reg_1__CDR1 ) , .A2 ( n6314 ) , 
    .X ( n5795 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_3_8445 ( .A1 ( n4714 ) , .A2 ( n5669 ) , 
    .B ( tmp_net506 ) , .X ( tmp_net507 ) ) ;
SAEDRVT14_INV_S_0P5 U3072 ( .A ( n4376 ) , .X ( n4418 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3073 ( .A1 ( n3104 ) , .A2 ( n3051 ) , .X ( n3447 ) ) ;
SAEDRVT14_ND2_ECO_1 U3074 ( .A1 ( n3439 ) , .A2 ( n5621 ) , .X ( n4525 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3075 ( .A ( n2897 ) , .B ( n3101 ) , .X ( n4802 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3076 ( .A1 ( n2897 ) , .A2 ( i_tv80_core_BusB_6_ ) , 
    .X ( n3474 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3077 ( .D0 ( n4613 ) , .D1 ( n370_CDR1 ) , 
    .S ( n4615 ) , .X ( n4698 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3079 ( .A1 ( n4612 ) , 
    .A2 ( i_tv80_core_BusA_6__CDR1 ) , .X ( n4613 ) ) ;
SAEDRVT14_OR2_0P5 U3081 ( .A1 ( n3935 ) , .A2 ( i_tv80_core_IR_6_ ) , 
    .X ( n4453 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U3084 ( .A1 ( n6112 ) , .A2 ( n6334 ) , .X ( n5289 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3085 ( .A1 ( n3022 ) , .A2 ( n5288 ) , .X ( n5318 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3087 ( .A1 ( n3223 ) , .A2 ( n4445 ) , .X ( n3022 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3090 ( .A1 ( n5296 ) , .A2 ( n3429 ) , .X ( n3347 ) ) ;
SAEDRVT14_INV_0P5 U3091 ( .A ( n4537 ) , .X ( n5317 ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_4_8446 ( .A1 ( n4716 ) , 
    .A2 ( i_tv80_core_SP_5_ ) , .B ( HFSNET_16 ) , .X ( tmp_net506 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8447 ( .A1 ( tmp_net510 ) , .A2 ( n4886 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net511 ) , .X ( n2462 ) ) ;
SAEDRVT14_OR3_0P5 U3094 ( .A1 ( n3976 ) , .A2 ( n3103 ) , .A3 ( n518 ) , 
    .X ( n4438 ) ) ;
SAEDRVT14_ND2_ECO_1 U3095 ( .A1 ( n5635 ) , .A2 ( n3947 ) , .X ( n4455 ) ) ;
SAEDRVT14_OR2_0P5 U3096 ( .A1 ( n6371 ) , .A2 ( n3985 ) , .X ( n3362 ) ) ;
SAEDRVT14_OR4_1 U3097 ( .A1 ( n4938 ) , .A2 ( n4453 ) , .A3 ( n4455 ) , 
    .A4 ( i_tv80_core_IR_2_ ) , .X ( n5202 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3098 ( .A1 ( i_tv80_core_IR_1_ ) , 
    .A2 ( i_tv80_core_IR_0_ ) , .X ( n4441 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3100 ( .A1 ( n3431 ) , .A2 ( n4470 ) , .X ( n5337 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8448 ( .A ( n4885 ) , .B ( tmp_net509 ) , 
    .X ( tmp_net510 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3102 ( .A1 ( HFSNET_19 ) , .A2 ( HFSNET_20 ) , 
    .X ( n3735 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8449 ( .A1 ( n6359 ) , .A2 ( n3298 ) , 
    .X ( tmp_net509 ) ) ;
SAEDRVT14_ND2_ECO_1 U3104 ( .A1 ( n4467 ) , .A2 ( gre_a_INV_79_0 ) , 
    .X ( n3995 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3107 ( .A1 ( n4035 ) , .A2 ( n3988 ) , .X ( n5598 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3108 ( .A1 ( n5608 ) , .A2 ( n5607 ) , .X ( n6275 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3109 ( .A1 ( n2994 ) , .A2 ( n5163 ) , .X ( n6267 ) ) ;
SAEDRVT14_INV_S_0P5 U3110 ( .A ( n6306 ) , .X ( n5626 ) ) ;
SAEDRVT14_ND2_CDC_1 U3115 ( .A1 ( n5597 ) , .A2 ( n3050 ) , .X ( n6003 ) ) ;
SAEDRVT14_ND2_ECO_1 U3116 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n3050 ) , 
    .X ( n4309 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3117 ( .A1 ( n4027 ) , .A2 ( n4026 ) , .X ( n3435 ) ) ;
SAEDRVT14_ND2_ECO_1 U3118 ( .A1 ( n3903 ) , .A2 ( n3104 ) , .X ( n4937 ) ) ;
SAEDRVT14_OR4_1 U3119 ( .A1 ( n3104 ) , .A2 ( n3947 ) , 
    .A3 ( i_tv80_core_IR_1_ ) , .A4 ( i_tv80_core_IR_2_ ) , .X ( n3938 ) ) ;
SAEDRVT14_OR4_1 U3120 ( .A1 ( n2974 ) , .A2 ( n2994 ) , .A3 ( n4470 ) , 
    .A4 ( n4469 ) , .X ( n4509 ) ) ;
SAEDRVT14_ND2_ECO_1 U3121 ( .A1 ( n3723 ) , .A2 ( n3188 ) , .X ( n5492 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8450 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_0_ ) , .X ( tmp_net511 ) ) ;
SAEDRVT14_INV_S_0P5 U3123 ( .A ( n5636 ) , .X ( n5629 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3124 ( .A1 ( n2848 ) , .A2 ( HFSNET_12 ) , 
    .X ( n5402 ) ) ;
SAEDRVT14_INV_S_0P5 U3125 ( .A ( n5375 ) , .X ( n5390 ) ) ;
SAEDRVT14_AO221_0P5 U3126 ( .A1 ( HFSNET_11 ) , .A2 ( n5374 ) , 
    .B1 ( n5373 ) , .B2 ( HFSNET_11 ) , .C ( n2797 ) , .X ( n2798 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8451 ( .A1 ( n3266 ) , .A2 ( n3971 ) , 
    .B ( tmp_net512 ) , .X ( n2391 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3128 ( .A1 ( n6382 ) , .A2 ( n6347 ) , .X ( n5571 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3129 ( .A1 ( i_tv80_core_RegBusA_11_ ) , .A2 ( n5491 ) , 
    .X ( n5378 ) ) ;
SAEDRVT14_ND2_ECO_1 U3130 ( .A1 ( n3285 ) , .A2 ( n5341 ) , .X ( n3112 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3131 ( .A1 ( i_tv80_core_RegBusA_7_ ) , .A2 ( n5491 ) , 
    .X ( n5427 ) ) ;
SAEDRVT14_OR4_1 U3132 ( .A1 ( n5426 ) , .A2 ( n5460 ) , .A3 ( n5425 ) , 
    .A4 ( n3273 ) , .X ( n5432 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8452 ( .A ( n2686 ) , .B ( n3266 ) , 
    .X ( tmp_net512 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8453 ( .A1 ( tmp_net514 ) , .A2 ( n5007 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net515 ) , .X ( n2461 ) ) ;
SAEDRVT14_AO221_0P5 U3150 ( .A1 ( HFSNET_11 ) , .A2 ( n5374 ) , 
    .B1 ( n5373 ) , .B2 ( HFSNET_11 ) , .C ( n2797 ) , .X ( n2799 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3152 ( .A1 ( i_tv80_core_RegBusA_4_ ) , 
    .A2 ( HFSNET_12 ) , .X ( n5036 ) ) ;
SAEDRVT14_ND2_CDC_1 U3158 ( .A1 ( n5333 ) , .A2 ( n5334 ) , .X ( n5376 ) ) ;
SAEDRVT14_ND2_ECO_1 U3169 ( .A1 ( n6034 ) , .A2 ( n6033 ) , .X ( n6035 ) ) ;
SAEDRVT14_AO221_0P5 U3172 ( .A1 ( n6032 ) , .A2 ( n6031 ) , .B1 ( n3309 ) , 
    .B2 ( n3903 ) , .C ( n6030 ) , .X ( n6038 ) ) ;
SAEDRVT14_AN3_0P5 U3176 ( .A1 ( n2600 ) , .A2 ( n5450 ) , .A3 ( n2975 ) , 
    .X ( n5452 ) ) ;
SAEDRVT14_ND2_ECO_1 U3182 ( .A1 ( n5455 ) , .A2 ( n5454 ) , .X ( n5456 ) ) ;
SAEDRVT14_ND2_ECO_1 U3186 ( .A1 ( n6377 ) , .A2 ( n3932 ) , .X ( n4001 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8454 ( .A ( n5006 ) , .B ( tmp_net513 ) , 
    .X ( tmp_net514 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3193 ( .A1 ( n3441 ) , .A2 ( n5162 ) , .X ( n4157 ) ) ;
SAEDRVT14_ND2_ECO_1 U3194 ( .A1 ( n3946 ) , .A2 ( n5737 ) , .X ( n6283 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3197 ( .A1 ( n4118 ) , .A2 ( n3985 ) , .X ( n2774 ) ) ;
SAEDRVT14_INV_S_0P5 U3200 ( .A ( n4455 ) , .X ( n3997 ) ) ;
SAEDRVT14_OR4_1 U3201 ( .A1 ( i_tv80_core_IR_5_ ) , 
    .A2 ( i_tv80_core_IR_6_ ) , .A3 ( n3935 ) , .A4 ( n3051 ) , .X ( n3996 ) ) ;
SAEDRVT14_NR3_0P5 U3202 ( .A1 ( n3046 ) , .A2 ( mcycle_0_ ) , .A3 ( n2853 ) , 
    .X ( n2777 ) ) ;
SAEDRVT14_ND2_ECO_1 U3203 ( .A1 ( n518 ) , .A2 ( n3104 ) , .X ( n4465 ) ) ;
SAEDRVT14_INV_S_0P5 U3204 ( .A ( n5603 ) , .X ( n3967 ) ) ;
SAEDRVT14_INV_S_0P5 U3205 ( .A ( n5653 ) , .X ( n5536 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3206 ( .A1 ( n2897 ) , 
    .A2 ( i_tv80_core_ALU_Op_r_3__CDR1 ) , .X ( n4363 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3207 ( .D0 ( n4491 ) , .D1 ( n4490 ) , .S ( n3050 ) , 
    .X ( n4492 ) ) ;
SAEDRVT14_ND2_CDC_1 U3209 ( .A1 ( n5621 ) , .A2 ( n4814 ) , .X ( n4490 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3212 ( .A1 ( n5621 ) , 
    .A2 ( i_tv80_core_BusA_7__CDR1 ) , .X ( n4491 ) ) ;
SAEDRVT14_NR2_MM_1 U3214 ( .A1 ( n2746 ) , .A2 ( n2747 ) , .X ( n5294 ) ) ;
SAEDRVT14_AO221_0P5 U3215 ( .A1 ( n4524 ) , .A2 ( n4933 ) , .B1 ( n4523 ) , 
    .B2 ( n4679 ) , .C ( n4522 ) , .X ( n5070_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8455 ( .A1 ( n6360 ) , .A2 ( n3298 ) , 
    .X ( tmp_net513 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3217 ( .A1 ( n2944 ) , .A2 ( n4517 ) , .X ( n4864 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3218 ( .A1 ( i_tv80_core_IR_2_ ) , .A2 ( n4463 ) , 
    .X ( n4458 ) ) ;
SAEDRVT14_ND2_CDC_1 U3219 ( .A1 ( n4634 ) , .A2 ( n4635 ) , .X ( n4726 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8456 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_1_ ) , .X ( tmp_net515 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3221 ( .A1 ( n4552 ) , .A2 ( n4551 ) , .X ( n2635 ) ) ;
SAEDRVT14_OR3_0P5 U3222 ( .A1 ( n2853 ) , .A2 ( n3046 ) , .A3 ( n4169 ) , 
    .X ( n4434 ) ) ;
SAEDRVT14_ND2_CDC_1 U3223 ( .A1 ( n3047 ) , .A2 ( n6373 ) , .X ( n6278 ) ) ;
SAEDRVT14_OR4_1 U3224 ( .A1 ( n5201_CDR1 ) , .A2 ( n5578_CDR1 ) , 
    .A3 ( n4192 ) , .A4 ( n5158 ) , .X ( n4084 ) ) ;
SAEDRVT14_INV_S_0P5 U3226 ( .A ( n4441 ) , .X ( n4463 ) ) ;
SAEDRVT14_INV_S_0P5 U3227 ( .A ( n3995 ) , .X ( n4057 ) ) ;
SAEDRVT14_INV_S_0P5 U3228 ( .A ( n4453 ) , .X ( n4467 ) ) ;
SAEDRVT14_OR3_0P5 U3231 ( .A1 ( n3935 ) , .A2 ( n3911 ) , .A3 ( n3051 ) , 
    .X ( n3198 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3232 ( .A1 ( i_tv80_core_IR_2_ ) , .A2 ( n3103 ) , 
    .X ( n3433 ) ) ;
SAEDRVT14_INV_0P5 U3234 ( .A ( n4221 ) , .X ( n4059 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8457 ( .A1 ( tmp_net517 ) , .A2 ( n4895 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net518 ) , .X ( n2481 ) ) ;
SAEDRVT14_OR4_1 U3236 ( .A1 ( n4044 ) , .A2 ( n5737 ) , .A3 ( n4045 ) , 
    .A4 ( n2809 ) , .X ( n4168 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3240 ( .A1 ( n4463 ) , .A2 ( n3433 ) , .X ( n4356 ) ) ;
SAEDRVT14_OR2_0P5 U3241 ( .A1 ( n3050 ) , .A2 ( n5621 ) , .X ( n5603 ) ) ;
SAEDRVT14_ND2_ECO_1 U3243 ( .A1 ( n5235 ) , .A2 ( n4032 ) , .X ( n4040 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3247 ( .A1 ( n5985 ) , .A2 ( n5754 ) , .X ( n4508 ) ) ;
SAEDRVT14_INV_S_0P5 U3248 ( .A ( n5202 ) , .X ( n5186 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8458 ( .A ( n4894 ) , .B ( tmp_net516 ) , 
    .X ( tmp_net517 ) ) ;
SAEDRVT14_OR2_0P5 U3250 ( .A1 ( n3947 ) , .A2 ( i_tv80_core_IR_1_ ) , 
    .X ( n3976 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1524 ( .A1 ( n3433 ) , .A2 ( n4026 ) , 
    .B ( n4438 ) , .X ( n4449 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8459 ( .A1 ( n4892 ) , .A2 ( n3298 ) , 
    .X ( tmp_net516 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3256 ( .A1 ( n5163 ) , .A2 ( n4078 ) , 
    .X ( n3251_CDR1 ) ) ;
SAEDRVT14_ND2_ECO_1 U3258 ( .A1 ( n4332 ) , .A2 ( n4437 ) , .X ( n4009 ) ) ;
SAEDRVT14_OR4_1 U3267 ( .A1 ( n3987 ) , .A2 ( n5736 ) , .A3 ( n3988 ) , 
    .A4 ( n2680 ) , .X ( n4021 ) ) ;
SAEDRVT14_ND2_ECO_1 U3269 ( .A1 ( n4028 ) , .A2 ( n4239 ) , .X ( n3986 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3270 ( .A1 ( n5950 ) , .A2 ( n5948 ) , .X ( n2677 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3271 ( .A1 ( n2974 ) , .A2 ( n2946 ) , .X ( n6279 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8460 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_7_ ) , .X ( tmp_net518 ) ) ;
SAEDRVT14_OR2_0P5 U3273 ( .A1 ( n4465 ) , .A2 ( n4441 ) , .X ( n4239 ) ) ;
SAEDRVT14_ND2_ECO_1 U3275 ( .A1 ( n4263 ) , .A2 ( reset_n ) , .X ( n6332 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8461 ( .A1 ( tmp_net520 ) , .A2 ( n4431 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net521 ) , .X ( n2460 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3277 ( .A1 ( n4896 ) , .A2 ( n3033 ) , .X ( n4786 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8462 ( .A ( n4430 ) , .B ( tmp_net519 ) , 
    .X ( tmp_net520 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3280 ( .A ( n6124 ) , .B ( n6247 ) , .X ( n6182 ) ) ;
SAEDRVT14_OR2_0P5 U3282 ( .A1 ( n3220 ) , .A2 ( n3733 ) , .X ( n3730 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3294 ( .A1 ( n3729 ) , .A2 ( n3728 ) , .X ( n3191 ) ) ;
SAEDRVT14_AO221_0P5 U3295 ( .A1 ( n3019 ) , .A2 ( n3042 ) , .B1 ( n3013 ) , 
    .B2 ( n6374 ) , .C ( n2790 ) , .X ( n3729 ) ) ;
SAEDRVT14_AO221_0P5 U3297 ( .A1 ( n3009 ) , .A2 ( n3042 ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_7__2_ ) , .B2 ( n6374 ) , .C ( n3735 ) , 
    .X ( n3728 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8463 ( .A1 ( n6361 ) , .A2 ( n3298 ) , 
    .X ( tmp_net519 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8464 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_2_ ) , .X ( tmp_net521 ) ) ;
SAEDRVT14_ND2_CDC_1 U3310 ( .A1 ( n6367 ) , .A2 ( n3840 ) , .X ( n3819 ) ) ;
SAEDRVT14_INV_S_0P5 U3313 ( .A ( n4449 ) , .X ( n4118 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3316 ( .A ( n2903 ) , .B ( n3291 ) , .X ( n2910 ) ) ;
SAEDRVT14_INV_S_0P75 U3318 ( .A ( n3031 ) , .X ( n3033 ) ) ;
SAEDRVT14_OR4_1 U3319 ( .A1 ( n5721_CDR1 ) , .A2 ( n3984 ) , .A3 ( n5170 ) , 
    .A4 ( n5186 ) , .X ( n4109 ) ) ;
SAEDRVT14_AO21_U_0P5 U3320 ( .A1 ( n3983 ) , .A2 ( n2809 ) , .B ( n3982 ) , 
    .X ( n3984 ) ) ;
SAEDRVT14_INV_S_0P5 U3321 ( .A ( n4458 ) , .X ( n4078 ) ) ;
SAEDRVT14_ND2_CDC_1 U3324 ( .A1 ( n3953 ) , .A2 ( n3954 ) , .X ( n5696 ) ) ;
SAEDRVT14_ND2_ECO_1 U3328 ( .A1 ( n6326 ) , .A2 ( n4165 ) , .X ( n3952 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3329 ( .A1 ( n4169 ) , .A2 ( n3467 ) , .X ( n4165 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8465 ( .A1 ( tmp_net523 ) , .A2 ( n4775 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net524 ) , .X ( n2457 ) ) ;
SAEDRVT14_ND2_ECO_1 U3339 ( .A1 ( n5744 ) , .A2 ( n3431 ) , .X ( n5605 ) ) ;
SAEDRVT14_INV_4 U3340 ( .A ( n4309 ) , .X ( n3903 ) ) ;
SAEDRVT14_INV_S_0P5 U3342 ( .A ( n3817 ) , .X ( n3812 ) ) ;
SAEDRVT14_ND2_CDC_1 U3343 ( .A1 ( n3840 ) , .A2 ( HFSNET_19 ) , .X ( n3817 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3344 ( .A1 ( n2805 ) , .A2 ( HFSNET_20 ) , 
    .X ( n3248 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3345 ( .A1 ( n3812 ) , .A2 ( HFSNET_20 ) , 
    .X ( n3247 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8466 ( .A ( n4774 ) , .B ( tmp_net522 ) , 
    .X ( tmp_net523 ) ) ;
SAEDRVT14_AO221_0P5 U3352 ( .A1 ( i_tv80_core_i_reg_RegsL_4__3_ ) , 
    .A2 ( n3042 ) , .B1 ( n6374 ) , .B2 ( i_tv80_core_i_reg_RegsL_6__3_ ) , 
    .C ( n2790 ) , .X ( n3739 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8467 ( .A1 ( n6358 ) , .A2 ( n3298 ) , 
    .X ( tmp_net522 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8468 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_5_ ) , .X ( tmp_net524 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8469 ( .A1 ( tmp_net526 ) , .A2 ( n4402 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net527 ) , .X ( n2458 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3362 ( .A1 ( n6375 ) , .A2 ( n132 ) , .X ( n3224 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8470 ( .A ( n4401 ) , .B ( tmp_net525 ) , 
    .X ( tmp_net526 ) ) ;
SAEDRVT14_ND2_CDC_1 U3369 ( .A1 ( n2785 ) , .A2 ( n2786 ) , 
    .X ( i_tv80_core_RegBusA_9_ ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8471 ( .A1 ( n6363 ) , .A2 ( n3298 ) , 
    .X ( tmp_net525 ) ) ;
SAEDRVT14_ND2_CDC_1 U3372 ( .A1 ( n3955 ) , .A2 ( n3974 ) , .X ( n4153 ) ) ;
SAEDRVT14_OR4_1 U3374 ( .A1 ( n5029 ) , .A2 ( n5028 ) , .A3 ( n5039 ) , 
    .A4 ( n5027 ) , .X ( n5491 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3377 ( .A1 ( n3026 ) , .A2 ( HFSNET_12 ) , 
    .X ( n5493 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3378 ( .A1 ( HFSNET_12 ) , 
    .A2 ( i_tv80_core_RegBusA_8_ ) , .X ( n5433 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1507 ( .A1 ( i_tv80_core_IR_5_ ) , 
    .A2 ( n5621 ) , .B ( tmp_net0 ) , .X ( n6371 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3380 ( .A1 ( i_tv80_core_RegBusA_9_ ) , .A2 ( n5491 ) , 
    .X ( n5411 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3381 ( .A1 ( n6122 ) , .A2 ( n6121 ) , .X ( n6168 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8472 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_4_ ) , .X ( tmp_net527 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8473 ( .A1 ( tmp_net529 ) , .A2 ( n4757 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net530 ) , .X ( n2459 ) ) ;
SAEDRVT14_OA22_U_0P5 U3384 ( .A1 ( n6199 ) , .A2 ( n6198 ) , .B1 ( n6197 ) , 
    .B2 ( n6196 ) , .X ( n3036 ) ) ;
SAEDRVT14_INV_S_0P5 U3390 ( .A ( n6197 ) , .X ( n6122 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3391 ( .A1 ( n6122 ) , .A2 ( n6110 ) , .X ( n6107 ) ) ;
SAEDRVT14_ND2_0P5 U3392 ( .A1 ( n6092 ) , .A2 ( n3374 ) , .X ( n6247 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8474 ( .A ( n4756 ) , .B ( tmp_net528 ) , 
    .X ( tmp_net529 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8475 ( .A1 ( n6362 ) , .A2 ( n3298 ) , 
    .X ( tmp_net528 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8476 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_3_ ) , .X ( tmp_net530 ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_8477 ( .A1 ( tmp_net532 ) , .A2 ( n4995 ) , 
    .A3 ( HFSNET_16 ) , .A4 ( tmp_net533 ) , .X ( n2480 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8478 ( .A ( n4994 ) , .B ( tmp_net531 ) , 
    .X ( tmp_net532 ) ) ;
SAEDRVT14_ND2_CDC_1 U3402 ( .A1 ( n2853 ) , .A2 ( n4169 ) , .X ( n5211 ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_8479 ( .A1 ( n6357 ) , .A2 ( n3298 ) , 
    .X ( tmp_net531 ) ) ;
SAEDRVT14_AO221_0P5 U3410 ( .A1 ( n2877 ) , .A2 ( n5408 ) , .B1 ( n3276 ) , 
    .B2 ( n2631 ) , .C ( n5407 ) , .X ( n5409 ) ) ;
SAEDRVT14_ND2_CDC_1 U3413 ( .A1 ( tmp_net419 ) , .A2 ( n3185 ) , 
    .X ( n5543 ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_4_8480 ( .A1 ( n3300 ) , 
    .A2 ( i_tv80_core_I_6_ ) , .X ( tmp_net533 ) ) ;
SAEDRVT14_AO21_U_0P5 U3415 ( .A1 ( n3260 ) , .A2 ( n5421 ) , .B ( n5419 ) , 
    .X ( n2875 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8481 ( .A1 ( n3266 ) , .A2 ( n3969 ) , 
    .B ( tmp_net534 ) , .X ( n2390 ) ) ;
SAEDRVT14_OR4_1 U3418 ( .A1 ( n5434 ) , .A2 ( n3253 ) , .A3 ( n5435 ) , 
    .A4 ( n5512 ) , .X ( n5441 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8482 ( .A ( n410 ) , .B ( n3266 ) , 
    .X ( tmp_net534 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3422 ( .A1 ( n3252 ) , .A2 ( n3282 ) , .X ( n3254 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3424 ( .A1 ( n3042 ) , .A2 ( n2851 ) , .X ( n3412 ) ) ;
SAEDRVT14_AO21_U_0P5 U3428 ( .A1 ( n5958 ) , .A2 ( n5936 ) , .B ( n5935 ) , 
    .X ( n3368 ) ) ;
SAEDRVT14_INV_S_0P5 U3429 ( .A ( n3367 ) , .X ( n5737 ) ) ;
SAEDRVT14_OR3_0P5 U3430 ( .A1 ( n5740 ) , .A2 ( n5739 ) , .A3 ( n5738 ) , 
    .X ( n5747 ) ) ;
SAEDRVT14_OR4_1 U3431 ( .A1 ( n3440 ) , .A2 ( n3906 ) , .A3 ( n3434 ) , 
    .A4 ( n3438 ) , .X ( n5738 ) ) ;
SAEDRVT14_INV_0P5 U3432 ( .A ( n5967 ) , .X ( n5971 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3440 ( .A1 ( n3967 ) , .A2 ( n3992 ) , .X ( n2946 ) ) ;
SAEDRVT14_INV_S_0P5 U3446 ( .A ( n6190 ) , .X ( n5042 ) ) ;
SAEDRVT14_INV_S_0P5 U3449 ( .A ( n6283 ) , .X ( n5992_CDR1 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3450 ( .A1 ( n4059 ) , .A2 ( n6270 ) , .X ( n5720 ) ) ;
SAEDRVT14_ND2_CDC_1 U3451 ( .A1 ( n4467 ) , .A2 ( n3967 ) , .X ( n5165 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3452 ( .A1 ( n4035 ) , .A2 ( n4040 ) , .X ( n5194 ) ) ;
SAEDRVT14_EO2_1 U3453 ( .A1 ( n4169 ) , .A2 ( n113 ) , .X ( n4156 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3455 ( .A1 ( n2853 ) , .A2 ( n129 ) , .X ( n4155 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3458 ( .A1 ( i_tv80_core_mcycles_2_ ) , .A2 ( n3046 ) , 
    .X ( n4154 ) ) ;
SAEDRVT14_ND2_ECO_1 U3462 ( .A1 ( n4153 ) , .A2 ( reset_n ) , .X ( n5254 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3463 ( .A1 ( HFSNET_20 ) , .A2 ( n3042 ) , 
    .X ( n3333 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3466 ( .A1 ( HFSNET_20 ) , .A2 ( n3840 ) , 
    .X ( n3409 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3469 ( .A1 ( i_tv80_core_BTR_r ) , .A2 ( n5769 ) , 
    .X ( n5832 ) ) ;
SAEDRVT14_AO32_U_0P5 U3470 ( .A1 ( n5721_CDR1 ) , .A2 ( n3431 ) , 
    .A3 ( n5989 ) , .B1 ( n5714 ) , .B2 ( n2907 ) , .X ( n3029 ) ) ;
SAEDRVT14_NR3_0P5 U3471 ( .A1 ( n5761 ) , .A2 ( n6096 ) , .A3 ( n5942 ) , 
    .X ( n2623 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3472 ( .A1 ( n3264 ) , .A2 ( n6191 ) , .X ( n6114 ) ) ;
SAEDRVT14_INV_S_0P5 U3473 ( .A ( n5762 ) , .X ( n6123 ) ) ;
SAEDRVT14_OR4_1 U3474 ( .A1 ( n5759 ) , .A2 ( HFSNET_15 ) , .A3 ( n5758 ) , 
    .A4 ( n5760 ) , .X ( n5974 ) ) ;
SAEDRVT14_ND2_ECO_1 U3475 ( .A1 ( n5761 ) , .A2 ( HFSNET_14 ) , .X ( n5833 ) ) ;
SAEDRVT14_AO221_0P5 U3476 ( .A1 ( n4609 ) , .A2 ( i_tv80_core_BusB_5_ ) , 
    .B1 ( n4608 ) , .B2 ( n4679 ) , .C ( n4607 ) , .X ( n5664_CDR1 ) ) ;
SAEDRVT14_INV_0P5 U3477 ( .A ( n4810 ) , .X ( n4691 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3478 ( .A1 ( n3454 ) , .A2 ( n3051 ) , .X ( n3477 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8483 ( .A1 ( n3374 ) , .A2 ( n3241 ) , 
    .B ( tmp_net535 ) , .X ( n2401 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8484 ( .A ( n3242 ) , .B ( n3374 ) , 
    .X ( tmp_net535 ) ) ;
SAEDRVT14_OA22_U_0P5 U3481 ( .A1 ( n4412 ) , .A2 ( n401 ) , .B1 ( n4411 ) , 
    .B2 ( i_tv80_core_F_1_ ) , .X ( n3464_CDR1 ) ) ;
SAEDRVT14_AO21_U_0P5 U3482 ( .A1 ( n5674 ) , .A2 ( n5069_CDR1 ) , 
    .B ( n4423 ) , .X ( n4424 ) ) ;
SAEDRVT14_ND2_CDC_1 U3483 ( .A1 ( n6190 ) , .A2 ( n4474 ) , .X ( n4717 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_8485 ( .A1 ( n4270 ) , .A2 ( n4271 ) , 
    .B ( tmp_net536 ) , .X ( n2474 ) ) ;
SAEDRVT14_OA31_U_0P5 U3490 ( .A1 ( n4392 ) , .A2 ( n4393 ) , .A3 ( n4394 ) , 
    .B ( n4662 ) , .X ( n4395 ) ) ;
SAEDRVT14_AO21_U_0P5 U3491 ( .A1 ( n5674 ) , .A2 ( n5077_CDR1 ) , 
    .B ( n4390 ) , .X ( n4392 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3492 ( .D0 ( n4861 ) , .D1 ( n4860 ) , .S ( n2667 ) , 
    .X ( n4863 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3493 ( .A1 ( n3265 ) , .A2 ( n4796 ) , .X ( n4870 ) ) ;
SAEDRVT14_OR4_1 U3494 ( .A1 ( n4458 ) , .A2 ( n4331 ) , .A3 ( n4330 ) , 
    .A4 ( n575 ) , .X ( n4355 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3499 ( .A1 ( n4828 ) , .A2 ( n5092 ) , .X ( n4398 ) ) ;
SAEDRVT14_INV_S_0P5 U3500 ( .A ( n4356 ) , .X ( n4828 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_8486 ( .A ( n6320 ) , .B ( n4270 ) , 
    .X ( tmp_net536 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8115 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net297 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net296 ) , .X ( i_tv80_core_N253 ) ) ;
SAEDRVT14_AN3_0P75 U3503 ( .A1 ( i_tv80_core_i_reg_N22 ) , 
    .A2 ( i_tv80_core_i_reg_N21 ) , .A3 ( n3597 ) , .X ( n3461 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3504 ( .A1 ( n4661 ) , .A2 ( n4662 ) , .X ( n3459 ) ) ;
SAEDRVT14_AO221_0P5 U3505 ( .A1 ( n2630 ) , .A2 ( n5674 ) , 
    .B1 ( n5139_CDR1 ) , .B2 ( n4926 ) , .C ( n4660 ) , .X ( n4661 ) ) ;
SAEDRVT14_INV_S_0P5 U3506 ( .A ( n4716 ) , .X ( n4478 ) ) ;
SAEDRVT14_ND2_ECO_1 U3509 ( .A1 ( n4585 ) , .A2 ( n4584 ) , .X ( n4596 ) ) ;
SAEDRVT14_AO221_0P5 U3512 ( .A1 ( n4512 ) , .A2 ( n4536 ) , .B1 ( n5028 ) , 
    .B2 ( n5325 ) , .C ( n4511 ) , .X ( n4533 ) ) ;
SAEDRVT14_ND2_ECO_1 U3514 ( .A1 ( n6326 ) , .A2 ( n6301 ) , .X ( n5702 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3515 ( .A1 ( n4010 ) , .A2 ( n5613_CDR1 ) , 
    .X ( n4282 ) ) ;
SAEDRVT14_ND2_ECO_1 U3520 ( .A1 ( n6304 ) , .A2 ( n4434 ) , .X ( n6281 ) ) ;
SAEDRVT14_INV_S_0P5 U3524 ( .A ( n5605 ) , .X ( n5714 ) ) ;
SAEDRVT14_OR2_MM_0P5 U3525 ( .A1 ( n4305 ) , .A2 ( n575 ) , .X ( n4293 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3528 ( .A1 ( i_tv80_core_IR_5_ ) , .A2 ( n3198 ) , 
    .X ( n2919 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3529 ( .A1 ( n6377 ) , .A2 ( n3433 ) , .X ( n5235 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3530 ( .A1 ( n6379 ) , .A2 ( n4796 ) , .X ( n3308 ) ) ;
SAEDRVT14_OR3_0P5 U3531 ( .A1 ( n257 ) , .A2 ( n255 ) , .A3 ( tstate_2_ ) , 
    .X ( n5325 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8145 ( 
    .A1 ( i_tv80_core_TmpAddr_7_ ) , .A2 ( \i_tv80_core_add_548/n9 ) , 
    .X ( \i_tv80_core_add_548/tmp_net314 ) ) ;
SAEDRVT14_INV_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8146 ( .A ( n6351 ) , 
    .X ( \i_tv80_core_add_548/tmp_net315 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8147 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net315 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net314 ) , .X ( i_tv80_core_N255 ) ) ;
SAEDRVT14_AOI21_0P75 U3538 ( .A1 ( n5308 ) , .A2 ( n5309 ) , .B ( n3349 ) , 
    .X ( n2911 ) ) ;
SAEDRVT14_INV_S_0P5 U3539 ( .A ( n3851 ) , .X ( n3860 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3541 ( .D0 ( i_tv80_core_IR_0_ ) , .D1 ( n6013 ) , 
    .S ( n6012 ) , .X ( i_tv80_core_Set_BusB_To_0_ ) ) ;
SAEDRVT14_INV_S_0P5 U3542 ( .A ( i_tv80_core_Set_BusB_To_3_ ) , .X ( n3900 ) ) ;
SAEDRVT14_OA21_1 U3543 ( .A1 ( n3104 ) , .A2 ( n3103 ) , .B ( n4048 ) , 
    .X ( n2780 ) ) ;
SAEDRVT14_ND2_ECO_1 U3544 ( .A1 ( n2974 ) , .A2 ( n4035 ) , .X ( n5627 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3545 ( .A1 ( n5628 ) , .A2 ( n2746 ) , .X ( n6300 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3546 ( .A1 ( n5274 ) , .A2 ( n4029 ) , .X ( n2918 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3547 ( .A1 ( mcycle_0_ ) , .A2 ( n3047 ) , 
    .X ( n3436 ) ) ;
SAEDRVT14_INV_S_0P5 U3548 ( .A ( n2816 ) , .X ( n5274 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8177 ( .A1 ( n6352 ) , 
    .A2 ( \i_tv80_core_add_548/n7 ) , .X ( \i_tv80_core_add_548/tmp_net333 ) ) ;
SAEDRVT14_INV_0P5 U3550 ( .A ( n4508 ) , .X ( n6287 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3551 ( .A1 ( n5233 ) , .A2 ( n5163 ) , .X ( n6270 ) ) ;
SAEDRVT14_INV_0P75 U3552 ( .A ( n3003 ) , .X ( n6304 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3562 ( .A1 ( n3046 ) , .A2 ( n2854 ) , .X ( n3467 ) ) ;
SAEDRVT14_ND2_ECO_1 U3565 ( .A1 ( n5284 ) , .A2 ( n4239 ) , .X ( n4077 ) ) ;
SAEDRVT14_ND2_MM_1 U3566 ( .A1 ( n3283 ) , .A2 ( n5164 ) , .X ( n2809 ) ) ;
SAEDRVT14_NR3_0P5 U3567 ( .A1 ( n6371 ) , .A2 ( n3975 ) , .A3 ( n3976 ) , 
    .X ( n2736 ) ) ;
SAEDRVT14_INV_S_0P5 U3571 ( .A ( n4133 ) , .X ( n4187_CDR1 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3576 ( .A ( n4062 ) , .B ( n4063 ) , .X ( n5723_CDR1 ) ) ;
SAEDRVT14_ND2_CDC_1 U3581 ( .A1 ( n4021 ) , .A2 ( n4009 ) , .X ( n4182 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8178 ( .A ( n6353 ) , 
    .X ( \i_tv80_core_add_548/tmp_net334 ) ) ;
SAEDRVT14_AN4_0P5 U3583 ( .A1 ( n5952 ) , .A2 ( n5951 ) , .A3 ( n5950 ) , 
    .A4 ( n5949 ) , .X ( n5953 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8179 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net334 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net333 ) , .X ( i_tv80_core_N257 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3585 ( .A1 ( n4076 ) , .A2 ( n6370 ) , .X ( n5981 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8202 ( .A1 ( n6354 ) , 
    .A2 ( \i_tv80_core_add_548/n5 ) , .X ( \i_tv80_core_add_548/tmp_net348 ) ) ;
SAEDRVT14_INV_S_0P5 U3590 ( .A ( n4983 ) , .X ( n4734 ) ) ;
SAEDRVT14_ND2_ECO_1 U3591 ( .A1 ( n5570 ) , .A2 ( n4736 ) , .X ( n4908 ) ) ;
SAEDRVT14_ND2_ECO_1 U3592 ( .A1 ( n5251 ) , .A2 ( reset_n ) , .X ( n5252 ) ) ;
SAEDRVT14_ND2_ECO_1 U3596 ( .A1 ( n5796 ) , .A2 ( n5778 ) , .X ( n5785 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8203 ( .A ( n6355 ) , 
    .X ( \i_tv80_core_add_548/tmp_net349 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8204 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net349 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net348 ) , .X ( i_tv80_core_N259 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3604 ( .A1 ( n3730 ) , .A2 ( n3191 ) , .X ( n2810 ) ) ;
SAEDRVT14_AO221_0P5 U3605 ( .A1 ( i_tv80_core_RegBusA_r_13_ ) , 
    .A2 ( n5527 ) , .B1 ( i_tv80_core_RegBusB_13_ ) , .B2 ( n5643 ) , 
    .C ( n5380 ) , .X ( n5545 ) ) ;
SAEDRVT14_OR2_MM_0P5 U3606 ( .A1 ( n3747 ) , .A2 ( n3197 ) , .X ( n3744 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3607 ( .A1 ( n3743 ) , .A2 ( n3742 ) , .X ( n3222 ) ) ;
SAEDRVT14_AO221_0P5 U3609 ( .A1 ( n3042 ) , 
    .A2 ( i_tv80_core_i_reg_RegsL_4__4_ ) , 
    .B1 ( i_tv80_core_i_reg_RegsL_6__4_ ) , .B2 ( n6374 ) , .C ( n3734 ) , 
    .X ( n3743 ) ) ;
SAEDRVT14_ND2_CDC_1 U3610 ( .A1 ( n6367 ) , .A2 ( HFSNET_20 ) , .X ( n3734 ) ) ;
SAEDRVT14_ND2_MM_0P5 \i_tv80_core_add_548/ctmTdsLR_3_8277 ( .A1 ( n6356 ) , 
    .A2 ( \i_tv80_core_add_548/n3 ) , .X ( \i_tv80_core_add_548/tmp_net396 ) ) ;
SAEDRVT14_INV_S_0P5 \i_tv80_core_add_548/ctmTdsLR_4_8278 ( .A ( n6364 ) , 
    .X ( \i_tv80_core_add_548/tmp_net397 ) ) ;
SAEDRVT14_OAI22_0P5 U3613 ( .A1 ( n2585 ) , .A2 ( n3762 ) , .B1 ( n3763 ) , 
    .B2 ( n3764 ) , .X ( n3761 ) ) ;
SAEDRVT14_OA21_MM_1 U3614 ( .A1 ( i_tv80_core_i_reg_RegsL_3__6_ ) , 
    .A2 ( n3042 ) , .B ( n2851 ) , .X ( n3760 ) ) ;
SAEDRVT14_OA21_U_0P5 U3616 ( .A1 ( i_tv80_core_i_reg_RegsL_1__6_ ) , 
    .A2 ( n6374 ) , .B ( HFSNET_19 ) , .X ( n3759 ) ) ;
SAEDRVT14_EO2_V1_0P75 \i_tv80_core_add_548/ctmTdsLR_5_8279 ( 
    .A1 ( \i_tv80_core_add_548/tmp_net397 ) , 
    .A2 ( \i_tv80_core_add_548/tmp_net396 ) , .X ( i_tv80_core_N261 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3620 ( .A1 ( n5514 ) , .A2 ( n2687 ) , .X ( n3147 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3622 ( .A1 ( n3193 ) , .A2 ( n2685 ) , .X ( n3100 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3623 ( .A1 ( n5854 ) , .A2 ( n5945 ) , .X ( n3335 ) ) ;
SAEDRVT14_AN2_MM_2 U3624 ( .A1 ( n3436 ) , .A2 ( n2853 ) , .X ( n2991 ) ) ;
SAEDRVT14_INV_S_0P5 U3625 ( .A ( n5756 ) , .X ( n3974 ) ) ;
SAEDRVT14_OR4_1 U3628 ( .A1 ( n4325 ) , .A2 ( n4324 ) , .A3 ( n4323 ) , 
    .A4 ( n4322 ) , .X ( n4749 ) ) ;
SAEDRVT14_OA21_MM_1 U3629 ( .A1 ( n4315 ) , .A2 ( n4314 ) , .B ( n3431 ) , 
    .X ( n4323 ) ) ;
SAEDRVT14_OA31_1 U3631 ( .A1 ( n5697 ) , .A2 ( n5696 ) , .A3 ( n6096 ) , 
    .B ( reset_n ) , .X ( n3374 ) ) ;
SAEDRVT14_OR3_0P5 U3632 ( .A1 ( tstate_0_ ) , .A2 ( n257 ) , 
    .A3 ( tstate_2_ ) , .X ( n6349 ) ) ;
SAEDRVT14_OR4_1 U3635 ( .A1 ( n6295 ) , .A2 ( n6297 ) , .A3 ( n6296 ) , 
    .A4 ( n6298 ) , .X ( n2135 ) ) ;
SAEDRVT14_INV_0P5 U3636 ( .A ( n4165 ) , .X ( n6347 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3637 ( .A1 ( n410 ) , .A2 ( n2686 ) , .X ( n6350 ) ) ;
SAEDRVT14_OR2_0P5 U3639 ( .A1 ( n3821 ) , .A2 ( n3822 ) , 
    .X ( i_tv80_core_RegBusA_13_ ) ) ;
SAEDRVT14_AO221_0P5 U3640 ( .A1 ( n3085 ) , .A2 ( n3246 ) , .B1 ( n3081 ) , 
    .B2 ( n3244 ) , .C ( n3825 ) , .X ( n3821 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3644 ( .A1 ( n3812 ) , .A2 ( gre_net_556 ) , 
    .X ( n3249 ) ) ;
SAEDRVT14_NR3_2 U3645 ( .A1 ( n5302 ) , .A2 ( n3224 ) , .A3 ( n3225 ) , 
    .X ( n2850 ) ) ;
SAEDRVT14_ND2_ECO_1 U3647 ( .A1 ( n3042 ) , .A2 ( n6367 ) , .X ( n3791 ) ) ;
SAEDRVT14_INV_S_0P5 U3649 ( .A ( i_tv80_core_RegBusA_9_ ) , .X ( n3144 ) ) ;
SAEDRVT14_AN4_0P5 U3660 ( .A1 ( gre_net_556 ) , .A2 ( n6367 ) , 
    .A3 ( n3840 ) , .A4 ( n2832 ) , .X ( n3782 ) ) ;
SAEDRVT14_ND2_CDC_1 U3661 ( .A1 ( HFSNET_14 ) , .A2 ( n6190 ) , .X ( n6096 ) ) ;
SAEDRVT14_ND2B_U_0P5 U3662 ( .A ( n4540 ) , .B ( n3351 ) , .X ( n6260 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3679 ( .A1 ( n3193 ) , .A2 ( n2685 ) , .X ( n2803 ) ) ;
SAEDRVT14_ND2_ECO_1 U3690 ( .A1 ( n5254 ) , .A2 ( reset_n ) , .X ( n5259 ) ) ;
SAEDRVT14_NR3_0P5 U3691 ( .A1 ( n3268 ) , .A2 ( n3254 ) , .A3 ( n5546 ) , 
    .X ( n3342 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3692 ( .A1 ( n2875 ) , .A2 ( n2876 ) , .X ( n2814 ) ) ;
SAEDRVT14_NR2_MM_0P5 U3693 ( .A1 ( n5364 ) , .A2 ( n5369 ) , .X ( n3272 ) ) ;
SAEDRVT14_AO221_0P5 U3695 ( .A1 ( n5363 ) , .A2 ( n3280 ) , .B1 ( n3257 ) , 
    .B2 ( n5365 ) , .C ( n5362 ) , .X ( n5364 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3697 ( .A1 ( n3409 ) , .A2 ( n3399 ) , .X ( n3315 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3698 ( .A1 ( n3410 ) , .A2 ( n3399 ) , .X ( n3314 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3699 ( .A1 ( n3333 ) , .A2 ( n3399 ) , .X ( n3316 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3700 ( .A1 ( n3410 ) , .A2 ( n3403 ) , .X ( n3325 ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U3701 ( .A1 ( n3005 ) , .A2 ( n5130 ) , 
    .B1 ( n4839 ) , .B2 ( i_tv80_core_Arith16_r ) , .X ( n4840 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3703 ( .A1 ( n3410 ) , .A2 ( n3404 ) , .X ( n3326 ) ) ;
SAEDRVT14_INV_S_0P5 U3704 ( .A ( n5518 ) , .X ( n5566 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3707 ( .A1 ( n3409 ) , .A2 ( n3403 ) , .X ( n3327 ) ) ;
SAEDRVT14_NR3_0P5 U3710 ( .A1 ( n3254 ) , .A2 ( n3268 ) , .A3 ( n5546 ) , 
    .X ( n3910 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3711 ( .A1 ( n3333 ) , .A2 ( n3403 ) , .X ( n3329 ) ) ;
SAEDRVT14_NR3_0P5 U3713 ( .A1 ( n3269 ) , .A2 ( n3256 ) , .A3 ( n5545 ) , 
    .X ( n3095 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3714 ( .A1 ( n3296 ) , .A2 ( n3854 ) , .X ( n3297 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3715 ( .A1 ( n3293 ) , .A2 ( n3854 ) , .X ( n3295 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3716 ( .A1 ( n3296 ) , 
    .A2 ( i_tv80_core_Set_BusB_To_0_ ) , .X ( n3381 ) ) ;
SAEDRVT14_OA21_U_0P5 U3718 ( .A1 ( i_tv80_core_F_0_ ) , .A2 ( n3854 ) , 
    .B ( n2752 ) , .X ( n3855 ) ) ;
SAEDRVT14_AO221_0P5 U3723 ( .A1 ( i_tv80_core_i_reg_RegsL_7__0_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__0_ ) , 
    .B2 ( n6367 ) , .C ( n3718 ) , .X ( n3717 ) ) ;
SAEDRVT14_AO221_0P5 U3734 ( .A1 ( i_tv80_core_i_reg_RegsL_1__1_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( n6341 ) , .B2 ( n6367 ) , .C ( n3720 ) , 
    .X ( n3723 ) ) ;
SAEDRVT14_ND2_ECO_1 U3738 ( .A1 ( n5042 ) , .A2 ( tstate_1_ ) , .X ( n6258 ) ) ;
SAEDRVT14_INV_0P5 U3739 ( .A ( n6262 ) , .X ( n6099 ) ) ;
SAEDRVT14_AO221_0P5 U3740 ( .A1 ( n5163 ) , .A2 ( i_tv80_core_F_0_ ) , 
    .B1 ( n2909 ) , .B2 ( i_tv80_core_F_6_ ) , .C ( n5162 ) , .X ( n5169 ) ) ;
SAEDRVT14_ND2_CDC_1 U3741 ( .A1 ( n575 ) , .A2 ( n3962 ) , .X ( n6262 ) ) ;
SAEDRVT14_OR3_0P5 U3742 ( .A1 ( n6111 ) , .A2 ( n4237 ) , .A3 ( n4236 ) , 
    .X ( n5210 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3743 ( .A1 ( n3410 ) , .A2 ( n3400 ) , .X ( n3317 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3744 ( .A1 ( n3333 ) , .A2 ( n3400 ) , .X ( n3319 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3748 ( .A1 ( n3333 ) , .A2 ( n3404 ) , .X ( n3330 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3750 ( .A1 ( n3409 ) , .A2 ( n3400 ) , .X ( n3318 ) ) ;
SAEDRVT14_OR3_0P5 U3751 ( .A1 ( n5761 ) , .A2 ( n6096 ) , .A3 ( n5942 ) , 
    .X ( n5975 ) ) ;
SAEDRVT14_ND2_MM_0P5 U3753 ( .A1 ( n4327_CDR1 ) , .A2 ( n3431 ) , 
    .X ( n4854 ) ) ;
SAEDRVT14_INV_0P5 U3755 ( .A ( n5931 ) , .X ( n5950 ) ) ;
SAEDRVT14_INV_S_0P5 U3756 ( .A ( n5814 ) , .X ( n5830 ) ) ;
SAEDRVT14_OAI31_0P5 U3757 ( .A1 ( n4312 ) , .A2 ( n5725 ) , .A3 ( n6366 ) , 
    .B ( n4293 ) , .X ( n4283 ) ) ;
SAEDRVT14_AN2_MM_0P5 U3764 ( .A1 ( n5989 ) , .A2 ( i_tv80_core_ISet_1_ ) , 
    .X ( n3351 ) ) ;
SAEDRVT14_OA31_1 U3767 ( .A1 ( n5164 ) , .A2 ( n6301 ) , .A3 ( n4017 ) , 
    .B ( n4016 ) , .X ( n4018 ) ) ;
SAEDRVT14_INV_S_0P5 U3768 ( .A ( n5223 ) , .X ( n4326 ) ) ;
SAEDRVT14_ND2_0P5 U3770 ( .A1 ( busak_n ) , .A2 ( reset_n ) , .X ( n5707 ) ) ;
SAEDRVT14_OAI21_0P5 U3772 ( .A1 ( n3468 ) , .A2 ( n3469 ) , .B ( n5267 ) , 
    .X ( n5245 ) ) ;
SAEDRVT14_AO21_U_0P5 U3774 ( .A1 ( n4272 ) , .A2 ( n2691 ) , .B ( n4240 ) , 
    .X ( n3468 ) ) ;
SAEDRVT14_INV_S_0P5 U3775 ( .A ( n5245 ) , .X ( n5247 ) ) ;
SAEDRVT14_ND2_ECO_1 U3777 ( .A1 ( n5756 ) , .A2 ( reset_n ) , .X ( n4273 ) ) ;
SAEDRVT14_AO221_0P5 U3778 ( .A1 ( n5765 ) , .A2 ( n5804 ) , .B1 ( n3261 ) , 
    .B2 ( i_tv80_core_TmpAddr_0_ ) , .C ( n5764 ) , .X ( n2328 ) ) ;
SAEDRVT14_EO2_V1_0P75 U3780 ( .A1 ( n5768 ) , .A2 ( i_tv80_core_PC_0_ ) , 
    .X ( n5765 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3781 ( .D0 ( n5968 ) , .D1 ( n5967 ) , .S ( n2621 ) , 
    .X ( n2622 ) ) ;
SAEDRVT14_AO221_0P5 U3782 ( .A1 ( i_tv80_core_N251 ) , .A2 ( n3301 ) , 
    .B1 ( i_tv80_core_RegBusC_4_ ) , .B2 ( n2778 ) , .C ( n6156 ) , 
    .X ( n6157 ) ) ;
SAEDRVT14_AO221_0P5 U3797 ( .A1 ( i_tv80_core_SP_1_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_1_ ) , .B2 ( n3302 ) , .C ( n3858 ) , .X ( n3857 ) ) ;
SAEDRVT14_OA21_U_0P5 U3801 ( .A1 ( n4269 ) , .A2 ( n4268 ) , .B ( reset_n ) , 
    .X ( n2475 ) ) ;
SAEDRVT14_AO221_0P5 U3804 ( .A1 ( n3261 ) , .A2 ( i_tv80_core_TmpAddr_3_ ) , 
    .B1 ( n5804 ) , .B2 ( n5790 ) , .C ( n5789 ) , .X ( n2325 ) ) ;
SAEDRVT14_AO221_0P5 U3805 ( .A1 ( n3261 ) , .A2 ( i_tv80_core_TmpAddr_4_ ) , 
    .B1 ( n5804 ) , .B2 ( n5803 ) , .C ( n5802 ) , .X ( n2324 ) ) ;
SAEDRVT14_AO221_0P5 U3807 ( .A1 ( i_tv80_core_N250 ) , .A2 ( n3301 ) , 
    .B1 ( i_tv80_core_RegBusC_3_ ) , .B2 ( n2778 ) , .C ( n6149 ) , 
    .X ( n6150 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3809 ( .D0 ( n4833 ) , .D1 ( i_tv80_core_F_0_ ) , 
    .S ( n4832 ) , .X ( n2408 ) ) ;
SAEDRVT14_AO221_0P5 U3811 ( .A1 ( n4825 ) , .A2 ( n5691 ) , .B1 ( n3416 ) , 
    .B2 ( n5436 ) , .C ( HFSNET_16 ) , .X ( n4833 ) ) ;
SAEDRVT14_AO221_0P5 U3812 ( .A1 ( i_tv80_core_N258 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_11_ ) , .C ( n6220 ) , .X ( n6224 ) ) ;
SAEDRVT14_AO221_0P5 U3813 ( .A1 ( i_tv80_core_N248 ) , .A2 ( n3301 ) , 
    .B1 ( n6174 ) , .B2 ( n6134 ) , .C ( n6133 ) , .X ( n6135 ) ) ;
SAEDRVT14_AO221_0P5 U3814 ( .A1 ( i_tv80_core_N252 ) , .A2 ( n3301 ) , 
    .B1 ( n6174 ) , .B2 ( n6164 ) , .C ( n6163 ) , .X ( n6165 ) ) ;
SAEDRVT14_AO221_0P5 U3815 ( .A1 ( i_tv80_core_N253 ) , .A2 ( n3301 ) , 
    .B1 ( n6174 ) , .B2 ( n6173 ) , .C ( n6172 ) , .X ( n6175 ) ) ;
SAEDRVT14_AO221_0P5 U3816 ( .A1 ( i_tv80_core_N254 ) , .A2 ( n3301 ) , 
    .B1 ( i_tv80_core_RegBusC_7_ ) , .B2 ( n2778 ) , .C ( n6184 ) , 
    .X ( n6185 ) ) ;
SAEDRVT14_AO221_0P5 U3817 ( .A1 ( i_tv80_core_N257 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_10_ ) , .C ( n6213 ) , .X ( n6218 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3823 ( .D0 ( i_tv80_core_i_reg_RegsL_7__2_ ) , 
    .D1 ( n5518 ) , .S ( n3328 ) , .X ( n2231 ) ) ;
SAEDRVT14_AO221_0P5 U3824 ( .A1 ( n2623 ) , .A2 ( n5919 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_12_ ) , .C ( n5918 ) , .X ( n2316 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3825 ( .D0 ( n5917 ) , .D1 ( n5916 ) , 
    .S ( i_tv80_core_PC_12_ ) , .X ( n5918 ) ) ;
SAEDRVT14_OR4_1 U3826 ( .A1 ( n3806 ) , .A2 ( n3807 ) , .A3 ( n3809 ) , 
    .A4 ( n3808 ) , .X ( n3119 ) ) ;
SAEDRVT14_AO221_0P5 U3827 ( .A1 ( n3757 ) , .A2 ( n3758 ) , .B1 ( n3759 ) , 
    .B2 ( n3760 ) , .C ( n3761 ) , .X ( n2848 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3833 ( .D0 ( n93 ) , .D1 ( n3147 ) , .S ( n3320 ) , 
    .X ( n2174 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3834 ( .D0 ( n5562 ) , .D1 ( n3147 ) , .S ( n3324 ) , 
    .X ( n2182 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3835 ( .D0 ( n5558 ) , .D1 ( n3147 ) , .S ( n3317 ) , 
    .X ( n2190 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3838 ( .D0 ( n5555 ) , .D1 ( n3147 ) , .S ( n3326 ) , 
    .X ( n2198 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3839 ( .D0 ( n5552 ) , .D1 ( n3147 ) , .S ( n3319 ) , 
    .X ( n2206 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3840 ( .D0 ( n5542 ) , .D1 ( n3147 ) , .S ( n3330 ) , 
    .X ( n2214 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3843 ( .D0 ( n5539 ) , .D1 ( n3147 ) , .S ( n3318 ) , 
    .X ( n2222 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3844 ( .D0 ( n5515 ) , .D1 ( n3147 ) , .S ( n3328 ) , 
    .X ( n2230 ) ) ;
SAEDRVT14_AO21_U_0P5 U3845 ( .A1 ( n3335 ) , .A2 ( n6355 ) , .B ( n5900 ) , 
    .X ( n2357 ) ) ;
SAEDRVT14_INV_S_0P5 U3846 ( .A ( n5898 ) , .X ( n5899 ) ) ;
SAEDRVT14_INV_S_0P5 U3847 ( .A ( i_tv80_core_RegBusA_10_ ) , .X ( n5373 ) ) ;
SAEDRVT14_OA22_U_0P5 U3848 ( .A1 ( i_tv80_core_IR_1_ ) , .A2 ( n6012 ) , 
    .B1 ( n5641 ) , .B2 ( n5642 ) , .X ( n2752 ) ) ;
SAEDRVT14_OR3_0P5 U3849 ( .A1 ( n5622 ) , .A2 ( n5623 ) , .A3 ( n5624 ) , 
    .X ( i_tv80_core_Set_BusB_To_2_ ) ) ;
SAEDRVT14_OA31_1 U3854 ( .A1 ( n5060_CDR1 ) , .A2 ( n5482_CDR1 ) , 
    .A3 ( tmp_net452 ) , .B ( n5059 ) , .X ( n2478 ) ) ;
SAEDRVT14_AO221_0P5 U3857 ( .A1 ( n2623 ) , .A2 ( n5897 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_11_ ) , .C ( n5896 ) , .X ( n2317 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3860 ( .D0 ( n3071 ) , .D1 ( n5565 ) , .S ( n3317 ) , 
    .X ( n2188 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3861 ( .D0 ( n3069 ) , .D1 ( n5565 ) , .S ( n3326 ) , 
    .X ( n2196 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3865 ( .D0 ( n3073 ) , .D1 ( n5565 ) , .S ( n3318 ) , 
    .X ( n2220 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3866 ( .D0 ( n3077 ) , .D1 ( n5565 ) , .S ( n3319 ) , 
    .X ( n2204 ) ) ;
SAEDRVT14_AO221_0P5 U3867 ( .A1 ( i_tv80_core_N255 ) , .A2 ( n3301 ) , 
    .B1 ( n3377 ) , .B2 ( i_tv80_core_SP_8_ ) , .C ( n6193 ) , .X ( n6204 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3878 ( .D0 ( n3075 ) , .D1 ( n5565 ) , .S ( n3320 ) , 
    .X ( n2172 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3879 ( .D0 ( n4912 ) , 
    .D1 ( i_tv80_core_BusA_7__CDR1 ) , .S ( n5011 ) , .X ( n4913 ) ) ;
SAEDRVT14_AO221_0P5 U3880 ( .A1 ( n3290 ) , .A2 ( di_reg_7__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_7_ ) , .C ( n4911 ) , .X ( n4912 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3881 ( .D0 ( n3088 ) , .D1 ( n3095 ) , .S ( n3327 ) , 
    .X ( n2292 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3882 ( .D0 ( n3092 ) , .D1 ( n3095 ) , .S ( n3325 ) , 
    .X ( n2260 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3883 ( .D0 ( n3084 ) , .D1 ( n3095 ) , .S ( n3316 ) , 
    .X ( n2268 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3884 ( .D0 ( n3086 ) , .D1 ( n3095 ) , .S ( n3314 ) , 
    .X ( n2252 ) ) ;
SAEDRVT14_AO221_0P5 U3886 ( .A1 ( n2623 ) , .A2 ( n5865 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_8_ ) , .C ( n5864 ) , .X ( n2320 ) ) ;
SAEDRVT14_AO221_0P5 U3892 ( .A1 ( n3261 ) , .A2 ( i_tv80_core_TmpAddr_7_ ) , 
    .B1 ( n5969 ) , .B2 ( i_tv80_core_RegBusC_7_ ) , .C ( n5848 ) , 
    .X ( n2321 ) ) ;
SAEDRVT14_AO221_0P5 U3895 ( .A1 ( n2623 ) , .A2 ( n5878 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_9_ ) , .C ( n5877 ) , .X ( n2319 ) ) ;
SAEDRVT14_AO221_0P5 U3896 ( .A1 ( n2623 ) , .A2 ( n5930 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_13_ ) , .C ( n5929 ) , .X ( n2315 ) ) ;
SAEDRVT14_MUX2_U_0P5 U3897 ( .D0 ( i_tv80_core_i_reg_RegsH_6__0_ ) , 
    .D1 ( n2901 ) , .S ( n3315 ) , .X ( n2289 ) ) ;
SAEDRVT14_AO221_0P5 U3898 ( .A1 ( di_6_ ) , .A2 ( n3481 ) , 
    .B1 ( i_tv80_core_IR_6_ ) , .B2 ( n5269 ) , .C ( n3480 ) , .X ( n2443 ) ) ;
SAEDRVT14_AO221_0P5 U3907 ( .A1 ( n5969 ) , .A2 ( i_tv80_core_RegBusC_14_ ) , 
    .B1 ( n5944 ) , .B2 ( n6241 ) , .C ( n5943 ) , .X ( n2314 ) ) ;
SAEDRVT14_MUXI2_U_0P5 U3910 ( .D0 ( n5968 ) , .D1 ( n5967 ) , .S ( n5938 ) , 
    .X ( n5944 ) ) ;
SAEDRVT14_AN4_0P5 U3916 ( .A1 ( n3722 ) , .A2 ( n3723 ) , .A3 ( n3724 ) , 
    .A4 ( n3725 ) , .X ( i_tv80_core_RegBusA_1_ ) ) ;
SAEDRVT14_AO221_0P5 U3918 ( .A1 ( i_tv80_core_i_reg_RegsL_7__1_ ) , 
    .A2 ( HFSNET_19 ) , .B1 ( i_tv80_core_i_reg_RegsL_6__1_ ) , 
    .B2 ( n6367 ) , .C ( n3718 ) , .X ( n3725 ) ) ;
SAEDRVT14_AO221_0P5 U3920 ( .A1 ( n2623 ) , .A2 ( n5887 ) , .B1 ( n5969 ) , 
    .B2 ( i_tv80_core_RegBusC_10_ ) , .C ( n5886 ) , .X ( n2318 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3923 ( .D0 ( n4852 ) , 
    .D1 ( i_tv80_core_BusA_4__CDR1 ) , .S ( n5011 ) , .X ( n4853 ) ) ;
SAEDRVT14_AO221_0P5 U3924 ( .A1 ( n3290 ) , .A2 ( di_reg_4__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_4_ ) , .C ( n4851 ) , .X ( n4852 ) ) ;
SAEDRVT14_AO221_0P5 U3939 ( .A1 ( n3290 ) , .A2 ( di_reg_0__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_0_ ) , .C ( n4887 ) , .X ( n4889 ) ) ;
SAEDRVT14_AO221_0P5 U3945 ( .A1 ( n3321 ) , .A2 ( n5021 ) , .B1 ( n3416 ) , 
    .B2 ( n5415 ) , .C ( HFSNET_16 ) , .X ( n5023 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U3955 ( .D0 ( n4989 ) , 
    .D1 ( i_tv80_core_BusA_6__CDR1 ) , .S ( n5011 ) , .X ( n4990 ) ) ;
SAEDRVT14_AO221_0P5 U3956 ( .A1 ( n3290 ) , .A2 ( di_reg_6__CDR1 ) , 
    .B1 ( n3288 ) , .B2 ( i_tv80_core_ACC_6_ ) , .C ( n4988 ) , .X ( n4989 ) ) ;
SAEDRVT14_AO221_0P5 U3957 ( .A1 ( n3405 ) , .A2 ( i_tv80_core_IR_5_ ) , 
    .B1 ( n5950 ) , .B2 ( n5806 ) , .C ( n5805 ) , .X ( n2364 ) ) ;
SAEDRVT14_AO221_0P5 U3959 ( .A1 ( n3405 ) , .A2 ( n3103 ) , .B1 ( n5950 ) , 
    .B2 ( n5709 ) , .C ( n5708 ) , .X ( n2366 ) ) ;
SAEDRVT14_AO221_0P5 U3967 ( .A1 ( i_tv80_core_N1214 ) , .A2 ( n3307 ) , 
    .B1 ( i_tv80_core_SP_15_ ) , .B2 ( n3304 ) , .C ( n3897 ) , .X ( n3893 ) ) ;
SAEDRVT14_AO221_0P5 U3968 ( .A1 ( i_tv80_core_SP_5_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_5_ ) , .B2 ( n3302 ) , .C ( n3883 ) , .X ( n3882 ) ) ;
SAEDRVT14_AO221_0P5 U3969 ( .A1 ( i_tv80_core_SP_4_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_4_ ) , .B2 ( n3302 ) , .C ( n3877 ) , .X ( n3876 ) ) ;
SAEDRVT14_AO221_0P5 U3970 ( .A1 ( i_tv80_core_SP_3_ ) , .A2 ( n3384 ) , 
    .B1 ( i_tv80_core_F_3_ ) , .B2 ( n3302 ) , .C ( n3871 ) , .X ( n3870 ) ) ;
SAEDRVT14_OR4_1 U3971 ( .A1 ( n4205 ) , .A2 ( n4206 ) , .A3 ( n4207 ) , 
    .A4 ( n3424 ) , .X ( n1940 ) ) ;
SAEDRVT14_OR4_1 U3972 ( .A1 ( n5589 ) , .A2 ( n5206 ) , .A3 ( n4204 ) , 
    .A4 ( n5730 ) , .X ( n4205 ) ) ;
SAEDRVT14_OR4_1 U3973 ( .A1 ( n4229 ) , .A2 ( n4230 ) , .A3 ( n4231 ) , 
    .A4 ( n4232 ) , .X ( n1941 ) ) ;
SAEDRVT14_AOINV_IW_0P5 HFSINV_2060_1489 ( .A ( n5491 ) , .X ( HFSNET_9 ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_1_1525 ( .A1 ( n4169 ) , .A2 ( n3046 ) , 
    .A3 ( n2853 ) , .X ( tmp_net7 ) ) ;
SAEDRVT14_AOINV_IW_1 HFSINV_1446_1491 ( .A ( n5491 ) , .X ( HFSNET_11 ) ) ;
SAEDRVT14_DEL_R2V1_1 HFSBUF_1954_1492 ( .A ( n5491 ) , .X ( HFSNET_12 ) ) ;
SAEDRVT14_AOINV_IW_2 HFSINV_2490_1494 ( .A ( n5707 ) , .X ( HFSNET_14 ) ) ;
SAEDRVT14_INV_S_1P5 HFSINV_3426_1496 ( .A ( reset_n ) , .X ( HFSNET_16 ) ) ;
SAEDRVT14_BUF_S_1P5 HFSBUF_2842_1497 ( .A ( reset_n ) , .X ( HFSNET_17 ) ) ;
SAEDRVT14_AOINV_IW_6 HFSINV_1592_1499 ( .A ( n6367 ) , .X ( HFSNET_19 ) ) ;
SAEDRVT14_AOINV_IW_0P5 HFSINV_3618_1501 ( .A ( n2850 ) , .X ( HFSNET_21 ) ) ;
SAEDRVT14_AOINV_IW_4 HFSINV_2530_1503 ( .A ( n5325 ) , .X ( HFSNET_23 ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_2_1526 ( .A1 ( n3142 ) , .A2 ( n3913 ) , 
    .A3 ( tmp_net7 ) , .X ( n2750 ) ) ;
endmodule


