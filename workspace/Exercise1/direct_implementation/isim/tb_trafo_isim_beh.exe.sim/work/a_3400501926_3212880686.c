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
static const char *ng0 = "/home/ga69kaw/vhdl_system_design_lab/workspace/Exercise1/direct_implementation/mulop.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434220770698190313_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2177518728674633585_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t14[16];
    char t15[16];
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    int t16;
    unsigned int t17;
    int t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6343);
    t4 = 1;
    if (16U == 16U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (15 - 15);
    t12 = (t5 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t15 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (0 - 15);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t3 = xsi_base_array_concat(t3, t14, t6, (char)99, (unsigned char)2, (char)97, t1, t15, (char)101);
    t8 = (t0 + 1648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t17 = (1U + 16U);
    memcpy(t8, t3, t17);

LAB3:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t4 = 1;
    if (16U == 16U)
        goto LAB14;

LAB15:    t4 = 0;

LAB16:    if (t4 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (15 - 15);
    t12 = (t5 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t15 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (0 - 15);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t3 = xsi_base_array_concat(t3, t14, t6, (char)99, (unsigned char)2, (char)97, t1, t15, (char)101);
    t8 = (t0 + 1768U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t17 = (1U + 16U);
    memcpy(t8, t3, t17);

LAB12:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t1 = (t0 + 6040U);
    t3 = (t0 + 1768U);
    t6 = *((char **)t3);
    t3 = (t0 + 6056U);
    t7 = ieee_p_1242562249_sub_2177518728674633585_1035706684(IEEE_P_1242562249, t14, t2, t1, t6, t3);
    t8 = (t0 + 1888U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t14 + 12U);
    t5 = *((unsigned int *)t10);
    t12 = (1U * t5);
    memcpy(t8, t7, t12);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 6409);
    t3 = (t0 + 1888U);
    t6 = *((char **)t3);
    t5 = (33 - 15);
    t12 = (t5 * 1U);
    t13 = (0 + t12);
    t3 = (t6 + t13);
    t8 = ((IEEE_P_2592010699) + 4000);
    t9 = (t15 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 16;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t16 = (16 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 15;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t19 = (0 - 15);
    t17 = (t19 * -1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t7 = xsi_base_array_concat(t7, t14, t8, (char)97, t1, t15, (char)97, t3, t18, (char)101);
    t11 = (t0 + 2008U);
    t20 = *((char **)t11);
    t11 = (t20 + 0);
    t17 = (17U + 16U);
    memcpy(t11, t7, t17);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6426);
    t3 = (t0 + 1888U);
    t6 = *((char **)t3);
    t5 = (33 - 32);
    t12 = (t5 * 1U);
    t13 = (0 + t12);
    t3 = (t6 + t13);
    t8 = ((IEEE_P_2592010699) + 4000);
    t9 = (t15 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 15;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t16 = (15 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 32;
    t11 = (t10 + 4U);
    *((int *)t11) = 16;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t19 = (16 - 32);
    t17 = (t19 * -1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t7 = xsi_base_array_concat(t7, t14, t8, (char)97, t1, t15, (char)97, t3, t18, (char)101);
    t11 = (t0 + 2128U);
    t20 = *((char **)t11);
    t11 = (t20 + 0);
    t17 = (16U + 17U);
    memcpy(t11, t7, t17);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t1 = (t0 + 6088U);
    t3 = (t0 + 2128U);
    t6 = *((char **)t3);
    t3 = (t0 + 6104U);
    t4 = ieee_p_1242562249_sub_1434220770698190313_1035706684(IEEE_P_1242562249, t2, t1, t6, t3);
    if (t4 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t1 = (t0 + 6088U);
    t3 = (t0 + 2128U);
    t6 = *((char **)t3);
    t3 = (t0 + 6104U);
    t7 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t15, t2, t1, t6, t3);
    t8 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t14, t7, t15, 65537);
    t9 = (t0 + 2248U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t14 + 12U);
    t5 = *((unsigned int *)t11);
    t12 = (1U * t5);
    memcpy(t9, t8, t12);

LAB21:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (32 - 15);
    t12 = (t5 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 3624);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 3544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 6359);
    t10 = (t0 + 1648U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t8, 17U);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 16U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(56, ng0);
    t8 = (t0 + 6392);
    t10 = (t0 + 1768U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t8, 17U);
    goto LAB12;

LAB14:    t5 = 0;

LAB17:    if (t5 < 16U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t5 = (t5 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(70, ng0);
    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = (t0 + 6088U);
    t9 = (t0 + 2128U);
    t10 = *((char **)t9);
    t9 = (t0 + 6104U);
    t11 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t14, t8, t7, t10, t9);
    t20 = (t0 + 2248U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t14 + 12U);
    t5 = *((unsigned int *)t22);
    t12 = (1U * t5);
    memcpy(t20, t11, t12);
    goto LAB21;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_trafo_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
