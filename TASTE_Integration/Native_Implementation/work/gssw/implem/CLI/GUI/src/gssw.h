
/* Header file for function GSSW in GUI language
 * Generated by TASTE on 2022-03-01 01:08:52
 * Context Parameters present : NO
 * Provided interfaces : Poll, TM
 * Required interfaces : TC
 * User-defined properties for this function:
 * DO NOT EDIT THIS FILE, IT WILL BE OVERWRITTEN DURING THE BUILD
 */

#pragma once

#include "dataview-uniq.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __unix__
   #include <stdlib.h>
   #include <stdio.h>
#endif

void gssw_startup(void);

/* Provided interfaces */
void gssw_PI_Poll( void );


void gssw_PI_TM( const asn1SccTM_Type * );

/* Required interfaces */
extern void gssw_RI_TC( const asn1SccTC_Type * );


#ifdef __cplusplus
}
#endif
