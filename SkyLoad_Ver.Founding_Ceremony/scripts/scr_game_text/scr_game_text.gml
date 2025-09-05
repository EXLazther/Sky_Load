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
			
		//会話用コード
		case "talk_1":
			m_set_text("ここはの統治する島”ゾートネイシ”よ","町人","no","no");
			m_set_text("更に言うならガラ王国最前線\n兵士の眠る街ゼピュアよ","町人","no","no");
			m_set_text("観光気分なら帰ったほうがいいわ","町人","no","no");
			m_set_text("なんかマズいとこ来ちゃったかも…","コハク","no","no");
			
			break;
		case "talk_2":
			m_set_text("王国聖騎士団が来てるそうだ","町人","no","no");
			m_set_text("これから帝国に向かうらしいんだ","町人","no","no");
			m_set_text("だからしばらく通行止めだぜ","町人","no","no");
			break;
		case "talk_3":
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
		case "talk_4":
			m_set_text("お嬢さんこの時期に外に出るのかい？","門番","no","no");
			m_set_text("別に止めやしないが気をつけてな","門番","no","no");
			break;
		case "talk_5":
			m_set_text("これが終わったら報告書の作成と物資運搬と…ブツブツブツ","門番","no","no");
			m_set_text("話しかけるのはやめておこう","","no","no");
			break;
		case "talk_6":
			m_set_text("悪いがこの先通行止めだ","警備員","no","no");
			m_set_text("どうやら対岸で損傷が見つかったみたいでな","警備員","no","no");
			m_set_text("他の路を通ってくれ","警備員","no","no");
			break;
		case "talk_7":
			m_set_text("…………","町人","no","no");
			m_set_text("泣いている","","no","no");
			break;
		case "talk_8":
			m_set_text("あんたもお花をあげに来たのかい？","町人","no","no");
			m_set_text("更に上に昇っちまったけどあっちでも楽しんでくれてるさ","町人","no","no");
			m_set_text("そいつの分もしっかり生きるんだよ","町人","no","no");
			break;
		
			
		//イベント用コード
		case "event_1":
			m_set_text("珍しいですね\nこんなところに人が来るなんて","安心感のある声","no","no","2","1");
			m_set_text("しかも寝ていますね","安心感のある声","no","no","2","2");
			m_set_text("あ、起きました？","声の主","no","no","2");
			m_scr_option("ここはどこ？","talk");
			m_scr_option("あなたは誰？","talk");
			break;
			case "talk":
				m_set_text("状況がわからないようですね","声の主","no","eltia","2");
				m_set_text("それでは話したいことはありますが\n先に操作方法から教えましょうか","声の主","no","eltia","2");
				m_set_text("まずは移動からですね","声の主","no","eltia","2");
				m_set_text("進みたい方向を十字キーで押してみてください\nそうするとその方向に進みますよ","声の主","no","eltia","2");
				
				break;
			
		case "event_2":
			m_set_text("上出来ですね","声の主","no","eltia_ki","2");
			m_set_text("それでは次は身の守り方を知りましょうか","声の主","no","eltia","2");
			m_set_text("移動方法は変わりませんが攻撃が出来ます\nZキーで攻撃しますよ","声の主","no","eltia","2");
			m_set_text("貴方の体力は下に表示されています\nこれがゼロになると負けてしまいますのでお気をつけて","声の主","no","eltia","2");
			m_set_text("相手の攻撃に当たらないように気を付けてくださいね","声の主","no","eltia","2");
			m_set_text("頑張ってください","声の主","no","eltia","2");
			break;
		case "event_2_1":
			m_set_text("さすがです","声の主","no","eltia_ki","2");
			m_set_text("どうですか？記憶の混乱は落ち着きましたか？","声の主","no","eltia_gimon","2");
			m_scr_option("名前以外思い出せない","event_2_1_1");
			break;
			case "event_2_1_1":
				m_set_text("おや、それは困りましたね","声の主","no","eltia_gimon","2");
				m_set_text("それでは辺りを調べてみましょう","声の主","no","eltia_sasayaki","2");
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
			m_set_text("私はエルティア\n訳あってあなたと喋ることができています","エルティア","no","eltia_ki","2");
			m_scr_option("私の名前は…","system_talk1");
			break;
			case "system_talk1":
				m_set_text("あなたの名前はもちろん知っていますよ","エルティア","no","eltia_futeki","2");
				m_set_text("よろしくお願いしますね\nニマ　コハクさん","エルティア","no","eltia_futeki","2");
				m_set_text("(なんで知ってるんだろう？)","コハク","kohaku","no","1");
				break;
		case "event_6":
			m_set_text("おや、ここだけ明るいですね","エルティア","no","eltia_gimon","2");
			m_set_text("これは…？","コハク","kohaku","eltia_gimon","1");
			m_set_text("コハクは床に落ちているペンダントを拾った。","","no","no");
			m_set_text("するとコハクの中に突然記憶があふれてきた","","no","no");
			m_set_text("崩壊しかけた世界で相対する光景が見えた","","kohaku_ai","no","2");
			m_set_text("これはいったい…？","コハク","kohaku_ai","no","1");
			m_set_text("それを首にかけた途端に目の前が白く覆われた!","","no","no");
			m_set_text("え？なに！？","コハク","gate_odoroki","no","1");
			break;
			//town
		case "event_7":
			m_set_text("え、何処ここ？","コハク","gate_konwaku_2","no","1");
			m_set_text("エルティア？","コハク","gate_konwaku_2","no","1");
			m_set_text("エルティアからの反応はない","","gate_konwaku_2","no","1");
			m_set_text("もう…","","gate_futekusare","no","1");
			m_set_text("とりあえず聞き込みね","コハク","gate_interested","no","1");
			break;
		case "event_8":
			m_set_text("よかった…街から出れたみたい","コハク","gate_tsuujou","no","1");
			m_set_text("他の街に行ってみましょう","コハク","gate_tsuujou","no","1");
			break;
		case "event_9":
			m_set_text("道が封鎖されている","コハク","","no");
			m_set_text("うそでしょ…","コハク","gate_kyoufu_2","no","1");
			m_set_text("どこかに通れる道はないかな？","コハク","gate_ai","no","1");
			break;
			global.talkwall="0";
		case "event_10":
			m_set_text("そろそろガラ王国が近くなってきたな","帝国兵","no","no");
			m_set_text("油断するなよ？聖騎士団の奴らの出鼻を挫くんだ","帝国兵","no","no");
			m_set_text("…あ？誰だあんた？","帝国兵","no","no");
			m_set_text("鎧を装備した兵士はコハクに気づいた","","gate_konwaku_1","no");
			m_set_text("見ない顔だが…王国の方向から来たってことはそういうことだよな？","帝国兵","gate_konwaku_1","no","1");
			m_set_text("あの～？何か勘違いしてるのでは…","コハク","gate_konwaku_1","no","1");
			m_set_text("'この状況'で対向からくる理由なんざ一つだろ","帝国兵","gate_kyoufu_1","no","1");
			m_set_text("'この状況'？　\nあ！ちょっと！？","コハク","gate_odoroki","no","1");
			global.set_destroy=1;
			break;
		case "event_11":
			m_set_text("あらら\nやっちゃいましたね","エルティア","no","eltia_gimon","2");
			m_set_text("エルティア！？何で反応してくれなかったのよ！","コハク","gate_do","eltia_gimon","1");
			m_set_text("すみません\nどうやらそちらから私と会話することができないようですね","エルティア","gate_do","eltia_ai","2");
			m_set_text("ひとまず逃げましょう\n追手が来ますからね","エルティア","gate_do","eltia","2");
			m_set_text("どうやら上方向に通れそうな道がありますよ","エルティア","gate_konwaku_1","eltia_ki","2");
			m_set_text("えぇ…","コハク","gate_konwaku_1","no","1");
			m_set_text("(上ってどういうことだろ…？)","コハク","gate_konwaku_1","no","1");
			break;
		case "event_12":
			m_set_text("この森はかなり複雑ですね","エルティア","no","eltia","2");
			m_set_text("ですが安心してください\n私が導きます","エルティア","no","eltia_ki","2");
			m_set_text("おい！森に向かって足跡が伸びてるぞ！","帝国兵","gate_kyoufu_1","no","3");
			m_set_text("走りましょうか","エルティア","gate_magao","eltia_raku","2");
			m_set_text("何されるかわからないもんね！","コハク","gate_kyoufu_3","eltia_raku","1");
			global.set_destroy=0;
			break;
		case "event_13":
			m_set_text("貴様監視の目を逃れて近づくとは何者だ","帝国兵","no","no");
			m_set_text("どういうこと！？先回りされた？","コハク","gate_odoroki","no","1");
			m_set_text("どうやら逃げているうちに帝国側に来てしまったようですね","エルティア","gate_odoroki","eltia_gimon","2");
			m_set_text("とにかく逃げなきゃ！","コハク","gate_odoroki","eltia_gimon","1");
			global.talkwall="4";
			break;
		case "event_14":
			global.talkwall="3";
			m_set_text("う～ん…","コハク","gate_kizetsu_2","no","1");
			m_set_text("あ、起きたか？","獣の少女","no","guruka_magao","2");
			m_set_text("ッハ！","コハク","gate_odoroki","guruka_magao","1");
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
				m_set_text("付いていきましょう\nあなたの役に立つと思いますよ","エルティア","no","guruka_magao","2");
				break;		
		case "event_16":
			m_set_text("ところでグルカってさ","コハク","gate_interested","no","1");
			m_set_text("その服装は趣味なの？","コハク","gate_interested","no","1");
			m_set_text("俺の基本行動は特殊でな　そのための服さ","グルカ","gate_interested","guruka_purasu","2");
			m_set_text("なるほど","コハク","gate_ki","guruka_purasu","1");
			break;
		case "event_17":
			m_set_text("なんだここは","グルカ","no","guruka_magao","1");
			m_set_text("何かのための広場でしょうかね？","エルティア","no","guruka_magao","2");
			m_set_text("王国のネズミがコソコソ何をしてるんだ？","？？？","no","isaku_gimon","2");
			m_set_text("おいおい勘弁してくれや…","グルカ","no","guruka_odoroki","2");
			m_set_text("なんでお前がここにいるんだ…","グルカ","no","guruka_odoroki","2");
			m_set_text("口を慎め猫男","？？？","guruka_odoroki","isaku_do","2");
			m_scr_option("猫男！？","event_17_2");
			m_scr_option("貴方は誰なの？","event_17_1");
			break;
			case "event_17_1":
				m_set_text("こいつは帝国７災獣の内の一人…\n怠惰担当の'イサク'だ","グルカ","guruka_magao","isaku","2");
				m_set_text("気をつけろ　本気を出せばチリどころじゃすまないぞ","グルカ","guruka_magao","isaku","2");
				m_set_text("シャーシャーやかましいな\nそろそろ消し飛ばすか","イサク","guruka_magao","isaku_warai","2");
				break;
			case "event_17_2":
				Obj_Player.m_set_textoption+=1;
				m_set_text("そんなの今はどうでもいいだろ！","グルカ","guruka_odoroki","isaku","1");
				m_set_text("よりにもよって'イサク'だ…","グルカ","guruka_odoroki","isaku_emi","1");
				m_set_text("さて、フェリスの為の研究材料にしてやろうか","イサク","guruka_odoroki","isaku_emi","2");
				break;
			
		case "event_18":
			m_set_text("これは…空間転送のための陣ですね","エルティア","no","eltia_gimon","2");
			m_set_text("しかも使い切りのようです","エルティア","no","eltia_gimon","2");
			m_set_text("何でこんなところにこいつがあるんだ？","グルカ","guruka_purasu","eltia_gimon","2");
			m_set_text("まぁいい\n追手が来る前に行くぞ","グルカ","guruka_magao","eltia_gimon","2");
			break;
		case "event_19":
			m_set_text("よし、上手くいった","グルカ","no","guruka_emi","2");
			m_set_text("おぬしら何者じゃ！\n突然光ったと思ったら現れおって！","国王","no","no","3");
			m_set_text("お…？おぬしグルカか","国王","no","no","3");
			m_set_text("国王陛下\n帝国側からただいま帰還いたしました","グルカ","no","guruka_magao","2");
			m_set_text("また、帝国７災獣怠惰と交戦、再起不能といたしました","グルカ","no","guruka_magao","2");
			m_set_text("なるほど\nして、この者は？","国王","no","guruka_magao","2");
			m_set_text("彼女はコハク\n怠惰撃退の功労者でございます","グルカ","no","guruka_magao","2");
			m_set_text("ふむ\nその功績をたたえて宝物庫から一つ好きなものを授けよう","国王","no","guruka_magao","2");
			m_set_text("受け取っておきましょう\nそれにこれから先役立つものがあるかもしれないですし","エルティア","no","eltia_raku","2");
			m_scr_option("エルティアがそういうなら…","option_3");
			m_scr_option("光栄であります","option_3");
			break;
				case "option_3":
				m_set_text("本来は正式にやるのであるがな…","国王","no","no","3");
				m_set_text("すまないな","国王","no","no","3");
				global.talkwall="1";
				break;
		case "event_20":
			m_set_text("これは…ブローチ？","コハク","gate_konwaku_1","no","1");
			m_set_text("だいぶ古い感じがするけど…","コハク","gate_konwaku_1","no","1");
			m_set_text("っ！？","コハク","gate_kizetsu_1","no","1");
			m_set_text("ブローチはコハクと同調しだした","","no","no","3");
			m_set_text("頭にぼんやりと二人の人物が浮かんできた","","no","no","3");
			m_set_text("これは…私の記憶…？","コハク","gate_ai","no","1");
			m_set_text("おや、なにか起こりました？","エルティア","gate_ai","eltia_gimon","2");
			m_set_text("エルティア見れた？","コハク","gate_ai","eltia_gimon","1");
			m_set_text("いえ、私のほうでは何も…","エルティア","gate_ai","eltia_gimon","2");
			m_set_text("(ということは私だけ…？でもなんで…)","コハク","gate_ai","no","1");
			m_set_text("(謎は残るけどとりあえず外に出よう)","コハク","gate_ai","no","1");
			global.talkwall="2";
			break;
		
		case "event_21":
			m_set_text("…なぁ","グルカ","gate_konwaku_2","guruka_purasu","2");
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
				m_set_text("止めはしないが戦闘慣れしてないだろ","グルカ","gate_raku","guruka_purasu","2");
				m_set_text("少しだけ慣れるようにしてやるよ","コハク","gate_raku","guruka_purasu","2");
				break;
			case "event_21_2":
				m_set_text("なら俺と一緒に来ないか？","グルカ","gate_odoroki","guruka_emi","2");
				m_set_text("即席であのイサクを退けられたんだ\n絶対いいバディになれるさ","グルカ","gate_odoroki","guruka_emi","2");
				m_set_text("どうしよう…","コハク","gate_konwaku_1","guruka_emi","1");
				m_set_text("断りましょう","エルティア","gate_odoroki","eltia_raku","2");
				m_set_text("エルティア？どうして？","コハク","gate_ai","eltia_raku","2");
				m_set_text("確かにメリットはあります　しかしデメリットが未知数です","コハク","gate_ai","eltia_sasayaki","2");
				m_set_text("それは今聞けばいいのでは？","コハク","gate_konwaku_1","eltia_sasayaki","1");
				m_set_text("それに言ってませんでしたがあの神殿で拾ったとき記憶が流れてきたのでしょう？","エルティア","gate_konwaku_1","eltia_gimon","2");
				m_set_text("貴方の記憶と関係があるかもしれませんし知る必要があると思います","エルティア","gate_konwaku_1","eltia_gimon","2");
				m_set_text("エルティアの言うことは一理ある","","no","no","3");
				m_set_text("それならば…","","no","no","3");
				m_set_text("申し訳ないけど誘いは辞退させてもらうよ","コハク","gate_ai","guruka_purasu","1");
				m_set_text("そうか…","グルカ","gate_konwaku_1","guruka_purasu","2");
				m_set_text("なら止めねぇが…\nもう一度あの攻撃を見せてくれ","グルカ","gate_konwaku_2","guruka_purasu","2");
				m_set_text("あれはどちらかというと舞のための動きに見えた","グルカ","gate_konwaku_2","guruka_purasu","2");
				m_set_text("あれは今後参考になるかもしれねぇ","グルカ","gate_interested","guruka_purasu","2");
				m_set_text("…わかった\n手加減はしないよ！","コハク","gate_raku","guruka_emi","1");
				m_set_text("もちろんこっちこそな！","グルカ","gate_raku","guruka_emi","2");
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
			m_set_text("…ありがとうな","グルカ","no","yarare_understand","2");
			m_set_text("グルカはこの後どうするの？","グルカ","gate_konwaku_2","yarare_understand","2");
			m_set_text("俺は傭兵業を続けるさ","グルカ","gate_interested","yarare_nigawarai","2");
			m_set_text("安心しろ　今生の別れじゃねぇんだ","グルカ","gate_interested","yarare_ki","2");
			m_set_text("また会うときはもっと強くなってやる\nそして次は勝ってやるかなら","グルカ","gate_raku","guruka_emi","2");
			m_set_text("うん！またね！","コハク","gate_raku","guruka_usiro","1");
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
			m_set_text("コハクは首にかけている簡易門(インスタントゲート)を起動した","","","");
			m_set_text("指定場所は","コハク","gate_interested","no","1");
			m_scr_option("自然が生い茂る島'ユグドレイス'!","option_4");
			m_scr_option("霊と機械の楽園'バヨウトウ'!","option_4");
			break;
			case"option_4":
			m_set_text("辺りが白く輝く","","no","no");
			break;
		//建学祭用
		case "continue":
			m_set_text("続く…","","","");
			instance_destroy(Obj_Player);
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
			m_set_text("ここは？","コハク","","");
			m_set_text("かなり荒れていますね","エルティア","","");
			m_set_text("人いるのかな？","コハク","","");
			m_set_text("少し探索してみましょうか","エルティア","","");
			break;
			
		case "event_26":
			m_set_text("初めて見る人がいるよ～？","","","");
			m_set_text("初めて見る人がいるね？","","","");
			m_set_text("誰？","","","");
			m_set_text("リアンだよ～","？？？","","");
			m_set_text("レアンだね～","？？？","","");
			m_set_text("おねーさんは？","","","");
			m_set_text("私はコハクよ","","","");
			m_set_text("よろしくね　リアン　レアン","","","");
			m_set_text("ところで2人はここがどこかわかる？","","","");
			m_set_text("ここは地図に載ってない島","","","");
			m_set_text("フォートアイランドだよ","","","");
			m_set_text("フォートアイランド？","","","");
			m_set_text("ここには移動のための施設がないから基本来ることも出ることも出来ないの","","","");
			m_set_text("じゃぁ私はどうやって…？","","","");
			m_set_text("多分天与の影響だと思う","","","");
			m_set_text("天与？","","","");
			m_set_text("おねーさんが首にかけてるそれだよ","","","");
			m_set_text("宝物のこと？","","","");
			m_set_text("そーだね","","","");
			m_set_text("それが壊れてここに着いちゃったみたいだね","","","");
			m_set_text("じゃぁ他の島に行けないってこと…？","","","");
			m_set_text("大丈夫　この島には宝物の修理屋がいるから","","","");
			m_set_text("そんな人がいるの！？","","","");
			m_set_text("こっちだよ　付いてきて！","","","");
			break;
		
		case "event_27":
			m_set_text("ここだよここ","","","");
			m_set_text("ここ？","","","");
			m_set_text("ここが宝物の修理をやってるジョージ爺さんのお店だねぇ","","","");
			m_set_text("ほら、入って入って！","","","");
			break;
			
		case "event_28":
			m_set_text("ジョー爺！やっほー！","","","");
			m_set_text("大人しくせんかい！やかましい！","","","");
			m_set_text("でも今日はとっておきがあるから","","","");
			m_set_text("全く…都合がいいこと言いおって…","","","");
			m_set_text("あの…これなんですけど…","","","");
			m_set_text("ふむ、量産型宝物か　この場で修理はできるが値段は張るぞ","","","");
			m_set_text("えぇ…エルティア　いまぐらい持ってるっけ？","","","");
			m_set_text("丁度3日宿に泊まれるぐらいですね","","","");
			m_set_text("えーっと…どのくらいですか？","","","");
			m_set_text("大体これぐらいだな","","","");
			m_set_text("ジョー爺は両手を大きく広げた","","","");
			m_set_text("うちにはそんな持ち合わせは…","","","");
			m_set_text("ん～？ないなら稼げばいいじゃん！隣で丁度大会やってるよ","","","");
			m_set_text("そうそう、おねーさん強そうだし","","","");
			m_set_text("ふむ、少し足りんが優勝してくるならそれで免除してやろう","","","");
			m_set_text("なるほど、いい機会ですし参加してきませんか？","","","");
			m_scr_option("参加する！","event_29");
			m_scr_option("どうしよう…","option_5_no");
			break;
			case "option_5_no":
				m_set_text("これに参加しないと簡易門直せませんよ？","","","");
				m_scr_option("じゃぁ参加する！","event_29");
				m_scr_option("でも…","option_5_no");
				break;
		
		case "event_29":
			m_set_text("おねーさんでるの！？じゃぁ私も出る！","","","");
			m_set_text("だめだよ僕たち殿堂入りで参加禁止されたじゃん","","","");
			m_set_text("えー！私もでーたーいー！","","","");
			m_set_text("受付ではじかれちゃうよ","","","");
			m_set_text("ところで…受付はどこにあるの？","","","");
			m_set_text("こっちだよ！付いてきて！","","","");
			break;
		
		case "event_30":
			m_set_text("フォートコロシアムへようこそ\nただいま第4回メモリアルマッチの参加受付を行っております","","","");
			m_set_text("どの階級に参加しますか？","","","");
			m_scr_option("蛇級","set_1");
			m_scr_option("水蛇級","set_1");
			m_scr_option("竜級","set_1");
			break;
			case "set_1":
				m_set_text("承りました\nそれでは右手の控室へ移動をお願いします","","","");
				m_set_text("それじゃ僕たちは観客席で見てるから","","","");
				m_set_text("おねーさんがんばってねー！","","","");
				break;
		
		case "event_31":
			m_set_text("まもなく第4回メモリアルマッチを開催いたします。\n選手の皆様はスタジアムの方に移動願います。","","","");
			m_set_text("さて、行きましょうか","","","");
			break;
		
		case "event_32":
			m_set_text("さぁて！役者はそろった！これよりルール説明を行う！","","","");
			m_set_text("その１\n最後までフィールド内で意識があること","","","");
			m_set_text("その２\n相手の完全消滅禁止","","");
			m_set_text("その３\n場外及び再起不能者は失格","","","");
			m_set_text("それ以外はなんでもOK！能力を使ったって構わないぜ！","","","");
			m_set_text("なるほど、要するになんでもOKってことね","","","");
			m_set_text("実況はこの俺！D.C.ブライドが行わせていただく！","","","");
			m_set_text("それじゃ試合開始！！","","","");
			break;
		case "event_32_boss_1":
			m_set_text("見慣れない方がいますね　私が手合わせしましょうか","","","");
			m_set_text("これって申告制だったっけ？","","","");
			m_set_text("これが私の戦闘スタイルなので","","","");
			m_set_text("おっと！速閃ドリーメイスが切り込んでいったぁ！","","","");
			m_set_text("私の剣技を見切れるかな？","","","");
			break;
		case "event_32_boss_2":
			m_set_text("いきなり波乱の展開！優勝候補のドリーメイスが切り伏せられてしまったぁ！\nスピード勝負を制したのは今大会初出場の新人！","","","");
			m_set_text("はぁ…はぁ…すっごい速かった…","","","");
			m_set_text("お疲れですか？","","","");
			m_set_text("あ、エルティア？ちょっと体力が持たなくて…","","","");
			m_set_text("では少し目を閉じてみてください","","","");
			m_set_text("え？大丈夫なの？","","","");
			m_set_text("大丈夫です　少し私の力をお貸しするだけですから","","","");
			m_set_text("じゃぁ少しだけ…","","","");
			m_set_text("おや？新人が動かなくなったぞ？","","","");
			m_set_text("さて、何としても優勝されなくては困るのでね\nご協力お願いしますよ","","","");
			break;
		case "event_32_boss_3":
			m_set_text("そろそろですかね","","","");
			m_set_text("ッ！","","","");
			m_set_text("エルティアありがとう","","","");
			m_set_text("あとは任せましたよ","","","");
			m_set_text("さて、いよいよ終盤戦！ここまで残ったのは破壊僧ブロットと期待の新人コハクです！\nどちらが優勝するのか我々も目が離せません！","","","");
			m_set_text("ふははははははは！！\nよくここまで残ったと褒めてやりたいところだ！","","","");
			m_set_text("だがこの俺を超えることはできぬぅ！","","","");
			m_set_text("ブロットはこの天与で作られた完全防御の壁を唯一破壊した人物だ！\n彼の一撃に耐えることはできるのか！？","","","");
			m_set_text("出来るだけ当たらないようにしないと…","","","");
			m_set_text("生きて帰れるといいなぁ？","","","");
			break;
			
		case "event_33":
			m_set_text("試合終了！優勝はニマ・コハクゥゥゥゥゥゥ","","","");
			m_set_text("これにて第4回メモリアルマッチを終了する！\n実況はこの俺D.C.ブライドがお送りした！","","","");
			m_set_text("(受付に戻ろう)","","","");
			break;
			
		case "event_34":
			m_set_text("優勝おめでとうございます　賞金600万リダでございます。","","","");
			m_set_text("600万リダを手に入れた","","","");
			m_set_text("おねーさーん！","","","");
			m_set_text("おめでとー","","","");
			m_set_text("2人ともありがとう！","","","");
			m_set_text("それじゃ賞金も受け取ったし行こっか","","","");
			break;
			
		case "event_35":
			m_set_text("ジョー爺！！","","","");
			m_set_text("大人しくせんかい！","","","");
			m_set_text("おぉ、お前さん戻ったか\nしっかり優勝はしてきたんじゃろうな？","","","");
			m_set_text("もちろん　はい、これお代","","","");
			m_set_text("おう、しっかり受け取ったぞ\nそれじゃこれが例の物じゃ","","","");
			m_set_text("ジョー爺から修理された簡易門を受け取った","","","");
			m_set_text("ッ…","","","");
			m_set_text("あたまがいたい","","","");
			m_set_text("きさま…を…　…っ…！","","","");
			m_set_text("おや、………","","","");
			m_set_text("これは…？えるてぃあ…？","","","");
			m_set_text("おねーさん！","","","");
			m_set_text("ハッ！","","","");
			m_set_text("どうした？急にボーッとしおって","","","");
			m_set_text("いえ、なにも…","","","");
			m_set_text("？まぁよい　簡易門は来た時と同じ場所で使用せい","","","");
			m_set_text("分かった！ジョー爺さんありがとう！","","","");
			m_set_text("おう、気を付けてな","","","");
			break;
			
		case "event_36":
			m_set_text("それじゃ私行くね","","","");
			m_set_text("おねーさん…","","","");
			m_set_text("大丈夫　また会えるよ","","","");
			m_set_text("ほんと？","","","");
			m_set_text("うん、ほんと！","","","");
			m_set_text("わかった！","","","");
			m_set_text("それじゃ、行くね","","","");
			m_set_text("簡易門起動","","","");
			m_set_text("辺りが白く輝く…","","","");
			case "event_36_2":
				m_set_text("行っちゃったねぇ","","","");
				m_set_text("付いていきたかったなぁ…","","","");
				m_set_text("しょうがないよ　まだ終わってないんだから","","","");
				m_set_text("しょうがないねぇ","","","");
				m_set_text("腫恨髑髏は常に見ている","","","");
				break;
		
		//3章
		case "event_37":
			m_set_text("着いたね","","","");
			m_set_text("今度こそちゃんと着けてますかね","","","");
			m_set_text("とりあえず外に出てみようか","","","");
			break;
		
		case "event_38":
			m_set_text("さぁ寄ってらっしゃい見てらっしゃい！\nオリクトでは珍しい電子機器を取り扱ってますよ！","","","");
			m_set_text("お、お兄さんお目が高い！","","","");
			m_set_text("さぁさぁ今話題の鉱石！\n磁徹鉱がお買い得だよ！","","","");
			m_set_text("どうやらちゃんと着けたみたいですね","","","");
			m_set_text("良かった","","","");
			break;
		
		case "event_39":
			m_set_text("いらっしゃいませ\nタルタミーア商店へようこそ","","","");
			m_set_text("あの…ここは何を取り扱っているのですか？","","","");
			m_set_text("うちは採掘場で採取した鉱石を販売しています\nまた、地上にある宝石を加工するエルフの村と連携をしております","","","");
			m_set_text("そのためもし気に入った宝石がございましたら装飾品として加工することも可能でございます。","","","");		 
			m_set_text("それじゃ宝物は扱ってない？","","","");
			m_set_text("いえ、宝物は稀に出土することがあるため、洗浄して販売しております","","","");
			m_set_text("あ、あるんだ　実は宝物を探してて…\nブレスレットなんだけど…","","","");
			m_set_text("ふむ…ブレスレットは見ておりませんね\nもしかしたら採掘場の市場にあるかもしれません","","","");
			m_set_text("紹介状をお渡ししますので市場を訪ねることをお勧めします","","","");
			break;
		
		case "event_40":
			m_set_text("ここかな？","","","");
			m_set_text("おい嬢ちゃん！ここは関係者以外立ち入り禁止だぞ！","","","");
			m_set_text("ひっ！すみません！\nタルタミーア商店の紹介で来たのですが…","","","");
			m_set_text("お、タル坊のとこの紹介か\nそれじゃそこの小屋に入っててくれ","","","");
			m_set_text("はい！ありがとうございます！","","","");
			m_set_text("(感じいい人だったな)","","","");
			break;
		
		case "event_41":
			m_set_text("失礼します","","","");
			m_set_text("ヒィ⁉","","","");
			m_set_text("ダ！？誰ですか！？","","","");
			m_set_text("おールリ　こんなとこに居たのか","","","");
			m_set_text("お、親方","","","");
			m_set_text("こいつはタル坊の紹介で来たらしい　採掘場のイロハと同行頼むぞ","","","");
			m_set_text("あの…私市場に行きたいのですが…","","","");
			m_set_text("ん？あぁそういうことか　一応市場はあるにはあるが…\n宝物は基本採掘場にあるんだ","","","");
			m_set_text("だからここに最初による必要があるんですよね…","","","");
			m_set_text("そういうことだ　というわけで後は頼んだぞ","","","");
			break;
			case "event_41_1":
				m_set_text("え？ちょ…行っちゃった…","","","");
				m_set_text("えーっと…じゃぁここでのルールを説明しますね","","","");
				m_set_text("準備はいいですか？","","","");
				m_scr_option("はい","event_41_yes");
				m_scr_option("いいえ","event_41_no");
				break;
				case "event_41_yes":
					m_set_text("では説明しますね","","","");
					m_set_text("1つ\n場内は原則ペアで行動します","","","");
					m_set_text("ですが特定状況下に限り単独行動が可能になります","","","");
					m_set_text("1つ\n作業場ではヘルメットの着用が義務付けられています","","","");
					m_set_text("理由はまぁ…言わなくても分かりますよね","","","");
					m_set_text("1つ\n激しい行動の禁止","","","");
					m_set_text("坑道内は大きな種族に配慮してサイズを合わせてある程度のスペースが確保されています\nしかし安全面を考慮してあまり激しい動きはしないでもらいたいです","","","");
					m_set_text("こんな感じですね\nそれではヘルメットを支給しますので着用お願いします","","","");
					m_set_text("ヘルメットは装備のところから確認できますよ","","","");
					break;
			case "event_41_no":
					m_set_text("では準備ができるまで待ってますね","","","");
					break;
			
		case "event_42":
			m_set_text("そういえば坑道内の説明がまだでしたね","","","");
			m_set_text("入口から100mまでの深さを低深度と呼び\n100～200ｍまでを中深度　200mより下を高深度と呼びます","","","");
			m_set_text("また、中深度から高深度にかけて宝物の発掘率が高いです","","","");
			m_set_text("しかし宝物を運び出すのにも一定のリスクがあります","","","");
			m_set_text("リスク？坑道が崩落しちゃうとか？","","","");
			m_set_text("もちろんそれもありますが…宝物の希少性についてご存じですか？","","","");
			m_set_text("それは流通数が少ないからでは？","","","");
			m_set_text("その流通数が少ない原因です\n宝物は基本この採掘場から世界中に届けられます","","","");
			m_set_text("そのためこの場所が宝物が最も多い地点なのです\nしかし一定期間中に多く持ち出しすぎると価値がなくなります","","","");
			m_set_text("というと？","","","");
			m_set_text("取りすぎてしまうとその採取した宝物はただの岩に変化してしまいます\nこのような原因は未だ解明されていませんが…","","","");
			m_set_text("ですので採取の際は採掘した量を管理する必要があります","","","");
			m_set_text("なるほど","","","");
			break;
		
		case "event_43":
			m_set_text("ん？誰かいるよ？","","","");
			m_set_text("おかしいですね　この深度では現在私達以外の採掘者は居ないはずですが…","","","");
			m_set_text("こんにちは～","","","");
			m_set_text("！？貴様なぜここにいる！","","","");
			m_set_text("イサク！？なんでここに！","","","");
			m_set_text("えーっと…お知合いですか？","","","");
			m_set_text("こいつ以前私のこと追ってきたの！","","","");
			m_set_text("コハクさんそれは違う意味に捉えられるのでは…？","","","");
			m_set_text("エルティア今それどころじゃない！","","","");
			m_set_text("ごちゃごちゃと…丁度いい\n帝国での恨み今晴らさせてもらおうか","","","");
			break;
			
		case "event_44":
			m_set_text("狭い空間でちょこまかと…","","","");
			m_set_text("どうしよう…守りながらだと戦いにくい…！","","","");
			m_set_text("埒が明かんな\nならば引かせてもらう","","","");
			m_set_text("あ！こら！\n…行っちゃった","","","");
			m_set_text("コハクさん！","","","");
			m_set_text("ルリ！大丈夫？","","","");
			m_set_text("私は大丈夫ですが…\n戦闘の影響で坑道が崩れちゃって…","","","");
			m_set_text("ほんとだ…道が崩れてる…","","","");
			m_set_text("既に低深度の方達に向けて緊急信号を発信しています\n少し危険ですが上へ繋がる通路があるのでそちらから人を連れてきてください","","","");
			m_set_text("ルリはどうするの？","","","");
			m_set_text("私は体力があまりないのでこちらで救助が来るのを待っています\n人をとにかく連れてきてください","","","");
			m_set_text("うん！分かった！","","","");
			break;
			
		case "event_45":
			m_set_text("救助信号はこの先か","","","");
			m_set_text("あ！さっきのおじさん！","","","");
			m_set_text("さっきの嬢ちゃんじゃねぇか\nルリのやつはどうした？","","","");
			m_set_text("行きで通った道が塞がれちゃったせいで半ば埋められちゃって…","","","");
			m_set_text("なるほど、嬢ちゃんは旧道のほう使ったんか\n確かにルリには難しいわな","","","");
			m_set_text("こっちの方！付いてきて！","","","");
			m_set_text("お、案内助かるぜ","","","");
			break;
		
		case "event_46":
			m_set_text("おかしいな…以前の旧道はこんなに鉱石が露出していなかったはずなんだが…","","","");
			m_set_text("ぐるぉぉぉぉぉぉぉぉぉぉぉぉぉぉ！！！！！","","","");
			m_set_text("な、何の声だ？","","","");
			m_set_text("この先にはルリしかいないはず…","","","");
			m_set_text("まさかあいつ宝物の暴走起こしたか！？","","","");
			break;
		
		case "event_47":
			m_set_text("ルリ！","","","");
			m_set_text("うがぁぁぁぁぁぁぁぁ！！！","","","");
			m_set_text("こりゃマズいな　やっぱ暴走してやがる","","","");
			m_set_text("エルティア　暴走何てこと起きるの？","","","");
			m_set_text("今実際目にしてる通りですね\n宝物の出力は所持してる人によって限界があります","","","");
			m_set_text("しかし何らかの原因により\n限界以上に出力してしまい制御できない状態になります","","","");
			m_set_text("例えるならば大きな箱に入っていた本人の意思が\n他のものが入り隅に追い込まれている状態ですね","","","");
			m_set_text("どうにかする方法はないの？","","","");
			m_set_text("簡単ですよ　余計なもの\n現在で言う宝物を取り除けば元に戻ります","","","");
			m_set_text("なるほど　要するにぶっ飛ばせばいいわけね","","","");
			m_set_text("おい！嬢ちゃんアブねぇぞ！","","","");
			m_set_text("ちょっとルリの目を覚まさせてくる！","","","");
			break;
			
		case "event_48":
			m_set_text("ぅ…","","","");
			m_set_text("ルリ！良かったぁ…","","","");
			m_set_text("ルリあんた気失って暴走してたぞ？","","","");
			m_set_text("暴走って…私は宝物を持っていないんですよ？\n暴走のしようが…","","","");
			m_set_text("…","","","");
			m_set_text("……","","","");			
			m_set_text("………","","","");
			m_set_text("えぇぇ！？","","","");
			m_set_text("ほぉ、あんた後天的能力者だったんか","","","");
			m_set_text("何で親方そんなに冷静なんですか！？","","","");
			m_set_text("ほらほらさっさと上戻って専門機関行くぞ","","","");
			m_set_text("嬢ちゃんも上戻って休んでてくれ\n俺たちはルリ連れてから行くわ","","","");
			m_set_text("分かりました","","","");
			m_set_text("…ん？これって…","","","");
			break;
			
		case "event_49":
			m_set_text("…ってわけで特に問題はなかったわ","","","");
			m_set_text("しばらくは事務作業ですかね","","","");
			m_set_text("とりあえず能力の制御ができるようになってからだがな","","","");
			m_set_text("しっかし不思議ね\n鉱夫がまさか宝石を生み出す能力だなんて","","","");
			m_set_text("まぁ私の生み出す鉱石がどのような影響を及ぼすか調べる必要がありますがね","","","");
			m_set_text("でも特に問題がなくて安心したよ","","","");
			m_set_text("ところでコハクさんの目的は達成できましたか？","","","");
			m_set_text("宝物そのものじゃないけど…","","","");
			m_set_text("これは…ぼんやりですが複数の鼓動を感じます\n少なくとも普通の鉱石ではないですね","","","");
			m_set_text("ということは…？","","","");
			m_set_text("私達では何とも…恐らく地上のエルフの民のほうが詳しいかと思われます","","","");
			m_set_text("エルフ？","","","");
			m_set_text("タル坊が多分説明してたんじゃねぇか？\nここで採掘した鉱石はエルフのやつらが加工して売ってんだ","","","");
			m_set_text("ってわけで俺らより彼方のほうが扱いは詳しいと思うぜ","","","");
			m_set_text("じゃぁ地上に行けばいいのね　ありがとうございます！","","","");
			m_set_text("おっと、大切なものを言い忘れていたぜ\n地上に行くなら検問を通らなきゃいけねぇんだ","","","");
			m_set_text("地上は神聖な森だから指定された場所以外火気厳禁なんだ\nってわけで手荷物には気を付けてくれぃ","","","");
			m_set_text("分かりました！ありがとうございます！","","","");
			m_set_text("おう！検問所はこっから出て西に進んだ突き当りの階段だ！\n気を付けて行けよ！","","","");
			break;
			
		case "event_50":
			m_set_text("はいこんにちは　ここから先は火気厳禁のユグドレイス地上区間です\n手荷物検査させていただきますね","","","");
			m_set_text("はい","","","");
			m_set_text("本日はどのような件で地上区間に？","","","");
			m_set_text("採掘場で採取した鉱石を加工してもらいにですね","","","");
			m_set_text("なるほど、ジェイドさんの関係者でしたか\nそれでは特に問題もないので通って大丈夫です","","","");
			m_set_text("はい、ありがとうございました","","","");
			m_set_text("あ、そうだ　最近地上地下の両方で天遊教による迷惑行為が確認されているのでお気をつけて","","","");
			m_set_text("天遊教…？","","","");
			break;
			
		//4章
		case "event_51":
			m_set_text("え、案内板とかないの…？","","","");
			m_set_text("どうやらないみたいですね\n恐らく自然を守るための一環なんでしょうか","","","");
			m_set_text("あ、でも小屋があるみたい\nちょっと聞きこんでみよう","","","");
			break;
		case "event_52":
			m_set_text("100554!100555!100556!","","","");
			m_set_text("ん？今何時だ？10時か11!12!13!うおぉぉぉぉぉ！","","","");
			break;
		
		case "event_53":
			m_set_text("何あのヘンタイ！？","","","");
			m_set_text("ヘンタイ！？どこにいる！","","","");
			m_set_text("お前だよ！","","","");
			m_set_text("私はヘンタイではない！\nシンラという名がある！","","","");
			m_set_text("でもあんたしかいない部屋で大声出して腕立てしてるやつはヘンタイでしょ！","","","");
			m_set_text("では君も一緒にやろう！","","","");
			m_set_text("どうしてそうなる！","","","");
			m_set_text("あ！待ちたまえ！","","","");
			m_set_text("付いてこないで！","","","");
			break;
		
		case "event_54":
			m_set_text("どこまで追ってくるのあのヘンタイ…","","","");
			m_set_text("おや、この先に村があるそうですよ","","","");
			m_set_text("丁度いいや！匿ってもらおう","","","");
			break;
			
		case "event_55":
			m_set_text("お、お客さんかな？\nようこそ、ここは神聖樹ユグドレイスに一番近い村…","","","");
			m_set_text("助けて！ヘンタイに追われてるの！","","","");
			m_set_text("何！？下がっていなさい！","","","");
			m_set_text("全く…準備運動もなしに走り出したら危ないだろうが","","","");
			m_set_text("なんだシンラか\nまたそのなりで筋トレしていたのか？","","","");
			m_set_text("これでないと服が破れてしまうではないか","","","");
			m_set_text("お客さん申し訳ない　彼はヘンタイではあるが村の守り人だ","","","");
			m_set_text("ヘンタイではあるんだ…","","","");
			break;
			
		case "event_56":
			m_set_text("ここは…？","","","");
			m_set_text("ここは基本我々のアトリエだな","","","");
			m_set_text("うわ、何でいるの？","","","");
			m_set_text("先ほどの彼から案内するように頼まれてな\n安心しろ　気になったら声をかけてくれ","","","");
			m_set_text("うぉぉぉぉぉぉぉ！！！スクワット1000セット！","","","");
			m_set_text("何なのほんとに…","","","");
			break;
		
		case "event_57":
			m_set_text("ねぇ、ちょっといい？","","","");
			m_set_text("どうした？君も一緒にやるか？","","","");
			m_set_text("やらない！\nこの鉱石を加工できる人を探してるんだけど","","","");
			m_set_text("ちょっと見せてもらってもいいか？","","","");
			m_set_text("どうぞ？","","","");
			m_set_text("…これは宝物になる前の原石か","","","");
			m_set_text("分かるの？","","","");
			m_set_text("私は守り人兼鍛冶師だからな\nこれは確かに出来る人間は少ないな","","","");
			m_set_text("そうなんだ　じゃぁ出来る人を教えて","","","");
			m_set_text("私だ","","","");
			m_set_text("…へ？","","","");
			m_set_text("だから私だ　さっきも言っただろう？\n守り人兼鍛冶師だと","","","");
			m_set_text("えぇ…じゃぁお願い","","","");
			m_set_text("ふむ、不服そうだが承知した！\nではしばらくそのあたりを散策してくれ","","","");
			break;
			
		case "event_58":
			m_set_text("大変だ！東の森で天遊教が放火した！","","","");
			m_set_text("何！？それは大変だ！","","","");
			m_set_text("うわ！…何だキンニクマシマシカタメか\n頼む！追い返してくれ！","","","");
			m_set_text("うむ！承知した！","","","");
			m_set_text("私も行く！","","","");
			m_set_text("コハクさん？どうして急に？","","","");
			m_set_text("一人で心配だから！","","","");
			break;
			
		case "event_59":
			m_set_text("シンラ！","","","");
			m_set_text("お客人？危ないから下がっていろ","","","");
			m_set_text("私も手伝う！","","","");
			m_set_text("しかしかの天遊教だ\n何をしてくるか分かったものじゃない！","","","");
			m_set_text("住んでるところを黙って破壊されるのは\n見てられないの！","","","");
			m_set_text("…なるほど、しかし！危なくなったらすぐに逃げるのだぞ！","","","");
			m_set_text("分かった！","","","");
			break;
			
		case "event_60":
			m_set_text("答えるんだ！仲間はあと何人いる！？","","","");
			m_set_text("へッ誰が教えるものか","","","");
			m_set_text("ふむ…残念だ","","","");
			m_set_text("え、カタメどうして縄をほどくの…？","","","");
			m_set_text("何って筋トレだ","","","");
			m_set_text("…へ？","","","");
			m_set_text("筋トレをすることで気持ちが沸き上がり腹を割って喋れるからな","","","");
			m_set_text("？？？","","","");
			m_set_text("さぁ！準備運動でバービー10セットからだ！","","","");
			m_set_text("！？！？！？\nちょちょちょっと待ってくれ！","","","");
			m_set_text("待たない！それでははじめ！","","","");
			m_set_text("そこの人助けてくｒ\nうわぁぁぁぁぁ！！！！","","","");
			m_set_text("うわぁ…結局やり切らせちゃったよ…","","","");
			m_set_text("ある種の拷問ですね…","","","");
			m_set_text("さぁ、村から出て西側に行こう！そこにいるそうだ！","","","");
			m_set_text("この人は…？","","","");
			m_set_text("プロテインとスポドリを置いておく\n安心しろ　俺のおごりだ","","","");
			m_set_text("誰もそんなこと気にしないと思うけど…","","","");
			m_set_text("よし、腿あげしながら行くか！","","","");
			m_set_text("断る！","","","");
			break;
			
		case "event_61":
			m_set_text("なんだ貴様ら！神の教えに反する気か！","","","");
			m_set_text("自らが作成したものを壊すよう教える神がどこにいる！","","","");
			m_set_text("神に逆らう異端者め！後悔するがいい！","","","");
			break;
		
		case "event_62":
			m_set_text("ほら！腹筋50回5セット行くぞ！","","","");
			m_set_text("情報入手より筋トレが先に来てる…","","","");
			m_set_text("イキイキするぞ！！","","","");
			break;
		
		case "event_63":
			m_set_text("最後の場所はユグドレイスの麓か…","","","");
			m_set_text("早く止めよう！","","","");
			break;
		
		case "event_64":
			m_set_text("待て！","","","");
			m_set_text("ふむ、もう嗅ぎつけてしまいましたか\nお出迎えの準備が出来ず申し訳ない","","","");
			m_set_text("何この人…今までのと明らかに違う…\nカタメ　気を付けて","","","");
			m_set_text("申し遅れました　私天遊教遊参隊の隊長を務めさせていただいております\n以後お見知りおきを","","","");
			m_set_text("隊長殿！ここを燃やすのが神からの言葉であると申すか！","","","");
			m_set_text("えぇ　そうですよ？","","","");
			m_set_text("そんなわけがないだろ","","","");
			m_set_text("ほぉ、いい速度ですね\nですが速さが足りない","","","");
			m_set_text("うぐぅ","","","");
			m_set_text("カタメ！","","","");
			m_set_text("さて、仕留める前に質問をします","","","");
			m_set_text("私に答える義務があると？","","","");
			m_set_text("貴方の”記憶”にも言える話ですよ","","","");
			m_set_text("(この人昔の私を知ってる…？)","","","");
			m_set_text("我々もこの植物も公平に「生きている」のならばどこに優先順位の差が生じるのでしょうかね？","","","");
			m_set_text("生きるために自生している植物と栽培している植物はどこに違いが？\n選択するという行動が生まれるのはいったい何が違うのでしょうか？","","","");
			m_set_text("そんなの価値観によって違うでしょ！","","","");
			m_set_text("えぇ、ですからこれはエゴイストの戦いですよ","","","");
			m_set_text("それがわからなければ貴方は私たちを止められない","","","");
			break;
		
		case "event_65":
			m_set_text("ふむ、これ以上はどうにもなりませんね","","","");
			m_set_text("待ちなさい！逃げる気！","","","");
			m_set_text("作戦が失敗して退かない参謀がいますか？\nそういうことですよ","","","");
			m_set_text("…逃がした…\nシンラは！？","","","");
			break;
			
		case "event_66":
			m_set_text("シンラ！","","","");
			m_set_text("悪い　もうここまで見たいだ…","","","");
			m_set_text("そんなこと言わないで！","","","");
			m_set_text("これを…","","","");
			m_set_text("これは…ブレスレット？","","","");
			m_set_text("飛び出す前に作っておいたぜ…\nもっと筋トレ…したかった…な…","","","");
			m_set_text("シンラ！シンラ！！","","","");
			m_set_text("…","","","");
			m_set_text("……","","","");
			m_set_text("………","","","");
			m_set_text("ん？どうして俺はまだ生きてるんだ？","","","");
			m_set_text("コハクさん、シンラさん聞こえますか？","","","");
			m_set_text("えるてぃあ？","","","");
			m_set_text("貴方すごい顔してますよ？","","","");
			m_set_text("うぅるさい！それで！何なのよ！","","","");
			m_set_text("どうやらシンラさんは持ち前の筋肉で軽傷ですね\nキンニクマシマシカタメの名は伊達じゃない！","","","");
			m_set_text("というわけでしばらく休めば治りますよ","","","");
			m_set_text("なるほど、ところでこの声は誰だ？","","","");
			m_set_text("訳あって声だけですが味方です\nところでシンラさんにお聞きしたいことが","","","");
			m_set_text("おう！何でも聞いてくれ！","","","");
			m_set_text("実はかくかくしかじかで","","","");
			m_set_text("ふむ、それなら四角いムーブというわけだな！","","","");
			m_set_text("何で伝わってるのこの二人…","","","");
			m_set_text("そのためにはどちらに？","","","");
			m_set_text("化妖灯(バヨウトウ)だな","","","");
			m_set_text("やはりそちらでしたか\nありがとうございます","","","");
			m_set_text("というわけで化妖灯に行きましょう","","","");
			m_set_text("そこの門は動くの？","","","");
			m_set_text("あぁ、簡易門と違い常に動作している状態だ","","","");
			m_set_text("それじゃぁ私行くね","","","");
			m_set_text("おう！お客人気をつけろよ！","","","");
			m_set_text("コハク！私はニマ・コハクだよ！","","","");
			m_set_text("承知した！気をつけろよ！ニマ・コハク","","","");
			m_set_text("辺りが白く輝く","","","");
			break;
			
		//5章
		case "event_67":
			m_set_text("ん？何処ここ？","","","");
			m_set_text("おかしいですね　門の近辺は条約で開発が禁止されてるはずですが","","","");
			m_set_text("とりあえず邪魔になるから進もうか","","","");
			break;
			
		case "event_68":
			m_set_text("ようこそ化妖灯へ\n今回はどのような目的で？","","","");
			m_set_text("観光です","","","");
			m_set_text("なるほど、どちらに行かれるのですか？","","","");
			m_set_text("首都を見てみたくて","","","");
			m_set_text("分かりました\nそれでは渡航歴を確認しますので簡易門をお預かりします","","","");
			m_set_text("はい","","","");
			m_set_text("…？失礼ですがこの簡易門はどちらで発行しましたか？","","","");
			m_set_text("ヒュプーメですね","","","");
			m_set_text("ヒュプーメ…？\nロビーで少々お待ちください","","","");
			m_set_text("(おっと、ヒュプーメはもう存在しない…？)","","","");
			break;
			
		case "event_69":
			m_set_text("エルティア大丈夫？","","","");
			m_set_text("すみません　どうやら受け答えを間違えたようです","","","");
			m_set_text("えぇ…困るよそれ","","","");
			m_set_text("すみません　対処法を考えるので少し待っててください","","","");
			m_set_text("失礼　取込み中であったか？","","","");
			m_set_text("いえ、どちら様ですか？","","","");
			m_set_text("申し遅れた\n我は特殊治安行動局長「儀筍水主(ギジュンカコ)」である","","","");
			m_set_text("ニマ・コハクです","","","");
			m_set_text("ニマ…なるほど","","","");
			m_set_text("？","","","");
			m_set_text("すまない　こちらの話だ\nここでは目立ってしまう　少し場所を移そう","","","");
			break;
			
		case "event_70":
			m_set_text("さて、ここならば十分であるな","","","");
			m_set_text("わざわざ変えたってことは聞かれたら困ること？","","","");
			m_set_text("それは貴殿に関係あることだ","","","");
			m_set_text("私？","","","");
			m_set_text("先に質問させてもらう\n貴殿はヒュプーメからガラ王国に入国したと聞いているが本当か？","","","");
			m_set_text("(エルティアあそこヒュプーメっていうの？)","","","");
			m_set_text("はい　貴方が目を覚ましたのはヒュプーメにある水の使徒を祭る神殿の近くですね","","","");
			m_set_text("どうした？無言であるが","","","");
			m_set_text("あ、いえ　間違いないです","","","");
			m_set_text("なるほど、そういうことか","","","");
			m_set_text("？","","","");
			m_set_text("お取込み中失礼します！水主局長はいらっしゃいますか！","","","");
			m_set_text("目の前にいるではないか","","","");
			m_set_text("エルトリア氏に動きが見られたため連絡に参りました！","","","");
			m_set_text("なるほど　なんともタイミングが悪い\nコハク殿申し訳ない　非常事態故失礼させてもらう","","","");
			m_set_text("え？行っちゃった…","","","");
			break;
			
		case "event_71":
			m_set_text("すみません　我々も局長が何を話したかったかは聞いておりませんので…","","","");
			m_set_text("いえいえ、大丈夫ですよ","","","");
			m_set_text("ですが伝言を一つ預かっています","","","");
			m_set_text("伝言？","","","");
			m_set_text("「”ウラノス”にて待つ　始まりと終わりの中継地点」と","","","");
			m_set_text("うらのす？","","","");
			m_set_text("ウラノスは天遊教の本拠地ですね","","","");
			m_set_text("天遊教！？\nどうしてそこに？","","","");
			m_set_text("エルトリア氏が天遊の教祖で恐らく逮捕後にお話をするのではないかと","","","");
			m_set_text("とにかくそこに行けば何か情報が手に入るってことね","","","");
			m_set_text("ここからウラノスへはロビーを出た後一番左の停留所に行きます\nその後七津峠を降車してこげ茶色のビルがウラノスです","","","");
			m_set_text("分かりました　ありがとうございます！","","","");
			break;
			
		case "event_72":
			m_set_text("ねぇエルティア　水主参の話ってなんだろうね？","","","");
			m_set_text("………","","","");
			m_set_text("エルティア？","","","");
			m_set_text("寝ちゃってるのかな？","","","");
			break;
			
		case "event_73":
			m_set_text("ガラ王国やユグドレイスと違ってだいぶ近代的…","","","");
			m_set_text("お嬢さん化妖灯は初めてかね？","","","");
			m_set_text("え、はい","","","");
			m_set_text("ここはワシら妖が科学を学び発展してきた国でな","","","");
			m_set_text("妖怪が科学に…？","","","");
			m_set_text("ワシらには寿命という概念が存在しない故出来る事じゃ","","","");
			m_set_text("どういうこと？","","","");
			m_set_text("通常種は子をなすことによって環境の変化に適応して生きておる\nじゃが技術や記憶を完璧には継承できん","","","");
			m_set_text("そのため必ずどこかで失われてしまう情報が存在する\nそれが記憶や技術課は分からんがな","","","");
			m_set_text("そこで変化も継承もできるワシら妖が種を繫栄させ補助することが一番効率的なのじゃ","","","");
			m_set_text("そんな自己犠牲で辛くないの…？","","","");
			m_set_text("そういうものはひっそり自由に生きておるよ\nワシらはワシらが正しいと思えることをしているだけじゃ","","","");
			m_set_text("まもなく七津峠　七津峠","","","");
			m_set_text("あ、降りなきゃ","","","");
			m_set_text("ありがとうの　こんな老体の話に付き合ってもらって","","","");
			m_set_text("いえ、参考になりました　ありがとうございます","","","");
			break;
			
		case "event_74":
			m_set_text("ッ！？あいつユグドレイスに居たやつ！","","","");
			m_set_text("…道路わたってビルに入ってった…？","","","");
			m_set_text("あそこがウラヌス…？","","","");
			break;
			
		case "event_75":
			m_set_text("あれ？すんなり入れちゃった…\nとりあえずどこにいるか探さないと","","","");
			break;
		
		case "event_76":
			m_set_text("あ、見つけた","","","");
			m_set_text("コハク殿！？何故ここに！？","","","");
			m_set_text("何でって水主さんが指定したんでしょ？","","","");
			m_set_text("指定？何の話だ？","","","");
			m_set_text("それは神による天啓でございます","","","");
			m_set_text("この声は…やはり貴殿か","","","");
			m_set_text("初めましてですわね　ニマ・コハクさん私は…","","","");
			m_set_text("エルトリア・スチュアート\nですわ　　　　　　　…！","","","");
			break;
		
		case "event_77":
			m_set_text("なるほど、特安に内通者がいたか…","","","");
			m_set_text("コハク殿　どうやら奴らは我々の一歩先を進んでいたらしい","","","");
			m_set_text("いえいえ、私たちはただ天啓の通り動いたまでですわ\n「水の巫女を手繰り寄せ顕現せん」と","","","");
			m_set_text("水の巫女…？","","","");
			m_set_text("なるほど、伝承に伝わりし12の使徒か…","","","");
			m_set_text("コハク殿　恐らく貴殿はヒュプーメ以前の記憶がないのであろう？","","","");
			m_set_text("うん、全く","","","");
			m_set_text("それは記憶保持の媒体になっていた神殿を破壊したからですわ","","","");
			m_set_text("え？","","","");
			m_set_text("我らが神は水の巫女以外を取り込み蓄えておられたのですわ","","","");
			m_set_text("そして12の使徒のうち1人を媒介として最後に残ったのがコハク殿であると…","","","");
			m_set_text("大変でしたわ　神殿の周囲にアリがいたので2人に駆除をお願いしましたの","","","");
			m_set_text("2人…？","","","");
			m_set_text("さて、こちらに来て頂けますか？儀式は始まったばかりですわ","","","");
			break;
			
		case "event_78":
			m_set_text("水主さんどうにかならないの…？","","","");
			m_set_text("少なくとも外から援軍を呼んでいる\nしかし暫くはこのままであるな…","","","");
			m_set_text("何をおしゃべりしてますの？","","","");
			m_set_text("あ、おねーさん！","","","");
			m_set_text("この声…まさか…","","","");
			m_set_text("やっほー","","","");
			m_set_text("リアン…！","","","");
			m_set_text("子供だと思ったが…相当な手練れであるか","","","");
			m_set_text("もちろん","","","");
			m_set_text("まさか駆除したのって…","","","");
			m_set_text("そう！私達！どれだけ強いのかと思ったら拍子抜けだったよ","","","");
			m_set_text("あれはつまらなかったよねぇ…","","","");
			m_set_text("どうしてそんなことができるの！みんな必死に生きてるのに！","","","");
			m_set_text("僕たちも必至だからねぇ…\n力がないと自由は手に入らないの","","","");
			m_set_text("それに私達こうしないと生きてけないの","","","");
			m_set_text("「腫恨髑髏」そこのお兄さんなら意味わかるよね","","","");
			m_set_text("…貴殿たち歳はいくつであるか","","","");
			m_set_text("16だよ","","","");
			m_set_text("…なるほどな　宝物の覚醒は8年前であろう","","","");
			m_set_text("うん","","","");
			m_set_text("合致したな","","","");
			m_set_text("え？どういうこと？","","","");
			m_set_text("それは神様が教えてくれるからねぇ","","","");
			m_set_text("おにーさんはそこで待っててね！","","","");
			break;
			
		//6章
		case "event_79":
			m_set_text("ここは…？","","","");
			m_set_text("いやはやようやくですね","","","");
			m_set_text("その声は…エルティア？","","","");
			m_set_text("「お初にお目にかかります」ニマ・コハクさん","","","");
			m_set_text("どうしちゃったの？","","","");
			m_set_text("さて、少し昔話をしましょうか","","","");
			break;
		
		case "event_80":
			m_set_text("遥か昔まだ島が地上にあったころ寿命の短い全知全能の大賢者が居ました","","","");
			m_set_text("彼は自分の命が長くないと知ると弟子を取り自身の力を継承させようとしました","","","");
			m_set_text("しかし力は各弟子に1つずつ継承する形で終わってしまうのです","","","");
			m_set_text("その後賢者は力尽き弟子は各々の力を利用して秩序を守ってきました\nいつか全てを操るものが現れると信じて","","","");
			m_set_text("ところがある時弟子の1人はふとしたことで他の弟子の力を奪うのです","","","");
			m_set_text("力の強大さと自由を手に入れてしまった者を止めるために他の弟子は応戦しました","","","");
			m_set_text("しかし歯が立たずに劣勢に追い込まれた弟子達は上空に\n肥沃な土地、多くの文明、多くの種族、そして力を残して封印をしてしまうのです","","","");
			m_set_text("それが現在の島の成り立ちです","","","");
			m_set_text("なるほどね　それと私に何の関係が？","","","");
			m_set_text("万物の生死は目に見えない大きな空にできる路なのです\nそしてその始まりは水である","","","");
			m_set_text("始まりの力はすべてを凌駕します\nそれは私にとってとても邪魔なのです","","","");
			m_set_text("言ってる意味がよくわからないよ…","","","");
			m_set_text("でもこれだけは言える　ただ言われたことだけをこなす人生なんて間違ってる","","","");
			m_set_text("なるほど　記憶をなくしても信念は変わらないわけですか\nではお邪魔させていただきますよ","","","");
			break;
			
		case "event_81":
			m_set_text("なるほど…流石は水の巫女ですね","","","");
			m_set_text("エルティア…","","","");
			m_set_text("これではもう私が成り代わる事も不可能そうですね","","","");
			m_set_text("私たとえこの旅が仕組まれていたとしても楽しかったよ","","","");
			m_set_text("…ふふふ　面白い人ですね\nそれでは私は次回に期待しますかね…","","","");
			m_set_text("次はちゃんと親友として現れてね","","","");
			break;
			
		case "event_82":
			m_set_text("ここは…","","","");
			m_set_text("コハク殿目が覚めたか","","","");
			m_set_text("水主さん","","","");
			m_set_text("ここは特安の治療室である","","","");
			m_set_text("リアンたちは！？","","","");
			m_set_text("落ち着け　順を追って説明しよう","","","");
			m_set_text("まず貴殿が儀式に巻き込まれた後エルトリア氏を拘束\n同時に地上から援軍を突入させて天遊教徒を一斉検挙させた","","","");
			m_set_text("ということは…？","","","");
			m_set_text("あの子たちは呪怨宝物の影響もあるため専門機関に搬送した","","","");
			m_set_text("私…全部思い出したの\n記憶を無くす前のこと全部","","","");
			m_set_text("なるほど、それで貴殿は今後どうする","","","");
			m_set_text("私は…","","","");
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