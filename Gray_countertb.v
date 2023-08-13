
module Gray_countertb;

    reg clk;
    reg rst;
    wire[2:0]Gray_output;

    Gray_counter U0 ( .clk(clk), .rst(rst), .Gray_output(Gray_output));



initial begin
    clk = 0;
    forever #0.5 clk =~clk;

end

initial begin
   rst = 1'b1;
	#1;
    rst = 1'b0;
    #500;
	  rst = 1'b1;
	  #50;
	  rst = 1'b0;
end

 
initial begin
        #1000;
        $finish;
end
endmodule