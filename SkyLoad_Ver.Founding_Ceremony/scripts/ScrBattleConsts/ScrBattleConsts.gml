global.enemy_shot =
[
ObjBattleEnemyBallRed,
ObjBattleEnemyBallBlue,
ObjBattleEnemyBallGreen,
ObjBattleEnemySquareRed,
ObjBattleEnemySquarePurple,
ObjBattleEnemySquareGreen,
ObjBattleEnemyClaw
]

global.battle_finished =
[
false
]

enum BATTLE_FINISHED
{
ISAKU	
}

global.current_x = 0;
global.current_y = 0;
global.current_room = 0;


enum SHOT_ID
{
	BALL_RED,
	BALL_BLUE,
	BALL_GREEN,
	SQUARE_RED,
	SQUARE_PURPLE,
	SQUARE_GREEN,
	CLAW
}

enum ENEMY_TYPE{
	BOSS,
	NORMAL
}

global.player_health = noone;
global.encounting_enemy = 0;

enum SHOT_PROPERTY_ID
{
	DIRECTION,
	FRICTION,
	GRAVITY,
	GRAVITY_DIRECTION,
	SPEED_H,
	SPEEE_V,
	SPEED,
	DAMAGE,
	ACCEL,
	ANG_VEL,
	LIFETIME,
	LIFECOUNT,
	LAUNCHER,
	D_OUTROOM,
	D_LIFETIME,
	D_COLLIDE,
	REFLECT_ENABLED,
	REFLECT_EDGE,
	REFLECT_TIMES,
	REFLECT_COUNT,
	INVICIBLE,
	NONE
};

enum INTERPOLATION_TYPE
{
	LINER,
	ACCELERATION,
	DEACCELERATION,
	ACCELE_DEACCELE
}