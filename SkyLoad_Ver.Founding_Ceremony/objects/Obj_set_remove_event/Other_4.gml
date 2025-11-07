if (ds_map_exists(global.text_setted, text_id)) {
    instance_destroy(); // 既に取得済みのアイテムは表示させない
} 
if(room==Room_fortIsland_atrie&&!ds_map_exists(global.text_setted,"event_34"))
{
	x=-60;
	y=-60
}