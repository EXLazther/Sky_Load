// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください

function move_mob(_x,_y,_speed){
    move_towards_point(_x,_y,_speed);
    
    // ターゲットポイントに到達したら停止
    if(distance_to_point(_x,_y) <= 1) {
        speed = 0;
    }
}
