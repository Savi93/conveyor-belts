FUNCTION_BLOCK Delay
VAR_INPUT
	Delay : TIME;
	In : BOOL;
END_VAR
VAR_OUTPUT
	Output : BOOL;
END_VAR
VAR
	TimerOFF : TOF;
END_VAR

TimerOFF(IN := In, PT := Delay);
Output := TimerOFF.Q;