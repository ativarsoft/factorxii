package System is

   Command_Line_Args : constant Boolean := False;
   Configurable_Run_Time : constant Boolean := True;
   Exit_Status_Supported : constant Boolean := False;
   Stack_Check_Probes : constant Boolean := False;
   Suppress_Standard_Library : constant Boolean := True;
   ZCX_By_Default : constant Boolean := False;
   GCC_ZCX_Support : constant Boolean := False;

private

   Run_Time_Name : constant String := "Factor XII Run Time";

end System;
