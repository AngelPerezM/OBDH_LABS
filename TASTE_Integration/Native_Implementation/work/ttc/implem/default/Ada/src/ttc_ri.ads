--  DO NOT EDIT THIS FILE, IT WILL BE OVERWRITTEN DURING THE BUILD
--  Generated by TASTE (Kazoo template templates/skeletons/ada-ri-source/function.tmplt)
--  2022-03-01 18:05:09
with Native_Implementation_Dataview; use Native_Implementation_Dataview;
with Taste_Basictypes;               use Taste_Basictypes;
with adaasn1rtl;

package Ttc_RI is

   procedure Current_Mode (Current : out asn1SccOperating_Mode);
   
   
   procedure Get (Out_Data : out asn1SccSatellite_State);
   
   
   procedure Last (Out_Data : out asn1SccSatellite_State);
   
   
   procedure Process_Tc (Tc : in out asn1SccTc_Type);
   
   
   procedure Tm (Telemetry : in out asn1SccTm_Type);

   procedure Check_Queue (Res : out adaasn1rtl.Asn1Boolean)
      with Import, Convention => C, Link_Name => "ttc_check_queue";
end Ttc_RI;
