/// @description 説明をここに挿入
// このエディターでコードを作成することができます
//ポーズ処理
xspr=200;
yspr=100;
if(restart==1){
	//描画処理
	var _new_w=0;
	var _font=32;
	for (var i=0;i<op_length;i++)
	{
		var _op_w=string_width(option[menu_level,i]);
		_new_w=max(_new_w,_op_w);
	}
	width=_new_w+op_border*2;
	height=op_border+_font+(op_length-1)*op_space;

	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-width/2;
	y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-height/2;


	//表示
	draw_sprite_ext(sprite_index,image_index,x+xspr,y-yspr,width/sprite_width,height/sprite_height,0,c_white,1);
	global.font=fnt_jp;
	//オプション表示
	draw_set_font(global.font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	for(var i=0;i<op_length;i++)
	{
		var _c=c_white;
		if pos==i{_c=c_yellow};
		draw_text_color(x+op_border+xspr,y+op_border+op_space*i-yspr-20,option[menu_level,i],_c,_c,_c,_c,1);
	}
	if(menu_level==2){
	//キャラ描画
		draw_sprite(kohaku_tsuujou,0,x-300,y-100);
		if(status)
		{
			draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);
			draw_text(x+14.5,y+10," HP:");
			draw_text(x+10,y+30,"ATK:");
			draw_text(x+11,y+50,"DEF:");
			draw_text(x+40,y+10,string(global.player_health));
			draw_text(x+50,y+30,string(global.player_atk));
			draw_text(x+50,y+50,string(global.player_def));
		}
	}
}
else{object_set_visible(obj_main_pause,false);}