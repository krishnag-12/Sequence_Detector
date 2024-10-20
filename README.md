# 1094_Sequence_Detector
# Purpose:

Detects the sequence "1094" within a stream of 4-bit numbers.
# Functionality:

Takes a 4-bit input number (number) and a clock signal (clock).
Implements a state machine with four states: ST_ONE, ST_ZERO, ST_NINE, and ST_FOUR.
The initial state is ST_ONE.
The state machine transitions based on the current state and the input number.
If the sequence "1094" is detected, the output pattern is set to 1; otherwise, it remains 0.
# Code Breakdown:

# Module Declaration:
Defines the module name sequence_detector.
Specifies the input ports:
clock: Clock signal.
number[3:0]: 4-bit input number.
Specifies the output port:
pattern: Output signal indicating sequence detection.
# State Machine Parameters:
Defines the state machine parameters using the parameter keyword.
# State Register:
Declares a 2-bit register state to store the current state.
# Initial Block:
Initializes the output pattern to 0.
# Always Block:
Executes on the rising edge of the clock.
Implements the state machine logic:
Resets the output pattern to 0.
Uses a case statement to handle different states:
ST_ONE: If the input number is 1, transitions to ST_ZERO; otherwise, remains in ST_ONE.
ST_ZERO: If the input number is 0, transitions to ST_NINE; otherwise, returns to ST_ONE.
ST_NINE: If the input number is 9, transitions to ST_FOUR; otherwise, returns to ST_ONE.
ST_FOUR: If the input number is 4, sets the output pattern to 1 and returns to ST_ONE; otherwise, returns to ST_ONE.
# Key Points:

The code effectively implements a sequential logic circuit using a state machine.
The state machine transitions are clearly defined based on the input number and the current state.
The output pattern is set to 1 only when the complete sequence "1094" is detected.
The code is well-structured and easy to understand, with clear variable names and comments.
# Additional Considerations:

The code can be extended to detect other sequences by modifying the state machine transitions and output conditions.
For more complex sequences, the state machine might require more states and more complex logic.
