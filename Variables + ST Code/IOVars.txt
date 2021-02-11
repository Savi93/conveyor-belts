{attribute 'qualified_only'}
VAR_GLOBAL
	//Digital inputs controlled by user
	StartButton : BOOL := FALSE;
	StopButton : BOOL := FALSE;
	ResetButton : BOOL := FALSE;
	EmergencySwitch : BOOL := TRUE;
	
	//Sensing units (digital inputs)
	InductiveSensor : BOOL := FALSE;
	Photocell1 : BOOL := FALSE;
	Photocell2 : BOOL := FALSE;
	Photocell3 : BOOL := FALSE;	
	TemperatureSwitch1 : BOOL := FALSE;
	TemperatureSwitch2 : BOOL := FALSE;
	TemperatureSwitch3 : BOOL := FALSE;
	
	//Digital outputs
	Light_Emergency : BOOL := FALSE;
	Light_OK : BOOL := FALSE;
	Motor1 : BOOL := FALSE;
	Motor2 : BOOL := FALSE;
	Motor3 : BOOL := FALSE;
END_VAR