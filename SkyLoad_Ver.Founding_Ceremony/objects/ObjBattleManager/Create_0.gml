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
instance_create_layer(BORDER.CX, BORDER.CY-100, "Instances", enemy);
instance_deactivate_object(Obj_Player);

// 背景オブジェクトを生成 (depth 1000で)
instance_create_depth(0, 0, 1000, ObjBattleBackgroundManager);

// 背景モードを指示
ObjBattleBackgroundManager.current_mode = BG_MODE_SKY; // 空をスクロールさせる
// ObjBattleBackgroundManager.current_mode = BG_MODE_NONE; // 何も表示しない場合