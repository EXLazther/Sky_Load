// もしデバッグ指定の開始パターンがあれば適用する
if (variable_global_exists("debug_start_pattern") && global.debug_start_pattern != -1) {
    current_state = global.debug_start_pattern;
    
    // 適用したらリセットしておく（通常のエンカウントに影響させないため）
    global.debug_start_pattern = -1;
}