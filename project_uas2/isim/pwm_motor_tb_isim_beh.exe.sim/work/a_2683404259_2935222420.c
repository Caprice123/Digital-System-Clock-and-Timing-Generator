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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/project_uas2/comparator.vhd";



static void work_a_2683404259_2935222420_p_0(char *t0)
{
    int t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t40;
    int t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned char t47;
    unsigned char t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (8U - 1);
    t2 = (t0 + 4605);
    *((int *)t2) = 0;
    t3 = (t0 + 4609);
    *((int *)t3) = t1;
    t4 = 0;
    t5 = t1;

LAB2:    if (t4 <= t5)
        goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t6 = *((unsigned char *)t3);
    t2 = (t0 + 3032);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t15 = (t9 + 56U);
    t18 = *((char **)t15);
    *((unsigned char *)t18) = t6;
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 2952);
    *((int *)t2) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 4605);
    t10 = *((int *)t8);
    t11 = (t10 - 7);
    t12 = (t11 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t8));
    t13 = (1U * t12);
    t14 = (0 + t13);
    t15 = (t9 + t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB12;

LAB13:    t7 = (unsigned char)0;

LAB14:    if (t7 == 1)
        goto LAB9;

LAB10:    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t29 = (t0 + 4605);
    t31 = *((int *)t29);
    t32 = (t31 - 7);
    t33 = (t32 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t29));
    t34 = (1U * t33);
    t35 = (0 + t34);
    t36 = (t30 + t35);
    t37 = *((unsigned char *)t36);
    t38 = (t37 == (unsigned char)3);
    if (t38 == 1)
        goto LAB15;

LAB16:    t28 = (unsigned char)0;

LAB17:    t6 = t28;

LAB11:    if (t6 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(25, ng0);
    goto LAB5;

LAB4:    t2 = (t0 + 4605);
    t4 = *((int *)t2);
    t3 = (t0 + 4609);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB5;

LAB19:    t1 = (t4 + 1);
    t4 = t1;
    t8 = (t0 + 4605);
    *((int *)t8) = t4;
    goto LAB2;

LAB6:    xsi_set_current_line(21, ng0);
    t49 = (t0 + 1648U);
    t50 = *((char **)t49);
    t49 = (t50 + 0);
    *((unsigned char *)t49) = (unsigned char)3;

LAB7:    goto LAB4;

LAB9:    t6 = (unsigned char)1;
    goto LAB11;

LAB12:    t18 = (t0 + 1192U);
    t19 = *((char **)t18);
    t18 = (t0 + 4605);
    t20 = *((int *)t18);
    t21 = (t20 - 7);
    t22 = (t21 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t18));
    t23 = (1U * t22);
    t24 = (0 + t23);
    t25 = (t19 + t24);
    t26 = *((unsigned char *)t25);
    t27 = (t26 == (unsigned char)2);
    t7 = t27;
    goto LAB14;

LAB15:    t39 = (t0 + 1192U);
    t40 = *((char **)t39);
    t39 = (t0 + 4605);
    t41 = *((int *)t39);
    t42 = (t41 - 7);
    t43 = (t42 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t39));
    t44 = (1U * t43);
    t45 = (0 + t44);
    t46 = (t40 + t45);
    t47 = *((unsigned char *)t46);
    t48 = (t47 == (unsigned char)3);
    t28 = t48;
    goto LAB17;

LAB18:    goto LAB7;

}


extern void work_a_2683404259_2935222420_init()
{
	static char *pe[] = {(void *)work_a_2683404259_2935222420_p_0};
	xsi_register_didat("work_a_2683404259_2935222420", "isim/pwm_motor_tb_isim_beh.exe.sim/work/a_2683404259_2935222420.didat");
	xsi_register_executes(pe);
}
