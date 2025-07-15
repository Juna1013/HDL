module or_gate(
  input a,
  input b,
  output y
);
  // 出力yは、入力aとbの論理和
  assign y = a | b;
endmodule
