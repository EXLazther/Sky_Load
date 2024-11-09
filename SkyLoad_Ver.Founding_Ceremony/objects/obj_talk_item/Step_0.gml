
var _s = id; 
if place_meeting(x +10,y+10, Player) && !instance_exists(obj_textbox)
{
	if(item_add(item)==true)
	{
		with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
			scr_game_text(_s.text_id,_s.system_id);			
		}
			item_add(item); // アイテムをインベントリに追加
			ds_map_add(global.item_gat, item,true );
			instance_destroy();
	}
	else
	{
		if(counter_1<1)
		{
			with( instance_create_depth(0, 0, -9999, obj_textbox))
			{
				scr_game_text("item","1");			
			}
			counter_1+=1;
		}
	}
}
	
	

if place_meeting(x -10,y-10, Player)  && !instance_exists(obj_textbox)
{
	if(item_add(item)==true)
	{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_s.text_id,_s.system_id);
		
	}
    item_add(item); // アイテムをインベントリに追加
	ds_map_add(global.item_gat, item,true );
	instance_destroy();
	}
	else
	{
		if(counter_1<1)
		{
			with( instance_create_depth(0, 0, -9999, obj_textbox))
			{
				scr_game_text("item","1");			
			}
			counter_1+=1;
		}
	}
}

