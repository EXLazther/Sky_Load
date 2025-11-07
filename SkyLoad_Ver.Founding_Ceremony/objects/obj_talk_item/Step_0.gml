
var _s = id; 
if place_meeting(x +10,y+10, Obj_Player) && !instance_exists(Obj_textbox)
{
	 if (m_item_add(item)) 
	{
        // アイテム取得テキスト表示
		with (instance_create_depth(0, 0, -9999, Obj_textbox)) 
		{
            m_scr_game_text(_s.text_id, _s.system_id);
        }
        // 同じアイテムが重複しないよう記録
        ds_map_add(global.item_gat, instance_set_id, true);
        instance_destroy();
    }
    // インベントリ満タンの場合
    else 
	{
        if (counter_1 < 1)
		{
            with (instance_create_depth(0, 0, -9999, Obj_textbox)) 
			{
                m_scr_game_text(_s.text_id1, "1");
            }
            counter_1 += 1;
        }
    }
}
	
	

