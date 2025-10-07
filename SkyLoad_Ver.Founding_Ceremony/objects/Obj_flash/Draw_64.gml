camera_x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
camera_y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
if (set_alpha > 0) {
    draw_set_alpha(set_alpha);
    draw_set_color(c_white);
    draw_rectangle(Obj_Player.x-camera_x, Obj_Player.y-camera_y, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}
