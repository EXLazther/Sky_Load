function shot_set_move (_finst, _fspeed, _fangle, _fgravity, _fg_dir, _faccel, _fang_vel, _delay, _fs_init = false, _fa_init = false)
{		
	//弾の移動系プロパティを設定
	//　処理内容をメソッド変数として宣言
	var _move = function(_inst, _speed, _angle, _gravity, _g_dir, _accel, _ang_vel, _s_init = true, _a_init = true)
	{
		// インスタンスが配列でない場合配列に変換する
		if (!is_array(_inst))
		{
			_inst = [_inst];
		}
			
			for (var _i = 0; _i < array_length(_inst); _i++;)
			{
				// 渡されたインスタンスが存在するかを調べる　
			    // これをしないと未定義オブジェクトのプロパティを変更することになるためエラーとなる
				if instance_exists(_inst[_i]){
					if _s_init == false 
					{
						_inst[_i].speed = _inst[_i].speed + _speed;
					}
					else if _s_init == true
					{
						_inst[_i].speed = _speed;
					}
	
					if _a_init == false
					{
						_inst[_i].direction = _inst[_i].direction + _angle;
					}
					else if _a_init == true
					{
						_inst[_i].direction = _angle;
					}
					
					_inst[_i].gravity = _gravity;
					_inst[_i].gravity_direction = _g_dir;
					_inst[_i].acceleration = _accel;
					_inst[_i].angular_velocity = _ang_vel;
				}
			}
		
	}
	
	//　指定されたフレーム後に処理を実行するタイムソースを作成・実行
	
	set_timer(_move, [_finst, _fspeed, _fangle, _fgravity, _fg_dir, _faccel, _fang_vel, _fs_init, _fa_init], _delay, 1)
	
	
}


function shot_set_property (_finst, _fproperty_idx, _fvalue, _delay)//弾のプロパティを設定
{
	
	// インスタンスが配列でない場合配列に変換する
    if (!is_array(_finst)) {
        _finst = [_finst];
    }
	// プロパティを設定する関数を定義
	var _set = function(_inst, _property_idx, _value)
	{
		for (var _i = 0; _i < array_length(_inst); _i++;)
		{
			// インスタンスが存在し、有効な場合にのみ処理を実行
			if instance_exists(_inst[_i])
			{
				switch (_property_idx)
				{
				// プロパティIDに対応したプロパティを操作する
				case 0 :
					_inst[_i].direction = _value;
					break;
				case 1 :
					_inst[_i].friction = _value;
					break;
				case 2 :
					_inst[_i].gravity = _value;
					break;
				case 3 :
					_inst[_i].gravity_direction = _value;
					break;
				case 4 :
					_inst[_i].hspeed = _value;
					break;
				case 5 :
					_inst[_i].vspeed = _value;
					break;
				case 6 :
					_inst[_i].speed = _value;
					break;
				case 7 :
					_inst[_i].damage = _value;
					break;
				case 8 :
					_inst[_i].acceleration = _value;
					break;
				case 9 :
					_inst[_i].angular_velocity = _value;
					break;
				case 10 :
					_inst[_i].lifetime = _value;
					break;
				case 11 :
					_inst[_i].count_lifetime = _value;
					break;
				case 12 :
					_inst[_i].launcher = _value;
					break;
				case 13 :
					_inst[_i].auto_destroy_outroom_enabled = _value;
					break;
				case 14 :
					_inst[_i].auto_destroy_lifetime_enabled = _value;
					break;
				case 15 :
					_inst[_i].auto_destroy_collide_enabled = _value;
					break;
				case 16 :
					_inst[_i].reflect_enabled = _value;
					break;
				case 17 :
					_inst[_i].reflect_edge = _value;
					break;
				case 18 :
					_inst[_i].reflect_times = _value;
					break;
				case 19 :
					_inst[_i].reflect_count = _value;
					break;
				case 20 :
					_inst[_i].invicible = _value;
					break;
				case 21 :
					_inst[_i].speed_min = _value;
					break;
				case 22 :
					_inst[_i].speed_max = _value;
					break;
				}
			}
		}
	}

	
	set_timer(_set, [_finst, _fproperty_idx, _fvalue, _delay], _delay, 1)
	
}

