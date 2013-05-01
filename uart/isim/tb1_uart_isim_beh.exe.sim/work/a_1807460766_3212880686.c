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
static const char *ng0 = "C:/Users/Usuario UTP/Documents/labElec2/Proyecto3/uart/Carga.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1807460766_3212880686_p_0(char *t0)
{
    char t41[16];
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
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 6282);
    t7 = xsi_mem_cmp(t1, t5, 4U);
    if (t7 == 1)
        goto LAB6;

LAB15:    t8 = (t0 + 6286);
    t10 = xsi_mem_cmp(t8, t5, 4U);
    if (t10 == 1)
        goto LAB7;

LAB16:    t11 = (t0 + 6290);
    t13 = xsi_mem_cmp(t11, t5, 4U);
    if (t13 == 1)
        goto LAB8;

LAB17:    t14 = (t0 + 6294);
    t16 = xsi_mem_cmp(t14, t5, 4U);
    if (t16 == 1)
        goto LAB9;

LAB18:    t17 = (t0 + 6298);
    t19 = xsi_mem_cmp(t17, t5, 4U);
    if (t19 == 1)
        goto LAB10;

LAB19:    t20 = (t0 + 6302);
    t22 = xsi_mem_cmp(t20, t5, 4U);
    if (t22 == 1)
        goto LAB11;

LAB20:    t23 = (t0 + 6306);
    t25 = xsi_mem_cmp(t23, t5, 4U);
    if (t25 == 1)
        goto LAB12;

LAB21:    t26 = (t0 + 6310);
    t28 = xsi_mem_cmp(t26, t5, 4U);
    if (t28 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3872);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 6314);
    t5 = (t0 + 4000);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6236U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t41, t2, t1, 1);
    t6 = (t41 + 12U);
    t32 = *((unsigned int *)t6);
    t33 = (1U * t32);
    t3 = (4U != t33);
    if (t3 == 1)
        goto LAB24;

LAB25:    t8 = (t0 + 4000);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB6:    xsi_set_current_line(26, ng0);
    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (7 - 7);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t36 = (t0 + 3872);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = t35;
    xsi_driver_first_trans_fast_port(t36);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (6 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (5 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (4 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (3 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (2 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (1 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (0 - 7);
    t32 = (t7 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t1 = (t2 + t34);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3872);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB23:;
LAB24:    xsi_size_not_matching(4U, t33, 0);
    goto LAB25;

}


extern void work_a_1807460766_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1807460766_3212880686_p_0};
	xsi_register_didat("work_a_1807460766_3212880686", "isim/tb1_uart_isim_beh.exe.sim/work/a_1807460766_3212880686.didat");
	xsi_register_executes(pe);
}
