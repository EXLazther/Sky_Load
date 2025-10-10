// フェーズが変更されたときの処理をここに書く
show_debug_message("フェーズ変更の通知を受け取りました！現在のフェーズ: " + string(ObjBattleManager.current_phase));
bset_objEnemy_changePhase()
instance_create_layer(x,y,"Particles",PartExplosionStar);
current_frame = 0;