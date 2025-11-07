// 爆発エフェクト用のパーティクルシステムの作成
explosion_system = part_system_create();
part_system_layer(explosion_system, layer_get_id("Particles"));  // パーティクルが他のオブジェクトより手前に描画されるように設定

// 爆発パーティクルのタイプ設定
explosion_particle = part_type_create();
part_type_shape(explosion_particle, pt_shape_star);  // 円形のパーティクル
part_type_size(explosion_particle, 0, 0.5, 0.01, 0);  // 初期サイズと最終サイズ
part_type_scale(explosion_particle, 1, 1);  // x方向とy方向のスケーリング
part_type_life(explosion_particle, 30, 60);  // パーティクルの寿命（30~60フレーム）
part_type_speed(explosion_particle, 1, 12, 0, 0);  // パーティクルの速度範囲
part_type_direction(explosion_particle, 0, 360, 0, 0);  // 全方向にランダムで飛ぶ
part_type_color3(explosion_particle, c_blue, c_yellow, c_red );  // カラーのグラデーション
part_type_alpha3(explosion_particle, 0, 1, 0);  // 不透明から透明に変化
part_type_blend(explosion_particle, false);
part_type_orientation(explosion_particle, 0, 360, 3, 1, true);


count = 0;