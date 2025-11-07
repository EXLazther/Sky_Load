ps = part_system_create_layer("Particles", false); // 指定レイヤーに作成

pt_charge = part_type_create();
part_type_shape(pt_charge, pt_shape_flare); // フレア型がエネルギーっぽい
part_type_size(pt_charge, 0.1, 1, -0.002, 0); // 徐々に小さく
part_type_color2(pt_charge, c_aqua, c_white);   // 色の変化
part_type_blend(pt_charge, true);               // ★重要: 加算合成オン！
part_type_life(pt_charge, 30, 30);              // 寿命を30ステップに固定