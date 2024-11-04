module binary_to_gray(
    input [3:0] binary_code,
    output [3:0] gray_code
    );
    wire a,b,c;
    assign a = binary_code[3] ^ binary_code[2];
    assign b = binary_code[2] ^ binary_code[1];
    assign c = binary_code[1] ^ binary_code[0];
    assign gray_code = {binary_code[3] ,a,b,c };
    
endmodule