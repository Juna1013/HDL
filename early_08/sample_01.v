// NOT回路
module not_gate(
  input a,
  output y
);
  // 出力yは入力aを反転させたもの
  assign y = ~a;
endmodule
