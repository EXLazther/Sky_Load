// 爆発エフェクト用のパーティクルシステムの作成
explosion_system = part_system_create();
part_system_layer(explosion_system, layer_get_id("Particles"));  // パーティクルが他のオブジェクトより手前に描画されるように設定

// 爆発パーティクルのタイプ設定
explosion_particle_circle = part_type_create();
part_type_shape(explosion_particle_circle, pt_shape_ring);  // 円形のパーティクル
part_type_size(explosion_particle_circle, 0, 1, 0.2, 0);  // 初期サイズと最終サイズ
part_type_scale(explosion_particle_circle, 1, 1);  // x方向とy方向のスケーリング
part_type_life(explosion_particle_circle, 60, 60);  // パーティクルの寿命（30~60フレーム）
part_type_speed(explosion_particle_circle, 0, 0, 0, 0);  // パーティクルの速度範囲
part_type_direction(explosion_particle_circle, 0, 360, 0, 0);  // 全方向にランダムで飛ぶ
part_type_color3(explosion_particle_circle, c_blue, c_purple, c_aqua);  // カラーのグラデーション
part_type_alpha3(explosion_particle_circle, 1, 0.3, 0);  // 不透明から透明に変化
part_type_blend(explosion_particle_circle, false);
part_type_orientation(explosion_particle_circle, 0, 360, 3, 1, true);

