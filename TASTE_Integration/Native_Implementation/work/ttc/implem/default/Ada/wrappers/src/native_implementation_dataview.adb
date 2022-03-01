pragma Style_Checks (Off);
--  Code automatically generated by asn1scc tool
pragma Warnings (Off, "redundant with clause in body");
pragma Warnings (On, "redundant with clause in body");

package body NATIVE_IMPLEMENTATION_DATAVIEW with SPARK_Mode is



pragma Warnings (Off, "condition can only be False if invalid values present");
pragma Warnings (Off, "condition can only be True if invalid values present");


function asn1SccT_UInt16_Equal (val1, val2 :  asn1SccT_UInt16) return Boolean
is

begin
	return val1 = val2;

end asn1SccT_UInt16_Equal;

function asn1SccT_UInt16_Init return asn1SccT_UInt16
is
    val: asn1SccT_UInt16;
begin
    val := 0;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_UInt16_Init;

function asn1SccT_UInt16_IsConstraintValid(val : asn1SccT_UInt16) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := (val <= 65535);
    ret.ErrorCode := (if ret.Success then 0 else ERR_T_UINT16);
    return ret;
end asn1SccT_UInt16_IsConstraintValid;



function asn1SccAnalog_Data_Equal (val1, val2 :  asn1SccAnalog_Data) return Boolean
is

begin
	return val1 = val2;

end asn1SccAnalog_Data_Equal;

function asn1SccAnalog_Data_Init return asn1SccAnalog_Data
is
    val: asn1SccAnalog_Data;
begin
    val := asn1SccT_UInt16_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccAnalog_Data_Init;

function asn1SccAnalog_Data_IsConstraintValid(val : asn1SccAnalog_Data) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt16_IsConstraintValid(val);
    return ret;
end asn1SccAnalog_Data_IsConstraintValid;



function asn1SccAnalog_Data_Table_Equal (val1, val2 :  asn1SccAnalog_Data_Table) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.obc_t = val2.obc_t);

    if ret then
        ret := (val1.obc_v = val2.obc_v);

    end if;
	return ret;

end asn1SccAnalog_Data_Table_Equal;

function asn1SccAnalog_Data_Table_Init return asn1SccAnalog_Data_Table
is
    val: asn1SccAnalog_Data_Table;
begin

    --set obc_t 
    val.obc_t := asn1SccT_UInt16_Init;
    --set obc_v 
    val.obc_v := asn1SccT_UInt16_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccAnalog_Data_Table_Init;

function asn1SccAnalog_Data_Table_IsConstraintValid(val : asn1SccAnalog_Data_Table) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt16_IsConstraintValid(val.obc_t);
    if ret.Success then
        ret := asn1SccT_UInt16_IsConstraintValid(val.obc_v);
    end if;
    return ret;
end asn1SccAnalog_Data_Table_IsConstraintValid;



function asn1SccT_UInt64_Equal (val1, val2 :  asn1SccT_UInt64) return Boolean
is

begin
	return val1 = val2;

end asn1SccT_UInt64_Equal;

function asn1SccT_UInt64_Init return asn1SccT_UInt64
is
    val: asn1SccT_UInt64;
begin
    val := 0;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_UInt64_Init;

function asn1SccT_UInt64_IsConstraintValid(val : asn1SccT_UInt64) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := (val <= 4294967295);
    ret.ErrorCode := (if ret.Success then 0 else ERR_T_UINT64);
    return ret;
end asn1SccT_UInt64_IsConstraintValid;



function asn1SccMission_Time_Equal (val1, val2 :  asn1SccMission_Time) return Boolean
is

begin
	return val1 = val2;

end asn1SccMission_Time_Equal;

function asn1SccMission_Time_Init return asn1SccMission_Time
is
    val: asn1SccMission_Time;
begin
    val := asn1SccT_UInt64_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccMission_Time_Init;

function asn1SccMission_Time_IsConstraintValid(val : asn1SccMission_Time) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val);
    return ret;
end asn1SccMission_Time_IsConstraintValid;



function asn1SccSatellite_State_Equal (val1, val2 :  asn1SccSatellite_State) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.timestamp = val2.timestamp);

    if ret then
        ret := asn1SccAnalog_Data_Table_Equal(val1.data, val2.data);

    end if;
	return ret;

end asn1SccSatellite_State_Equal;

function asn1SccSatellite_State_Init return asn1SccSatellite_State
is
    val: asn1SccSatellite_State;
begin

    --set timestamp 
    val.timestamp := asn1SccT_UInt64_Init;
    --set data 
    val.data := asn1SccAnalog_Data_Table_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccSatellite_State_Init;

