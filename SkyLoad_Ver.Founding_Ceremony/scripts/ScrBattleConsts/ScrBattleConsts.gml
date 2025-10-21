global.enemy_shot =
[
//Ball
ObjBattleEnemyBallBlue,
ObjBattleEnemyBallGreen,
ObjBattleEnemyBallPurple,
ObjBattleEnemyBallRed,
ObjBattleEnemyBallSkyBlue,
ObjBattleEnemyBallYellow,
//Ball_L
ObjBattleEnemyBallLBlue,
ObjBattleEnemyBallLGreen,
ObjBattleEnemyBallLRed,
//Ball_M
ObjBattleEnemyBallMBlue,
ObjBattleEnemyBallMGreen,
ObjBattleEnemyBallMRed,
//Drop
ObjBattleEnemyDropBlue,
ObjBattleEnemyDropGreen,
ObjBattleEnemyDropRed,
//Laser
ObjBattleEnemyLaserBlue,
ObjBattleEnemyLaserGreen,
ObjBattleEnemyLaserRed,
//Square
ObjBattleEnemySquareRed,
ObjBattleEnemySquarePurple,
ObjBattleEnemySquareGreen,
//Star
ObjBattleEnemyStarBlue,
ObjBattleEnemyStarRed,
ObjBattleEnemyStarYellow,

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
	//Ball
	BALL_BLUE,
	BALL_GREEN,
	BALL_PURPLE,
	BALL_RED,
	BALL_SKYBLUE,
	BALL_YELLOW,
	//Ball_L
	BALL_L_BLUE,
	BALL_L_GREEN,
	BALL_L_RED,
	//Ball_M
	BALL_M_BLUE,
	BALL_M_GREEN,
	BALL_M_RED,
	//Drop
	DROP_BLUE,
	DROP_GREEN,
	DROP_RED,
	//Laser
	LASER_BLUE,
	LASER_GREEN,
	LASER_RED,
	//Square
	SQUARE_RED,
	SQUARE_PURPLE,
	SQUARE_GREEN,
	//Star
	STAR_BLUE,
	STAR_RED,
	STAR_YELLOW,
	
	CLAW
}

enum BATTLE_BORDER
{
	LEFT_BORDER = 68,
	RIGHT_BORDER = 534,
	UP_BORDER = 37,
	BOTTOM_BORDER = 540
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
	SPEED_MIN,
	SPEED_MAX,
	NONE
};

enum INTERPOLATION_TYPE
{
	LINER,
	ACCELERATION,
	DEACCELERATION,
	ACCELE_DEACCELE
}