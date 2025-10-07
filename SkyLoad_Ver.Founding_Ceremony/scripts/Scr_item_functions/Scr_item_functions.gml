function m_set_item_name (_id)
{
	return global.item[_id];
}

//アイテムの作成
function m_create_item(_name, _desc, _spr, _effect)
{
    return {
        name: _name,
        description: _desc,
        spr: _spr,
        effect: _effect
    };
}

function m_item_add(_item){
	var _added=false
	if(array_length(Obj_item_manager.inv)<Obj_item_manager.inv_max)
	{
		array_push(Obj_item_manager.inv,_item);
		_added=true;
	}
	return _added;
}

//アイテム製造管理
global.item_list=
{
	brooch: m_create_item(
		"？？のブローチ",
		"誰のかわからないブローチ\n触ると記憶が流れてくる",
		Spr_item,
		function()
		{
			global.player_atk+=3;
		}
	) ,
	reagel: m_create_item(
		"リーゲルの果実",
		"プルプルとしたリンゴのような果物。\n味はかなりさっぱりしている\nHPを15増加",
		Spr_item,
			function(){
				global.player_health+=15;
				}
		),
		yakusou: m_create_item(
			"薬草",
			"森に生えている草を調合したもの\nHPを10増加",
			Spr_item,
			function()
			{
				global.player_health+=10;
			}
		),
		candy: m_create_item(
			"飴",
			"花屋の裏に落ちていた飴\nHPを5増加",
			Spr_item,
			function()
			{
				global.player_health+=5;
			}
		),
		chest: m_create_item(
			"戦闘テクニックのメモ",
			"被弾したときのリカバリー方法が書かれてるメモ\nDEFを5増加",
			Spr_item,
			function()
			{
				global.player_def+=5;
			}
		),
		instant_life: m_create_item(
			"簡易治療薬",
			"近年登場したばかりの人工宝物\nHPを50増加",
			Spr_item,
			function()
			{
				global.player_health+=50;
			}
		),
		wood: m_create_item(
			"木の枝",
			"何の変哲もない木の枝\nATKを2増加",
			Spr_item,
			function()
			{
				global.player_atk+=2;
			}
		),
		bag: m_create_item(
			"バック",
			"少し大きめなバック\n",
			Spr_item,
			function()
			{
				Obj_item_manager.inv_max+=6;
			}
		)
	}
