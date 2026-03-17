if (!ds_exists(global.text_setted, ds_type_map))
{
    global.text_setted = ds_map_create();
}

if (!ds_exists(global.set_battle, ds_type_map))
{
    global.set_battle = ds_map_create();
}

if (!ds_exists(global.wall_setted, ds_type_map))
{
    global.wall_setted = ds_map_create();
}

if (!ds_exists(global.item_gat, ds_type_map))
{
    global.item_gat = ds_map_create();
}