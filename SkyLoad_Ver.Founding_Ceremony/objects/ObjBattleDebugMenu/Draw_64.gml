if (menu_active) {
    // --- 0. 描画設定 ---
    draw_set_font(Fnt_fnt_jp); // 日本語フォント
    draw_set_halign(fa_left);  // 左揃え
    draw_set_valign(fa_top);   // 上揃え

    // --- 1. 背景の描画 ---
    draw_set_color(c_dkgray); // 暗めのグレー
    draw_set_alpha(0.85);     // 透過度を少し濃くする
    
    // リストの長さに応じて背景の高さを計算
    var _list_len = 0;
    if (menu_state == 0) {
        _list_len = array_length(global.enemy_list);
    } else {
        var _patterns = global.enemy_list[selected_enemy_index].patterns;
        _list_len = array_length(_patterns) + 1; // +1は敵タイトルの分
    }
    
    // 背景を描画 (横幅を300px程度に広げておくと見やすいです)
    draw_rectangle(menu_x - 5, menu_y - 5, menu_x + 300, menu_y + _list_len * line_height + 5, false);
    draw_set_alpha(1.0); // 透過度を戻す

    // --- 2. テキストの描画 ---
    if (menu_state == 0) {
        // --- 敵リスト描画 ---
        for (var i = 0; i < array_length(global.enemy_list); i++) {
            var _name = global.enemy_list[i].name;
            var _yy = menu_y + i * line_height;
            
            if (i == selected_enemy_index) {
                draw_set_color(c_yellow); // 選択中: 黄色
                draw_text(menu_x, _yy, "> " + _name);
            } else {
                draw_set_color(c_white);  // 非選択: 白色 (暗い背景に映える)
                draw_text(menu_x, _yy, "  " + _name);
            }
        }
    } else {
        // --- パターンリスト描画 ---
        var _enemy = global.enemy_list[selected_enemy_index];
        
        // タイトル表示 (非選択色で)
        draw_set_color(c_white);
        draw_text(menu_x, menu_y, "【" + _enemy.name + "】");
        
        var _patterns = _enemy.patterns;
        for (var i = 0; i < array_length(_patterns); i++) {
            var _yy = menu_y + (i + 1) * line_height; // タイトルの分ずらす
            var _text = _patterns[i].name + " (ID:" + string(_patterns[i].id) + ")";
            
            if (i == selected_pattern_index) {
                draw_set_color(c_yellow); // 選択中: 黄色
                draw_text(menu_x, _yy, "> " + _text);
            } else {
                draw_set_color(c_white);  // 非選択: 白色
                draw_text(menu_x, _yy, "  " + _text);
            }
        }
    }
}