depth=-9999;
global.font=fnt_jp;

global.item_gat = ds_map_create();
function create_item(_name,_desc,_spr,_efect,) constructor
{
	name=_name;
	description=_desc;
	sprite=_spr;
	efect=_efect;
	exists=true;
}
//アイテム製造管理
global.item_list=
	{
		brooch:new create_item(
			"？？のブローチ",
			"誰のかわからないブローチ\n触ると記憶が流れてくる",
			spr_item,
			function()
			{
				global.player_atk+=3;
				//削除処理
				array_delete(inv,selected_item,1);
			}
		) ,
		reagel:new create_item(
			"リーゲルの果実",
			"プルプルとしたリンゴのような果物。\n味はかなりさっぱりしている\nHPを15回復",
			spr_item,
			function(){
				global.player_health+=15;
				array_delete(inv,selected_item,1);
				}
		),
		yakusou:new create_item(
			"薬草",
			"森に生えている草を調合したもの\nHPを10回復",
			spr_item,
			function()
			{
				global.player_health+=10;
				array_delete(inv,selected_item,1);
			}
		),
		candy:new create_item(
			"飴",
			"花屋の裏に落ちていた飴\nHPを5回復",
			spr_item,
			function()
			{
				global.player_health+=5;
				array_delete(inv,selected_item,1);
			}
		),
		chest:new create_item(
			"戦闘テクニックのメモ",
			"被弾したときのリカバリー方法が書かれてるメモ\nDEFを5増加",
			spr_item,
			function()
			{
				global.player_def+=5;
				array_delete(inv,selected_item,1);
			}
		),
		instant_life:new create_item(
			"簡易治療薬",
			"近年登場したばかりの人工宝物\nHPを50回復",
			spr_item,
			function()
			{
				global.player_health+=50;
				array_delete(inv,selected_item,1);
			}
		),
		wood:new create_item(
			"木の枝",
			"何の変哲もない木の枝\nATKを2増加",
			spr_item,
			function()
			{
				global.player_atk+=2;
				array_delete(inv,selected_item,1);
			}
		)
	}

	
//インベントリの作成
inv=array_create(0);
selected_item=-1;



//描画・マウス位置
screan_bord=16;
sep=16;
//描画
width=400;
height=300;

op_border=32;
op_space=32;
op_length=0;
pos=0
global.stop=0;
global.itemstatus=0;
result=0;