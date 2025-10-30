if (count_frame <= delay_frame) {
	
	// delay_frameが0だとゼロ除算になるので念のためチェック
	if (delay_frame > 0) {
		// 進捗率を計算 (0.0 から 1.0 の範囲になる)
		var _progress = count_frame / delay_frame;
	
		// lerpを使って各値を補間する
		image_alpha = lerp(0, 1, _progress);
		image_xscale = lerp(3, 1, _progress);
		image_yscale = lerp(3, 1, _progress);
	}
	
	// フレームをカウントアップ
	count_frame++;
}
