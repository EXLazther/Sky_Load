
var _s = id; 
if place_meeting(x +10,y+10, Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(obj_textbox)
	{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
		scr_game_text(_s.text_id,_s.system_id);
		}
		item_foryou+=1;
	}
	
	

if place_meeting(x -10,y-10, Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(obj_textbox)
{
		with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
			scr_game_text(_s.text_id,_s.system_id);
		}
		item_foryou+=1;
}
if(item_foryou==1&&!instance_exists(obj_textbox))
{
	item_add(item); // アイテムをインベントリに追加
	ds_map_add(global.item_gat, item,true );
	item_foryou+=1;
}

set_mob_index(sprite_id);

/*if (x == 352 && y== 352) {
	    mob_x = 580;
	    mob_y = 384;
	    move_mob( mob_x, mob_y, 1);
}
if instance_exists(obj_textbox)
{
	speed=0;
}
if speed==0&&!instance_exists(obj_textbox)
{
	move_towards_point(mob_x,mob_y,1);
}
