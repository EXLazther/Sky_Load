global.enemy_shot =
[

//Ball_L
ObjBattleEnemyBallLBlue,
ObjBattleEnemyBallLGreen,
ObjBattleEnemyBallLRed,
//Ball_M
ObjBattleEnemyBallMBlue,
ObjBattleEnemyBallMGreen,
ObjBattleEnemyBallMRed,
//Ball
ObjBattleEnemyBallBlue,
ObjBattleEnemyBallGreen,
ObjBattleEnemyBallPurple,
ObjBattleEnemyBallRed,
ObjBattleEnemyBallSkyBlue,
ObjBattleEnemyBallYellow,
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
	
	//Ball_L
	BALL_L_BLUE,
	BALL_L_GREEN,
	BALL_L_RED,
	//Ball_M
	BALL_M_BLUE,
	BALL_M_GREEN,
	BALL_M_RED,
	//Ball
	BALL_BLUE,
	BALL_GREEN,
	BALL_PURPLE,
	BALL_RED,
	BALL_SKYBLUE,
	BALL_YELLOW,
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

enum BORDER
{	
	R = 613,
	B = 768,
	CX = 613 /2,
	CY = 768 / 2
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

global.enemy_list = [
	{
        obj: ObjBattleDebug, name: "デバッグ用",
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "残像が示す運命" },
            { id: 2, name: "通常2" },
            { id: 3, name: "マワレマワレ" }
        ]
    },
    {
        obj: ObjBattleBossGruka, name: "グルカ",		  
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "烈爪撃" },
			{ id: 2, name: "通常2" },
			{ id: 3, name: "弾幕爆弾" },
			{ id: 4, name: "通常3" },
			{ id: 5, name: "紅のカザグルマ" },
			{ id: 6, name: "通常4" },
			{ id: 7, name: "捕縛術" }
        ]
    },
    {
        obj: ObjBattleBossIsaku, name: "イサク",
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "突進" },
            { id: 2, name: "全方位弾" }
        ]
	},
	{
        obj: ObjBattleTest1, name: "スター",
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "ゲイザースター" },
            { id: 2, name: "通常2" },
            { id: 3, name: "星の降る夜" },
            { id: 4, name: "通常3" },
            { id: 5, name: "銀河生誕" }
        ]
    },
    {
        obj: ObjBattleSpeed, name: "スピード",
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "残像が示す運命" },
            { id: 2, name: "通常2" },
            { id: 3, name: "マワレマワレ" }
        ]
    },
	{
        obj: ObjBattlePower, name: "パワー",
        patterns: [
            { id: 0, name: "通常1" },
            { id: 1, name: "怪力乱神" },
            { id: 2, name: "通常2" },
            { id: 3, name: "龍殺宝珠" }
        ]
    },
];