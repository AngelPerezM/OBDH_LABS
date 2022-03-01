/* Body file for function ACS_Algorithm
 * Generated by TASTE on 2022-03-01 18:05:09
 * Provided interfaces : Step
 * Required interfaces : 
 * User-defined properties for this function:
 * Timers              : 
 */
#include "acs_algorithm_vm_if.h"
#include "C_ASN1_Types.h"
#ifdef __unix__
   #include <stdio.h>
#endif




unsigned acs_algorithm_initialized = 0;
void init_acs_algorithm(void)
{
   if (0 == acs_algorithm_initialized) {
      acs_algorithm_initialized = 1;
#ifdef __unix__
      puts ("[TASTE] Initialization completed for function ACS_Algorithm");
#endif
      acs_algorithm_initialized = 2;
   }
}
void acs_algorithm_Step
      (const char *IN_bbt, size_t IN_bbt_len,
       const char *IN_omega, size_t IN_omega_len,
       const char *IN_k_pb, size_t IN_k_pb_len,
       const char *IN_k_pe, size_t IN_k_pe_len,
       const char *IN_m_m, size_t IN_m_m_len,
       const char *IN_mt_working, size_t IN_mt_working_len,
       char *OUT_control, size_t *OUT_control_len)

{

   //  Declare user code function as external (it may not have a .h if it is in Ada)
   extern void acs_algorithm_PI_Step
      (const asn1SccT_B_b_T *,
       const asn1SccT_Omega *,
       const asn1SccT_Float *,
       const asn1SccT_Float *,
       const asn1SccT_Float *,
       const asn1SccT_MT_Working *,
       asn1SccT_Control *);




   // Call user code
   acs_algorithm_PI_Step ((asn1SccT_B_b_T *)IN_bbt, (asn1SccT_Omega *)IN_omega, (asn1SccT_Float *)IN_k_pb, (asn1SccT_Float *)IN_k_pe, (asn1SccT_Float *)IN_m_m, (asn1SccT_MT_Working *)IN_mt_working, (asn1SccT_Control *)OUT_control);

}

