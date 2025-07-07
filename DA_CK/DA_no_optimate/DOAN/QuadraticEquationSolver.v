module QuadraticEquationSolver (
    input wire signed [3:0] a,       // Hệ số a
    input wire signed [3:0] b,       // Hệ số b
    input wire signed [3:0] c,       // Hệ số c
    output reg signed [7:0] x1,      // Nghiệm thứ nhất
    output reg signed [7:0] x2,      // Nghiệm thứ hai
    output reg no_real_solution      // Cờ báo không có nghiệm thực
);
    reg signed [7:0] delta;          // Giá trị delta (b^2 - 4ac)
    reg signed [7:0] sqrt_delta;     // Căn bậc hai của delta

    // Hàm tính căn bậc hai (sqrt) đơn giản bằng cách sử dụng vòng lặp
    function signed [7:0] sqrt;
        input signed [7:0] value;
        integer i;
        begin
            sqrt = 0;
            for (i = 0; i < 16; i = i + 1) begin
                if (sqrt * sqrt <= value)
                    sqrt = sqrt + 1;
                else
                    sqrt = sqrt - 1;
            end
        end
    endfunction

    always @(*) begin
        // Tính delta = b^2 - 4ac
        delta = b * b - 4 * a * c;

        if (delta < 0) begin
            // Nếu delta < 0, không có nghiệm thực
            no_real_solution = 1;
            x1 = 0;
            x2 = 0;
        end else begin
            // Nếu delta >= 0, có nghiệm thực
            no_real_solution = 0;
            sqrt_delta = sqrt(delta);

            // Tính nghiệm x1 và x2
            x1 = (-b + sqrt_delta) / (2 * a);
            x2 = (-b - sqrt_delta) / (2 * a);
        end
    end
endmodule
