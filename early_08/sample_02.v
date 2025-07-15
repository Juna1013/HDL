// AND回路
module and_gate(
  input a,
  input b,
  output y
);
  // 出力yは、入力aとbの論理積
  assign y = a & b;
endmodule
