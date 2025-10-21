// フェーズが変更されたときの処理をここに書く
bset_objEnemy_changeState()
instance_create_layer(x,y,"Particles",PartExplosionStar);
current_frame = 0;

for (var i = 0; i < array_length(my_timer_ids); i++) {
    var ts_id = my_timer_ids[i];
    if (time_source_exists(ts_id)) {
        time_source_destroy(ts_id);
    }
}
// 配列を空にする
my_timer_ids = [];