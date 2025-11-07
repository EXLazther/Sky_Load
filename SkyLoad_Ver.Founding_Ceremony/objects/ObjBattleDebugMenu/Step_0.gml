if (keyboard_check_pressed(vk_f12)) {
    menu_active = !menu_active;
    menu_state = 0; 
}

if (menu_active) {
    if (menu_state == 0) {
        // --- 敵選択モード ---
        if (keyboard_check_pressed(vk_up)) {
            selected_enemy_index--;
            if (selected_enemy_index < 0) selected_enemy_index = array_length(global.enemy_list) - 1;
        }
        if (keyboard_check_pressed(vk_down)) {
            selected_enemy_index++;
            if (selected_enemy_index >= array_length(global.enemy_list)) selected_enemy_index = 0;
        }
        
        if (keyboard_check_pressed(ord("Z"))) {
            menu_state = 1;
            selected_pattern_index = 0;
        }

    } else if (menu_state == 1) {
        // --- パターン選択モード ---
        var _current_enemy = global.enemy_list[selected_enemy_index];
        var _patterns = _current_enemy.patterns;
        
        if (keyboard_check_pressed(vk_up)) {
            selected_pattern_index--;
            if (selected_pattern_index < 0) selected_pattern_index = array_length(_patterns) - 1;
        }
        if (keyboard_check_pressed(vk_down)) {
            selected_pattern_index++;
            if (selected_pattern_index >= array_length(_patterns)) selected_pattern_index = 0;
        }
        
        if (keyboard_check_pressed(ord("X"))) {
            menu_state = 0;
        }
        
        // 決定（Zキー）でバトル開始
        if (keyboard_check_pressed(ord("Z"))) {
            
            // --- ★変更点 1: ここから ---
            
            // 1. 敵IDを (obj:) から設定
            global.encounting_enemy = _current_enemy.obj; 
            
            // 2. 開始パターンIDに +1 して設定 (0が待機のため)
            global.debug_start_pattern = _patterns[selected_pattern_index].id + 1;
            
            // --- ★変更点 1: ここまで ---


            // 3. メニューを閉じてバトルへ
            menu_active = false;
            show_debug_message("デバッグ開始: " + _current_enemy.name + " パターン(ID+1):" + string(global.debug_start_pattern));
            
            // バトル開始処理
            room_goto(RoomBattle); 
        }
    }
}