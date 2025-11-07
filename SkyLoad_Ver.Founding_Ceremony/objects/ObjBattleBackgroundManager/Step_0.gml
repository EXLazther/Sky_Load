if (current_mode == BG_MODE_SKY) {
    // Y座標をスクロール
    scroll_y_pos += scroll_speed;
    
    // スプライトの高さを超えたら、座標を0に戻してループさせる
    if (scroll_y_pos >= bg_h) {
        scroll_y_pos -= bg_h;
    }
}