function shot_set_aiming(_inst, _error) //弾の移動方向を自機狙いに設定
{
	///@description a
	if (!is_array(_inst))
		{
			_inst = [_inst];
		}
		
	for (var _i = 0; _i < array_length(_inst); _i++;){
	_inst[_i].direction = point_direction(_inst[_i].x, _inst[_i].y, ObjBattlePlayer.x, ObjBattlePlayer.y) + random_range(-_error, _error);
	}
}


function shot_set_reflect (_inst, _enable, _edge, _times) //反射関連のプロパティを設定
{
	// エラー処理
	if (!is_array(_edge))
	{
		show_error("reflect_edgeの引数が配列ではありません", true);
		
		if (!array_length(_edge) == 4)
		{
			show_error("reflect_edgeの配列の長さが適正ではありません", true);
		}
			
	}
	
	// インスタンスが配列でない場合配列に変換する
    if (!is_array(_inst)) {
        _inst = [_inst];
    }
	
	for (var _i = 0; _i < array_length(_inst); _i++;)
		{
			if instance_exists(_inst[_i])
			{
				with(_inst[_i])
				{
					reflect_enabled = _enable;
					reflect_edge = _edge;
					reflect_times = _times;
				}
			}
		}
}
	
	
function bget_angle_enemy_to_player(_enemy_instance)
{
	return point_direction(_enemy_instance.x, _enemy_instance.y, ObjBattlePlayer.x, ObjBattlePlayer.y);
}

function get_pentagram_edge_points(num_points_per_edge, CX, CY, outer_radius, _start_angle_degrees = 90) {
    
    // --- 1. 定数と頂点の準備 ---
    
    var PHI = (1 + sqrt(5)) / 2;
    var inner_radius = outer_radius / (PHI * PHI);
    
    var vertices = []; 
    
    // 角度の定義
    // ★ 修正点: 固定値 (pi/2) ではなく、引数で受け取った度数をラジアンに変換して使用
    var start_angle = degtorad(_start_angle_degrees);
    
    var angle_increment = 2 * pi / 5;  // 72度
    var inner_angle_offset = pi / 5;   // 36度

    // 5つの外側頂点と5つの内側頂点を計算
    for (var i = 0; i < 5; i++) {
        var outer_angle = start_angle + i * angle_increment;
        var outer_x = CX + outer_radius * cos(outer_angle);
        var outer_y = CY + outer_radius * sin(outer_angle);
        array_push(vertices, { x: outer_x, y: outer_y });
        
        var inner_angle = outer_angle + inner_angle_offset;
        var inner_x = CX + inner_radius * cos(inner_angle);
        var inner_y = CY + inner_radius * sin(inner_angle);
        array_push(vertices, { x: inner_x, y: inner_y });
    }

    // --- 2. 辺上の点を線形補間で計算 (ここは変更なし) ---
    
    var edge_points = [];
    var num_vertices = array_length(vertices);
    
    if (num_points_per_edge <= 0) {
        return [];
    }

    for (var i = 0; i < num_vertices; i++) {
        var p1 = vertices[i];
        var p2 = vertices[(i + 1) % num_vertices];
        
        var x1 = p1.x;
        var y1 = p1.y;
        var x2 = p2.x;
        var y2 = p2.y;
        
        for (var j = 0; j < num_points_per_edge; j++) {
            var t = j / num_points_per_edge;
            
            var lerp_x = lerp(x1, x2, t);
            var lerp_y = lerp(y1, y2, t);
            
            array_push(edge_points, { x: lerp_x, y: lerp_y });
        }
    }
            
    return edge_points;
}