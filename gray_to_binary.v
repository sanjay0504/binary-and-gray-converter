module gray_to_binary(
    input [3:0] gray_code,
    output [3:0] binary_code
    );
    wire a,b,c;
    assign a = gray_code[2] ^ binary_code[3];
    assign b = gray_code[1] ^ binary_code[2];
    assign c = gray_code[0] ^ binary_code[1];
    assign binary_code = {gray_code[3],a,b,c };
endmodule