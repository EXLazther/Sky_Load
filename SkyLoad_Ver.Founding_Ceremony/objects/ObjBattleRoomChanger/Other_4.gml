if (ds_map_exists(global.set_battle, ready)) {
    instance_destroy(); // 既に取得済みのアイテムは表示させない
} 