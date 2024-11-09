
var _s = id; 
if place_meeting(x +10,y+10, Player) && !instance_exists(obj_textbox)
	{
		
	with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
			scr_game_text(_s.text_id,_s.system_id);			
		}
					item_add(item); // アイテムをインベントリに追加
			ds_map_add(global.item_gat, item,true );
			instance_destroy();
	}
	
	

if place_meeting(x -10,y-10, Player)  && !instance_exists(obj_textbox)
{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_s.text_id,_s.system_id);
		
	}
    item_add(item); // アイテムをインベントリに追加
	ds_map_add(global.item_gat, item,true );
	instance_destroy();
}

