enum ITEM_NAME
{
	BROOCH,
	REAGEL,
	YAKUSOU,
	CANDY,
	CHEST,
	INSTANTLIFE,
	WOOD
}

function set_item_name (_id)
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
	"木の枝"
]
//アイテムの作成
	
	
function item_add(_item){
    array_push(obj_item_manager.inv,_item);
}

