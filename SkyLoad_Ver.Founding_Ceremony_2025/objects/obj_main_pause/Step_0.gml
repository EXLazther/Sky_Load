
if(global.player_health>=Max_HP)
{
	global.player_health=100;
}
// 一時停止処理
depth = -99999;
accept_key = keyboard_check_pressed(ord("Z"));
cancel_key = keyboard_check_pressed(ord("X"));

if (keyboard_check_pressed(vk_space) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter))
{
	
	if (instance_exists(Obj_Player)) instance_deactivate_object(Obj_Player);

	if (global.stop == 0 && restart == 0)
	{
		global.stop = 1;
		restart = 1;
	}
}

if (global.stop == 1 && restart == 0)
{
	instance_activate_all();
	global.stop = 0;
}

if (global.stop == 1 && global.itemstatus == 0)
{
	object_set_visible(Obj_main_pause, true);

	up_key = keyboard_check_pressed(vk_up);
	down_key = keyboard_check_pressed(vk_down);

	// オプション数の保存
	op_length = array_length(option[menu_level]);

	// メニュー移動
	pos += down_key - up_key;
	if (pos >= op_length) pos = 0;
	if (pos < 0) pos = op_length - 1;
	if (cancel_key) pos = op_length - 1;

	if (accept_key)
	{
		var _sml = menu_level;
		switch (menu_level)
		{
			case 0:
				switch (pos)
				{
					case 0: menu_level = 1; break;
					case 1: menu_level = 2; break;
					case 2: menu_level = 3; break;
					case 3: restart = 0; break;
				}
			break;

			case 1:
				switch (pos)
				{
					case 0: status = true; break;
					case 1: menu_level = 0; status = false; break;
				}
			break;

			case 2:
				switch (pos)
				{
					case 0: global.itemstatus = 1; break;
					case 1: menu_level = 0; break;
				}
			break;

			case 3:
				switch (pos)
				{
					case 0:
					{
						// タイトル戻る処理
						if (variable_global_exists("text_setted")) ds_map_destroy(global.text_setted);
						if (variable_global_exists("set_battle")) ds_map_destroy(global.set_battle);
						if (variable_global_exists("wall_setted")) ds_map_destroy(global.wall_setted);
						if (variable_global_exists("item_gat")) ds_map_destroy(global.item_gat);

						var inst = instance_create_depth(0, 0, -9999, Obj_changeroom);
						inst.target_x = 0;
						inst.target_y = 0;
						inst.target_rm = Room_Title;
						restart=0;
						menu_level=0;
						break;
					}

					case 1: menu_level = 0; break;
				}
			break;
		}

		// メニュー切り替え時に選択位置リセット
		if (_sml != menu_level) pos = 0;

		// 正しいオプション数を更新
		op_length = array_length(option[menu_level]);
	}
}
