var _room_name = room_get_name(room);
var _w, _h;

// --- モード判定とサーフェスリサイズ ---
if (_room_name == "Room_Title") {
    global.current_mode = MODE_TITLE;
    _w = global.title_w; _h = global.title_h;
    surface_resize(application_surface, _w, _h);
    
} else if (string_pos("RoomBattle", _room_name) == 1) {
    global.current_mode = MODE_STG;
    _w = global.stg_w; _h = global.stg_h;
    surface_resize(application_surface, _w, _h);

} else {
    global.current_mode = MODE_RPG;
    _w = global.rpg_w; _h = global.rpg_h;
    surface_resize(application_surface, _w, _h);
}

// --- 2Dカメラ設定 (元に戻す) ---
view_enabled = true;
view_visible[0] = true;

// 2D用のカメラ設定
camera_set_view_size(view_camera[0], _w, _h);
view_set_wport(0, _w);
view_set_hport(0, _h);

// 3Dカメラ用の行列設定はすべて削除します