/* Header file for function Storage in Ada language
 * Generated by TASTE on 2022-02-21 16:24:28
 * Context Parameters present : YES
 * Provided interfaces : Get, Put
 * Required interfaces : 
 * User-defined properties for this function:
 * DO NOT EDIT THIS FILE, IT WILL BE OVERWRITTEN DURING THE BUILD
 */

/* The purpose of this file is to provide a wrapper around the user code,
 * with a single interface that is independent of the implementation language
 * of the function. The parameters of each PI are blackboxes encoded
 * in the form specified in the interface view (Native, uPER, or ACN)
*/

#pragma once
#if defined(__unix__) || defined (__MSP430__)
   #include <stdlib.h>
   #include <stdio.h>
#else
   typedef unsigned size_t;
#endif

#ifdef __cplusplus
extern "C" {
#endif


// Function initialization - calls user startup code of all dependent functions
void init_storage(void);

extern void adainit(void);

/* Provided interfaces */
void storage_Get
      (char *OUT_out_data, size_t *OUT_out_data_len);



void storage_Put
      (const char *IN_in_data, size_t IN_in_data_len);


#ifdef __cplusplus
}
#endif
