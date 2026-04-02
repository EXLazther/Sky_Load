// Alt + Enter でフルスクリーン切り替え
if (keyboard_check_pressed(vk_enter) && keyboard_check(vk_alt)) {
    window_set_fullscreen(!window_get_fullscreen());

    // ---- ここが重要 ----
    // フルスクリーン切替後のズレを直すため Viewport をリセット
    var vw = 683;  // あなたのゲーム解像度
    var vh = 384;

    // Viewport0 のサイズをウィンドウにフィットさせる
    var ww = window_get_width();
    var wh = window_get_height();
    
    view_wport[0] = ww;
    view_hport[0] = wh;

}