<<<<<<< HEAD
if (is_undefined(movespd)) {
    movespd = 4; // デフォルト値を仮設定
}

if(keyboard_check(ord("Q")))
{
	instance_destroy(Obj_wall);
}

// 入力取得
rightkey = keyboard_check(vk_right);
leftkey  = keyboard_check(vk_left);
upkey    = keyboard_check(vk_up);
downkey  = keyboard_check(vk_down);

// x速度とy速度を取得
xspd = (rightkey - leftkey) * movespd;
yspd = (downkey - upkey) * movespd;

// ポーズ処理
if (instance_exists(obj_pause)) {
    xspd = 0;
    yspd = 0;
}
if (global.show_box == true) { // ←修正（= を == に）
    xspd = 0;
    yspd = 0;
}

// スプライトの設定（補間中は操作しない）
if (!instance_exists(m_ScrObjMoveInter)) {
    
    mask_index = sprite[DOWN];
    
    if (yspd == 0) {
        if (xspd > 0) { face = RIGHT; }
        if (xspd < 0) { face = LEFT; }
    }
    if (xspd > 0 && face == LEFT)  { face = RIGHT; } 
    if (xspd < 0 && face == RIGHT) { face = LEFT;  } 
    if (xspd == 0) {
        if (yspd < 0) { face = UP; }
        if (yspd > 0) { face = DOWN; }
    }
    if (yspd < 0 && face == DOWN) { face = UP;   } 
    if (yspd > 0 && face == UP)   { face = DOWN; }
	
    sprite_index = sprite[face];

    // 衝突の計算
    if (place_meeting(x + xspd, y, Obj_wall)) {
        xspd = 0;
    }
    if (place_meeting(x, y + yspd, Obj_wall)) {
        yspd = 0;
    }
	if (place_meeting(x + xspd, y, Obj_mob)) {
        xspd = 0;
    }
    if (place_meeting(x, y + yspd, Obj_wall)) {
        yspd = 0;
    }

    // Obj_mob_item と衝突した場合
    var enemy = instance_place(x + xspd, y, Obj_mob_item);
    if (enemy != noone) {
        var enemy_xspd = enemy.xspdx;   // ←衝突したインスタンスの変数を参照
        x += enemy_xspd;
        xspd = 0;
    }

    enemy = instance_place(x, y + yspd, Obj_mob_item);
    if (enemy != noone) {
        var enemy_yspd = enemy.yspdy;   // ←衝突したインスタンスの変数を参照
        y += enemy_yspd;
        yspd = 0;
    }

    // プレイヤーを動かす
    x += xspd;
    y += yspd;

    global.current_x = x;
    global.current_y = y;
}

// アニメーション停止処理
if (xspd == 0 && yspd == 0 && !instance_exists(m_ScrObjMoveInter)) {
    image_index = 0;
}
 
=======
// @description 説明をここに挿入
// このエディターでコードを作成することができます

rightkey=keyboard_check(vk_right);
leftkey=keyboard_check(vk_left);
upkey=keyboard_check(vk_up);
downkey=keyboard_check(vk_down);



//x速度とy速度を習得
xspd=(rightkey-leftkey)*movespd;
yspd=(downkey-upkey)*movespd;
//ポーズ
if instance_exists(obj_pause)
{
	xspd=0;
	yspd=0;
}
if global.show_box=true
{
	xspd=0;
	yspd=0;
}
//スプライトの設定
mask_index=sprite[DOWN];
if(yspd==0){
	if(xspd>0){face=RIGHT};
	if(xspd<0){face=LEFT};
}
if(xspd>0&&face=LEFT){face=RIGHT};
if(xspd<0&&face=RIGHT){face=LEFT};
if(xspd==0){
	if(yspd<0){face=UP};
	if(yspd>0){face=DOWN};
}
if(yspd<0&&face=DOWN){face=UP};
if(yspd>0&&face=UP){face=DOWN};
sprite_index=sprite[face];

//衝突の計算
if(place_meeting(x+xspd,y,Obk_wall))
{
	xspd=0;
}
if(place_meeting(x,y+yspd,Obk_wall))
{
	yspd=0;
}
// objenemy_mobと衝突した場合、その移動分の座標を変更します。

// objenemy_mobが存在するかどうかを確認
if (place_meeting(x+xspd,y,Obj_mob)) {
    var enemy_xspd = Obj_mob.xspdx;
    
    // 移動分の座標を取得
    var dx = enemy_xspd;
    
    // 元の座標に移動後の位置を代入
    x += dx;
    
    // 移動速度を0にする（オプション）
	xspd=0;
}

if (place_meeting(x,y+yspd,Obj_mob)) {
    var enemy_yspd = Obj_mob.yspdy;
    
    // 移動分の座標を取得
    var dy = enemy_yspd;
    
    // 元の座標に移動後の位置を代入
    y += dy;
    
    // 移動速度を0にする（オプション）
	yspd=0;
}
if (place_meeting(x+xspd,y,Obj_mob_item)) {
    var enemy_xspd = Obj_mob_item.xspdx;
    
    // 移動分の座標を取得
    var dx = enemy_xspd;
    
    // 元の座標に移動後の位置を代入
    x += dx;
    
    // 移動速度を0にする（オプション）
	xspd=0;
}

if (place_meeting(x,y+yspd,Obj_mob_item)) {
    var enemy_yspd = Obj_mob_item.yspdy;
    
    // 移動分の座標を取得
    var dy = enemy_yspd;
    
    // 元の座標に移動後の位置を代入
    y += dy;
    
    // 移動速度を0にする（オプション）
	yspd=0;
}
//プレイヤーを動かす
x+=xspd;
y+=yspd;

global.current_x=x;
global.current_y=y;
//アニメーション
if(xspd==0&&yspd==0)
{
	image_index=0;
}





>>>>>>> Battle_Feture
