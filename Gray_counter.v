module binary_counter(input clk, input rst, output reg [2:0]bin_counter_output);



always @(posedge clk or posedge rst) begin

    if (rst) begin
    bin_counter_output <= 3'b000;
    end

    else begin
        bin_counter_output <= bin_counter_output + 1'b1;
    end

end

endmodule

module Conversion(input[2:0]c, output[2:0]co);


assign co[2] = c[2];
assign co[1] = c[2]^c[1];
assign co[0] = c[1]^c[0];

endmodule

module Gray_counter(input clk, input rst, output[2:0]Gray_output);

wire[2:0] wire1;

binary_counter b1 (.clk(clk), .rst(rst), .bin_counter_output(wire1));
Conversion c1 (.c(wire1), .co(Gray_output));


endmodule