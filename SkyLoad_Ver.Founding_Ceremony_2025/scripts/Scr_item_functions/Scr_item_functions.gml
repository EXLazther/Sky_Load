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

//アイテム
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

global.item_list=array_create(8);
//アイテム製造管理
global.item_list[m_ITEM_NAME.BROOCH]=m_create_item("？？のブローチ","誰のかわからないブローチ\n触ると記憶が流れてくる",Spr_item,function(){global.player_atk+=1;})
global.item_list[m_ITEM_NAME.REAGEL]=m_create_item("リーゲルの果実","プルプルとしたリンゴのような果物。\n味はかなりさっぱりしている\nHPを15回復",Spr_item,function(){global.player_health+=15;})
global.item_list[m_ITEM_NAME.YAKUSOU]=m_create_item("薬草","森に生えている草を調合したもの\nHPを10回復",Spr_item,function(){global.player_health+=10;})
global.item_list[m_ITEM_NAME.CANDY]=m_create_item("飴","花屋の裏に落ちていた飴\nHPを5回復",Spr_item,function(){global.player_health+=5;})
global.item_list[m_ITEM_NAME.CHEST]=m_create_item("戦闘テクニックのメモ","被弾したときのリカバリー方法が書かれてるメモ\nDEFを1増加",Spr_item,function(){global.player_def+=1;})
global.item_list[m_ITEM_NAME.INSTANTLIFE]=m_create_item("簡易治療薬","近年登場したばかりの人工宝物\nHPを50回復",Spr_item,function(){global.player_health+=50;})
global.item_list[m_ITEM_NAME.WOOD]=m_create_item("木の枝","何の変哲もない木の枝\nATKを2増加",Spr_item,function(){global.player_atk+=2;})
global.item_list[m_ITEM_NAME.BAG]=m_create_item("バック","少し大きめなバック\n持てる物が少し増える",Spr_item,function(){Obj_item_manager.inv_max+=6;})
