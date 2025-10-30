text_id="";//最初の会話ID
system_id="";//システム変数
event_id="";//移動ファンクション
text_id1="";//会話後の会話
//会話後マップ移動用
target_x=0;
target_y=0;
target_rm=0;
target_face=0;
end_text=0;
set_text_move=0;
//会話後強制移動かマップ移動か
set_text_type=0;
//会話後他オブジェクト存在時強制移動
set_move_x=0;
set_move_y=0;
set_move_frame=0;
set_move_destroy=0;

set_symbol=[];

//会話後アイテム収得
item=global.item_list[m_ITEM_NAME.BROOCH];
item_foryou=0;