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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Usuario UTP/Documents/labElec2/Proyecto3/uart/serie_paralelo.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2451321828_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    char *t36;
    unsigned char t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 5569);
    t6 = 1;
    if (2U == 2U)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(32, ng0);
    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t10 = (t0 + 5571);
    t13 = xsi_mem_cmp(t10, t11, 4U);
    if (t13 == 1)
        goto LAB15;

LAB24:    t14 = (t0 + 5575);
    t16 = xsi_mem_cmp(t14, t11, 4U);
    if (t16 == 1)
        goto LAB16;

LAB25:    t17 = (t0 + 5579);
    t19 = xsi_mem_cmp(t17, t11, 4U);
    if (t19 == 1)
        goto LAB17;

LAB26:    t20 = (t0 + 5583);
    t22 = xsi_mem_cmp(t20, t11, 4U);
    if (t22 == 1)
        goto LAB18;

LAB27:    t23 = (t0 + 5587);
    t25 = xsi_mem_cmp(t23, t11, 4U);
    if (t25 == 1)
        goto LAB19;

LAB28:    t26 = (t0 + 5591);
    t28 = xsi_mem_cmp(t26, t11, 4U);
    if (t28 == 1)
        goto LAB20;

LAB29:    t29 = (t0 + 5595);
    t31 = xsi_mem_cmp(t29, t11, 4U);
    if (t31 == 1)
        goto LAB21;

LAB30:    t32 = (t0 + 5599);
    t34 = xsi_mem_cmp(t32, t11, 4U);
    if (t34 == 1)
        goto LAB22;

LAB31:
LAB23:    xsi_set_current_line(49, ng0);

LAB14:    goto LAB6;

LAB8:    t7 = 0;

LAB11:    if (t7 < 2U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t8 = (t4 + t7);
    t9 = (t3 + t7);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB9;

LAB13:    t7 = (t7 + 1);
    goto LAB11;

LAB15:    xsi_set_current_line(33, ng0);
    t35 = (t0 + 1032U);
    t36 = *((char **)t35);
    t37 = *((unsigned char *)t36);
    t35 = (t0 + 3392);
    t38 = (t35 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    *((unsigned char *)t41) = t37;
    xsi_driver_first_trans_delta(t35, 0U, 1, 0LL);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB17:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB18:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB19:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB20:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 5U, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB21:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 6U, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB22:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB32:;
}


extern void work_a_2451321828_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2451321828_3212880686_p_0};
	xsi_register_didat("work_a_2451321828_3212880686", "isim/tb1_uart_isim_beh.exe.sim/work/a_2451321828_3212880686.didat");
	xsi_register_executes(pe);
}
