if (global.player_health >= Max_HP)
{
	global.player_health = 100;
}

// 一時停止処理
depth = -99999;
accept_key = keyboard_check_pressed(ord("Z"));
cancel_key = keyboard_check_pressed(ord("X"));
if(set_interval>0)
{
	set_interval--;
}

if(set_interval<=0)
{
if (keyboard_check_pressed(vk_space) && !instance_exists(Obj_textbox) && !instance_exists(m_ScrObjMoveInter) && room != RoomBattle&&room!=Room_Title)
{
	if(sound_setflag==true)
	{
		var snd_open=audio_play_sound(Se_openmenu,1,false);
		audio_sound_gain(snd_open,0.5,0);
		sound_setflag=false;
	}
	if (room != Room_fortIsland5)
	{
		if (instance_exists(Obj_Player)) instance_deactivate_object(Obj_Player);
		if (global.stop == 0 && restart == 0)
		{

			global.stop = 1;
			restart = 1;
		}
	}
	
	set_interval=max_interval;
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
	pos_move=pos;
	// メニュー移動
	pos += down_key - up_key;
	if(pos_move!=pos)
	{
		var snd_set=audio_play_sound(Se_movemenu,0.5,false);
		audio_sound_gain(snd_set,0.5,0);
	}
	if (pos >= op_length) pos = 0;
	if (pos < 0) pos = op_length - 1;
	var _itemmanager=object_get_visible(Obj_item_manager);
	// 🔽 キャンセルキー処理 (Xキー)
	if(_itemmanager==false)
	{
	if (cancel_key)
	{
		// pos が一番下のときのみ実行
		if (pos == op_length - 1)
		{
			
			var snd_crose=audio_play_sound(Se_crosemenu,0.5,false);
			audio_sound_gain(snd_crose,0.5,0);
			switch (menu_level)
			{
				case 0:
					// メインメニュー中 → ポーズ解除
					restart = 0;
					sound_setflag=true;
				break;

				case 1:
				case 2:
				case 3:
					// サブメニュー中 → メインメニューに戻る
					menu_level = 0;
					pos = 0;
				break;
			}
		}
		else
		{
		var snd_set=audio_play_sound(Se_movemenu,1,false);
		audio_sound_gain(snd_set,0.5,0);
			pos=op_length-1;
		}
	}

	// 🔽 決定キー処理 (Zキー)
	if (accept_key)
	{
		var _sml = menu_level;
		if(pos!=op_length - 1)
		{
			var snd_set=audio_play_sound(Se_openmenu,0.5,false);
			audio_sound_gain(snd_set,0.5,0);
		}
		else
		{
			var snd_crose=audio_play_sound(Se_crosemenu,0.5,false);
			audio_sound_gain(snd_crose,0.5,0);
		}
		switch (menu_level)
		{
			case 0:
				switch (pos)
				{
					case 0: menu_level = 1; break;
					case 1: menu_level = 2; break;
					case 2: menu_level = 3; break;
					case 3: restart = 0;sound_setflag=true; break;
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
						with(Obj_Sound_test)
						{
							bgm_reset();
						}
						restart = 0;
						menu_level=0;
						pos=0;
						var inst = instance_create_depth(0, 0, -9999, Obj_changeroom);
						inst.target_x = 0;
						inst.target_y = 0;
						inst.target_rm = Room_Title;
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
}