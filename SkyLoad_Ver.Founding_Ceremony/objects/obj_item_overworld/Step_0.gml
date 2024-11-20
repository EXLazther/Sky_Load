sprite_index=item.sprite;
var _s = id; 
if place_meeting(x,y, Obj_Player) && !instance_exists(Obj_textbox)
{
	if(item_add(item)==true)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,"1");			
		}	
		ds_map_add(global.item_gat, instance_set_id,true );
		instance_destroy();
	}
	else
	{
		if(counter_1<1)
		{
			with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text(_s.text_id1,"1");			
			}
			counter_1+=1;
		}
	}
	
}