if (!surface_exists(application_surface)) exit;

var _current_w = window_get_width();
var _current_h = window_get_height();

switch (global.current_mode) {
    case MODE_TITLE:
    case MODE_RPG:
        // ... (ここは変更なし) ...
        gpu_set_texfilter(false); // RPG/Titleは補間オフと仮定
        draw_surface_stretched(application_surface, 0, 0, _current_w, _current_h);
        break;

    case MODE_STG:
        // === STGモード ===
        
        // 1. 背景塗りつぶし (画面全体)
        draw_set_color(make_color_rgb(175, 220, 255));
        draw_rectangle(0, 0, _current_w, _current_h, false);

        // 2. STG画面の計算
        var _scale = _current_h / 768; 
        var _draw_w = global.stg_w * _scale;
        var _draw_h = global.stg_h * _scale;
        
        // --- ★変更点：ここから ---
        // X座標を「(ウィンドウ幅 - STG画面幅) / 2」で計算し、中央揃えにする
        var _draw_x = (_current_w - _draw_w) / 2; 
        // --- ★変更点：ここまで ---
        
        var _draw_y = (_current_h - _draw_h) / 2; // Yは元々中央揃え

        // 3. STG画面の描画 (補間オフ)
        gpu_set_texfilter(false);
        draw_surface_stretched(application_surface, _draw_x, _draw_y, _draw_w, _draw_h);

        // 4. 枠線描画
        draw_set_color(c_white);
        draw_rectangle(_draw_x - 2*_scale, _draw_y - 2*_scale, _draw_x + _draw_w + 1*_scale, _draw_y + _draw_h + 1*_scale, true);
		
		// 5. 左右のUIを描画 (補間オン)
		gpu_set_texfilter(true);
        
		// --- 右側のUI (ロゴなど) ---
		// 座標基準: STG画面の右端 + 余白
		var _logo_x = _draw_x + _draw_w + (50 * _scale); // STG画面の右側から50px(スケール考慮)
		var _logo_y = 100 * _scale;
		// draw_sprite_ext(spr_Logo, 0, _logo_x, _logo_y, _scale, _scale, 0, c_white, 1);

		// --- 左側のUI (ステータスなど) ---
		// 座標基準: STG画面の左端 - 余白
		draw_set_font(Fnt_fnt_jp);
		draw_set_halign(fa_right); // 右揃えにするとキレイに収まる
		var _status_x = _draw_x - (50 * _scale); // STG画面の左側から50px(スケール考慮)
		var _status_y = 100 * _scale;
		draw_text_transformed(_status_x, _status_y, "SCORE: 1000", _scale, _scale, 0);
	
        
        // 元に戻す
        draw_set_halign(fa_left); 
        gpu_set_texfilter(false); 
        break;
}