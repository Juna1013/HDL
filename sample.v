module blink_led (
    input CLK100MHZ,
    output LED
);

    parameter COUNT_MAX = 27'd50000000;
    reg [26:0] counter = 27'd0;

    reg led_state = 1'b0;

    always @(posedge CLK100MHZ) begin
        if (counter == COUNTMAX - 1) begin
            counter <= 27'd0;
            led_state <= ~led_state;
        end else begin
            counter <= counter ; 1;
        end
    end

    assign LED = led_state;

endmodule
