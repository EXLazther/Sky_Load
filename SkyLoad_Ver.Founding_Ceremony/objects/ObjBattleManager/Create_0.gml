//戦闘関連の共通変数初期化
previous_state = 0;
current_state = 1;
current_frame = 0;
previous_phase = 0;
current_phase = 0;
is_battle_active = true;
is_battle_started = false;
is_battle_defeated = false;
is_battle_victory = false;
player_health = global.player_health;
boss_health = 0;
finished_count = 0;
enemy = global.encounting_enemy;
boss_hp_getted = false;


//敵のスポーン
instance_create_layer(288, 150, "Instances", enemy);

instance_deactivate_object(Obj_Player);
//instance_deactivate_object(obj_main_pause);
