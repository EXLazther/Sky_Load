//戦闘関連の共通変数初期化
listeners = ds_list_create();
current_state = 1;
current_frame = 0;
is_battle_active = true;
is_battle_started = false;
is_battle_defeated = false;
is_battle_victory = false;
player_health = global.player_health;
boss_health = 100;
enemy = global.encounting_enemy;


//敵のスポーン
instance_create_layer(BATTLE_BORDER.CENTER_X, BATTLE_BORDER.CENTER_Y-100, "Instances", enemy);
instance_deactivate_object(Obj_Player);

