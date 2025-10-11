// フェーズが変更されたときの処理をここに書く
bset_objEnemy_changeState()
instance_create_layer(x,y,"Particles",PartExplosionStar);
current_frame = 0;