// --- Createイベント (パーティクル定義) ---
ps = part_system_create_layer("Particles", false); // 指定レイヤーに作成
// 1. 高速スパーク (鋭く飛び散る)
pt_spark = part_type_create();
part_type_shape(pt_spark, pt_shape_spark);
part_type_size(pt_spark, 0.5, 1.0, -0.02, 0);
part_type_color_rgb(pt_spark, 255, 255, 100, 255, 200, 0); // 黄→オレンジ
part_type_blend(pt_spark, true); // 加算合成
part_type_life(pt_spark, 15, 30);
part_type_speed(pt_spark, 10, 15, -0.5, 0); // ★重要: 初期速度が速く、急激に減速(摩擦)
part_type_direction(pt_spark, 0, 360, 0, 0);
part_type_orientation(pt_spark, 0, 360, 0, 0, true); // 進行方向を向く

// 2. 爆風 (ゆっくり広がる)
pt_blast = part_type_create();
part_type_shape(pt_blast, pt_shape_smoke);
part_type_size(pt_blast, 1.0, 1.5, 0.05, 0); // 徐々に大きくなる
part_type_color2(pt_blast, c_orange, c_dkgray); // オレンジ→暗いグレー
part_type_alpha3(pt_blast, 1.0, 0.8, 0.0);      // 最後は透明に
part_type_life(pt_blast, 40, 60);
part_type_speed(pt_blast, 2, 5, -0.1, 0);       // 遅めで、あまり減速しない
part_type_direction(pt_blast, 0, 360, 0, 0);

// --- 爆発発生時の処理 (任意のタイミングで実行) ---
// スパークを30個ばら撒く
part_particles_create(ps, x, y, pt_spark, 30);

// 爆風を10個ばら撒く
part_particles_create(ps, x, y, pt_blast, 10);

// 衝撃波 (単純な拡大スプライト) オブジェクトを生成
//instance_create_layer(x, y, "Particles", obj_Shockwave);

// 画面を揺らす (別途カメラ制御が必要ですが、イメージとして)
// camera_shake = 10;