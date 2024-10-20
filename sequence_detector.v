/*
# Team ID:          1926
# Theme:            EcoMender Bot
# Author List:      Pavan Pai, Nirvara Reddy
# Filename:         sequence_detector
# File Description: Verilog code for Sequence Detector
# Global variables: None
*/

// Verilog code for Sequence Detector
module sequence_detector (
    input clock,
    input [3:0] number, // Define input ports clock, number
    output reg pattern // Define output port patter
);

// Define your State Machine Parameters Here
parameter ST_ONE = 0, ST_ZERO = 1, ST_NINE = 2, ST_FOUR = 3;

// defining 2-bit register
reg [1:0] state = ST_ONE;

initial begin // define initial state output register
    pattern = 0;
end

always @(posedge clock) begin
    /*
    Purpose:
    ---
    This block implements the state machine logic for detecting the sequence 1094.
    */
    pattern = 0;
    case (state)
        ST_ONE: begin
            if (number == 1) begin
                state = ST_ZERO;
            end else begin
                state = ST_ONE;
            end
        end
        ST_ZERO: begin
            if (number == 0) begin
                state = ST_NINE;
            end else begin
                state = ST_ONE;
            end
        end
        ST_NINE: begin
            if (number == 9) begin
                state = ST_FOUR;
            end else begin
                state = ST_ONE;
            end
        end
        ST_FOUR: begin
            if (number == 4) begin
                pattern = 1;
                state = ST_ONE;
            end else begin
                state = ST_ONE;
            end
        end
    endcase
end

endmodule
