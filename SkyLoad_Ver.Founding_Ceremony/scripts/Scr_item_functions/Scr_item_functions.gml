enum m_ITEM_NAME
{
	BROOCH,
	REAGEL,
	YAKUSOU,
	CANDY,
	CHEST,
	INSTANTLIFE,
	WOOD,
	BAG
}

function m_set_item_name (_id)
{
	return global.item[_id];
}

global.item=
[
	"？？のブローチ",
	"リーゲルの果実",
	"薬草",
	"飴",
	"戦闘テクニックのメモ",
	"簡易治療薬",
	"木の枝",
	"バック"
]
//アイテムの作成
function m_create_item(_name,_desc,_spr,_efect,) constructor
{
	name=_name;
	description=_desc;
	sprite=_spr;
	efect=_efect;
	exists=true;
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


enum b_WEAPON_NAME
{
	ENERGY,
	DRILL,
	ARROW,
	WATER
}

global.weapon=
[
	"エネルギー弾",
	"ドリル",
	"弓矢",
	"祈祷"
]