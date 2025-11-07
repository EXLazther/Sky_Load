// --- モード定数（管理しやすくするため） ---
#macro MODE_TITLE 0
#macro MODE_STG 1
#macro MODE_RPG 2

// --- 各モードの基準サイズ ---
global.title_w = 1274;
global.title_h = 768;

global.stg_w = 460;
global.stg_h = 576;

global.rpg_w = 637;
global.rpg_h = 384;

// 初期モード（とりあえずタイトルにしておく）
global.current_mode = MODE_TITLE;

// ... (その他のウィンドウ設定などは以前と同じ) ...
application_surface_draw_enable(false);