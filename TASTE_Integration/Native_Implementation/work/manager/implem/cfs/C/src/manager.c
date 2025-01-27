/*****************************************************************************
**                                                                          **
**          Copyright (C) 2022 Universidad Politécnica de Madrid            **
**                                                                          **
** This is free software;  you can redistribute it  and/or modify it  under **
** terms of the  GNU General Public License as published  by the Free Soft- **
** ware  Foundation;  either version 3,  or (at your option) any later ver- **
** sion.  This software is distributed in the hope  that it will be useful, **
** but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- **
** TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public **
** License for  more details.  You should have  received  a copy of the GNU **
** General  Public  License  distributed  with  this  software;   see  file **
** COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy **
** of the license.                                                          **
**                                                                          **
*****************************************************************************/

/* Body file for function Manager
 * Generated by TASTE (kazoo/templates/skeletons/c-body/function.tmplt)
 * You can edit this file, it will not be overwritten

    !! IMPORTANT                                                        !!
    !! When you modify your design (interface view), you must update    !!
    !! the procedures corresponding to the provided interfaces in this  !!
    !! file. The up-to-date signatures can be found in the .ads file.   !!
*/

#include "manager.h"

#include <stdio.h>
#include <string.h> // strlen, memcpy

/*******************************************************************************
 * Local variables, constants, and private functions
 ******************************************************************************/

volatile static asn1SccOperating_Mode current_mode = asn1SccOperating_Mode_idle;

static asn1SccT_UInt32 coverage_window_length_ms = 20000; // 20 seconds

static void send_tm_error (char * error_msg) {
    asn1SccTM_Error_Contents tm;

    const size_t error_msg_size = strlen(error_msg);
    memcpy(tm.arr, error_msg, error_msg_size);
    tm.nCount = error_msg_size;

    manager_RI_TM_Error(&tm);
}

/*******************************************************************************
 * Provided interfaces implementations:
 ******************************************************************************/

void manager_startup(void) {
    puts ("[Manager] Started");
}

void manager_PI_Current_Mode (asn1SccOperating_Mode *OUT_current) {
    *OUT_current = current_mode;
}

void manager_PI_Process_TC (const asn1SccTC_Type *IN_tc) {
    switch (*IN_tc) {
        case asn1SccTC_Type_open_link:
            if (current_mode != asn1SccOperating_Mode_coverage) {                
                current_mode = asn1SccOperating_Mode_coverage;
                manager_RI_SET_Coverage_Timer(&coverage_window_length_ms);
                manager_RI_TM_Mode(&current_mode);
            } else {
                send_tm_error("Open_Link TC is only available in idle mode");
            }
            break;

        case asn1SccTC_Type_close_link:
            if (current_mode != asn1SccOperating_Mode_idle) {                
                current_mode = asn1SccOperating_Mode_idle;
                manager_RI_RESET_Coverage_Timer();
                manager_RI_TM_Mode(&current_mode);
            }
            break;

        case asn1SccTC_Type_request_hk:
            if (current_mode == asn1SccOperating_Mode_coverage) {
                manager_RI_HK_Task();
            } else {
                send_tm_error("Request_HK TC is only available in coverage mode");
            }
            break;

        default:
            send_tm_error("Bad TC");
            break;
    }
}

/** This function is called when the timer Coverage_Timer expires
 */
void manager_PI_Coverage_Timer(void) {
    current_mode = asn1SccOperating_Mode_idle;
    manager_RI_TM_Mode(&current_mode);
}

