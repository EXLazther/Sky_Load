// --- Drawイベント (チャージ中) ---
gpu_set_blendmode(bm_add); // 加算合成開始

// sin波を使って大きさを脈動させる (timeはStepで加算される変数)
var _scale = 1.0 + sin(current_time * 0.005) * 0.2;
// 徐々に大きくするならチャージ量変数を掛け合わせる

draw_sprite_ext(SprEnemyShotBallLBlue, 0, x, y, _scale, _scale, current_time * 0.5, c_aqua, 1.0);

gpu_set_blendmode(bm_normal); // 戻す