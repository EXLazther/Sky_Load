for (var _i = 0; _i < 50; _i++;) {  // 50個のパーティクルを発生
    part_particles_create(explosion_system, x, y, explosion_particle, 1);  // (x, y)が爆発の中心	
}

instance_destroy();