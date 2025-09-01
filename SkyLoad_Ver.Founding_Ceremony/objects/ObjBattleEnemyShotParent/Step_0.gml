// 加速度と角速度の処理
speed += acceleration;
direction += angular_velocity;

// 時間による自動削除の処理
if (auto_destory_lifetime_enabled == true)
{
	//　自動削除が有効ならばカウントを増やす
	lifetime_count += 1;
	
	if (lifetime_count >= lifetime)
	{
		// カウントが指定されたライフタイムを上回れば削除
		instance_destroy();
	}
}

// 画面端にぶつかったら反射する処理
if (reflect_enabled == true && reflect_count < reflect_times)
{
	if ((x <= 0 && reflect_edge[2]) || (x >= room_width && reflect_edge[3])) {
	    hspeed *= -1; // X方向の速度を反転させる
		reflect_count += 1;
	}

	if ((y <= 0 && reflect_edge[0])|| (y >= room_height && reflect_edge[1])) {
	    vspeed *= -1; // Y方向の速度を反転させる
		reflect_count += 1;
	}
	
}

//フェーズの切り替えで削除
current_state = ObjBattleManager.current_state;
if!(current_state == shooting_state){
	instance_destroy()
}


