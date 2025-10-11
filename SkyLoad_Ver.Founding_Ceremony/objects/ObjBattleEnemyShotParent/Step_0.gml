// 加速度と角速度の処理
speed += acceleration;
direction += angular_velocity;

// 時間による自動削除の処理
lifetime_count++;

// 自動削除が有効、かつスポーンが終わっている場合のみ、削除チェックを行う
if (auto_destory_lifetime_enabled == true && is_spawning == false)
{
	if (lifetime_count > lifetime)
	{
		instance_destroy();
	}
}
// 画面端にぶつかったら反射する処理
if (reflect_enabled == true && reflect_count < reflect_times)
{
	auto_destroy_outroom_enabled = false;
	
	if ((x <= 68 && reflect_edge[2]) || (x >= 534 && reflect_edge[3])) {
	    hspeed *= -1; // X方向の速度を反転させる
		reflect_count += 1;
	}

	if ((y <= 37 && reflect_edge[0])|| (y >= 540 && reflect_edge[1])) {
	    vspeed *= -1; // Y方向の速度を反転させる
		reflect_count += 1;
	}
	
}else if(reflect_enabled == true && reflect_count >= reflect_times){
	auto_destroy_outroom_enabled = true;
}

//遅延画像処理
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
	
	if(image_alpha == 1){
		is_spawning = false;
	}
	// フレームをカウントアップ
	count_frame++;
}

//フェーズの切り替えで削除
current_state = ObjBattleManager.current_state;
if!(current_state == shooting_state){
	instance_destroy()
}



