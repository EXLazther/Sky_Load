x = ObjBattlePlayer.x;
y = ObjBattlePlayer.y;

if (keyboard_check(vk_shift)) {
    image_alpha = 1; // シフトキーが押されていない場合に不透明にする
} else if (!keyboard_check(vk_shift)) {
	image_alpha = 0; // シフトキーが押されている場合に半透明にする
}
	