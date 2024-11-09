depth=-9999;

//キャラ描画
character_y=camera_get_view_y(view_camera[0])+90;
//テキストボックスの様々なパラメーターについて。
//テキストボックスの幅、高さの設定
textbox_width = 638;
textbox_height = 60;

//テキストボックスの側面から文字までの距離(余白)の設定
border = 5;

//行間の大きさの設定
line_sep = 20;

//1行の幅の大きさの設定
line_width = textbox_width - border*2;

//テキストアニメーション
txtb_spr= box;
txtb_img = 0;
txtb_img_spd = 6/60;
global.system_text=2;


//テキストについて。
//テキストを呼ぶ設定
page = 0;

//初期化
page_number = 0;

//文字列
text[0] = "";
name[0] = "";
//文字列の長さの設定
text_length[0] = string_length(text[0]);
name_length[0]=string_length(name[0]);
char[0,0]="";
char_x[0,0]=0;
char_y[0,0]=0;
//文字数の設定
draw_char = 0;
name_char=0;
//文字速度の設定
text_spd = 1;

//オプション
option[0]="";
option_link_id[0]=-1;
option_pos=0;
option_number=0;

//セットアップの設定
global.show_box=false;

var text_x_offset=15;

//エフェクト
set_default_for_text();
last_free_space=0;

var speaker_sprite = [];
var speaker_sprite1 = [];
sprite_set_left=350;

width=350;
height=300;
