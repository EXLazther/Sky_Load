// パーティクルシステムの作成
particle_system = part_system_create();

// パーティクルタイプの作成
particle_type = part_type_create();

// パーティクルの形状を設定（小さな光点のような形）
part_type_shape(particle_type, pt_shape_spark);

// パーティクルのサイズ（小さい粒子）
part_type_size(particle_type, 0.2, 0.5, 0, 0);

// パーティクルの寿命（一定時間で消える）
part_type_life(particle_type, 10, 30);

// パーティクルの色を設定（時間経過と共に色が変わる）
part_type_color_hsv(particle_type, 30, 255, 255, 60, 255, 255);

// パーティクルの透明度
part_type_alpha3(particle_type, 0, 1, 0);  // 透明→不透明→透明

// パーティクルのブレンド効果（光のように見せるため加算ブレンド）
part_type_blend(particle_type, true);

part_type_orientation(particle_type, 0, 360, 3, 1, true);

count = 0;