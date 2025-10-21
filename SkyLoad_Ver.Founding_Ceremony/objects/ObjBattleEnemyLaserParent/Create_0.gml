event_inherited()

//effect = shot_create(x,y,0,0,SHOT_ID.BALL_BLUE)
auto_destroy_outroom_enabled = false;
auto_destory_lifetime_enabled = true;
auto_destroy_collide_enabled = false;
lifetime = 300;

// 0 = チャージ中 (その場に留まり、伸びる)
// 1 = 発射済み (前進する)
state = 0;

// 最終的なレーザーの長さ (xscale)
target_xscale = 0;

// レーザーが伸びる速度 (1フレームあたりに増える xscale)
charge_speed = 0;

// 発射後のレーザーの移動速度
move_speed = 0;

// 長さは0からスタート
image_xscale = 0;
yscale = 1;
image_alpha = 1;