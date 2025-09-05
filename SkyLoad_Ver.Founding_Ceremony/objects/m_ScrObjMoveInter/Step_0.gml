switch type {

	case 0:
	// 現在の進行度を計算 (0 ~ 1 の範囲)
	time = current_frame / frame;

	// 線形補間でx, y座標を更新
	target_inst.x = lerp(start_x, target_x, time);
	target_inst.y = lerp(start_y, target_y, time);

	// フレームカウントを進める
	if (current_frame < frame) {
		current_frame ++;
	} else {
    instance_destroy()
	}
	break;
	
	case 1:
	// Ease-In補間 (ゆっくり加速)
	time = power(current_frame / frame, 2);
	
	target_inst.x = lerp(start_x, target_x, time);
	target_inst.y = lerp(start_y, target_y, time);

	if (current_frame < frame) {
		current_frame ++;
	} else {
    instance_destroy()
	}
	break;
	
	case 2:
	// Ease-Out補間 (ゆっくり減速)
	time = 1 - power(1 - (current_frame / frame), 2);
	
	target_inst.x = lerp(start_x, target_x, time);
	target_inst.y = lerp(start_y, target_y, time);

	if (current_frame < frame) {
		current_frame ++;
	} else {
    instance_destroy()
	}
	break;

	case 3:
	// Ease-In-Out補間 (加速と減速)
	time = (1 - cos(pi * (current_frame / frame))) / 2;
	
	target_inst.x = lerp(start_x, target_x, time);
	target_inst.y = lerp(start_y, target_y, time);

	if (current_frame < frame) {
		current_frame ++;
	} else {
    instance_destroy()
	}
	break;
	

}
