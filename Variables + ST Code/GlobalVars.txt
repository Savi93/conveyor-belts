{attribute 'qualified_only'}
VAR_GLOBAL
	OverHeating : BOOL := FALSE; //OverHeating condition regarding the motors.
	countLine1 : INT := 0; //Objects present on the line nr. 1
	countLine2 : INT := 0; //Objects present on the line nr. 2
	countLine3 : INT := 0; //Objects present on the line nr. 3
	countTotal : INT := 0; //Total number of objects present.
	
	//States of the system; IDLE is the starting state after powering on
	IdleState : BOOL := TRUE;
	WaitState : BOOL;
	OperativeState : BOOL;
	Emergency_Idle_State : BOOL;
	Emergency_Wait_State : BOOL;
	Emergency_Operative_State : BOOL;
	
	//Retained flags
	Flag_Emergency : BOOL := FALSE; //Flag used to recognize whether the 
	//emergency button or OverHeating is active. 
	Flag_Stop : BOOL := FALSE; //Flag used to know whether the stop 
	//button was pressed in the current cycle
END_VAR