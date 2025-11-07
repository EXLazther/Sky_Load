if (ds_map_exists(global.text_setted, text_id)) {
    instance_destroy(); // 既に取得済みのアイテムは表示させない
} 