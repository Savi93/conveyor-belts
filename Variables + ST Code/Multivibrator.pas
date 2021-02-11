FUNCTION_BLOCK Multivibrator
VAR_INPUT
	TimeHigh : TIME;
	TimeLow : TIME;
END_VAR
VAR_OUTPUT
	Output : BOOL;
END_VAR
VAR
	TON1: TON;
	TON2 : TON;
	HighState : BOOL := FALSE;
	LowState : BOOL := TRUE;
END_VAR

TON1(IN := LowState, PT := TimeLow);
TON2(IN := HighState, PT := TimeHigh);

LowState R= TON1.Q;
HighState S= TON1.Q;

HighState R= TON2.Q;
LowState S= TON2.Q;

Output := HighState;