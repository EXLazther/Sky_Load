//一時停止処理
depth=-99999;
accept_key=keyboard_check_pressed(ord("Z"));
cancel_key=keyboard_check_pressed(ord("X"));
if(keyboard_check_pressed(vk_space)&&!instance_exists(obj_textbox)&&room!=RoomBattle)
{
        if(instance_exists(Object6))instance_deactivate_object(Object6);
        if(instance_exists(Player))instance_deactivate_object(Player);
        if(instance_exists(Object7))instance_deactivate_object(Object7);
	if(global.stop=0 && restart==0)
	{
	global.stop = 1;
	restart=1;
	}
}
if(global.stop == 1 && restart==0)

{
	
      instance_activate_all();
      global.stop = 0;

}
if(global.stop==1&&global.itemstatus==0){
	object_set_visible(obj_main_pause,true);
	up_key=keyboard_check_pressed(vk_up);
	down_key=keyboard_check_pressed(vk_down);

	//オプション数の保存
	op_length=array_length(option[menu_level]);

	//メニュー移動
	pos+=down_key-up_key;
	if pos>=op_length{pos=0};
	if pos<0{pos=op_length-1}
	if cancel_key{pos=op_length-1};
	if accept_key{
		var _sml=menu_level;
		switch(menu_level){
		
			case 0:
			//ポーズメニュー
			switch(pos){
				//ゲーム開始
				case 0: menu_level=2; break;
				//設定
				case 1: menu_level=1;	break;
				//ゲーム終了
				case 2:	restart=0; break;
			}
			break;
			case 1:
			//セッティング
			switch(pos){
				//ウィンドウサイズ
				case 0: global.itemstatus=1;  break;
				//戻る
				case 1: menu_level=0; break;
			}
			break;
			case 2:
			switch(pos){
				case 0: status=true; break;
				case 1: menu_level=0; status=false; break;
			}
		}
			//ポジション調整
			if _sml!=menu_level{pos=0};
			//正しいオプション数
			op_length=array_length(option[menu_level]);
	}
}