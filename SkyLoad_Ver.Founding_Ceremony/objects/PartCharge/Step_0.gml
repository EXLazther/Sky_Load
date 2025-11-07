// --- Stepイベント (チャージ中、毎フレーム実行) ---
// プレイヤー(x,y)の周囲に円形に発生させる
var _dist = 400; // 中心からの距離
var _dir = random(360); // ランダムな角度
var _spawn_x = x + lengthdir_x(_dist, _dir);
var _spawn_y = y + lengthdir_y(_dist, _dir);

// パーティクルの進行方向を中心に向ける
part_type_direction(pt_charge, _dir + 180, _dir + 180, 0, 0);
// 30ステップで距離100を移動するスピードに設定 (100 / 30 = 約3.33)
part_type_speed(pt_charge, _dist / 30, _dist / 30, 0, 0);

part_particles_create(ps, _spawn_x, _spawn_y, pt_charge, 1);