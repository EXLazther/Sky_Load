if (current_mode != BG_MODE_SKY) exit;

// --- 2D背景のスクロール描画 ---

// 1. スプライトを (0, scroll_y_pos) の位置から
//    無限にタイル状に描画します。
draw_sprite_tiled(
    sprite_bg,      // タイル状に描画するスプライト
    0,              // サブイメージ番号
    0,              // X座標
    scroll_y_pos    // Y座標
);

depth = 1000

// 2. このオブジェクトは STG画面(application_surface) に
//    描画しているため、はみ出した部分は自動的に
//    STG画面のサイズ (460x500など) で切り取られます。