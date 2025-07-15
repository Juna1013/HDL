module tb_and_gate;
  reg a, b;
  wire y;

  and_gate uut (.a(a), .b(b), .y(y));

  initial begin
    $dumpfile("and_wave.vcd"); // 出力する波形ファイル名
    $dumpvars(0, tb_and_gate); // このモジュールの全信号を記録

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish; // シミュレーション終了
  end
endmodule
