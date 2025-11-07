// 周囲からパーティクルを発生させる
count ++;

for(var _i=0; _i<5; _i++;){
if(count % 2== 0) {

    // 発生する円周上のランダムな角度
    var _angle = random(360);
    // 発生位置をオブジェクトの中心から半径32の円周上に設定
    var _px = x + lengthdir_x(100+random_range(0,50), _angle);
    var _py = y + lengthdir_y(100+random_range(0,50), _angle);
    
    // 方向は発生位置からオブジェクト中心へ
    var _dir = point_direction(_px, _py, x, y);
    
    // パーティクルの速度を設定（中心に集まるように正の速度）
    part_type_direction(particle_type, _dir, _dir, 0, 0);
    part_type_speed(particle_type, 3, 6, 0, 0);
	

    // パーティクルを生成
    part_particles_create(particle_system, _px, _py, particle_type, 1);

}

}

if count == 30 {
	instance_destroy()
}