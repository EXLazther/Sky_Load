draw_set_font(global.font);
xspr=30;
yspr=100;
if result=1
{
	object_set_visible(Obj_item_manager,true);
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-width/2;
	y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-height/2;


	//表示
	draw_sprite_ext(sprite_index,image_index,x-100,y,width/sprite_width,height/sprite_height,0,c_white,1);
	global.font=Fnt_fnt_jp;
	//オプション表示
	draw_set_font(global.font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	for(var i=0;i<array_length(inv);i++)
	{
		var _col=c_white;
		var _data=global.item_list[inv[i]]
		draw_text(x-100,y+yspr+op_border+55,"------------------------------------------------------------------------------");
		if pos==i{_col=c_yellow;};
		draw_set_color(_col);
		xx=x+xspr-100;
		yy=y+yspr
		//名前
		if(i>=6)
		{
			xx+=180;
			yy-=190;
		}
			draw_text(xx,yy+op_space*i-90,_data.name);
		
		//説明
		if pos==i{
		draw_text(x+op_border-100,y+yspr+op_border+70,_data.description);
		};
		draw_set_color(c_white);
	}
	draw_text(x+op_border+xspr+100,y+yspr+op_border+115,"戻る");
}else{object_set_visible(Obj_item_manager,false);}