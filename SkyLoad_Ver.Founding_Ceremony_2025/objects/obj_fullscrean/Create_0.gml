    var ww = window_get_width();
    var wh = window_get_height();
// GUI は画面に合わせる（黒帯なし）
display_set_gui_size(display_get_width(), display_get_height());

// ★ application_surface をゲーム解像度に固定
surface_resize(application_surface, ww, wh);

// ★ 補間 OFF → 拡大しても一切ぼけない
gpu_set_texfilter(false);