// プロパティの初期化
//damage = 0;
acceleration = 0;
angular_velocity = 0;
speed_min = 0;
speed_max = 100;
lifetime = 0;
lifetime_count = 0;
launcher = 0;
auto_destroy_outroom_enabled = true;
auto_destroy_lifetime_enabled = false;
auto_destroy_collide_enabled = true;
reflect_enabled = false;
reflect_edge = [false, false, false, false];
reflect_times = 0;
reflect_count = 0;
invicible = false;
is_spawning = true;
color = noone;

shooting_state = ObjBattleManager.current_state;
current_state = 0;


// 何フレームかけて出現させるか
delay_frame = 20; // 例えば60フレーム(1秒)
count_frame = 0;

// 初期状態を見えないように設定
image_alpha = 0;
image_xscale = 3;
image_yscale = 3;

