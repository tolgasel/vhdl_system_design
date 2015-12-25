/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/superus/vhdl_system_design/workspace/idea_rcs2/control.vhd";



static void work_a_3222946569_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;
    int t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4280);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 7364);
    t13 = xsi_mem_cmp(t2, t3, 3U);
    if (t13 == 1)
        goto LAB34;

LAB41:    t8 = (t0 + 7367);
    t16 = xsi_mem_cmp(t8, t3, 3U);
    if (t16 == 1)
        goto LAB35;

LAB42:    t12 = (t0 + 7370);
    t19 = xsi_mem_cmp(t12, t3, 3U);
    if (t19 == 1)
        goto LAB36;

LAB43:    t15 = (t0 + 7373);
    t22 = xsi_mem_cmp(t15, t3, 3U);
    if (t22 == 1)
        goto LAB37;

LAB44:    t18 = (t0 + 7376);
    t25 = xsi_mem_cmp(t18, t3, 3U);
    if (t25 == 1)
        goto LAB38;

LAB45:    t21 = (t0 + 7379);
    t28 = xsi_mem_cmp(t21, t3, 3U);
    if (t28 == 1)
        goto LAB39;

LAB46:
LAB40:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 7403);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);

LAB33:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(55, ng0);
    t7 = (t0 + 2312U);
    t11 = *((char **)t7);
    t7 = (t0 + 7310);
    t13 = xsi_mem_cmp(t7, t11, 3U);
    if (t13 == 1)
        goto LAB12;

LAB21:    t14 = (t0 + 7313);
    t16 = xsi_mem_cmp(t14, t11, 3U);
    if (t16 == 1)
        goto LAB13;

LAB22:    t17 = (t0 + 7316);
    t19 = xsi_mem_cmp(t17, t11, 3U);
    if (t19 == 1)
        goto LAB14;

LAB23:    t20 = (t0 + 7319);
    t22 = xsi_mem_cmp(t20, t11, 3U);
    if (t22 == 1)
        goto LAB15;

LAB24:    t23 = (t0 + 7322);
    t25 = xsi_mem_cmp(t23, t11, 3U);
    if (t25 == 1)
        goto LAB16;

LAB25:    t26 = (t0 + 7325);
    t28 = xsi_mem_cmp(t26, t11, 3U);
    if (t28 == 1)
        goto LAB17;

LAB26:    t29 = (t0 + 7328);
    t31 = xsi_mem_cmp(t29, t11, 3U);
    if (t31 == 1)
        goto LAB18;

LAB27:    t32 = (t0 + 7331);
    t34 = xsi_mem_cmp(t32, t11, 3U);
    if (t34 == 1)
        goto LAB19;

LAB28:
LAB20:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 7361);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(56, ng0);
    t35 = (t0 + 7334);
    t37 = (t0 + 4392);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t35, 3U);
    xsi_driver_first_trans_fast(t37);
    goto LAB11;

LAB13:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 7337);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB14:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 7340);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB15:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 7343);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB16:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7346);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB17:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 7349);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB18:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 7352);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB19:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 7358);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);

LAB31:    goto LAB11;

LAB29:;
LAB30:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 7355);
    t8 = (t0 + 4392);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB31;

LAB34:    xsi_set_current_line(70, ng0);
    t24 = (t0 + 7382);
    t27 = (t0 + 4392);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t32 = (t30 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t24, 3U);
    xsi_driver_first_trans_fast(t27);
    goto LAB33;

LAB35:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7385);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB33;

LAB36:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7388);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB33;

LAB37:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7391);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB33;

LAB38:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 7394);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB33;

LAB39:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB48;

LAB50:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 7400);
    t7 = (t0 + 4392);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 3U);
    xsi_driver_first_trans_fast(t7);

LAB49:    goto LAB33;

LAB47:;
LAB48:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7397);
    t8 = (t0 + 4392);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB49;

}

static void work_a_3222946569_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7418);
    t7 = xsi_mem_cmp(t1, t2, 3U);
    if (t7 == 1)
        goto LAB17;

LAB21:    t6 = (t0 + 7421);
    t10 = xsi_mem_cmp(t6, t2, 3U);
    if (t10 == 1)
        goto LAB18;

