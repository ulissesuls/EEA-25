module blink (
    input CLK,
    output LED
);

reg [25:0] counter;

assign LED = ~counter[21];
//assign LED = ~counter[23];

initial begin
    counter = 0;
end

always @(posedge CLK) begin
    counter <= counter + 1;
end

endmodule