// =================================================
// 1. スポーン中の処理 (移動させない)
// =================================================
// フェーズの切り替えで削除 (これは共通処理として最後でOK)
current_state = ObjBattleManager.current_state;
if (current_state != shooting_state) {
    instance_destroy();
}

if (is_spawning) {
	
	
    // --- 初回フレームのみの処理 ---
    if (count_frame == 0) {
        saved_speed = speed; // 本来のスピードを保存
        speed = 0;           // 移動を停止
    }

    // --- 遅延画像処理 (出現演出) ---
    if (count_frame < delay_frame) {
        if (delay_frame > 0) {
            var _progress = count_frame / delay_frame;
            image_alpha = lerp(0, 1, _progress);
            image_xscale = lerp(3, 1, _progress);
            image_yscale = lerp(3, 1, _progress);
        }
        count_frame++;
    } 
    else {
        // --- スポーン完了時の処理 ---
        is_spawning = false;
        speed = saved_speed; // ★保存していたスピードに戻す（動き出す）
        
        // 念の為、見た目を完全に元に戻す
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
    }
    
    // ★重要: スポーン中はこれ以降の通常処理（移動や反射）を行わない
    exit; 
}

// =================================================
// 2. 通常時の処理 (移動・反射・削除など)
// =================================================

// 加速度と角速度の処理
speed += acceleration;
direction += angular_velocity;

// 時間による自動削除の処理
lifetime_count++;
if (auto_destroy_lifetime_enabled == true) {
    if (lifetime_count > lifetime) {
        instance_destroy();
    }
}

// 画面端にぶつかったら反射する処理
if (reflect_enabled == true) {
    if (reflect_count < reflect_times) {
        // まだ反射回数が残っている場合
        auto_destroy_outroom_enabled = false;
        var _reflected = false;
        
        if ((x <= 0 && reflect_edge[2]) || (x >= BORDER.R && reflect_edge[3])) {
            hspeed *= -1;
            _reflected = true;
        }
        if ((y <= 0 && reflect_edge[0]) || (y >= BORDER.B && reflect_edge[1])) {
            vspeed *= -1;
            _reflected = true;
        }
        
        if (_reflected) {
            reflect_count++;
        }
    } else {
        // 反射回数を使い切ったら、画面外削除を有効にする
        auto_destroy_outroom_enabled = true;
        reflect_enabled = false; // もう反射処理はしない
    }
}

// 画面端で自動削除
if (auto_destroy_outroom_enabled == true) {
    if (x <= -20 || x >= BORDER.R + 20 || y <= -20 || y >= BORDER.B + 20) {
        instance_destroy();
    }
}