LAB22:    t9 = (t0 + 7424);
    t13 = xsi_mem_cmp(t9, t2, 3U);
    if (t13 == 1)
        goto LAB19;

LAB23:
LAB20:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB16:
LAB3:    t1 = (t0 + 4296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 7406);
    t7 = xsi_mem_cmp(t1, t5, 3U);
    if (t7 == 1)
        goto LAB6;

LAB11:    t8 = (t0 + 7409);
    t10 = xsi_mem_cmp(t8, t5, 3U);
    if (t10 == 1)
        goto LAB7;

LAB12:    t11 = (t0 + 7412);
    t13 = xsi_mem_cmp(t11, t5, 3U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 7415);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(91, ng0);
    t17 = (t0 + 4456);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB15:;
LAB17:    xsi_set_current_line(118, ng0);
    t12 = (t0 + 4456);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB19:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 4456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB24:;
}

static void work_a_3222946569_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(157, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7469);
    t7 = xsi_mem_cmp(t1, t2, 3U);
    if (t7 == 1)
        goto LAB25;

LAB32:    t6 = (t0 + 7472);
    t10 = xsi_mem_cmp(t6, t2, 3U);
    if (t10 == 1)
        goto LAB26;

LAB33:    t9 = (t0 + 7475);
    t13 = xsi_mem_cmp(t9, t2, 3U);
    if (t13 == 1)
        goto LAB27;

LAB34:    t12 = (t0 + 7478);
    t16 = xsi_mem_cmp(t12, t2, 3U);
    if (t16 == 1)
        goto LAB28;

LAB35:    t15 = (t0 + 7481);
    t19 = xsi_mem_cmp(t15, t2, 3U);
    if (t19 == 1)
        goto LAB29;

LAB36:    t18 = (t0 + 7484);
    t22 = xsi_mem_cmp(t18, t2, 3U);
    if (t22 == 1)
        goto LAB30;

LAB37:
LAB31:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 7499);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB24:
LAB3:    t1 = (t0 + 4312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 7427);
    t7 = xsi_mem_cmp(t1, t5, 3U);
    if (t7 == 1)
        goto LAB6;

LAB15:    t8 = (t0 + 7430);
    t10 = xsi_mem_cmp(t8, t5, 3U);
    if (t10 == 1)
        goto LAB7;

LAB16:    t11 = (t0 + 7433);
    t13 = xsi_mem_cmp(t11, t5, 3U);
    if (t13 == 1)
        goto LAB8;

LAB17:    t14 = (t0 + 7436);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB9;

LAB18:    t17 = (t0 + 7439);
    t19 = xsi_mem_cmp(t17, t5, 3U);
    if (t19 == 1)
        goto LAB10;

LAB19:    t20 = (t0 + 7442);
    t22 = xsi_mem_cmp(t20, t5, 3U);
    if (t22 == 1)
        goto LAB11;

LAB20:    t23 = (t0 + 7445);
    t25 = xsi_mem_cmp(t23, t5, 3U);
    if (t25 == 1)
        goto LAB12;

LAB21:    t26 = (t0 + 7448);
    t28 = xsi_mem_cmp(t26, t5, 3U);
    if (t28 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 7467);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(146, ng0);
    t29 = (t0 + 7451);
    t31 = (t0 + 4712);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t29, 2U);
    xsi_driver_first_trans_fast_port(t31);
    goto LAB5;

LAB7:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 7453);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 7455);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 7457);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 7459);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB11:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 7461);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB12:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 7463);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB13:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 7465);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB23:;
LAB25:    xsi_set_current_line(158, ng0);
    t21 = (t0 + 7487);
    t24 = (t0 + 4712);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 2U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB24;

LAB26:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 7489);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

LAB27:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 7491);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

LAB28:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 7493);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

LAB29:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 7495);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

LAB30:    xsi_set_current_line(163, ng0);
    t1 = (t0 + 7497);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

LAB38:;
}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0,(void *)work_a_3222946569_3212880686_p_1,(void *)work_a_3222946569_3212880686_p_2};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/tb_control_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
}