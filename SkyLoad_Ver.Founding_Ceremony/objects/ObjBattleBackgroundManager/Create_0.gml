// 描画モードの定義
#macro BG_MODE_NONE 0
#macro BG_MODE_SKY 1 // 空スクロール

current_mode = BG_MODE_SKY; // デフォルトは何も描画しない

// 2Dスクロール速度 (1フレームあたり何ピクセル動くか)
scroll_speed = 1.0; 
scroll_y_pos = 0; // 現在のスクロールY座標

// 描画順を他のオブジェクトより奥にする
depth = 0; 

// 背景スプライトの情報を取得 (ご自身のスプライト名に変更してください)
sprite_bg = Background_Sky; 
bg_w = sprite_get_width(sprite_bg);
bg_h = sprite_get_height(sprite_bg);