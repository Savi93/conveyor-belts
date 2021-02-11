FUNCTION_BLOCK ObjectCounter
VAR
	CTLine1 : CTUD;
	CTLine2 : CTUD;
	CTLine3 : CTUD;
	
	Fall_1 : F_TRIG;
	Fall_2 : F_TRIG;
	Fall_3 : F_TRIG;
END_VAR

//Recognition of the falling edges of the 3 proximity sensor.
Fall_1(CLK := IOVars.Photocell1);
Fall_2(CLK := IOVars.Photocell2);
Fall_3(CLK := IOVars.Photocell3);
 
CTLine1(CU := (IOVars.InductiveSensor AND NOT(GlobalVars.Flag_Stop)), CD := Fall_1.Q);

IF(GlobalVars.countLine1 > 0) THEN;
	CTLine2(CU := Fall_1.Q, CD := Fall_2.Q);
ELSE;
	CTLine2(CU := FALSE, CD := Fall_2.Q);
END_IF;

IF(GlobalVars.countLine2 > 0) THEN;
	CTLine3(CU := Fall_2.Q, CD := Fall_3.Q);
ELSE;
	CTLine3(CU := FALSE, CD := Fall_3.Q);
END_IF;

GlobalVars.countLine1 := CTLine1.CV;
GlobalVars.countLine2 := CTLine2.CV;
GlobalVars.countLine3 := CTLine3.CV;

GlobalVars.countTotal := GlobalVars.countLine1 + GlobalVars.countLine2 + GlobalVars.countLine3;