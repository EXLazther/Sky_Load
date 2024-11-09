// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function inventorySearch(rootObject,itemType)
{
	for(var i=0;i<INVENTORY_SLOTS;i+=1)
	{
		if(rootObject.inventory[i]==itemType)
		{
			return(i);
		}
	}
	return(-1)
}

function inventoryRemove(rootObject,itemType)
{
	var _solt=inventorySearch(rootObject,itemType);
	if(_solt!=-1)
	{
		with(rootObject) inventory[_solt]=-1;
		return true;
	}
	else return false;
}

function inventoryAdd(rootObject,itemType)
{
	var _solt=inventorySearch(rootObject,itemType)
	if(_solt!=-1)
	{
		with(rootObject) inventory[_solt]=itemType;
		return true;
	}
	else return false;
}
		