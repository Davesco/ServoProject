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
static const char *ng0 = "C:/Users/Usuario UTP/Documents/labElec2/Proyecto3/uart/CuentaBits.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1369148615_2531448762_p_0(char *t0)
{
    char t11[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3520);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3392);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 5524U);
    t7 = (t0 + 5560);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t7, t11);
    if (t16 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5524U);
    t5 = (t0 + 5568);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);
    t13 = (t0 + 3392);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5564);
    t5 = (t0 + 3456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB11;

LAB13:    xsi_set_current_line(54, ng0);
    t8 = (t0 + 1832U);
    t12 = *((char **)t8);
    t8 = (t0 + 5524U);
    t13 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t12, t8, 1);
    t17 = (t21 + 12U);
    t15 = *((unsigned int *)t17);
    t22 = (1U * t15);
    t4 = (4U != t22);
    if (t4 == 1)
        goto LAB15;

LAB16:    t18 = (t0 + 3456);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t13, 4U);
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB15:    xsi_size_not_matching(4U, t22, 0);
    goto LAB16;

}


extern void work_a_1369148615_2531448762_init()
{
	static char *pe[] = {(void *)work_a_1369148615_2531448762_p_0};
	xsi_register_didat("work_a_1369148615_2531448762", "isim/tb1_uart_isim_beh.exe.sim/work/a_1369148615_2531448762.didat");
	xsi_register_executes(pe);
}
