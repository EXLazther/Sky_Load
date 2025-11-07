//if (!debug_mode) { instance_destroy(); exit; }

menu_active = false;
menu_state = 0; // 0:敵選択, 1:パターン選択
selected_enemy_index = 0;
selected_pattern_index = 0;

menu_x = 10;
menu_y = 10;
line_height = 25; // 日本語フォントに合わせて少し高くする

// デバッグ用：開始パターン指定変数（-1なら通常スタート）
global.debug_start_pattern = -1;