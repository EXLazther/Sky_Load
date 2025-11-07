up_key=keyboard_check_pressed(vk_up);
down_key=keyboard_check_pressed(vk_down);
accept_key=keyboard_check_pressed(ord("Z"));

//オプション数の保存
op_length=array_length(option[menu_level]);

//メニュー移動
pos+=down_key-up_key;
if pos>op_length{pos=0};
if pos<0{pos=op_length-1}

if accept_key{
	var _sml=menu_level;
	switch(menu_level){
		
		case 0:
		//ポーズメニュー
		switch(pos){
			//ゲーム開始
			case 0: room_goto(Room_start); break;
			//設定
			case 1: menu_level=1;	break;
			//ゲーム終了
			case 2:	game_end(); break;
		}
		break;
		case 1:
		//セッティング
		switch(pos){
			//ウィンドウサイズ
			case 0: break;
			//明るさ
			case 1: break;
			//コントロール
			case 2: break;
			//戻る
			case 3: menu_level=0; break;
		}
		break;
	}
		//ポジション調整
		if _sml!=menu_level{pos=0};
		//正しいオプション数
		op_length=array_length(option[menu_level]);
}