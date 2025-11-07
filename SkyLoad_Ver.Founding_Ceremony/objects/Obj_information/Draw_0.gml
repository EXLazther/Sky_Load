if(set_visible==true)
{
	show_debug_message(1)
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-width/2;
	y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	draw_sprite_ext(sprite_index,image_index,x,y,100,50,0,c_white,1);
	draw_text(x,y,"操作方法\n　　　Zキー:決定\n　　　Xキー:キャンセル\nスペースキー:メニュー表示\n十字キー:移動\n　シフトキー:ダッシュ");
}