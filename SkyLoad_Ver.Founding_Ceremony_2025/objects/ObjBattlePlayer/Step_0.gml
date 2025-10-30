rightkey=keyboard_check(vk_right);
leftkey=keyboard_check(vk_left);
upkey=keyboard_check(vk_up);
downkey=keyboard_check(vk_down);

//x速度とy速度を習得
xspd=(rightkey-leftkey)*movement;
yspd=(downkey-upkey)*movement;

mask_index=sprite[DOWN];
if(yspd==0){
	if(xspd>0){face=RIGHT};
	if(xspd<0){face=LEFT};
}
if(xspd>0&&face=LEFT){face=RIGHT};
if(xspd<0&&face=RIGHT){face=LEFT};
if(xspd==0){
	if(yspd<0){face=UP};
	if(yspd>0){face=UP};
}
if(yspd<0&&face=UP){face=UP};
if(yspd>0&&face=UP){face=UP};
sprite_index=sprite[face];

if (xspd == 0 && yspd == 0){
	face = UP;
}

//衝突の計算
if(place_meeting(x+xspd,y,Obk_wall))
{
	xspd=0;
}
if(place_meeting(x,y+yspd,Obk_wall))
{
	yspd=0;
}
x+=xspd;
y+=yspd;

if (keyboard_check(ord("Z")) && ObjBattleManager.is_battle_started == true)
{
	counter ++;
	if(counter % 2 == 0 || counter == 1){
		instance_create_layer(x, y+40, "Instances", ObjBattlePlayerShot);
		
	}
}
 
/*
move_wrap(true, true, 0)

