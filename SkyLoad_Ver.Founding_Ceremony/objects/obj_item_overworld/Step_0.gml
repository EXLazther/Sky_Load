sprite_index=item.sprite;
var _s = id; 
if place_meeting(x,y, Player) && !instance_exists(obj_textbox)
	{
		
	with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
			scr_game_text(_s.text_id,"1");			
		}
					item_add(item); // アイテムをインベントリに追加
			ds_map_add(global.item_gat, instance_set_id,true );
			instance_destroy();
	}