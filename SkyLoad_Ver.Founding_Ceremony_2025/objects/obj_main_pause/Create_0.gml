// 一時停止処理
global.stop = 0;
restart = 0;

// メニュー処理
width = 200;
height = 300;

op_border = 32;
op_space = 32;

pos = 0;
pos_move=0;

option = [
    // 0: ポーズメニュー
    ["ステータス", "アイテム", "タイトルへ", "戻る"],

    // 1: ステータス画面
    ["装備", "戻る"],

    // 2: セッティング
    ["アイテムを表示", "戻る"],

    // 3: タイトル確認
    ["タイトルへ戻る", "戻る"]
];

op_length = 0;
menu_level = 0;

global.itemstatus = 0;
status = false;
Max_HP=100;

sound_setflag=true;

set_interval=0;
max_interval=120;