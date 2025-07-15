module half_adder(
  input a, b, // 1ビットの入力2つ
  output sum, cout // 和（sum）と桁上がり（cout）
);
  // 内部配線用のワイヤーを宣言
  wire w1, w2, w3;

  // 部品を呼び出して配線していく
  // AとBのORをとる
  or_gate or1 (.a(a), .b(b), .y(w1));

  // AとBのANDをとる（Carryはこれで完成）
  and_gate and1 (.a(a, .b(b), .y(w2)));

  // ANDの結果をNOTで反転する
  not_gate not1 (.a(w2), .y(w3));

  // ORの結果と反転したANDの結果をANDする（Sumがこれで完成）
  and_gate and2 (.a(w1), .b(w3), .y(sum));

endmodule
