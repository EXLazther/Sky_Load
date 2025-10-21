/// @description 説明をここに挿入
// このエディターでコードを作成することができます
hp = 0;
atk = 0;
def = 0;
previous_phase = 0;
current_frame = 0;
is_idle = false;
my_timer_ids = [];
returned_value = noone;

// 自分が通知を受け取るリスナーであることをObjBattleManagerに登録する
// 念のため、ObjBattleManagerが存在するか確認
if (instance_exists(ObjBattleManager)) {
	ds_list_add(ObjBattleManager.listeners, id); // idは自分自身のインスタンスID
}
