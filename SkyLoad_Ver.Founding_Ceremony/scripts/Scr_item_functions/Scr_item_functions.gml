function m_set_item_name (_id)
{
	return global.item[_id];
}

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
