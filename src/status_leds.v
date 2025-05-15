module status_leds
(
    input qsfp0_up, qsfp1_up,

    input active0, active1,

    output[2:0] qsfp0_led, qsfp1_led
);

assign qsfp0_led = {~qsfp0_up, qsfp0_up, active0};
assign qsfp1_led = {~qsfp1_up, qsfp1_up, active1};

endmodule