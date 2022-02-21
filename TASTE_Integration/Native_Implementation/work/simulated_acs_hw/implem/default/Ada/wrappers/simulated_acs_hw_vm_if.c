/* Body file for function Simulated_ACS_HW
 * Generated by TASTE on 2022-02-21 16:24:28
 * Provided interfaces : Read_MGM, control_MGT
 * Required interfaces : 
 * User-defined properties for this function:
 * Timers              : 
 */
#include "simulated_acs_hw_vm_if.h"
#include "C_ASN1_Types.h"
#ifdef __unix__
   #include <stdio.h>
#endif



extern void adainit(void);

unsigned simulated_acs_hw_initialized = 0;
void init_simulated_acs_hw(void)
{
   if (0 == simulated_acs_hw_initialized) {
      simulated_acs_hw_initialized = 1;
      // Initialize Ada runtime to call elaboration functions
      adainit();
#ifdef __unix__
      puts ("[TASTE] Initialization completed for function Simulated_ACS_HW");
#endif
      simulated_acs_hw_initialized = 2;
   }
}
void simulated_acs_hw_Read_MGM
      (char *OUT_bbt, size_t *OUT_bbt_len)

{

   //  Declare user code function as external (it may not have a .h if it is in Ada)
   extern void simulated_acs_hw_PI_Read_MGM
      (asn1SccT_B_b_T *);




   // Call user code
   simulated_acs_hw_PI_Read_MGM ((asn1SccT_B_b_T *)OUT_bbt);

}


void simulated_acs_hw_control_MGT
      (const char *IN_control, size_t IN_control_len)

{

   //  Declare user code function as external (it may not have a .h if it is in Ada)
   extern void simulated_acs_hw_PI_control_MGT
      (const asn1SccT_Control *);




   // Call user code
   simulated_acs_hw_PI_control_MGT ((asn1SccT_Control *)IN_control);

}

