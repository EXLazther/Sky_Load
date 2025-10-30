
object_set_visible(Obj_textbox,true);
accept_key = keyboard_check_pressed( ord("Z") );
	
	textbox_x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-width;
	textbox_y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+120;
	character_y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/5;
if global.system_text==1||global.system_text==2||global.system_text==0
{
//設定
if global.show_box == false
{
	
	global.show_box= true;
	draw_set_font(global.font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//ページをループさせる
	for(var p = 0; p < page_number; p++)
	{
		//ページ数を見つける
		text_length[p] = string_length(text[p]);
		name_length[p]=string_length(name[p]);
		//キャラクター用左側
		text_x_offset[p] = 80;	
		portrait_x_offset[p]=15;
		//キャラクター用右側
		if speaker_side[p]=-1
		{
			text_x_offset[p] = 8;	
			portrait_x_offset[p]=480;
		}
		//テキストボックスのx座標
	}
	
}



//テキストボックスの描画
	var _txtb_x= textbox_x + text_x_offset[page];
	var _txtb_y= textbox_y;
	txtb_img += txtb_img_spd;
	txtb_spr_w = sprite_get_width(txtb_spr);
	txtb_spr_h = sprite_get_height(txtb_spr);

	// キャラクター描画
	if (speaker_sprite[page] != noone) 
	{
    sprite_index = speaker_sprite[page];
    var spr_w = sprite_get_width(sprite_index);
    var spr_h = sprite_get_height(sprite_index);

    // 最大サイズ（縦横どちらも400以内に収める）
    var target_size = 400;

    // スプライトの縦横比を保つスケール計算
    var scale = min(target_size / spr_w, target_size / spr_h);
    image_xscale = scale;
    image_yscale = scale;
	
	if(flip[page]==true)
	{
		set_face=-1;
	}
	else if(flip[page]==false)
	{
		set_face=1;
	}
    var _sprite_x = textbox_x + portrait_x_offset[page] + 150;

    draw_sprite_ext(sprite_index, image_index, _sprite_x, character_y + 150,image_xscale * speaker_side[page]*set_face, image_yscale, 0, color_left[page], 1);
	}

	if (speaker_sprite1[page] != noone) {
    sprite_index = speaker_sprite1[page];
    var spr_w = sprite_get_width(sprite_index);
    var spr_h = sprite_get_height(sprite_index);

    var target_size = 400;

    var scale = min(target_size / spr_w, target_size / spr_h);
    image_xscale = scale;
    image_yscale = scale;

	if(flip1[page]==true)
	{
		set_face1=-1;
	}
	else if(flip1[page]==false)
	{
		set_face1=1;
	}
    var _sprite_x = textbox_x + portrait_x_offset[page];
    var _sprite_right_x = _sprite_x + spr_w * image_xscale;
    draw_sprite_ext(sprite_index, image_index, _sprite_right_x + 120, character_y + 150,image_xscale * speaker_side[page]*set_face1, image_yscale, 0, color_right[page], 1);
	}


	//テキストボックスの背景を描画
	draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page]-50, textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
	if global.system_text==2
	{
		if(name_length[page]==0)
		{
		}
		else
		{
			var _name_textbox=draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page]-40, textbox_y-32,120/variability_textbox,32/txtb_spr_h,0,c_white,1);
		}
	}

	
	//オプション
	if draw_char==text_length[page]&&page==page_number-1{

		//オプション選択
		option_pos+=keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
		option_pos=clamp(option_pos,0,option_number-1);
		var _op_space=50;
		var _op_bord=8;
		for(var op=0;op<option_number;op++)
		{
			//オプションボックス
			var _o_w=string_width(option[op])+_op_bord*2;
			draw_sprite_ext(txtb_spr,txtb_img,_txtb_x+215,_txtb_y-_op_space*option_number+_op_space*op-90, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1);
			//オプションテキスト
			draw_text(_txtb_x+215+_op_bord,_txtb_y-_op_space*option_number+_op_space*op+4-80,option[op]);
			if option_pos==op
			{
				draw_sprite(spr_array,0,_txtb_x+215,_txtb_y-_op_space*option_number+_op_space*op-80);
			}
		}
	}


// テキストを描画
	var _drawtext = string_copy(text[page], 1, draw_char);
	var _drawname = string_copy(name[page], 1, name_char);

	//draw_set_color(c_black);
	draw_text_ext(_txtb_x + border-42, _txtb_y+ border, _drawtext, line_sep, line_width);
	draw_text_ext(_txtb_x + border+475, _txtb_y+ border+25, "Zキーで進める",line_sep, line_width);
	draw_text_ext(_txtb_x+border-38,_txtb_y-25,_drawname,line_sep,line_width);
}