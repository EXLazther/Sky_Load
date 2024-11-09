//一時停止処理
global.stop=0;
restart=0;
//メニュー処理
width=200;
height=300;

op_border=32;
op_space=32;

pos=0;
//ポーズメニュー
option[0,0]="ステータス";
option[0,1]="アイテム";
option[0,2]="戻る";
//セッティング
option[1,0]="アイテムを表示";
option[1,1]="戻る";

//ステータス画面
option[2,0]="装備";
option[2,1]="戻る";

//オプションレベル
op_length=0;

//メニューレベル
menu_level=0;

global.itemstatus=0;

status=false;