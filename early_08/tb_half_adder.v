// テストベンチ
module tb_half_adder;
  reg a, b;
  wire sum, cout;

  // 検証したい回路（half_adder）を呼び出す
  half_adder uut (.a(a), .b(b), .sum(sum), .cout(cout));

  // 検証パターン
  initial begin
    // 0 + 0 をテスト
    a=0; b=0; #10;
    $display("a=%b, b=%b -> sum=%b, cout=%b", a, b, sum, cout);

    // 0 + 1 をテスト
    a=0; b=1; #10;
    $display("a=%b, b=%b -> sum=%b, cout=%b", a, b, sum, cout);

    // 1 + 0 をテスト
    a=1; b=0; #10;
    $display("a=%b, b=%b -> sum=%b, cout=%b", a, b, sum, cout);

    // 1 + 1 をテスト
    a=1; b=1; #10;
    $display("a=%b, b=%b -> sum=%b, cout=%b", a, b, sum, cout);
  end
endmodule