function asn1SccSatellite_State_IsConstraintValid(val : asn1SccSatellite_State) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val.timestamp);
    if ret.Success then
        ret := asn1SccAnalog_Data_Table_IsConstraintValid(val.data);
    end if;
    return ret;
end asn1SccSatellite_State_IsConstraintValid;



function asn1SccTM_Hello_Equal (val1, val2 :  asn1SccTM_Hello) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.tm_timestamp = val2.tm_timestamp);

    if ret then
        ret := asn1SccSatellite_State_Equal(val1.tm_payload, val2.tm_payload);

    end if;
	return ret;

end asn1SccTM_Hello_Equal;

function asn1SccTM_Hello_Init return asn1SccTM_Hello
is
    val: asn1SccTM_Hello;
begin

    --set tm_timestamp 
    val.tm_timestamp := asn1SccT_UInt64_Init;
    --set tm_payload 
    val.tm_payload := asn1SccSatellite_State_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Hello_Init;

function asn1SccTM_Hello_IsConstraintValid(val : asn1SccTM_Hello) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val.tm_timestamp);
    if ret.Success then
        ret := asn1SccSatellite_State_IsConstraintValid(val.tm_payload);
    end if;
    return ret;
end asn1SccTM_Hello_IsConstraintValid;



function asn1SccTM_Housekeeping_Contents_Equal (val1, val2 :  asn1SccTM_Housekeeping_Contents) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 4 loop
        --  pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := asn1SccSatellite_State_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;
	return ret;

end asn1SccTM_Housekeeping_Contents_Equal;

function asn1SccTM_Housekeeping_Contents_Init return asn1SccTM_Housekeeping_Contents
is
    val: asn1SccTM_Housekeeping_Contents;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 4 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=4);
        val.Data(i1) := asn1SccSatellite_State_Init;
        i1 := i1 + 1;
    end loop;

	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Housekeeping_Contents_Init;

function asn1SccTM_Housekeeping_Contents_IsConstraintValid(val : asn1SccTM_Housekeeping_Contents) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
begin
    i1 := val.Data'First;
    while ret.Success and i1 <= 4 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 4);
        ret := asn1SccSatellite_State_IsConstraintValid(val.Data(i1));
        i1 := i1+1;
    end loop;
    return ret;
end asn1SccTM_Housekeeping_Contents_IsConstraintValid;



function asn1SccTM_Housekeeping_Equal (val1, val2 :  asn1SccTM_Housekeeping) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.tm_timestamp = val2.tm_timestamp);

    if ret then
        ret := asn1SccTM_Housekeeping_Contents_Equal(val1.tm_payload, val2.tm_payload);

    end if;
	return ret;

end asn1SccTM_Housekeeping_Equal;

function asn1SccTM_Housekeeping_Init return asn1SccTM_Housekeeping
is
    val: asn1SccTM_Housekeeping;
begin

    --set tm_timestamp 
    val.tm_timestamp := asn1SccT_UInt64_Init;
    --set tm_payload 
    val.tm_payload := asn1SccTM_Housekeeping_Contents_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Housekeeping_Init;

function asn1SccTM_Housekeeping_IsConstraintValid(val : asn1SccTM_Housekeeping) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val.tm_timestamp);
    if ret.Success then
        ret := asn1SccTM_Housekeeping_Contents_IsConstraintValid(val.tm_payload);
    end if;
    return ret;
end asn1SccTM_Housekeeping_IsConstraintValid;



function asn1SccT_Float_Equal (val1, val2 :  asn1SccT_Float) return Boolean
is

begin
	return adaasn1rtl.Asn1Real_Equal(val1, val2);

end asn1SccT_Float_Equal;

function asn1SccT_Float_Init return asn1SccT_Float
is
    val: asn1SccT_Float;
begin
    val := 0.0000000000000000000E+000;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_Float_Init;

function asn1SccT_Float_IsConstraintValid(val : asn1SccT_Float) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := ((-3.3999999999999999612E+038 <= val) AND (val <= 3.3999999999999999612E+038));
    ret.ErrorCode := (if ret.Success then 0 else ERR_T_FLOAT);
    return ret;
end asn1SccT_Float_IsConstraintValid;



function asn1SccT_B_b_T_Equal (val1, val2 :  asn1SccT_B_b_T) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 15 loop
        --  pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end asn1SccT_B_b_T_Equal;

function asn1SccT_B_b_T_Init return asn1SccT_B_b_T
is
    val: asn1SccT_B_b_T;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 15 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=15);
        val.Data(i1) := asn1SccT_Float_Init;
        i1 := i1 + 1;
    end loop;

	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_B_b_T_Init;

function asn1SccT_B_b_T_IsConstraintValid(val : asn1SccT_B_b_T) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
begin
    i1 := val.Data'First;
    while ret.Success and i1 <= 15 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 15);
        ret := asn1SccT_Float_IsConstraintValid(val.Data(i1));
        i1 := i1+1;
    end loop;
    return ret;
