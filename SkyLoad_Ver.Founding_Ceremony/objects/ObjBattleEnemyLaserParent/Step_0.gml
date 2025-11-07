image_yscale = yscale;

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
	reflect_enabled = false;
}

// 画面端で自動削除
if (reflect_enabled == false && auto_destroy_outroom_enabled == true)
{
	
	if (x <= 68 || x >= 534) {
	    instance_destroy()
		
	}

	if (y <= 37 || y >= 540) {
	    instance_destroy()
		
	}
	
}else if(reflect_enabled == true && reflect_count >= reflect_times){
	auto_destroy_outroom_enabled = true;
}

//フェーズの切り替えで削除
current_state = ObjBattleManager.current_state;
if!(current_state == shooting_state){
	instance_destroy()
}



// どの状態かによって処理を分ける
switch (state) {

    // ------------------------------------
    // ■ State 0: 「チャージ中」の処理
    // ------------------------------------
    case 0:
        // 1. レーザーを伸ばす処理
        image_xscale += charge_speed;
		

        // 2. 既定の長さになったか判定
        if (image_xscale >= target_xscale) {
            image_xscale = target_xscale; // 既定の長さに固定
            
            // ▼▼▼ 発射！ ▼▼▼
            state = 1; // 状態を「発射済み」に変更
            
            // GameMaker標準の「speed」変数に速度を設定
            // これで 'image_angle' の方向に自動で前進し始めます
            speed = move_speed;
        }
        break;

    // ------------------------------------
    // ■ State 1: 「発射済み」の処理
    // ------------------------------------
    case 1:
        // この状態では、何もしなくてOK
        // (speed に従って自動で前進する)
		//instance_destroy(effect)
        break;
}

image_angle = direction
