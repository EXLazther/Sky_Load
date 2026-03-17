//テキストIdパラメータ
function m_scr_game_text(_text_id,_system_text){
	switch(_system_text)
	{
		case "0":
			global.system_text=0;
			break;
		case "1":
			global.system_text=1;
			break;
		case "2":
			global.system_text=2;
			break;
		
	}
		
	switch(_text_id){
		//システム用コード
		case "system_text1":
			m_set_text("水面が揺れている","","no","no");
			break;
		case "system_text2":
			m_set_text("岩が邪魔で通れない","","no","no");
			break;
		case "system_text3":
			m_set_text("岩が邪魔で通れない","","no","no");
			break;
		case "system_text4":
			m_set_text("朽ち果てた柱だ","","no","no");
			break;
		case "system_text5":
			m_set_text("明かりは灯ってないようだ","","no","no");
			break;
		case "system_text6":
			m_set_text("謎の銅像だ","","no","no");
			break;
		case "system_text7":
			m_set_text("何かの絵だ","","no","no");
			break;
		case "system_text8":
			m_set_text("崩落していて先に進めない","","no","no");
			break;
		
			//イベント用会話文
		case "town_talk_1":
			m_set_text("街の人に聞き込みをしてみよう","","","");
			break;
		
		case "prison_talk_1":
			m_set_text("貴様なぜここにいる！","帝国兵士","no","no");
			break;
		
			//town
		case "system_text9":
			m_set_text("ただいま準備中…","","no","no");
			break;
		case "system_text10":
			m_set_text("どうやら営業時間外のようだ","","no","no");
			break;
		case "system_text11":
			m_set_text("ようこそゼピュアへ","","no","no");
			break;
		case "system_text12":
			m_set_text("開店時刻16:00~5:00","","no","no");
			break;
		case "system_text13":
			m_set_text("リゾー専門店　～イタリスタ～","","no","no");
			break;
		case "system_text14":
			m_set_text("柵の向こうにお墓が見える","","no","no");
			break;
		case "system_text15":
			m_set_text("封鎖されていて通れない","","no","no");
			break;
		case "system_text16":
			m_set_text("手配書だ\n綺麗な姿が描かれている","","no","no");
			break;
		case "system_text17":
			m_set_text("壁の様に獣人が集まっている","","no","no");
			break;
		case "system_text18":
			m_set_text("道が崩落していて通れない","","no","no");
			break;
		case "system_text19":
			m_set_text("'何か'があった跡がある","","no","no");
			break;
		case "system_text20":
			m_set_text("倒木していて通れない","","no","no");
			break;
			case "system_text21":
			m_set_text("本や瓶がおかれている","","no","no");
			break;
		case "system_text22":
			m_set_text("工事中のようだ","","no","no");
			break;
			
			
		case "system_eventtext_1":
			m_set_text("ここがどこか周りに聞き込みをしよう","","");
			break;	
		case "system_eventtext_2":
			m_set_text("謎の少女の話を聞こう","","");
			break;	
		case "system_eventtext_3":
			m_set_text("宝物庫から気になるお宝を貰おう","","");
			break;	
		case "system_eventtext_4":
			m_set_text("リアンたちを追いかけよう","","");
			break;
		case "system_eventtext_5":
			m_set_text("先に受付を済まそう","","");
			break;	
		case "system_eventtext_6":
			m_set_text("こっちは後で調べよう","","");
			break;	
		case "system_eventtext_7":
			m_set_text("広い街だなぁ…外に出るにはどうしたらいいんだろ？","コハク","","");
			m_set_text("この近くにいる兵士たちから話を聞いてみよう","","","");
			break;
		case "system_eventtext_8":
			m_set_text("この近くにいる兵士たちから話を聞いてみよう","","","");
			break;
		//会話用コード
		case "talk_1_1":
			m_set_text("ここはの統治する島”ゾートネイシ”よ","町人","no","no");
			m_set_text("更に言うならガラ王国とバシ帝国との最前線\n多くの戦士の眠る街ゼピュアよ","町人","no","no");
			m_set_text("観光気分なら帰ったほうがいいわ\n安全が保障できないもの","町人","no","no");
			m_set_text("なんかマズいとこ来ちゃったかも…","コハク","no","no");
			if(instance_exists(Obj_wall_event))
			{
				m_wall_event(Obj_wall_event.wall_id);
			}
			break;
		case "talk_1_2":
			m_set_text("王国聖騎士団が来てるそうだ","町人","no","no");
			m_set_text("これから帝国に向かうらしいんだ","町人","no","no");
			m_set_text("だからしばらく通行止めだぜ","町人","no","no");
			break;
		case "talk_1_3":
			m_set_text("お前さんそれは初期型の簡易門(インスタントゲート)か？","町人","no","no");
			m_set_text("初期型の簡易門？","コハク","no","no");
			m_set_text("なんだい　量産型宝物(ホウモツ)をしらないのかい？","町人","no","no");
			m_scr_option("知ってるよ","talk_know");
			m_scr_option("知らないよ","talk_notknow");
			break;
			case "talk_know":
				m_set_text("知ってるなら話は早い　俺たちの移動手段である門(ゲート)を\n一人用に改良された最初の門だ","町人","no","no");
				m_set_text("結構する代物だぜ？大切にしな","町人","no","no");
				m_set_text("ついでにこいつもやろう","町人","no","no");
				m_set_text("見たところ旅人だろう？気を付けてな","町人","no","no");
				m_set_text("コハクは簡易治療薬(インスタントライフ)を手に入れた","","no","no");
				m_set_text("ありがとう！","コハク","no","no");
				break;
			case "talk_notknow":
				m_set_text("ならそもそも宝物が何なのかからだな","町人","no","no");
				m_set_text("簡単に言うと特別な物に宿る意志みたいなものだ。","町人","no","no");
				m_set_text("例えば言語が違うのに会話できるようになる矛とか攻撃を通さない衣とかだな","町人","no","no");
				m_set_text("んで、量産型宝物は霊機都市バヨウトウが作った人工宝物さ","町人","no","no");
				m_set_text("お前さんの持ってる簡易門はその中でも初期のほうに出来たものってわけだ","町人","no","no");
				m_set_text("なるほど","コハク","no","no");
				m_set_text("ついでにこいつもやろう","町人","no","no");
				m_set_text("見たところ旅人だろう？気を付けてな","町人","no","no");
				m_set_text("コハクは簡易治療薬(インスタントライフ)を手に入れた","","no","no");
				break;
		case "talk_3_after":
			m_set_text("どうした？何か付いてるか","町人","no","no");
			break;
		case "talk_1_4":
			m_set_text("お嬢さんこの時期に外に出るのかい？","門番","no","no");
			m_set_text("別に止めやしないが気をつけてな","門番","no","no");
			break;
		case "talk_1_5":
			m_set_text("これが終わったら報告書の作成と物資運搬と…ブツブツブツ","門番","no","no");
			m_set_text("話しかけるのはやめておこう","","no","no");
			break;
		case "talk_1_6":
			m_set_text("悪いがこの先通行止めだ","王国兵","no","no");
			m_set_text("どうやら対岸で損傷が見つかったみたいでな","王国兵","no","no");
			m_set_text("他の路を通ってくれ","王国兵","no","no");
			break;
		case "talk_1_7":
			m_set_text("…………","町人","no","no");
			m_set_text("泣いている","","no","no");
			break;
		case "talk_1_8":
			m_set_text("あんたもお花をあげに来たのかい？","町人","no","no");
			m_set_text("更に上に昇っちまったけどあっちでも楽しんでくれてるさ","町人","no","no");
			m_set_text("そいつの分もしっかり生きるんだよ","町人","no","no");
			break;
		case "talk_1_9":
			m_set_text("ほら、さっさと行くぞ","グルカ","no","no");
			break;
		case "talk_1_10":
			m_set_text("あいつらどうやら同じ場所ぐるぐる見てるだけみたいだな","グルカ","no","no");
			break;
		case "talk_1_11":
			m_set_text("そろそろ帝国のやつらとやり合うそうだ","王国兵","no","no");
			m_set_text("避難するなら早めに避難しな","王国兵","no","no");
			m_set_text("ただ列車は人でごった返してるだろうな","王国兵","no","no");
			break;
		case "talk_1_12":
			m_set_text("町の外に出たいのか？","王国兵","","");
			m_set_text("ならこいつを渡しておこう","王国兵","","");
			m_set_text("少しは気休めになるだろう","王国兵","","");
			m_set_text("コハクは薬草を手に入れた","","","");
			m_set_text("気をつけろよ？何が起こるか分からんからな","王国兵","","");
			m_wall_event(Obj_wall_event.wall_id);
			break;
		case "talk_1_12_after":
			m_set_text("すまない\nこれぐらいしか渡せるものがないんだ","王国兵","","");
			break;
		case "talk_1_13":
			m_set_text("俺の英雄伝説が始まっちまうなw","王国兵","","");
			break;
		case "talk_1_14":
			m_set_text("命がなければ何もできないんだ","王国兵","","");
			m_set_text("生きてるうちに悔いの無いようにするんだぞ","王国兵","","");
			break;
		case "talk_1_15":
			m_set_text("今だと楽しいが勝つのにいざ現地に行くとこわいんだ…","王国兵","","");
			break;
		//2章
		case "talk_2_1":
			m_set_text("コロシアムはここの隣じゃからすぐわかるぞ","ジョージ","no","no");
			m_set_text("リアンとレアンもおるから大丈夫じゃろ","ジョージ","no","no");
			break;

		case "talk_2_2":
			m_set_text("ん？お前さん大会はどうした？","ジョージ","no","no");
			break;
			
		case "talk_2_3":
			m_set_text("簡易門は特定の場所か最後の移動先からしか移動できんのじゃ","ジョージ","no","no");
			m_set_text("しかし何があって門の登録がされていないここに移動できたのじゃ？","ジョージ","no","no");
			break;
			
		case "talk_2_4":
			m_set_text("どうしたの？入りなよ！","リアン","no","no");
			break;
		case "talk_2_5":
			m_set_text("ジョー爺は何でも直せるからねぇ","レアン","no","no");
			break;
		case "talk_2_6":
			m_set_text("何で殿堂入りなのよ！","リアン","no","no");
			m_set_text("僕達の宝物の出力レベルが高いからねぇ","レアン","no","no");
			m_set_text("ねぇ！おねーさんはどう思う！？","リアン","no","no");
			m_set_text("アハハ…","コハク","no","no");
			break;
		case "talk_2_7":
			m_set_text("このコロシアムも天与でねぇ\n僕達の攻撃でもびくともしないんだ","レアン","no","no");
			m_set_text("まぁ私たちの場合破壊がメインじゃないしね","リアン","no","no");
			m_set_text("そんなに固いんだ","コハク","no","no");
			break;
		case "talk_2_8":
			m_set_text("もうすぐ始まっちゃうよ","レアン","no","no");
			m_set_text("ほら早く！","リアン","no","no");
			break;
		
		case "talk_2_9":
			m_set_text("選手控室は向かって右側にございます","受付","no","no");
			break;
		case "talk_2_10":
			m_set_text("優勝おめでとうございます","受付","no","no");
			break;
		case "talk_2_11":
			m_set_text("フォートコロシアムへようこそ","受付","no","no");
			break;

		case "talk_2_12":
			m_set_text("あーぁ　おねーさんと戦いたかったなぁ","リアン","no","no");
			m_set_text("本気のリアンそういえば見たことないんだよねぇ…","レアン","no","no");
			m_set_text("コロシアムの戦い見てるとリアンの本気見れそうだねぇ…","レアン","no","no");
			break;
			
		case "talk_2_13":
			m_set_text("ふむ、今日は見ごたえがありそうだな","観客","","");
			break;
			
		case "talk_2_14":
			m_set_text("あはははははははははは！！！！！！\n楽しい！楽しい！楽しい！！！","観客","","");
			break;
			
			case "talk_2_15":
			m_set_text("どうして僕がエントリーできないんだ\nそれもこれも門が壊れるのから全て…ブツブツブツ","観客","","");
			m_set_text("話しかけるのはやめておこう","","","");
			break;
			
			case "talk_2_16":
			m_set_text("なるほど、遂に約束の日が来るか\nふふふ…我が右目に存在せし母なる水の力が遂に解き放たれるか","観客","","");
			break;
			
		//イベント用コード
		case "event_1":
			m_set_text("珍しいですね\nこんなところに人が来るなんて","安心感のある声","no","no","2","1");
			m_set_text("しかも寝ていますね","安心感のある声","no","no","2","2");
			m_set_text("あ、起きました？","安心感のある声","no","no","2");
			m_scr_option("ここはどこ？","talk");
			m_scr_option("あなたは誰？","talk");
			
			break;
			case "talk":
				m_set_text("状況がわからないようですね","声の主","no","eltia","2");
				m_set_text("それでは先に操作方法から教えましょうか","声の主","no","eltia","2");
				m_set_text("まずは移動からですね","声の主","no","eltia","2");
				m_set_text("進みたい方向を十字キーで押してみてください\nそうするとその方向に進みますよ","声の主","no","eltia","2");
				break;
			
		case "event_2":
			m_set_text("上出来ですね","声の主","no","eltia_ki","2");
			m_set_text("それでは次は身の守り方を知りましょうか\n丁度いいカニが来てますし","声の主","no","eltia","2");
			m_set_text("最初にXキーを押すことで戦闘が始まります","声の主","no","eltia","2");
			m_set_text("相手の攻撃に当たらないよう気を付けてください\n下にあるあなたの体力バーがなくなると負けてしまいますのでお気をつけて","声の主","no","eltia","2");
			m_set_text("移動方法は変わりませんが攻撃が出来ます\nZキーで攻撃しますよ","声の主","no","eltia","2");
			m_set_text("それでは頑張ってください","声の主","no","eltia","2");
			break;
		case "event_2_1":
			m_set_text("さすがです","声の主","no","eltia_ki","2");
			m_set_text("どうですか？記憶の混乱は落ち着きましたか？","声の主","no","eltia_gimon","2");
			m_scr_option("名前以外思い出せない","event_2_1_1");
			break;
			case "event_2_1_1":
				m_set_text("おや、それは困りましたね","声の主","no","eltia_gimon","2");
				m_set_text("それでは辺りを調べてみましょう","声の主","no","eltia_sasayaki","2");
				break;
			case "event_2_2":
				m_set_text("おや、木の実が落ちていますね","声の主","","eltia_gimon","2");
				m_set_text("拾ってみましょうか","声の主","","eltia_ki","2");
				m_set_text("木の実を拾った","","no","");
				m_set_text("それではスペースキーを押してメニューを開きましょう\n十字キーでアイテムにカーソルを合わせ、Zキーで確定させます","声の主","no","eltia_ki","2");
				m_set_text("そうするとアイテムを表示と出るはずです\nもう一度Zキーを押すことでアイテムメニューが開きます","声の主","no","eltia_ki","2");
				m_set_text("その画面ではメニュー操作と同様に十字キーで移動、Zキーで確定させます","声の主","no","eltia_ki","2");
				m_set_text("閉じる場合はXキーを押すことで戻るにカーソルが合わさるのでZキーで確定させてください","声の主","no","eltia_ki","2");
				//m_set_text("分からなくなったらQキーを押してください　操作方法が表示されますので","声の主","no","eltia_ki","2");
				break;
		
		case "event_3":
			m_set_text("だいぶ暗いですね","声の主","no","eltia_sasayaki","2");
			m_set_text("しかも今にも崩れそうです","声の主","no","eltia_sasayaki","2");
			m_set_text("慎重に進みましょうか","声の主","no","eltia_sasayaki","2");
			break;
		case "event_4":
			m_set_text("広い場所に出ましたね","声の主","no","eltia_sasayaki","2");
			m_set_text("でも気を付けてください　\n何が起こるかわかりませんから","声の主","no","eltia","2");
			break;
		case "event_5":
			m_set_text("そういえば自己紹介がまだでしたね","声の主","no","eltia","2");
			m_set_text("私はエルティア\nこれは能力によってあなたと喋ることができています","エルティア","no","eltia_ki","2");
			m_set_text("よろしくお願いしますね","エルティア","no","eltia_futeki","2");
			break;
		case "event_6":
			m_set_text("おや、ここだけ明るいですね","エルティア","no","eltia_gimon","2");
			m_set_text("…？","自分","kohaku","eltia_gimon","1");
			m_set_text("床に落ちているペンダントを拾った。","","","");
			m_set_text("これを使って逃げて！","？？？","","");
			m_set_text("あなたは我々の最後の希望…！","？？？","","");
			m_set_text("さぁ！行って！ニマ・コハク！","？？？","","");
			m_set_text("これは自分の記憶…？","コハク","kohaku_gimon","","1");
			Obj_anyevent.set_text_move=1;
			Obj_anyevent.text_id1="event_6_1";
			break;
			case "event_6_1":
			instance_create_layer(0,0,"Instances",Obj_flash);
			Obj_flash.set_type=2;
			Obj_flash.set_alpha=0;
			m_set_text("え？なに！？","コハク","kohaku_odoroki","","1");
			m_set_text("さぁ、旅の始まりです\n頑張りましょうか","エルティア","","eltia_futeki","2");
			Obj_anyevent.set_text_move=3;
			break;
			//town
		case "event_7":
			m_set_text("え、何処ここ？","コハク","gate_konwaku_2","no","1");
			m_set_text("エルティア？","コハク","gate_konwaku_2","no","1");
			m_set_text("エルティアからの反応はない","","gate_konwaku_2","no","1");
			m_set_text("もう…","","gate_futekusare","no","1");
			m_set_text("とりあえず聞き込みね","コハク","gate_interested","no","1");
			m_set_text("街の住人に聞き込みをしてみよう","","","","1");
			break;
		case "event_8":
			m_set_text("よかった…街から出れたみたい","コハク","gate_tsuujou","no","1");
			m_set_text("他の街に行ってみましょう","コハク","gate_tsuujou","no","1");
			break;
		case "event_9":
			m_set_text("道が封鎖されている","コハク","","no");
			m_set_text("うそでしょ…","コハク","gate_kyoufu_2","no","1");
			m_set_text("どこかに通れる道はないかな？","コハク","gate_ai","no","1");
			m_wall_event(Obj_wall_event.wall_id);
			break;
		case "event_10":
				var _objmob1=instance_create_layer(0,336,"Instances",Obj_map_Guardian);
		var _objmob2=instance_create_layer(0,368,"Instances",Obj_map_Guardian);
		var _objmob3=instance_create_layer(0,400,"Instances",Obj_map_Guardian);
		Obj_anyevent.set_symbol[0]=_objmob1;
		Obj_anyevent.set_symbol[1]=_objmob2;
		Obj_anyevent.set_symbol[2]=_objmob3;
		map_objmove_interpolation(_objmob1.x,_objmob1.y,Obj_Player.x-60,_objmob1.y,100,0,_objmob1);
		map_objmove_interpolation(_objmob2.x,_objmob2.y,Obj_Player.x-60,_objmob2.y,100,0,_objmob2);
		map_objmove_interpolation(_objmob3.x,_objmob3.y,Obj_Player.x-60,_objmob3.y,100,0,_objmob3);
			m_set_text("そろそろガラ王国が近くなってきたな","帝国兵","no","no");
			m_set_text("油断するなよ？聖騎士団の奴らの出鼻を挫くんだ","帝国兵","no","no");
			m_set_text("…あ？誰だあんた？","帝国兵","no","no");
			m_set_text("見ない顔だが…王国の方向から来たってことはそういうことだよな？","帝国兵","gate_konwaku_1","no","1");
			m_set_text("あの～？何か勘違いしてるのでは…","コハク","gate_konwaku_1","","1");
			m_set_text("'この状況'で対向からくる理由なんざ一つだろ","帝国兵","gate_kyoufu_1","no","1");
			m_set_text("'この状況'？　\nあ！ちょっと！？","コハク","gate_odoroki","no","1");
			m_set_text("…","コハク","gate_odoroki","no","1");
			m_set_text("いけませんねぇ…手荒なのは好ましくないですよ","コハク？","in_eltia_badsmile","","1");
			m_set_text("何！？うわぁぁぁぁぁぁ！！！","帝国兵","in_eltia_badsmile","","2")
			with(Obj_Sound_test)
			{
				request_bgm_change(BGM_TYPE.RUN)
			}
			Obj_anyevent.event_id="event_1_1";
			global.set_destroy=1;
			break;
		case "event_11":
			m_set_text("あらら\nやっちゃいましたね","エルティア","","eltia_gimon","2");
			m_set_text("エルティア！？何で今まで反応してくれなかったのよ！","コハク","gate_do","eltia_gimon","1");
			m_set_text("すみません\nどうやらそちらから私と会話することができないようですね","エルティア","gate_do","eltia_ai","2");
			m_set_text("ひとまず逃げましょう\n追手が来ますからね","エルティア","gate_do","eltia","2");
			m_set_text("どうやらそこの草むらに通れそうな道がありますよ","エルティア","gate_konwaku_1","eltia_ki","2");
			m_set_text("えぇ…","コハク","gate_konwaku_1","","1");
			m_set_text("(そういえば私どうやって倒したんだろ…？)","コハク","gate_konwaku_1","","1");
			break;
		case "event_12":
			m_set_text("この森はかなり複雑ですね","エルティア","","eltia","2");
			m_set_text("ですが安心してください\n私が導きます","エルティア","","eltia_ki","2");
			m_set_text("おい！森に向かって足跡が伸びてるぞ！","帝国兵","gate_kyoufu_1","","3");
			m_set_text("走りましょうか","エルティア","gate_magao","eltia_raku","2");
			m_set_text("何されるかわからないもんね！","コハク","gate_kyoufu_3","eltia_raku","1");
			global.set_destroy=0;
			break;
		case "event_13":
			m_set_text("貴様監視の目を逃れて近づくとは何者だ","帝国兵","","no");
			m_set_text("どういうこと！？先回りされた？","コハク","gate_odoroki","","1");
			m_set_text("どうやら逃げているうちに帝国側に来てしまったようですね","エルティア","gate_odoroki","eltia_gimon","2");
			m_set_text("こいつを捕まえろ！","帝国兵","gate_odoroki","eltia_gimon","3");
			m_set_text("うわぁぁぁ！！！","コハク","gate_odoroki","eltia_gimon","1");
			break;
		case "event_14":
			m_wall_event(Obj_wall_event.wall_id);
			m_set_text("う～ん…","コハク","gate_kizetsu_2","","1");
			m_set_text("ッハ！","コハク","gate_odoroki","guruka_magao","1");
			m_set_text("お、起きたか？","獣の少女","","guruka_magao","2");
			m_set_text("ここは！？","コハク","gate_odoroki","guruka_magao","1");
			m_set_text("バシ帝国の地下牢だぜ","獣の少女","gate_konwaku_1","guruka_magao","2");
			m_set_text("あんたは何をしてここに連れてこられたんだ？","獣の少女","gate_konwaku_1","guruka_magao","2");
			m_scr_option("ちょっと事情が…","event_n");
			m_scr_option("ただ'オハナシアイ'を…","event_g")
			break;
			case "event_n":
				m_set_text("てことは聖騎士団とかじゃねぇってことか","獣の少女","gate_konwaku_2","guruka_magao","2");
				m_scr_option("ところで貴方の名前は？","event_14_2");
				break;
			case "event_g":
				Obj_Player.m_set_textoption+=1
				Obj_Player.status_g+=1;
				m_set_text("面白いやつだな","獣の少女","gate_tere_1","guruka_emi","2");
				m_scr_option("ちなみに貴方の名前は？","event_14_2");
				break;
		case "event_14_2":
			m_set_text("俺か？俺はグルカだ","獣の少女","gate_tsuujou","guruka_emi","2");
			m_set_text("しがない傭兵をしている\nよろしくな　え～っと…","グルカ","gate_tsuujou","guruka_emi","2");
			m_set_text("ニマ　コハクです！よろしく！","コハク","gate_ki","guruka_emi","1");
			break;
		case "event_15":
			m_set_text("なぁ、ここから出たいと思わないか","グルカ","no","guruka_purasu","2");
			m_scr_option("もちろん","event_15_1");
			m_scr_option("ここでもいいかなぁ…","event_15_2");
			break;
			case "event_15_1":
				m_set_text("それなら話は早い","グルカ","no","guruka_purasu","2");
				m_set_text("後ろの壁を掘っておいてある","グルカ","no","guruka_purasu","2");
				m_set_text("新しくあんたが来たってことは手続きやらなんやらでバタバタしてるからな","グルカ","no","guruka_purasu","2");
				m_set_text("この隙に脱出するぞ","グルカ","no","guruka","2");
				break;
			case "event_15_2":
			Obj_Player.status_g+=1;;
			Obj_Player.m_set_textoption+=1;
				m_set_text("…冗談だろ？","グルカ","no","guruka_odoroki","2");
				m_set_text("とりあえずここから脱出する\n付いてこい","グルカ","no","guruka_magao","2");
				m_set_text("付いていきましょう\n彼女は恐らく出口を知ってます","エルティア","no","guruka_magao","2");
				break;		
		case "event_16":
			m_set_text("ところでグルカってさ","コハク","gate_interested","no","1");
			m_set_text("何をしてここにいるの？","コハク","gate_interested","no","1");
			m_set_text("王国側に雇われて捜査してたんだが見つかっちまってな","グルカ","gate_interested","guruka_purasu","2");
			m_set_text("なるほど","コハク","gate_ki","guruka_purasu","1");
			break;
		case "event_17":
			m_set_text("なんだここは","グルカ","guruka_magao","","1");
			m_set_text("何かのための広場でしょうかね？","エルティア","guruka_magao","eltia_gimon","2");
			m_set_text("王国のネズミがコソコソ何をしてるんだ？","？？？","guruka_magao","eltia_gimon","3");
			Obj_battleevent.event_id="event_1_2";
			Obj_battleevent.text_id1="event_17_1";
			break;
			case "event_17_1":
			m_set_text("ここがどこかわかっての振る舞いか？","？？？","","isaku_do","2");
			m_set_text("おいおい勘弁してくれや…","グルカ","guruka_odoroki","isaku_do","1");
			m_set_text("なんでお前がここにいるんだ…","グルカ","guruka_odoroki","isaku_do","1");
			m_set_text("口を慎め猫男","？？？","guruka_odoroki","isaku_do","2");
			m_scr_option("猫男！？","event_17_3");
			m_scr_option("貴方は誰なの？","event_17_2");
			break;
			case "event_17_2":
				m_set_text("こいつは帝国７災獣の内の一人…\n怠惰担当の'イサク'だ","グルカ","guruka_magao","isaku_do","1");
				m_set_text("気をつけろ　本気を出せばチリどころじゃすまないぞ","グルカ","guruka_magao","isaku_do","1");
				m_set_text("シャーシャーやかましいな\nさっさと消し飛ばすか","イサク","guruka_magao","isaku_warai","2");
				Obj_battleevent.set_text_move=3;
				break;
			case "event_17_3":
				Obj_Player.m_set_textoption+=1;
				m_set_text("そんなの今はどうでもいいだろ！","グルカ","guruka_odoroki","isaku_do","1");
				m_set_text("よりにもよって'イサク'だ…","グルカ","guruka_odoroki","isaku_do","1");
				m_set_text("さて、フェリスの為の研究材料にしてやろうか","イサク","guruka_odoroki","isaku_emi","2");
				Obj_battleevent.set_text_move=3;
				break;
			case "event_17_4":
				m_set_text("チッ　今回は一度引くとするか","イサク","","isaku_do","2");
				m_set_text("あ！待ちなさい！","コハク","gate_do","isaku_do","1");
				m_set_text("待て、時間がない\nここは早めに脱出するのが優先だ","グルカ","gate_do","guruka_magao","2");
				m_set_text("…分かった","コハク","gate_do","guruka_magao","1");
				break;
				
		case "event_18":
			m_set_text("これは…空間転送のための陣ですね","エルティア","","eltia_gimon","2");
			m_set_text("しかも使い切りのようです","エルティア","","eltia_gimon","2");
			m_set_text("こいつは転移術式じゃねぇか\n何でこんなところにこいつがあるんだ？","グルカ","guruka_purasu","eltia_gimon","1");
			m_set_text("まぁいい\n追手が来る前に行くぞ","グルカ","guruka_magao","eltia_gimon","1");
			break;
		case "event_19":
			m_set_text("よし、上手くいった","グルカ","guruka_emi","","1");
			m_set_text("おぬしら何者じゃ！\n突然光ったと思ったら現れおって！","国王","guruka_emi","king_openmouth","2");
			m_set_text("お…？おぬしグルカか","国王","guruka_emi","king_question","2");
			m_set_text("突然の来訪をお許しください国王陛下\nただいま帝国側からただいま帰還いたしました","グルカ","guruka_magao","king_question","1");
			m_set_text("また、帝国７災獣怠惰と交戦いたしました","グルカ","guruka_magao","king_question","1");
			m_set_text("なるほど\nして、この者は？","国王","guruka_magao","king_question","2");
			m_set_text("彼女はコハク\n怠惰撃退の功労者でございます","グルカ","guruka_magao","king_question","1");
			m_set_text("ふむ\nその功績をたたえて宝物庫から一つ好きなものを授けよう","国王","guruka_magao","king_smile","2");
			m_set_text("受け取っておきましょう\nそれにこれから先役立つものがあるかもしれないですし","エルティア","guruka_magao","eltia_raku","2");
			m_scr_option("エルティアがそういうなら…","option_3");
			m_scr_option("光栄であります","option_3");
			break;
				case "option_3":
				m_set_text("本来は授与式などをやりたいところだが…","国王","","king","2");
				m_set_text("本当に申し訳ない","国王","","king","2");
				m_set_text("宝物庫はここを出てまっすぐ向かうと右側じゃ","国王","","king","2");
				break;
		case "event_20":
			m_set_text("これは…ブローチ？","コハク","gate_konwaku_1","","1");
			m_set_text("だいぶ古い感じがするけど…","コハク","gate_konwaku_1","","1");
			m_set_text("っ！？","コハク","gate_kizetsu_1","","1");
			m_set_text("コハクはこれがいいのか","？？？","","","3");
			m_set_text("流石は□□□の………だ","？？？","","","3");
			m_set_text("これは…私の記憶…？","コハク","gate_ai","","1");
			m_set_text("おや、なにか起こりました？","エルティア","gate_ai","eltia_gimon","2");
			m_set_text("エルティア今の見れた？","コハク","gate_ai","eltia_gimon","1");
			m_set_text("いえ、私のほうでは何も","エルティア","gate_ai","eltia_gimon","2");
			m_set_text("(ということは私だけ…？でもなんで…)","コハク","gate_ai","no","1");
			m_set_text("(謎は残るけどとりあえず外に出よう)","コハク","gate_ai","no","1");
			m_wall_event(Obj_wall_event.wall_id);
			break;
		
		case "event_21":
			m_set_text("…なぁ","グルカ","gate_konwaku_2","guruka_purasu","2");
			Obj_battleevent.event_id="event_1_4";
			Obj_battleevent.text_id1="event_21_1_1";
			Obj_battleevent.set_text_type=1;
			break;
			case "event_21_1_1":
			m_set_text("あんたこれからどうするんだ？","グルカ","gate_konwaku_2","guruka_purasu","2");
			m_set_text("どうするってそりゃ","コハク","gate_konwaku_2","guruka_purasu","1");
			m_scr_option("他の島に行こうと思うよ","event_21_1");
			m_scr_option("何も考えてないや","event_21_2");
			if(Obj_Player.m_set_textoption>=3&&Obj_Player.status_g>=1){
				m_scr_option("貴方のこともっと知りたいなぁ","event_21_3");
			}
			break;
			case "event_21_1":
				m_set_text("そうか…","グルカ","gate_raku","guruka_purasu","2");
				m_set_text("だが他の島ではもっと強いやつが襲ってくるかもしれないからな","グルカ","gate_raku","guruka_purasu","2");
				m_set_text("少しだけ稽古つけてやるよ","グルカ","gate_raku","guruka_purasu","2");
				Obj_battleevent.set_text_move=3;
				break;
			case "event_21_2":
				m_set_text("なら俺と一緒に来ないか？","グルカ","gate_odoroki","guruka_emi","2");
				m_set_text("即席であのイサクを退けられたんだ\n絶対いいバディになれるさ","グルカ","gate_odoroki","guruka_emi","2");
				m_set_text("どうしよう…","コハク","gate_konwaku_1","guruka_emi","1");
				m_set_text("断りましょう","エルティア","gate_odoroki","eltia_raku","2");
				m_set_text("エルティア？どうして？","コハク","gate_ai","eltia_raku","2");
				m_set_text("確かにメリットはあります　しかしデメリットが未知数です","コハク","gate_ai","eltia_sasayaki","2");
				m_set_text("それは今聞けばいいのでは？","コハク","gate_konwaku_1","eltia_sasayaki","1");
				m_set_text("それに貴方は言ってませんでしたがあの神殿で拾ったとき記憶が流れてきたのでしょう？","エルティア","gate_konwaku_1","eltia_gimon","2");
				m_set_text("貴方の記憶と関係があるかもしれませんし知る必要があると思います","エルティア","gate_konwaku_1","eltia_gimon","2");
				m_set_text("エルティアの言うことは一理ある","コハク","","","3");
				m_set_text("それならば…","コハク","","","3");
				m_set_text("申し訳ないけど誘いは辞退させてもらうよ","コハク","gate_ai","guruka_purasu","1");
				m_set_text("そうか…","グルカ","gate_konwaku_1","guruka_purasu","2");
				m_set_text("なら止めねぇが…\nもう一度戦わせてくれ","グルカ","gate_konwaku_2","guruka_purasu","2");
				m_set_text("今後７災獣以上のやつと戦うかもしれねぇからな","グルカ","gate_konwaku_2","guruka_purasu","2");
				m_set_text("備えあればなんとやらっていうだろ？","グルカ","gate_interested","guruka_purasu","2");
				m_set_text("…わかった\n手加減はしないよ！","コハク","gate_raku","guruka_emi","1");
				m_set_text("もちろんこっちこそな！","グルカ","gate_raku","guruka_emi","2");
				Obj_battleevent.set_text_move=3;
				break;
			case "event_21_3":
				Obj_Player.m_set_textoption+=1;
				m_set_text("おいおいいきなり告白とかシビれるなぁ","グルカ","no","guruka_emi","2");
				m_set_text("だが悪いな　俺は…","グルカ","no","guruka_purasu","2");
				m_set_text("うぉ！？なにすんだ！","グルカ","no","guruka_odoroki","2");
				m_set_text("断られちゃったからねぇ…\nならやることは一つでしょう？","コハク","gate_interested","guruka_odoroki","1");
				m_set_text("おいおいいきなりどうしたんだ？","グルカ","gate_interested","guruka_odoroki","2");
				m_set_text("コハクは問答無用で攻撃を仕掛ける！","","no","no","3");
				break;
		
		case "event_22":
		if(Obj_Player.m_set_textoption>=4&&Obj_Player.status_g>=1)
		{
			m_set_text("ありゃ　死んじゃった？","コハク","gate_interested","yarare_nirami","1");
			m_scr_option("生きてる～？","event_22_1");
			break;
		}
			m_set_text("まぁこれなら問題ねぇか","グルカ","no","yarare_understand","2");
			m_set_text("グルカはこの後どうするの？","コハク","gate_konwaku_2","yarare_understand","1");
			m_set_text("俺は傭兵業を続けるさ","グルカ","gate_interested","yarare_nigawarai","2");
			m_set_text("安心しろ　今生の別れじゃねぇんだ","グルカ","gate_interested","yarare_ki","2");
			m_set_text("今度会うときは腕上げて来いよ？","グルカ","gate_raku","guruka_emi","2");
			m_set_text("うん！","コハク","gate_raku","guruka_usiro","1");
			m_set_text("じゃぁな","グルカ","gate_raku","guruka_usiro","2");
			break;
		case "event_22_1":
			m_set_text("チッやりやがったな…","グルカ","no","yarare_do","2");
			m_set_text("俺には他にもできることがあるんだぜ…","グルカ","no","yarare_do","2");
			m_set_text("地獄に落ちやがれ…クソッタレ…","グルカ","no","yarare_do","2");
			break;
		case "event_23":
			m_set_text("さて、それでは行きましょうか","エルティア","no","eltia_sasayaki","2");
			m_set_text("門を起動するには特定の場所に行く必要があります","エルティア","no","eltia_sasayaki","2");
			m_set_text("城を出てそのまま南下していけば門の起動場所に着くそうですよ","エルティア","no","eltia_sasayaki","2");
			break;
		case "event_24":
			m_set_text("指定場所は","コハク","gate_interested","","1");
			m_scr_option("自然が生い茂る島'ユグドレイス'!","option_4");
			m_scr_option("霊と機械の楽園'バヨウトウ'!","option_4");
			break;
			case"option_4":
			m_set_text("簡易門(インスタントゲート)起動…！","コハク","gate_tsuujou","","1");
			Obj_anyevent.set_text_type=0;
			instance_create_layer(0,0,"Instances",Obj_flash);
			Obj_flash.set_alpha=1;
			break;
		//建学祭用
		case "continue":
			m_set_text("続く…","","","");
			break;
		case "ifevent_1":			
			m_set_text("いやぁ…よくもやってくれたねぇ？","イサク","guruka_odoroki","isaku_do");
			m_set_text("この声は！？","コハク","gate_kyoufu_2","isaku_do");
			m_set_text("転移術は使われるわ牢は壊すわって","イサク","gate_kyoufu_2","isaku_do");
			m_set_text("おかげで損害はかなりのものだ","イサク","gate_kyoufu_2","isaku_do");
			m_set_text("へ、残念でした","グルカ","guruka_emi","isaku_do");
			m_set_text("突進したせいでここが何処かわからないでいやがるぜ","グルカ","guruka_emi","isaku_do");
			m_set_text("そんなことこの私が分からないと思ったか？","イサク","guruka_purasu","isaku_gimon");
			m_set_text("10分前にここより上の兵は全滅させたさ","イサク","guruka_odoroki","isaku_warai");
			m_set_text("この損失は貴様らの首で返済するとしようか！","イサク","guruka_odoroki","isaku_warai");
			break;
		case "ifevent_2":			
			m_set_text("まだまだやってやろうじゃねぇか！","イサク","guruka_magao","isaku_do");
			m_set_text("居たぞ！こっちだ！","王国兵","no","no");
			m_set_text("チッもう援軍が来やがった","イサク","guruka_magao","isaku_do");
			m_set_text("今聖騎士団とやりあうつもりはない","イサク","guruka_magao","isaku_do");
			m_set_text("一度引くとしよう","イサク","guruka_magao","isaku_do");
			m_set_text("…………","グルカ","guruka_magao","");
			m_set_text("行ったか","グルカ","guruka_magao","no");
			m_set_text("あんたには二度助けられちまったな","グルカ","guruka_magao","no");
			m_set_text("いやいやそんな…","コハク","guruka_magao","gate_tere_1");
			m_set_text("まだ５時間ぐらいしか過ごしてねぇがその実力なら安心だな","グルカ","guruka_magao","gate_tere_1");
			m_set_text("疑ってたの！？","コハク","guruka_magao","gate_odoroki");
			m_set_text("一回目はな","グルカ","guruka_magao","gate_futekusare");
			m_set_text("だが今の動きを見て安心したぜ","グルカ","guruka_magao","gate_konwaku_1");
			m_set_text("これからもがんばれよ？","グルカ","guruka_magao","gate_raku");
			m_set_text("うん！また会おうね！","コハク","guruka_purasu","gate_raku");
			m_set_text("いつか…な","グルカ","guruka_usiro","gate_raku");
			break;
		
		//2章
		case "event_25":
			m_set_text("ここは？","コハク","new_kohaku_confused","","1");
			m_set_text("かなり荒れていますね","エルティア","new_kohaku_confused","eltia","2");
			m_set_text("人いるのかな？","コハク","new_kohaku_confused","eltia","1");
			m_set_text("少し探索してみましょうか","エルティア","new_kohaku_confused","eltia","2");
			break;
			
		case "event_26":			
			m_set_text("初めて見る人がいるよ～？","？？？","rian_left","","7");
			m_set_text("初めて見る人がいるね？","？？？","rian_left","rean","7");
			m_set_text("誰？","コハク","new_kohaku_shout","","1");
			Obj_anyevent.event_id="event_1";
			Obj_anyevent.set_text_move=1;
			break;
			case "event_26_1":
			m_set_text("リアンだよ～","リアン","rian_left","","1");
			m_set_text("レアンだねぇ","レアン","rian_left","rean","2");
			m_set_text("おねーさんは？","リアン","rian_left","rean_smile","2");
			m_set_text("私はコハクよ","コハク","new_kohaku","rean_smile","1");
			m_set_text("よろしくね　リアン　レアン","コハク","new_kohaku_smile","rean_smile","1");
			m_set_text("ところで2人はここがどこかわかる？","コハク","new_kohaku_confused","rean_relucatantry","1");
			m_set_text("ここは地図に載ってない島","レアン","new_kohaku_confused","rean_relucatantry","2");
			m_set_text("フォートアイランドだよ","リアン","new_kohaku_confused","rian_thinking","2");
			m_set_text("フォートアイランド？","コハク","new_kohaku_confused","rian_thinking","1");
			m_set_text("ここには移動のための施設がないから\n基本来ることも出ることも出来ないんだよねぇ","レアン","new_kohaku_confused","rean_relucatantry","2");
			m_set_text("じゃぁ私はどうやって…？","コハク","new_kohaku_confused","rean_relucatantry","1");
			m_set_text("多分天与の影響だと思う","リアン","new_kohaku_confused","rian_smile","2");
			m_set_text("天与？","コハク","new_kohaku_confused","rian_smile","1");
			m_set_text("おねーさんが首にかけてるそれだねぇ","レアン","new_kohaku_confused","rean_smile","2");
			m_set_text("宝物のこと？","コハク","new_kohaku_confused","rean_smile","1");
			m_set_text("そー　ここでは天与っていうの","リアン","new_kohaku_confused","rian_smile","2");
			m_set_text("それが壊れてここに着いちゃったみたいだねぇ","レアン","new_kohaku_confused","rean_thinking","2");
			m_set_text("じゃぁ他の島に行けないってこと…？","コハク","new_kohaku_confused","rean_thinking","1");
			m_set_text("大丈夫　この島には宝物の修理屋がいるから","リアン","new_kohaku_confused","rian_smile","2");
			m_set_text("そんな人がいるの？","コハク","new_kohaku_confused","rian_smile","1");
			m_set_text("こっちだよ　付いてきて！","リアン","new_kohaku_confused","rian_smile","2");
			Obj_anyevent.event_id="event_2";
			Obj_anyevent.set_text_move=2;
			break;
		case "event_27":
			m_set_text("ここだよここ","レアン","rian_smile_left","rean_smile","2");
			m_set_text("ここ？","コハク","new_kohaku_confused","rean_smile","1");
			m_set_text("ここが宝物の修理をやってるジョー爺のお店だねぇ","レアン","new_kohaku_confused","rean_smile","2");
			m_set_text("ほら、入って入って！","リアン","new_kohaku_confused","rian_smile","2");
			break;
			
		case "event_28":
			m_set_text("ジョー爺！やっほー！","リアン","rian_smile_left","","1");
			m_set_text("大人しくせんかい！やかましい！","？？？","rian_smile_left","joji_angry1","5");
			m_set_text("でも今日はとっておきがあるから","レアン","rean_smile_left","joji_angry1","5");
			m_set_text("全く…都合がいいこと言いおって…","？？？","rean_smile_left","joji_disgusted","5");
			m_set_text("お邪魔します…","コハク","new_kohaku_scary1","","5");
			Obj_anyevent.set_text_move=1;
			Obj_anyevent.text_id1="event_28_1";
			break;
			case "event_28_1":
			m_set_text("おぉ、お客人か儂は何でも修理する修理屋のジョージじゃ","ジョージ","","joji_suprised","2");
			m_set_text("ニマ・コハクです\n実は宝物が壊れちゃったらしくて","コハク","new_kohaku_what1","joji_suprised","1");
			m_set_text("これなんですけど…","コハク","new_kohaku_what1","joji_suprised","1");
			m_set_text("ふむ、量産型の天与か　この場で修理はできるが値段は張るぞ","ジョージ","new_kohaku_what1","joji_concentration","2");
			m_set_text("えぇ…エルティア　いまぐらい持ってるっけ？","コハク","new_kohaku_what2","joji_concentration","1");
			m_set_text("589リダですね","エルティア","new_kohaku_what2","eltia_gimon","2");
			m_set_text("えーっと…修理費はどのくらいですか？","コハク","new_kohaku_what1","eltia_gimon","1");
			m_set_text("大体333万リダぐらいだな","ジョージ","new_kohaku_suprise","joji","2");
			m_set_text("どうしよ…そんな持ち合わせは…","コハク","new_kohaku_suprise","joji","1");
			m_set_text("ん～？ないなら稼げばいいじゃん！隣で丁度大会やってるよ","リアン","new_kohaku_suprise","rian_smile","2");
			m_set_text("そーそ、おねーさん強そうだし","レアン","rean_smile_left","rian_smile","1");
			m_set_text("ふむ、少し足りんが優勝賞金全額で免除してやろう","ジョージ","rean_smile_left","joji","2");
			m_set_text("なるほど、いい機会ですし参加してきませんか？","エルティア","rean_smile_left","eltia_raku","2");
			m_scr_option("参加する！","event_29");
			m_scr_option("どうしよう…","option_5_no");
			break;
			case "option_5_no":
				m_set_text("これに参加しないと簡易門直せませんよ？","エルティア","","eltia_gimon","2");
				m_scr_option("じゃぁ参加する！","event_29");
				m_scr_option("でも…","option_5_no");
				break;
		
		case "event_29":
			m_set_text("おねーさんでるの！？じゃぁ私も出る！","リアン","rian_interest_left","","1");
			m_set_text("だめだねぇ僕たち殿堂入りで参加禁止されてるから","レアン","rian_interest_left","rean_blunt","2");
			m_set_text("えー！私もでーたーいー！","リアン","rian_angry_left","rean_blunt","1");
			m_set_text("受付ではじかれちゃうねぇ","レアン","rian_angry_left","rean_relucatantry","2");
			m_set_text("ところで…受付はどこにあるの？","コハク","new_kohaku_confused","rean_relucatantry","1");
			m_set_text("コロシアムじゃな\nリアン　レアン　案内してやりなさい","ジョージ","new_kohaku_confused","joji","2");
			m_set_text("はーい","リアン・レアン","rian_smile_left","rean_smile","4");
			Obj_anyevent.event_id="event_4";
			Obj_anyevent.set_text_move=2;
			break;
			case "event_29_1":
			m_set_text("そうそう　では優勝することを見越して預かっておくぞ","ジョージ","new_kohaku_suprise","joji","2");
			m_set_text("え、まだ優勝できると決まったわけじゃ…","コハク","new_kohaku_suprise","joji","1");
			m_set_text("なーに　出来んかったら暫く働けばいいんじゃ\nというわけで預かっとくぞい","ジョージ","new_kohaku_suprise","joji","2");
			Obj_anyevent.set_text_move=0;
			Obj_Player.set_remove_number=1;
			break;
		case "event_29_2":
			m_set_text("おねーさんこっちこっち！","リアン","rian_smile_left","","1");
			m_set_text("早くしないと受付終わっちゃうからねぇ","レアン","rian_smile_left","rean_smile","2");
			m_set_text("2人とも早いなぁ","コハク","kohaku_konwaku_1","rean_smile","1");
			m_wall_event(Obj_wall_event.wall_id);
			Obj_Player.set_remove_number=0;
			break;
		case "event_30":
			m_set_text("フォートコロシアムへようこそ\nただいま第4回メモリアルマッチの参加受付を行っております","受付","","");
			m_set_text("どちらの階級に参加しますか？","受付","","");
			m_scr_option("蛇級","set_1");
			m_scr_option("水蛇級","set_1");
			m_scr_option("竜級","set_1");
			break;
			case "set_1":
				m_set_text("承りました\nそれでは右手の控室へ移動をお願いします","受付","","");
				m_set_text("それじゃ僕たちは観客席で見てるから","レアン","","rean_smile","2");
				m_set_text("おねーさんがんばってねー！","リアン","rian_smile_left","rean_smile","1");
				Obj_reception.event_id="event_5";
				Obj_reception.set_text_type=1;
				m_wall_event(Obj_wall_event.wall_id);
				break;
				
		case "event_31":
			m_set_text("まもなく第4回メモリアルマッチを開催いたします。\n選手の皆様はスタジアムの方に移動願います。","アナウンス","","");
			m_set_text("さて、行きましょうか","エルティア","","eltia_sasayaki","2");
			break;
		
		case "event_32":
		
			map_objmove_interpolation(Obj_Player.x,Obj_Player.y,Obj_Player.x,393,180,0,Obj_Player,UP,1);
			m_set_text("さぁて！役者はそろった！これよりルール説明を行う！","司会","","");
			m_set_text("その１\n最後までフィールド内で意識があること","司会","","");
			m_set_text("その２\n相手の完全消滅禁止","司会","");
			m_set_text("その３\n場外及び再起不能者は失格","司会","","");
			m_set_text("それ以外はなんでもOK！能力を使ったって構わないぜ！","司会","","");
			m_set_text("なるほど、要するに勝てば良いってことね","コハク","kohaku_interested","","1");
			m_set_text("実況はこの俺！D.C.ブライドが行わせていただく！","司会","kohaku_interested","","2");
			Obj_battleevent.text_id1="event_32_1";
			break;
			case "event_32_1":
			m_set_text("それじゃ試合開始！！","司会","","");
			var _speed=instance_create_layer(Obj_Player.x,40,"Instances",Obj_story_symbol);
			_speed.image_xscale=0.5;
			_speed.image_yscale=0.5;
			Obj_story_symbol.set_index="speed";
			Obj_battleevent.set_text_move=2;
			Obj_battleevent.event_id="event_5_1";
			Obj_battleevent.text_id1="event_32_boss_1";
			break;
		case "event_32_boss_1":
			m_set_text("見慣れない方がいますね　私が手合わせしましょうか","ドリーメイス","","");
			m_set_text("これって申告制だったっけ？","コハク","kohaku_konwaku_1","","1");
			m_set_text("これが私の戦闘スタイルなので","ドリーメイス","kohaku_konwaku_1","","2");
			m_set_text("おっと！速閃ドリーメイスが切り込んでいったぁ！","司会","kohaku_odoroki","","2");
			m_set_text("私の剣技を見切れるかな？","ドリーメイス","kohaku_odoroki","","2");
			Obj_battleevent.target_enemy=ObjBattleSpeed;
			Obj_battleevent.set_text_move=3;
			break;
		case "event_32_boss_2":
			m_set_text("いきなり波乱の展開！優勝候補のドリーメイスが切り伏せられてしまったぁ！\nスピード勝負を制したのは今大会初出場の新人！","司会","","");
			m_set_text("はぁ…はぁ…すっごい速かった…","コハク","kohaku_ai","","1");
			m_set_text("お疲れですか？","エルティア","kohaku_ai","eltia_ki","2");
			m_set_text("あ、エルティア？ちょっと体力が持たなくて…","コハク","kohaku_ai","eltia_ki","2");
			m_set_text("では少し目を閉じてみてください","エルティア","kohaku_ai","eltia_futeki","2");
			m_set_text("え？大丈夫なの？","コハク","kohaku_konwaku_1","eltia_futeki","1");
			m_set_text("大丈夫です　少し私の力をお貸しするだけですから","エルティア","kohaku_konwaku_1","eltia_futeki","2");
			m_set_text("じゃぁ少しだけ…","コハク","kohaku_konwaku_1","");
			m_set_text("おや？新人が動かなくなったぞ？","司会","","");
			m_set_text("さて、何としても優勝されなくては困るのでね\nご協力お願いしますよ","エルティア","in_eltia_badsmile","");
			Obj_battleevent_continuous.target_enemy=ObjBattleTest1;
			Obj_battleevent_continuous.text_id1="event_32_boss_3";
			break;
			
		case "event_32_boss_3":
			instance_create_layer(Obj_Player.x,Obj_Player.y-60,"Instances",Obj_story_symbol);
			Obj_story_symbol.set_index="Power";
			m_set_text("そろそろですかね","エルティア","in_eltia","");
			m_set_text("ッ！","コハク","kohaku_odoroki","");
			m_set_text("エルティアありがとう","コハク","kohaku_ki","");
			m_set_text("さて、いよいよ終盤戦！ここまで残ったのは破壊僧ブロットと期待の新人コハクです！\nどちらが優勝するのか我々も目が離せません！","司会","","");
			m_set_text("ふははははははは！！\nよくここまで残ったと褒めてやりたいところだ！","ブロット","","");
			m_set_text("だがこの俺を超えることはできぬぅ！","ブロット","","");
			m_set_text("剛力ブロットはこの天与で作られた完全防御の壁を唯一破壊した人物だ！\n彼の一撃に耐えることはできるのか！？","司会","","");
			m_set_text("出来るだけ当たらないようにしないと…","コハク","kohaku_kyoufu_3","");
			m_set_text("生きて帰れるといいなぁ？","ブロット","kohaku_kyoufu_3","");
			Obj_battleevent_continuous.target_enemy=ObjBattlePower;
			Obj_battleevent_continuous.set_text_move=3;
			break;
			case "event_32_end":
				Obj_battleevent_continuous.set_text_move=0;
				Obj_battleevent_continuous.text_id="event_33";
				break;
			
		case "event_33":
			m_set_text("試合終了！優勝はニマ・コハクゥゥゥゥゥゥ","司会","","");
			m_set_text("これにて第4回メモリアルマッチを終了する！\n実況はこの俺D.C.ブライドがお送りした！","ブライド","","");
			m_set_text("(早く戻ろう)","コハク","kohaku","");
			
			Obj_Player.set_remove_number=1;
			break;
			
		case "event_34":
			m_set_text("優勝おめでとうございます　優勝賞金でございます。","受付","","");
			m_set_text("333万リダを手に入れた","","","");
			m_set_text("おねーさーん！","リアン","","");
			Obj_rian.face=RIGHT;
			Obj_rean.face=RIGHT;
			Obj_reception.event_id="event_6"
			Obj_reception.set_text_type=1;
			Obj_reception.text_id1="event_34_1";
			Obj_reception.set_text_move=2;
			break;
			case "event_34_1":
			m_set_text("おめでとー","レアン・レアン","rian_smile_left","rean_smile","2");
			m_set_text("2人ともありがとう！","コハク","kohaku_ki","rean_smile","1");
			m_set_text("それじゃ賞金も受け取ったし行こっか","コハク","kohaku","rean_smile","1");
			m_set_text("おー！","リアン・レアン","rian_smile_left","rean_smile","4");
			Obj_reception.set_text_move=2;
			
			break;
			
		case "event_35":
			m_set_text("ジョー爺！！","リアン","","rian_smile");
			Obj_set_remove_event.set_text_move=1;
			break;
			case "event_35_1":
			map_objmove_interpolation(Obj_Player.x,Obj_Player.y,Obj_Player.x,320,30,0,Obj_Player);
			set_timer(map_objmove_interpolation,[Obj_Player.x,320,Obj_jji.x,320,30,0,Obj_Player],30,1);
			set_timer(map_objmove_interpolation,[Obj_jji.x,320,Obj_jji.x,160,60,0,Obj_Player],60,1);
			m_set_text("大人しくせんかい！","ジョージ","","joji_angry2","2");
			m_set_text("おぉ、お前さん戻ったか\nしっかり優勝はしてきたんじゃろうな？","ジョージ","","joji","2");
			m_set_text("もちろん　はい、これお代","コハク","kohaku_raku","joji","1");
			m_set_text("おう、しっかり受け取ったぞ\nそれじゃこれが例の物じゃ","ジョージ","kohaku_raku","joji","2");
			m_set_text("ジョー爺から修理された簡易門を受け取った","","kohaku_raku","joji","3");
			m_set_text("ッ…","コハク","gate_kyoufu_1","joji");
			m_set_text("あたまがいたい","","","");
			m_set_text("きさま…を…　…っ…！","？？？","","");
			m_set_text("おや、………","エルティア？","","new_eltia","5");
			m_set_text("これは…？えるてぃあ…？","コハク","","","1");
			m_set_text("おねーさん！","リアン","","rian_question","2");
			m_set_text("ハッ！","コハク","new_kohaku_what2","","1");
			m_set_text("どうした？急にボーッとしおって","ジョージ","new_kohaku_what2","joji_question","2");
			m_set_text("いえ、なにも…","コハク","new_kohaku_suprise","joji_question","1");
			m_set_text("？まぁよい　簡易門は来た時と同じ場所で使用せい","ジョージ","new_kohaku_suprise","joji_question","2");
			m_set_text("分かった！ジョージおじいさんありがとう！","コハク","new_kohaku_smile","joji","1");
			m_set_text("おう、気を付けてな","ジョージ","new_kohaku_suprise","joji","2");
			Obj_set_remove_event.set_text_move=0;
			break;
			
		case "event_36":
			m_set_text("それじゃ行こっか","コハク","new_kohaku","");
			m_set_text("おねーさん…","リアン","new_kohaku_suprise","","2");
			Obj_Player.face=UP
			Obj_set_remove_event.event_id="event_9";
			Obj_set_remove_event.set_text_move=2;
			break;
			case "event_36_1":
			m_set_text("本当に行っちゃうの？","リアン","new_kohaku_suprise","rian_question","2");
			m_set_text("大丈夫　また会えるよ","コハク","new_kohaku_smile","rian_question","1");
			m_set_text("ほんと？","リアン","","rian_smile","2");
			m_set_text("うん、ほんと！","コハク","new_kohaku_smile","","1");
			m_set_text("わかった！","リアン","new_kohaku_smile","rian_smle","2");
			m_set_text("それじゃ、行くね","コハク","new_kohaku","rian_smile","1");
			m_set_text("簡易門起動","コハク","new_kohaku_shout","","1");
			Obj_set_remove_event.set_text_move=1;
			Obj_set_remove_event.text_id1="event_36_2";
			break;
			case "event_36_2":
				instance_create_layer(Obj_Player.x,Obj_Player.y,"Instances",Obj_flash);
				Obj_flash.set_alpha=1;
				m_set_text("行っちゃったねぇ","レアン","Obj","");
				m_set_text("付いていきたかったなぁ…","リアン","","");
				m_set_text("しょうがないよ　まだ終わってないんだから","レアン","","");
				m_set_text("しょうがないねぇ","リアン","","");
				m_set_text("腫恨髑髏は僕らを見ている","リアン・レアン","","");
				Obj_set_remove_event.set_text_move=3;
				Obj_Player.set_remove_number=0;
				break;

		//3章
		case "event_37":
			m_set_text("着いたね","コハク","","");
			m_set_text("ここは地下ですね\nということはユグドレイスでしょうか","エルティア","","");
			m_set_text("とりあえず外に出てみようか","コハク","","");
			break;
		
		case "event_38":
			m_set_text("さぁ寄ってらっしゃい見てらっしゃい！\nオリクトでは珍しい化妖灯の電子機器を取り扱ってますよ！","行商人","","");
			m_set_text("お、お兄さんお目が高い！","呼び込む商人","","");
			m_set_text("さぁさぁ今話題の鉱石！\n磁徹鉱がお買い得だよ！","元気な商人","","");
			m_set_text("どうやらユグドレイスの地下ですね","エルティア","","");
			break;
		
		case "event_39":
			m_set_text("いらっしゃいませ\nタルタミーア商店へようこそ","店員","","");
			m_set_text("あの…ここは何を取り扱っているのですか？","コハク","","");
			m_set_text("うちは採掘場で採取した鉱石を販売しています\nまた、地上にある宝石を加工するエルフの村と連携をしております","店員","","");
			m_set_text("そのためもし気に入った宝石がございましたら装飾品として加工することも可能でございます。","店員","","");		 
			m_set_text("それじゃ宝物は扱ってない？","コハク","","");
			m_set_text("いえ、宝物は稀に出土することがあるため、洗浄して販売しております","店員","","");
			m_set_text("あ、あるんだ　実は宝物を探してて…","コハク","","");
			m_set_text("ふむ…現在宝物は卸していませんが…\nもしかしたら採掘場の市場にあるかもしれません","店員","","");
			m_set_text("紹介状をお渡ししますので市場を訪ねることをお勧めします","店員","","");
			break;
		
		case "event_40":
			m_set_text("ここかな？","コハク","","");
			m_set_text("おい嬢ちゃん！ここは関係者以外立ち入り禁止だぞ！","親方","","");
			m_set_text("ひっ！すみません！\nタルタミーア商店の紹介で来たんですけど…","コハク","","");
			m_set_text("お、タル坊のとこの紹介か\nそれじゃそこの小屋に入っててくれ","親方","","");
			m_set_text("良かったぁ…","コハク","","");
			m_set_text("(感じいい人だったな)","コハク","","");
			break;
		
		case "event_41":
			m_set_text("失礼します","コハク","","");
			m_set_text("ヒィ⁉","？？？","","");
			m_set_text("ダ！？誰ですか！？","？？？","","");
			m_set_text("おールリ　こんなとこに居たのか","親方","","");
			m_set_text("お、親方","ルリ","","");
			m_set_text("こいつはタル坊の紹介で来たらしい　採掘場のイロハと同行頼むぞ","親方","","");
			m_set_text("あの…私市場に行きたいのですが…","コハク","","");
			m_set_text("ん？あぁ、一応市場はあるにはあるが…\n宝物は基本坑道内にあるんだ","親方","","");
			m_set_text("なので基本坑道に入らないと宝物は採掘されないんですよね","ルリ","","");
			m_set_text("そういうことだ　というわけで後は頼んだぞ","親方","","");
			break;
			case "event_41_1":
				m_set_text("え？ちょ…行っちゃった…","ルリ","","");
				m_set_text("まぁこの採掘場の特性で宝物は特注されないと採掘されないんですよね","ルリ","","");
				m_set_text("あ、自己紹介がまだでしたね\nルリ・レイオンです","ルリ","","");
				m_set_text("ニマ・コハクです","コハク","","");
				m_set_text("よろしくお願いしますねコハクさん\nというわけで…じゃぁここでのルールを説明しますね","ルリ","","");
				m_set_text("準備はいいですか？","ルリ","","");
				m_scr_option("はい","event_41_yes");
				m_scr_option("いいえ","event_41_no");
				break;
				case "event_41_yes":
					m_set_text("では説明しますね","ルリ","","");
					m_set_text("1つ\n場内は原則ペアで行動します","ルリ","","");
					m_set_text("ですが特定状況下に限り単独行動が可能になります","ルリ","","");
					m_set_text("1つ\n作業場ではヘルメットの着用が義務付けられています","ルリ","","");
					m_set_text("理由はまぁ…言わなくても分かりますよね","ルリ","","");
					m_set_text("1つ\n激しい行動の禁止","ルリ","","");
					m_set_text("坑道内は大きな種族に配慮してサイズを合わせてある程度のスペースが確保されています\nしかし安全面を考慮してあまり激しい動きはしないでもらいたいです","ルリ","","");
					m_set_text("こんな感じですね\nそれではヘルメットを支給しますので着用お願いします","ルリ","","");
					//m_set_text("ヘルメットは装備のところから確認できますよ","","","");
					break;
			case "event_41_no":
					m_set_text("では準備ができるまで待ってますね","ルリ","","");
					break;
			case "event_41_idle":
				m_set_text("準備はいいですか？","ルリ","","");
				m_scr_option("はい","event_41_yes");
				m_scr_option("いいえ","event_41_no");
				break;
		case "event_42":
			m_set_text("そういえば坑道内の説明がまだでしたね","ルリ","","");
			m_set_text("入口から100mまでの深さを低深度と呼び\n100～200ｍまでを中深度　200mより下を高深度と呼びます","ルリ","","");
			m_set_text("また、中深度から高深度にかけて宝物の発掘率が高いです","ルリ","","");
			m_set_text("しかし宝物を運び出すのにも一定のリスクがあります","ルリ","","");
			m_set_text("リスク？坑道が崩落しちゃうとか？","コハク","","");
			m_set_text("もちろんそれもありますが…宝物の希少性についてご存じですか？","ルリ","","");
			m_set_text("それは流通数が少ないからでは？","コハク","","");
			m_set_text("その流通数が少ない原因です\n宝物は基本この採掘場から世界中に届けられます","ルリ","","");
			m_set_text("そのためこの場所が宝物が最も多い地点なのです\nしかし一定期間中に多く持ち出しすぎると価値がなくなります","ルリ","","");
			m_set_text("というと？","コハク","","");
			m_set_text("取りすぎてしまうとその採取した宝物はただの岩に変化してしまいます\nこのような原因は未だ解明されていませんが…","ルリ","","");
			m_set_text("ですので採取の際は採掘した量を管理する必要があります","ルリ","","");
			m_set_text("なるほど","コハク","","");
			break;
		
		case "event_43":
			m_set_text("ん？誰かいるよ？","コハク","","");
			m_set_text("おかしいですね　この深度では現在私達以外の採掘者は居ないはずですが…","ルリ","","");
			m_set_text("こんにちは～","コハク","","");
			m_set_text("！？貴様なぜここにいる！","イサク","","");
			m_set_text("イサク！？なんでここに！","コハク","","");
			m_set_text("えーっと…お知合いですか？","ルリ","","");
			m_set_text("こいつ以前私のこと追ってきたの！","コハク","","");
			m_set_text("コハクさんそれは違う意味に捉えられるのでは…？","エルティア","","");
			m_set_text("エルティア今それどころじゃない！","コハク","","");
			m_set_text("ごちゃごちゃと…丁度いい\n帝国での恨み今晴らさせてもらおうか","イサク","","");
			break;
			
		case "event_44":
			m_set_text("狭い空間でちょこまかと…","イサク","","");
			m_set_text("どうしよう…ルリを守りながらだと戦いにくい…！","コハク","","");
			m_set_text("埒が明かんな\nならば引かせてもらう","イサク","","");
			m_set_text("あ！こら！\n…行っちゃった","コハク","","");
			m_set_text("コハクさん！","ルリ","","");
			m_set_text("ルリ！大丈夫？","コハク","","");
			m_set_text("私は大丈夫ですが…\n戦闘の影響で坑道が崩れちゃって…","ルリ","","");
			m_set_text("ほんとだ…道が崩れてる…","コハク","","");
			m_set_text("既に低深度の方達に向けて緊急信号を発信しています\n少し危険ですが上へ繋がる通路があるのでそちらから人を連れてきてください","ルリ","","");
			m_set_text("ルリはどうするの？","コハク","","");
			m_set_text("私は体力があまりないのでこちらで救助が来るのを待っています\n人をとにかく連れてきてください","ルリ","","");
			m_set_text("うん！分かった！","コハク","","");
			break;
			
		case "event_45":
			m_set_text("救助信号はこの先か","親方","","");
			m_set_text("あ！さっきのおじさん！","コハク","","");
			m_set_text("さっきの嬢ちゃんじゃねぇか\nルリのやつはどうした？","親方","","");
			m_set_text("行きで通った道が塞がれちゃったせいで半ば埋められちゃって…","コハク","","");
			m_set_text("なるほど、嬢ちゃんは旧道のほう使ったんか\n確かにルリには難しいわな","親方","","");
			m_set_text("こっちの方！付いてきて！","コハク","","");
			m_set_text("お、案内助かるぜ","親方","","");
			break;
		
		case "event_46":
			m_set_text("おかしいな…以前の旧道はこんなに鉱石が露出していなかったはずなんだが…","親方","","");
			m_set_text("ぐるぉぉぉぉぉぉぉぉぉぉぉぉぉぉ！！！！！","唸り声","","");
			m_set_text("な、何の声だ？","親方","","");
			m_set_text("この先にはルリしかいないはず…","コハク","","");
			m_set_text("まさかあいつ宝物の暴走起こしたか！？","親方","","");
			break;

		case "event_47":
			m_set_text("ルリ！","コハク","","");
			m_set_text("うがぁぁぁぁぁぁぁぁ！！！","半宝ルリ","","");
			m_set_text("こりゃマズいな　やっぱ暴走してやがる","親方","","");
			m_set_text("エルティア　暴走何てこと起きるの？","コハク","","");
			m_set_text("今実際目にしてる通りですね\n宝物の出力は所持してる人によって限界があります","エルティア","","");
			m_set_text("しかし何らかの原因により\n限界以上に出力してしまい制御できない状態になります","エルティア","","");
			m_set_text("例えるならば大きな箱に入っていた本人の意思が\n他のものが入り隅に追い込まれている状態ですね","エルティア","","");
			m_set_text("どうにかする方法はないの？","コハク","","");
			m_set_text("簡単ですよ　余計なもの\n現在で言う宝物を取り除けば元に戻ります","エルティア","","");
			m_set_text("なるほど　要するにぶっ飛ばせばいいわけね","コハク","","");
			m_set_text("おい！嬢ちゃんアブねぇぞ！","親方","","");
			m_set_text("ちょっとルリの目を覚まさせてくる！","コハク","","");
			break;

		case "event_48":
			m_set_text("ぅ…","ルリ","","");
			m_set_text("ルリ！良かったぁ…","コハク","","");
			m_set_text("ルリあんた気失って暴走してたぞ？","親方","","");
			m_set_text("暴走って…私は宝物を持っていないんですよ？\n暴走のしようが…","ルリ","","");
			m_set_text("…","","","");
			m_set_text("……","","","");			
			m_set_text("………","","","");
			m_set_text("えぇぇ！？","ルリ","","");
			m_set_text("ほぉ、あんた後天的能力者だったんか","親方","","");
			m_set_text("何で親方そんなに冷静なんですか！？","ルリ","","");
			m_set_text("ほらほらさっさと上戻って専門機関行くぞ","親方","","");
			m_set_text("嬢ちゃんも上戻って休んでてくれ\n俺たちはルリ連れてから行くわ","親方","","");
			m_set_text("分かりました","コハク","","");
			m_set_text("…ん？これって…","コハク","","");
			break;
			
		case "event_49":
			m_set_text("…ってわけで特に問題はなかったわ","親方","","");
			m_set_text("しばらくは事務作業ですかね","ルリ","","");
			m_set_text("とりあえず能力の制御ができるようになってからだがな","親方","","");
			m_set_text("しっかし不思議ね\n鉱夫がまさか宝石を生み出す能力だなんて","コハク","","");
			m_set_text("まぁ私の生み出す鉱石がどのような影響を及ぼすか調べる必要がありますがね","ルリ","","");
			m_set_text("でも特に問題がなくて安心したよ","コハク","","");
			m_set_text("ところでコハクさんの目的は達成できましたか？","ルリ","","");
			m_set_text("宝物そのものじゃないけど…","コハク","","");
			m_set_text("これは…ぼんやりですが複数の鼓動を感じます\n少なくとも普通の鉱石ではないですね","ルリ","","");
			m_set_text("ということは…？","コハク","","");
			m_set_text("私達では何とも…恐らく地上のエルフの民のほうが詳しいかと思われます","ルリ","","");
			m_set_text("エルフ？","コハク","","");
			m_set_text("タル坊が多分説明してたんじゃねぇか？\nここで採掘した鉱石はエルフのやつらが加工して売ってんだ","親方","","");
			m_set_text("ってわけで俺らより彼方のほうが扱いは詳しいと思うぜ","親方","","");
			m_set_text("じゃぁ地上に行けばいいのね　ありがとうございます！","コハク","","");
			m_set_text("おっと、大切なものを言い忘れていたぜ\n地上に行くなら検問を通らなきゃいけねぇんだ","親方","","");
			m_set_text("地上は神聖な森だから指定された場所以外火気厳禁なんだ\nってわけで手荷物には気を付けてくれぃ","親方","","");
			m_set_text("分かりました！ありがとうございます！","コハク","","");
			m_set_text("おう！検問所はこっから出て西に進んだ突き当りの階段だ！\n気を付けて行けよ！","親方","","");
			break;
			
		case "event_50":
			m_set_text("はいこんにちは　ここから先は火気厳禁のユグドレイス地上区間です\n手荷物検査させていただきますね","入管","","");
			m_set_text("はい","コハク","","");
			m_set_text("本日はどのような件で地上区間に？","入管","","");
			m_set_text("採掘場で採取した鉱石を加工してもらいにですね","コハク","","");
			m_set_text("なるほど、ジェイドさんの関係者でしたか\nそれでは特に問題もないので通って大丈夫です","入管","","");
			m_set_text("はい、ありがとうございました","コハク","","");
			m_set_text("あ、そうだ　最近地上地下の両方で天遊教による迷惑行為が確認されているのでお気をつけて","入管","","");
			m_set_text("天遊教…？","コハク","","");
			break;
			
		//4章
		case "event_51":
			m_set_text("え、案内板とかないの…？","コハク","","");
			m_set_text("どうやらないみたいですね\n恐らく自然を守るための一環なんでしょうか","エルティア","","");
			m_set_text("あ、でも小屋があるみたい\nちょっと聞きこんでみよう","コハク","","");
			break;
		case "event_52":
			m_set_text("100554!100555!100556!","上裸の不審者","","");
			m_set_text("ん？今何時だ？10時か11!12!13!うおぉぉぉぉぉ！","上裸の不審者","","");
			break;
		
		case "event_53":
			m_set_text("何あのヘンタイ！？","コハク","","");
			m_set_text("ヘンタイ！？どこにいる！","上裸の不審者","","");
			m_set_text("あんただよ！","コハク","","");
			m_set_text("私はヘンタイではない！\nシンラという名がある！","シンラ","","");
			m_set_text("でもあんたしかいない部屋で大声出して腕立てしてるやつはヘンタイでしょ！","コハク","","");
			m_set_text("では君も一緒にやろう！","シンラ","","");
			m_set_text("どうしてそうなる！","コハク","","");
			m_set_text("あ！待ちたまえ！","シンラ","","");
			m_set_text("付いてこないで！","コハク","","");
			break;
		
		case "event_54":
			m_set_text("どこまで追ってくるのあのヘンタイ…","コハク","","");
			m_set_text("おや、この先に村があるそうですよ","エルティア","","");
			m_set_text("丁度いいや！匿ってもらおう","コハク","","");
			break;
			
		case "event_55":
			m_set_text("お、お客さんかな？\nようこそ、ここは神聖樹ユグドレイスに一番近い村…","村人","","");
			m_set_text("助けて！ヘンタイに追われてるの！","コハク","","");
			m_set_text("何！？それは大変だ\n下がっていなさい！","村人","","");
			m_set_text("全く…準備運動もなしに走り出したら危ないだろうが","シンラ","","");
			m_set_text("なんだシンラか\nまたそのなりで筋トレしていたのか？","村人","","");
			m_set_text("これでないと零れんばかりの筋肉が外に出たがってしまうのでな","シンラ","","");
			m_set_text("お客さん申し訳ない　彼はヘンタイではあるが村の守り人だ","村人","","");
			m_set_text("ヘンタイではあるんだ…","コハク","","");
			break;
			
		case "event_56":
			m_set_text("ここは…？","コハク","","");
			m_set_text("ここは我々のアトリエだな","シンラ","","");
			m_set_text("うわ、何でいるの？","コハク","","");
			m_set_text("先ほどの彼から案内するように頼まれてな\n安心しろ　気になったら声をかけてくれ","シンラ","","");
			m_set_text("うぉぉぉぉぉぉぉ！！！スクワット1000セット！","シンラ","","");
			m_set_text("何なのほんとに…","コハク","","");
			break;
		
		case "event_57":
			m_set_text("ねぇ、ちょっといい？","コハク","","");
			m_set_text("どうした？君も一緒にやるか？","シンラ","","");
			m_set_text("やらない！\nこの鉱石を加工できる人を探してるんだけど","コハク","","");
			m_set_text("ちょっと見せてもらってもいいか？","シンラ","","");
			m_set_text("どうぞ？","コハク","","");
			m_set_text("…これは宝物になる前の原石か","シンラ","","");
			m_set_text("分かるの？","コハク","","");
			m_set_text("私は守り人兼鍛冶師だからな\nこれは確かに出来る人間は少ないな","シンラ","","");
			m_set_text("そうなんだ　じゃぁ出来る人を教えて","コハク","","");
			m_set_text("私だ","シンラ","","");
			m_set_text("…へ？","コハク","","");
			m_set_text("だから私だ　さっきも言っただろう？\n守り人兼鍛冶師だと","シンラ","","");
			m_set_text("えぇ…じゃぁお願い","コハク","","");
			m_set_text("ふむ、不服そうだが承知した！\nではしばらくそのあたりを散策してくれ","シンラ","","");
			break;
			
		case "event_58":
			m_set_text("大変だ！東の森で火の手が出た！","村人","","");
			m_set_text("何！？それは大変だ！","シンラ","","");
			m_set_text("うわ！…何だキンニクマシマシカタメか\n頼む！追い返してくれ！","村人","","");
			m_set_text("うむ！承知した！","シンラ","","");
			m_set_text("私も行く！","コハク","","");
			m_set_text("コハクさん？どうして急に？","エルティア","","");
			m_set_text("あの筋肉一人は心配だから！","コハク","","");
			break;
			
		case "event_59":
			m_set_text("この炎は…天遊教か","シンラ","","");
			m_set_text("シンラ！","コハク","","");
			m_set_text("お客人？危ないから下がっていろ","シンラ","","");
			m_set_text("私も手伝う！","コハク","","");
			m_set_text("しかし相手は天遊教だ\n何をしてくるか分かったものじゃない！","シンラ","","");
			m_set_text("住んでるところを黙って破壊されるのは私見てられないの！","コハク","","");
			m_set_text("…なるほど、しかし！危なくなったらすぐに逃げるのだぞ！","シンラ","","");
			m_set_text("分かった！","コハク","","");
			m_set_text("では目の前を頼む！\n俺は周りを片付ける！","シンラ","","");
			break;
			
		case "event_60":
			m_set_text("答えるんだ！仲間はあと何人いる！？","シンラ","","");
			m_set_text("へッ誰が教えるものか","天遊教徒","","");
			m_set_text("ふむ…残念だ","シンラ","","");
			m_set_text("え、カタメどうして縄をほどくの…？","コハク","","");
			m_set_text("何って筋トレだ","シンラ","","");
			m_set_text("…へ？","天遊教徒・コハク","","");
			m_set_text("筋トレをすることで気持ちが沸き上がり腹を割って喋れるからな","シンラ","","");
			m_set_text("？？？","コハク","","");
			m_set_text("さぁ！準備運動でバービー10セットからだ！","シンラ","","");
			m_set_text("！？！？！？\nちょちょちょっと待ってくれ！","天遊教徒","","");
			m_set_text("待たない！それでははじめ！","シンラ","","");
			m_set_text("そこの人助けてくｒ\nうわぁぁぁぁぁ！！！！","天遊教徒","","");
			m_set_text("…","","","");
			m_set_text("……","","","");
			m_set_text("………","","","");
			m_set_text("うわぁ…結局やり切らせちゃったよ…","コハク","","");
			m_set_text("ある種の拷問ですね…私は絶対やりたくないです","エルティア","","");
			m_set_text("さぁ、村から出て西側に行こう！そこにいるそうだ！","シンラ","","");
			m_set_text("この人は…？","コハク","","");
			m_set_text("プロテインとスポドリを置いておく\n安心しろ　俺のおごりだ","シンラ","","");
			m_set_text("誰もそんなこと気にしないと思うけど…","コハク","","");
			m_set_text("よし、腿あげしながら行くか！","シンラ","","");
			m_set_text("断る！","コハク","","");
			break;
			
		case "event_61":
			m_set_text("なんだ貴様ら！神の教えに反する気か！","天遊教徒","","");
			m_set_text("自らが作成したものを壊すよう教える神がどこにいる！","シンラ","","");
			m_set_text("神に逆らう異端者め！後悔するがいい！","天遊教徒","","");
			break;
		
		case "event_62":
			m_set_text("ほら！腹筋50回5セット行くぞ！","シンラ","","");
			m_set_text("情報入手より筋トレが先に来てる…","コハク","","");
			m_set_text("イキイキするぞ！！","シンラ","","");
			break;
		
		case "event_63":
			m_set_text("最後の場所はユグドレイスの麓か…","シンラ","","");
			m_set_text("早く止めよう！","コハク","","");
			break;
		
		case "event_64":
			m_set_text("待て！","シンラ","","");
			m_set_text("ふむ、もう嗅ぎつけてしまいましたか\nお出迎えの準備が出来ず申し訳ない","天遊教幹部","","");
			m_set_text("何この人…今までのと明らかに違う…\nカタメ　気を付けて","コハク","","");
			m_set_text("申し遅れました　私天遊教遊参隊の隊長を務めさせていただいております\n以後お見知りおきを","天遊教幹部","","");
			m_set_text("隊長殿！ここを燃やすのが神からの言葉であると申すか！","シンラ","","");
			m_set_text("えぇ　そうですよ？","天遊教幹部","","");
			m_set_text("そんなわけがないだろ","シンラ","","");
			m_set_text("ほぉ、いい速度ですね\nですが速さが足りない","天遊教幹部","","");
			m_set_text("うぐぅ","シンラ","","");
			m_set_text("カタメ！","コハク","","");
			m_set_text("さて、仕留める前に質問をします","天遊教幹部","","");
			m_set_text("私に答える義務があると？","コハク","","");
			m_set_text("貴方の”記憶”にも言える話ですよ","天遊教幹部","","");
			m_set_text("(この人昔の私を知ってる…？)","コハク","","");
			m_set_text("我々もこの植物も公平に「生きている」のならばどこに優先順位の差が生じるのでしょうかね？","天遊教幹部","","");
			m_set_text("生きるために自生している植物と栽培している植物はどこに違いが？\n選択するという行動が生まれるのはいったい何が違うのでしょうか？","天遊教幹部","","");
			m_set_text("そんなの価値観によって違うでしょ！","コハク","","");
			m_set_text("えぇ、ですからこれはエゴイストの戦いですよ","天遊教幹部","","");
			m_set_text("それがわからなければ貴方は私たちを止められない","天遊教幹部","","");
			break;
		
		case "event_65":
			m_set_text("ふむ、これ以上はどうにもなりませんね","天遊教幹部","","");
			m_set_text("待ちなさい！逃げる気！","コハク","","");
			m_set_text("作戦が失敗して退かないお馬鹿さんがいますか？\nそういうことですよ","天遊教幹部","","");
			m_set_text("…逃がした…\nシンラは！？","コハク","","");
			break;
			
		case "event_66":
			m_set_text("シンラ！","コハク","","");
			m_set_text("悪い　もうここまで見たいだ…","シンラ","","");
			m_set_text("そんなこと言わないで！","コハク","","");
			m_set_text("これを…","シンラ","","");
			m_set_text("これは…ブレスレット？","コハク","","");
			m_set_text("飛び出す前に作っておいたぜ…\nもっと筋トレ…したかった…な…","シンラ","","");
			m_set_text("シンラ！シンラ！！","コハク","","");
			m_set_text("…","","","");
			m_set_text("……","","","");
			m_set_text("………","","","");
			m_set_text("ん？どうして俺はまだ生きてるんだ？","シンラ","","");
			m_set_text("コハクさん、シンラさん聞こえますか？","エルティア","","");
			m_set_text("えるてぃあ？","コハク","","");
			m_set_text("貴方すごい顔してますよ？","エルティア","","");
			m_set_text("うぅるさい！それで！何なのよ！","コハク","","");
			m_set_text("どうやらシンラさんは持ち前の筋肉で軽傷ですね\nキンニクマシマシカタメの名は伊達じゃない！","エルティア","","");
			m_set_text("というわけでしばらく休めば治りますよ","エルティア","","");
			m_set_text("なるほど、ところでこの声は誰だ？","シンラ","","");
			m_set_text("訳あって声だけですが味方です\nところでシンラさんにお聞きしたいことが","エルティア","","");
			m_set_text("おう！何でも聞いてくれ！","シンラ","","");
			m_set_text("実はかくかくしかじかで","コハク","","");
			m_set_text("ふむ、それなら四角いムーブというわけだな！","シンラ","","");
			m_set_text("何で伝わってるのこの二人…","コハク","","");
			m_set_text("そのためにはどちらに？","エルティア","","");
			m_set_text("化妖灯(バヨウトウ)だな\nそこならば過去をみる者がいると聞いたことがある","シンラ","","");
			m_set_text("やはりそちらでしたか\nありがとうございます","エルティア","","");
			m_set_text("というわけで化妖灯に行きましょう","エルティア","","");
			m_set_text("そこの門は動くの？","コハク","","");
			m_set_text("あぁ、簡易門と違い常に動作している状態だ","シンラ","","");
			m_set_text("そうなんだ\nそれじゃぁ私行くね","コハク","","");
			m_set_text("おう！お客人気をつけろよ！","シンラ","","");
			m_set_text("コハク！","コハク","","");
			m_set_text("？","シンラ","","");
			m_set_text("私はニマ・コハクだよ！","コハク","","");
			m_set_text("承知した！気をつけろよ！ニマ・コハク","シンラ","","");
			m_set_text("辺りが白く輝く","","","");
			break;
			
		//5章
		case "event_67":
			m_set_text("ん？何処ここ？","コハク","","");
			m_set_text("おかしいですね　門の近辺は条約で開発が禁止されてるはずですが","エルティア","","");
			m_set_text("とりあえず後ろの人の邪魔になるから進もうか","コハク","","");
			break;
			case "event_67_1":
				m_set_text("コハクさん","エルティア","","");
				m_set_text("どうしたの？","コハク","","");
				m_set_text("この先にどうやら入国審査があるらしいです","エルティア","","");
				m_set_text("入国審査？","コハク","","");
				m_set_text("どのような目的かや正規の手続き出来てるかどうかなどを調べるのです","エルティア","","");
				m_set_text("え、私大丈夫？","コハク","","");
				m_set_text("今までのを見ると少し危ないかもしれないですね","エルティア","","");
				m_set_text("え、どうしよ…","コハク","","");
				m_set_text("私に任せてください　考えがあります","エルティア","","");
				break;
			
		case "event_68":
			m_set_text("ようこそ化妖灯へ\n今回はどのような目的で？","入管","","");
			m_set_text("観光です","コハク","","");
			m_set_text("なるほど、どちらに行かれるのですか？","入管","","");
			m_set_text("首都を見てみたくて","コハク","","");
			m_set_text("分かりました\nそれでは渡航歴を確認しますので簡易門をお預かりします","入管","","");
			m_set_text("はい","コハク","","");
			m_set_text("…？失礼ですがこの簡易門はどちらで発行しましたか？","入管","","");
			m_set_text("ヒュプーメですね","コハク","","");
			m_set_text("ヒュプーメ…？\nロビーで少々お待ちください","入管","","");
			m_set_text("(おっと、ヒュプーメはもう存在しない…？)","コハク","","");
			break;
			
		case "event_69":
			m_set_text("エルティア大丈夫？","コハク","","");
			m_set_text("すみません　どうやら受け答えを間違えたようです","エルティア","","");
			m_set_text("えぇ…困るよそれ","コハク","","");
			m_set_text("すみません　対処法を考えるので少し待っててください","エルティア","","");
			m_set_text("失礼　取込み中であったか？","青年","","");
			m_set_text("いえ、どちら様ですか？","コハク","","");
			m_set_text("申し遅れた\n我は特殊治安行動局長「儀筍水主(ギジュンカコ)」である","水主","","");
			m_set_text("ニマ・コハクです","コハク","","");
			m_set_text("ニマ…なるほど","水主","","");
			m_set_text("？","コハク","","");
			m_set_text("すまない　こちらの話だ\nここでは目立ってしまう　少し場所を移そう","水主","","");
			break;
			
		case "event_70":
			m_set_text("さて、ここならば十分であるな","水主","","");
			m_set_text("わざわざ変えたってことは聞かれたら困ること？","コハク","","");
			m_set_text("それは貴殿に関係あることだ","水主","","");
			m_set_text("私？","コハク","","");
			m_set_text("先に質問させてもらう\n貴殿はヒュプーメからガラ王国に入国したと聞いているが本当か？","水主","","");
			m_set_text("(エルティアあそこヒュプーメっていうの？)","コハク","","");
			m_set_text("はい　貴方が目を覚ましたのはヒュプーメにある水の使徒を祭る神殿の近くですね","エルティア","","");
			m_set_text("どうした？無言であるが","水主","","");
			m_set_text("あ、いえ　間違いないです","コハク","","");
			m_set_text("ふむ…なるほどそういうことか","水主","","");
			m_set_text("？","コハク","","");
			m_set_text("お取込み中失礼します！水主局長はいらっしゃいますか！","警備員","","");
			m_set_text("目の前にいるではないか","水主","","");
			m_set_text("エルトリア氏に動きが見られたため連絡に参りました！","警備員","","");
			m_set_text("なるほど　なんともタイミングが悪い\nコハク殿申し訳ない　非常事態故失礼させてもらう","水主","","");
			m_set_text("え？行っちゃった…","コハク","","");
			break;
			
		case "event_71":
			m_set_text("すみません　我々も局長が何を話したかったかは聞いておりませんので…","特安員","","");
			m_set_text("いえいえ、大丈夫ですよ","コハク","","");
			m_set_text("ですが伝言を一つ預かっています","特安員","","");
			m_set_text("伝言？","コハク","","");
			m_set_text("「”ウラノス”にて待つ　始まりと終わりの中継地点」と","特安員","","");
			m_set_text("うらのす？","コハク","","");
			m_set_text("ウラノスは天遊教の本拠地ですね","特安員","","");
			m_set_text("天遊教の？\nどうしてそこに？","コハク","","");
			m_set_text("エルトリア氏が天遊の教祖で恐らく逮捕後にお話をするのではないかと","特安員","","");
			m_set_text("とにかくそこに行けば何か情報が手に入るってことね","コハク","","");
			m_set_text("ここからウラノスへはロビーを出た後一番左の停留所に行きます\nその後七津峠を降車してこげ茶色のビルがウラノスです","特安員","","");
			m_set_text("分かりました　ありがとうございます！","コハク","","");
			break;
			
		case "event_72":
			m_set_text("ねぇエルティア　水主さんの話ってなんだろうね？","コハク","","");
			m_set_text("………","","","");
			m_set_text("エルティア？","コハク","","");
			m_set_text("たまに反応なくなるんだよね…","コハク","","");
			break;
			
		case "event_73":
			m_set_text("ガラ王国やユグドレイスと違ってかなり発展してる…","コハク","","");
			m_set_text("お嬢さん化妖灯は初めてかね？","おじいさん","","");
			m_set_text("え、はい","コハク","","");
			m_set_text("ここはワシら妖が科学を学び発展してきた国でな","おじいさん","","");
			m_set_text("妖怪が科学に…？","コハク","","");
			m_set_text("ワシらには寿命という概念が存在しない故出来る事じゃ","おじいさん","","");
			m_set_text("どういうこと？","コハク","","");
			m_set_text("通常種は子をなすことによって環境の変化に適応して生きておる\nじゃが技術や記憶を完璧には継承できん","おじいさん","","");
			m_set_text("そのため必ずどこかで失われてしまう情報が存在する\nそれが記憶や技術課は分からんがな","おじいさん","","");
			m_set_text("そこで変化も継承もできるワシら妖が種を繫栄させ補助することが一番効率的なのじゃ","おじいさん","","");
			m_set_text("そんな自己犠牲で辛くないの…？","コハク","","");
			m_set_text("そういうものはひっそり自由に生きておるよ\nワシらはワシらが正しいと思えることをしているだけじゃ","おじいさん","","");
			m_set_text("まもなく七津峠　七津峠","運転手","","");
			m_set_text("あ、降りなきゃ","コハク","","");
			m_set_text("ありがとうの　こんな老体の話に付き合ってもらって","おじいさん","","");
			m_set_text("いえ、参考になりました　ありがとうございます","コハク","","");
			break;
			
		case "event_74":
			m_set_text("ッ！？あいつユグドレイスに居たやつ！","コハク","","");
			m_set_text("…道路わたってビルに入ってった…？","コハク","","");
			m_set_text("あそこがウラヌス…？","コハク","","");
			break;
			
		case "event_75":
			m_set_text("あれ？すんなり入れちゃった…\nとりあえずどこにいるか探さないと","コハク","","");
			break;
		
		case "event_76":
			m_set_text("あ、見つけた","コハク","","");
			m_set_text("コハク殿！？何故ここに！？","水主","","");
			m_set_text("何でって水主さんが指定したんでしょ？","コハク","","");
			m_set_text("指定？何の話だ？","水主","","");
			m_set_text("それは神による天啓でございます","？？？","","");
			m_set_text("この声は…やはり貴殿か","水主","","");
			m_set_text("初めましてですわね　ニマ・コハクさん私は…","？？？","","");
			m_set_text("エルトリア・スチュアートですわ","エルトリア","","");
			break;
		
		case "event_77":
			m_set_text("なるほど、特安に内通者がいたか…","水主","","");
			m_set_text("コハク殿　どうやら奴らは我々の一歩先を進んでいたらしい","水主","","");
			m_set_text("いえいえ、私たちはただ天啓の通り動いたまでですわ\n「水の巫女を手繰り寄せ顕現せん」と","エルトリア","","");
			m_set_text("水の巫女…？","コハク","","");
			m_set_text("やはり彼女が伝承に伝わりし12の使徒か…","水主","","");
			m_set_text("コハク殿　恐らく貴殿はヒュプーメ以前の記憶がないのであろう？","水主","","");
			m_set_text("うん、全く","コハク","","");
			m_set_text("それは記憶保持の媒体になっていた神殿を破壊したからですわ","エルトリア","","");
			m_set_text("え？","コハク","","");
			m_set_text("我らが神は水の巫女以外を取り込み蓄えておられたのですわ","エルトリア","","");
			m_set_text("そして12の使徒のうち1人を媒介として最後に残ったのがコハク殿であると…","水主","","");
			m_set_text("大変でしたわ　神殿の周囲にアリがいたので2人に駆除をお願いしましたの","エルトリア","","");
			m_set_text("2人…？","コハク","","");
			m_set_text("さて、こちらに来て頂けますか？儀式は始まったばかりですわ","エルトリア","","");
			break;
			
		case "event_78":
			m_set_text("水主さんどうにかならないの…？","コハク","","");
			m_set_text("少なくとも外から援軍を呼んでいる\nしかし暫くはこのままであるな…","水主","","");
			m_set_text("何をおしゃべりしてるのかねぇ？","？？？","","");
			m_set_text("あ、おねーさん！","？？？","","");
			m_set_text("この声…まさか…","コハク","","");
			m_set_text("やっほー","リアン","","");
			m_set_text("リアン…！","コハク","","");
			m_set_text("子供だと思ったが…相当な手練れであるか","水主","","");
			m_set_text("そのセリフ以前も聞いたことあるねぇ","レアン","","");
			m_set_text("まさか駆除したのって…","コハク","","");
			m_set_text("そう！私達！どれだけ強いのかと思ったら拍子抜けだったよ","リアン","","");
			m_set_text("あれはつまらなかったよねぇ…","レアン","","");
			m_set_text("どうしてそんなことができるの！みんな必死に生きてるのに！","コハク","","");
			m_set_text("僕たちも必至だからねぇ…\n力がないと自由は手に入らないの","レアン","","");
			m_set_text("それに私達こうしないと生きてけないの","リアン","","");
			m_set_text("「腫恨髑髏」そこのお兄さんなら意味わかるよね","レアン","","");
			m_set_text("…貴殿たち歳はいくつであるか","水主","","");
			m_set_text("お兄さんから10引いてみなねぇ","レアン","","");
			m_set_text("…なるほどな　宝物の覚醒は8年前であろう","水主","","");
			m_set_text("うん","リアン","","");
			m_set_text("合致したな","水主","","");
			m_set_text("え？どういうこと？","コハク","","");
			m_set_text("それは神様が教えてくれるからねぇ","レアン","","");
			m_set_text("おにーさんはそこで待っててね！","リアン","","");
			break;
			
		//6章
		case "event_79":
			m_set_text("ここは…？","コハク","","");
			m_set_text("いやはやようやくですね","聞き覚えのある声","","");
			m_set_text("その声は…エルティア？","コハク","","");
			m_set_text("「お初にお目にかかります」ニマ・コハクさん","エルティア","","");
			m_set_text("エルティア…どうしちゃったの？","コハク","","");
			m_set_text("さて、少し昔話をしましょうか","エルティア","","");
			break;
		
		case "event_80":
			m_set_text("遥か昔まだ島が地上にあったころ寿命の短い全知全能の大賢者が居ました","エルティア","","");
			m_set_text("彼は自分の命が長くないと知ると弟子を取り自身の力を継承させようとしました","エルティア","","");
			m_set_text("しかし力は各弟子に1つずつ継承する形で終わってしまうのです","エルティア","","");
			m_set_text("その後賢者は力尽き弟子は各々の力を利用して秩序を守ってきました\nいつか全てを操るものが現れると信じて","エルティア","","");
			m_set_text("ところがある時弟子の1人はふとしたことで他の弟子の力を奪うのです","エルティア","","");
			m_set_text("力の強大さと自由を手に入れてしまった者を止めるために他の弟子は応戦しました","エルティア","","");
			m_set_text("しかし歯が立たずに劣勢に追い込まれた弟子達は上空に\n肥沃な土地、多くの文明、多くの種族、そして力を残して封印をしてしまうのです","エルティア","","");
			m_set_text("それが現在の島の成り立ちです","エルティア","","");
			m_set_text("なるほどね　それと私に何の関係が？","コハク","","");
			m_set_text("万物の生死は目に見えない大きな空にできる路なのです\nそしてその始まりは水である","エルティア","","");
			m_set_text("始まりの力はすべてを凌駕します\nそれは私にとってとても邪魔なのです","エルティア","","");
			m_set_text("それは言ってる意味がわからないよ","コハク","","");
			m_set_text("でもこれだけは言える　ただ言われたことだけをこなす人生なんて間違ってる","コハク","","");
			m_set_text("なるほど　記憶をなくしても信念は変わらないわけですか\nではお邪魔させていただきますよ","エルティア","","");
			break;
			
		case "event_81":
			m_set_text("なるほど…流石は水の巫女ですね","エルティア","","");
			m_set_text("エルティア…","コハク","","");
			m_set_text("これではもう私が成り代わる事も不可能そうですね","エルティア","","");
			m_set_text("私たとえこの旅が仕組まれていたとしても楽しかったよ","コハク","","");
			m_set_text("…ふふふ　面白い人ですね\nそれでは私は次回に期待しますかね…","エルティア","","");
			m_set_text("次はちゃんと親友として現れてね","コハク","","");
			break;
			
		case "event_82":
			m_set_text("ここは…","コハク","","");
			m_set_text("コハク殿目が覚めたか","水主","","");
			m_set_text("水主さん…","コハク","","");
			m_set_text("ここは特安の治療室である","水主","","");
			m_set_text("リアンたちは！？","コハク","","");
			m_set_text("落ち着け　順を追って説明しよう","水主","","");
			m_set_text("まず貴殿が儀式に巻き込まれた後エルトリア氏を拘束\n同時に地上から援軍を突入させて天遊教徒を一斉検挙させた","水主","","");
			m_set_text("ということは…？","コハク","","");
			m_set_text("あの子たちは呪怨宝物の影響もあるため専門機関に搬送した","水主","","");
			m_set_text("私…全部思い出したの\n記憶を無くす前のこと全部","コハク","","");
			m_set_text("なるほど、それで貴殿は今後どうする","水主","","");
			m_set_text("私は…","コハク","","");
			break;
			
			//アイテム用
		case "brooch":
			m_set_text("？？のブローチを手に入れた","","","");
			break;
		case "reagel":
			m_set_text("リーゲルの果実を手に入れた","","","");
			break;
		case "yakusou":
			m_set_text("薬草を手に入れた","","","");
			break;
		case "candy":
			m_set_text("飴を手に入れた","","","");
			break;
		case "chest":
			m_set_text("戦闘テクニックのメモを手に入れた","","","");
			break;
		case "instantlife":
			m_set_text("簡易治療薬を手に入れた","","","");
			break;
		case "wood":
			m_set_text("木の枝を手に入れた","","","");
			break;
		case "bag":
			m_set_text("バックを手に入れた","","","");
			break;
		case"no":
			m_set_text("話しかけないでおこう","","","");
			break;
		case "item":
			m_set_text("所持品がいっぱいで持てない”","","","");
			break;
			
		case "errors":
			m_set_text("エラー","","","");
			break;
			
		case "aleat":
			m_set_text("体力が少ない 回復しよう","","","");
			break;
			/*
		case "npc 1":
		m_set_text("やあ","ブロリー","chara","test1")
		m_set_text("息子はかわいいか？","ブロリー","no","left_chara");
		m_scr_option("はい","npc 1 - yes");
		m_scr_option("いいえ","npc 1 - no");
		break;
			case "npc 1 - yes":
			m_set_text("まずお前から血祭りにあげてやる","ブロリー","chara","no");
			m_set_text("test","テスト用","chara","no");
			break;
			
			case "npc 1 - no":
			m_set_text("クズめ","chara");
			m_set_text("test","chara");
			break;
		case "npc 2":
		m_set_text("ブロリーです","chara","chara","test");
		m_set_text("いつか帰れるといいなぁ","test","test","test");
		break;
	
		case "npc 3":
		m_set_text("ここが貴様の墓場だ","no");
		break;
		
		case "test 1":
			m_set_text("やあ","丹馬　黒白","chara","test1")
			m_set_text("息子はかわいいか？","ブロリー","no","left_chara");
			break;
		*/
	}
	
}