end asn1SccT_B_b_T_IsConstraintValid;



function asn1SccT_Omega_Equal (val1, val2 :  asn1SccT_Omega) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 3 loop
        --  pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end asn1SccT_Omega_Equal;

function asn1SccT_Omega_Init return asn1SccT_Omega
is
    val: asn1SccT_Omega;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := asn1SccT_Float_Init;
        i1 := i1 + 1;
    end loop;

	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_Omega_Init;

function asn1SccT_Omega_IsConstraintValid(val : asn1SccT_Omega) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
begin
    i1 := val.Data'First;
    while ret.Success and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 3);
        ret := asn1SccT_Float_IsConstraintValid(val.Data(i1));
        i1 := i1+1;
    end loop;
    return ret;
end asn1SccT_Omega_IsConstraintValid;



function asn1SccT_MT_Working_Equal (val1, val2 :  asn1SccT_MT_Working) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 3 loop
        --  pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end asn1SccT_MT_Working_Equal;

function asn1SccT_MT_Working_Init return asn1SccT_MT_Working
is
    val: asn1SccT_MT_Working;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := asn1SccT_Float_Init;
        i1 := i1 + 1;
    end loop;

	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_MT_Working_Init;

function asn1SccT_MT_Working_IsConstraintValid(val : asn1SccT_MT_Working) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
begin
    i1 := val.Data'First;
    while ret.Success and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 3);
        ret := asn1SccT_Float_IsConstraintValid(val.Data(i1));
        i1 := i1+1;
    end loop;
    return ret;
end asn1SccT_MT_Working_IsConstraintValid;



function asn1SccT_Control_Equal (val1, val2 :  asn1SccT_Control) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 3 loop
        --  pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end asn1SccT_Control_Equal;

function asn1SccT_Control_Init return asn1SccT_Control
is
    val: asn1SccT_Control;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := asn1SccT_Float_Init;
        i1 := i1 + 1;
    end loop;

	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccT_Control_Init;

function asn1SccT_Control_IsConstraintValid(val : asn1SccT_Control) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
begin
    i1 := val.Data'First;
    while ret.Success and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 3);
        ret := asn1SccT_Float_IsConstraintValid(val.Data(i1));
        i1 := i1+1;
    end loop;
    return ret;
end asn1SccT_Control_IsConstraintValid;



function asn1SccOperating_Mode_Equal (val1, val2 :  asn1SccOperating_Mode) return Boolean
is

begin
	return val1 = val2;

end asn1SccOperating_Mode_Equal;

function asn1SccOperating_Mode_Init return asn1SccOperating_Mode
is
    val: asn1SccOperating_Mode;
begin
    val := asn1Sccidle;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccOperating_Mode_Init;

function asn1SccOperating_Mode_IsConstraintValid(val : asn1SccOperating_Mode) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := (((val = asn1Sccidle)) OR ((val = asn1Scccoverage)));
    ret.ErrorCode := (if ret.Success then 0 else ERR_OPERATING_MODE);
    return ret;
end asn1SccOperating_Mode_IsConstraintValid;



function asn1SccTM_Mode_Equal (val1, val2 :  asn1SccTM_Mode) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.tm_timestamp = val2.tm_timestamp);

    if ret then
        ret := (val1.tm_payload = val2.tm_payload);

    end if;
	return ret;

end asn1SccTM_Mode_Equal;

function asn1SccTM_Mode_Init return asn1SccTM_Mode
is
    val: asn1SccTM_Mode;
begin

    --set tm_timestamp 
    val.tm_timestamp := asn1SccT_UInt64_Init;
    --set tm_payload 
    val.tm_payload := asn1SccOperating_Mode_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Mode_Init;

function asn1SccTM_Mode_IsConstraintValid(val : asn1SccTM_Mode) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val.tm_timestamp);
    if ret.Success then
        ret := asn1SccOperating_Mode_IsConstraintValid(val.tm_payload);
    end if;
    return ret;
end asn1SccTM_Mode_IsConstraintValid;



function asn1SccTC_Type_Equal (val1, val2 :  asn1SccTC_Type) return Boolean
is

begin
	return val1 = val2;

end asn1SccTC_Type_Equal;

function asn1SccTC_Type_Init return asn1SccTC_Type
is
    val: asn1SccTC_Type;
begin
    val := asn1Sccopen_link;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTC_Type_Init;

function asn1SccTC_Type_IsConstraintValid(val : asn1SccTC_Type) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := (((((val = asn1Sccopen_link)) OR ((val = asn1Sccclose_link)))) OR ((val = asn1Sccrequest_hk)));
    ret.ErrorCode := (if ret.Success then 0 else ERR_TC_TYPE);
    return ret;
