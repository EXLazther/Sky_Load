if (is_spawning) {
    // --- スポーン中 ---
    var _progress = count_frame / delay_frame;
    
    // 1. 実体の描画（通常合成）
    // 実体は 0.0 → 1.0 へ徐々に出現
    draw_self();
    
    // 2. 光の描画（加算合成）
    // sin(_progress * pi) を使うと、進捗に合わせて 0 → 1 → 0 と滑らかに変化します
    // 0%(開始時) = 0.0
    // 50%(中間)  = 1.0 (最大輝度)
    // 100%(完了) = 0.0
    var _glow_alpha = sin(_progress * pi);
    
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(
        sprite_index, image_index, 
        x, y, 
        image_xscale , image_yscale, // 光は少し大きめに
        image_angle, 
        c_white, 
        _glow_alpha // 計算した 0→1→0 のアルファ値を適用
    );
    gpu_set_blendmode(bm_normal);

} else {
    // --- 通常時 ---
    draw_self();
}