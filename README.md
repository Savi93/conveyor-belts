# Conveyor belts automation with the IEC61131-3 standard

The task is to design and implement, using the CodeSys IDE, the control system of the three sections conveyor belt illustrated in Figure 1. The conveyor belts will be moved by three electrical motors M1, M2 and M3, each of them embedding a thermostat (temperature-controlled switch) that can be used to detect overheating (TS1, TS2, TS3). 
The presence of objects is detected by photocells S1, S2 and S3, and inductive sensor S4. 
The human-machine interface consists of 3 pushbuttons, start, SB1, stop, SB2, and reset, RB, one emergency button, EB, and two lamps, L1 and L2, for signalling operations.
All the motors M1, M2 and M3 are started when a certain sensor detects an object. For M1 this sensor is S4, for M2 and M3 they are S1 and S2. Each belt must stop if there are no packets on it (condition which can be deduced using S1, S2 and S3, respectively). 
The stop button lets the machine to complete the delivery operation of packets already on the belt. 
When the machine is in operation, the L2 light must be constantly turned on. 
In case of problem with any of the motor, all belts are stopped and the alarm light L1 blinks. Also, when the emergency button is pressed, all the motors are stopped and L1 is turned on constantly. 
The reset button is supposed to reset the alarms and the machine internal state.

### Technologies used: IEC61131-3 (Ladder Diagram, Structured Text), CodeSys, PLC