end asn1SccTC_Type_IsConstraintValid;



function asn1SccTM_Error_Contents_Equal (val1, val2 :  asn1SccTM_Error_Contents) return Boolean
is

begin
	return val1.Length = val2.Length and then val1.Data(1 .. val1.Length) = val2.Data(1 .. val2.Length);

end asn1SccTM_Error_Contents_Equal;

function asn1SccTM_Error_Contents_Init return asn1SccTM_Error_Contents
is
    val: asn1SccTM_Error_Contents;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 80 loop
        --  commented because it casues this warning    
        --  warning: condition can only be False if invalid values present
        pragma Loop_Invariant (i1 >=1 and i1<=80);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Error_Contents_Init;

function asn1SccTM_Error_Contents_IsConstraintValid(val : asn1SccTM_Error_Contents) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret.Success := (val.Length <= 80);
    ret.ErrorCode := (if ret.Success then 0 else ERR_TM_ERROR_CONTENTS);
    return ret;
end asn1SccTM_Error_Contents_IsConstraintValid;



function asn1SccTM_Error_Equal (val1, val2 :  asn1SccTM_Error) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := (val1.tm_timestamp = val2.tm_timestamp);

    if ret then
        ret := asn1SccTM_Error_Contents_Equal(val1.tm_payload, val2.tm_payload);

    end if;
	return ret;

end asn1SccTM_Error_Equal;

function asn1SccTM_Error_Init return asn1SccTM_Error
is
    val: asn1SccTM_Error;
begin

    --set tm_timestamp 
    val.tm_timestamp := asn1SccT_UInt64_Init;
    --set tm_payload 
    val.tm_payload := asn1SccTM_Error_Contents_Init;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Error_Init;

function asn1SccTM_Error_IsConstraintValid(val : asn1SccTM_Error) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    ret := asn1SccT_UInt64_IsConstraintValid(val.tm_timestamp);
    if ret.Success then
        ret := asn1SccTM_Error_Contents_IsConstraintValid(val.tm_payload);
    end if;
    return ret;
end asn1SccTM_Error_IsConstraintValid;



function asn1SccTM_Type_Equal (val1, val2 :  asn1SccTM_Type) return Boolean
is
    pragma Warnings (Off, "initialization of ret has no effect");
    ret : Boolean := True;
    pragma Warnings (On, "initialization of ret has no effect");

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when hello_PRESENT =>
                ret := asn1SccTM_Hello_Equal(val1.hello, val2.hello);
            when hk_PRESENT =>
                ret := asn1SccTM_Housekeeping_Equal(val1.hk, val2.hk);
            when mode_PRESENT =>
                ret := asn1SccTM_Mode_Equal(val1.mode, val2.mode);
            when err_PRESENT =>
                ret := asn1SccTM_Error_Equal(val1.err, val2.err);
        end case;
    end if;
	return ret;

end asn1SccTM_Type_Equal;

function asn1SccTM_Type_Init return asn1SccTM_Type
is
    val: asn1SccTM_Type;
begin
    --set hello 
    declare
        hello_tmp:asn1SccTM_Hello;
    begin
        hello_tmp := asn1SccTM_Hello_Init;
    	pragma Warnings (Off, "object ""hello_tmp"" is always False at this point");
        val := asn1SccTM_Type'(kind => hello_PRESENT, hello => hello_tmp);
    	pragma Warnings (On, "object ""hello_tmp"" is always False at this point");
    end;
	pragma Warnings (Off, "object ""val"" is always");
    return val;
	pragma Warnings (On, "object ""val"" is always");
end asn1SccTM_Type_Init;

function asn1SccTM_Type_IsConstraintValid(val : asn1SccTM_Type) return adaasn1rtl.ASN1_RESULT
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
begin
    if val.kind = hello_PRESENT then
    	ret := asn1SccTM_Hello_IsConstraintValid(val.hello);
    end if;
    if ret.Success then
        if val.kind = hk_PRESENT then
        	ret := asn1SccTM_Housekeeping_IsConstraintValid(val.hk);
        end if;
        if ret.Success then
            if val.kind = mode_PRESENT then
            	ret := asn1SccTM_Mode_IsConstraintValid(val.mode);
            end if;
            if ret.Success then
                if val.kind = err_PRESENT then
                	ret := asn1SccTM_Error_IsConstraintValid(val.err);
                end if;
            end if;
        end if;
    end if;
    return ret;
end asn1SccTM_Type_IsConstraintValid;


pragma Warnings (On, "condition can only be False if invalid values present");
pragma Warnings (On, "condition can only be True if invalid values present");

 
end NATIVE_IMPLEMENTATION_DATAVIEW;