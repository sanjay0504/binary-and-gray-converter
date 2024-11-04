module binary_gray_converters(
	input [3:0] data_in,
	output [3:0] data_out,data_in_led,
	input sel,
	output sel_led,
	output [6:0] hex4,hex5,hex6,hex7
);
	wire [3:0] data1,data2;
	
	binary_to_gray one(.binary_code(data_in),.gray_code(data1));
	gray_to_binary two(.gray_code(data_in),.binary_code(data2));

	assign data_out = (sel) ? data2 : data1;
	
	assign data_in_led = data_in;
	assign sel_led = sel;
	
	wire [3:0] input_ones,input_tens,output_ones,output_tens;
	
	assign input_ones = data_in % 10;
	assign input_tens = data_in / 10;
	assign output_ones = data_out % 10;
	assign output_tens = data_out / 10;
	
	seven_segment ione(.digit(input_ones),.hex(hex6));
	seven_segment iten(.digit(input_tens),.hex(hex7));
	seven_segment oone(.digit(output_ones),.hex(hex4));
	seven_segment oten(.digit(output_tens),.hex(hex5));
	

endmodule