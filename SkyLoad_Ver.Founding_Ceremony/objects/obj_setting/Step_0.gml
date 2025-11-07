/// @description 説明をここに挿入
// このエディターでコードを作成することができます
if(!ds_exists(global.text_setted,ds_type_map)&&!ds_exists(global.set_battle,ds_type_map)&&!ds_exists(global.wall_setted,ds_type_map)&&!ds_exists(global.item_gat,ds_type_map))
{
	global.text_setted=ds_map_create();
	global.set_battle=ds_map_create();
	global.wall_setted=ds_map_create();
	global.item_gat=ds_map_create();
}