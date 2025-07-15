module blink_led (
    input CLK100MHZ, // FPGAボードのクロックシステム入力（ここでは100MHzを想定）
    output LED // 点滅させるLED出力
);

    // カウンタビット幅を定義
    // 100MHzの場合: 100, 000, 000を数えるので、27ビット必要
    parameter COUNT_MAX = 27'd50000000; // 100MHzクロックで1秒の半分（50Mカウント）を数える（LEDのON/OFF切り替え用）
    reg [26:0] counter = 27'd0; // 27ビットのカウンタレジスタ

    // LEDのON/OFF状態を保持するレジスタ
    reg led_state = 1'b0; // 0: OFF, 1: ON

    // クロックの立ち上がりエッジごとにカウンタをインクリメント
    always @(posedge CLK100MHZ) begin
        if (counter == COUNTMAX - 1) begin // カウンタが最大値-1に達したら
            counter <= 27'd0; // カウンタをリセット
            led_state <= ~led_state; // LEDの状態を反転
        end else begin
            counter <= counter + 1; // カウンタをインクリメント
        end
    end

    // LED出力にled_stateを接続
    assign LED = led_state;

endmodule
