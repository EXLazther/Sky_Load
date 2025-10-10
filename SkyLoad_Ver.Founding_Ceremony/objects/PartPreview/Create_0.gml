// 爆発エフェクト用のパーティクルシステムの作成
explosion_system = part_system_create();
part_system_layer(explosion_system, layer_get_id("Particles"));  // パーティクルが他のオブジェクトより手前に描画されるように設定

count = 0;
max_frame = 60;
color = c_white;

// 爆発パーティクルのタイプ設定
explosion_particle = part_type_create();
part_type_shape(explosion_particle, pt_shape_line);  // 円形のパーティクル
part_type_size(explosion_particle, 1, 1, 0, 0);  // 初期サイズと最終サイズ
part_type_scale(explosion_particle, 1, 1);  // x方向とy方向のスケーリング
part_type_life(explosion_particle, 120, 120);  // パーティクルの寿命（30~60フレーム）
part_type_speed(explosion_particle, 0, 0, 0, 0);  // パーティクルの速度範囲
part_type_color1(explosion_particle, color);  // カラーのグラデーション
part_type_alpha3(explosion_particle, 1, 1, 0);  // 不透明から透明に変化
part_type_blend(explosion_particle, false);
part_type_orientation(explosion_particle, 0, 0, 0, 0, 0)
part_particles_create(explosion_system, x, y, explosion_particle, 1);  // (x, y)が爆発の中心	

