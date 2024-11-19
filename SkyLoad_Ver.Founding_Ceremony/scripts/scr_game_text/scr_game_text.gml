//テキストIdパラメータ
function scr_game_text(_text_id,_system_text){
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
			set_text("水面が揺れている","","no","no");
			break;
		case "system_text2":
			set_text("岩が邪魔で通れない","","no","no");
			break;
		case "system_text3":
			set_text("岩が邪魔で通れない","","no","no");
			break;
		case "system_text4":
			set_text("朽ち果てた柱だ","","no","no");
			break;
		case "system_text5":
			set_text("明かりは灯ってないようだ","","no","no");
			break;
		case "system_text6":
			set_text("謎の銅像だ","","no","no");
			break;
		case "system_text7":
			set_text("何かの絵だ","","no","no");
			break;
		case "system_text8":
			set_text("崩落していて先に進めない","","no","no");
			break;
			//town
		case "system_text9":
			set_text("ただいま準備中…","","no","no");
			break;
		case "system_text10":
			set_text("どうやら営業時間外のようだ","","no","no");
			break;
		case "system_text11":
			set_text("ようこそゼピュアへ","","no","no");
			break;
		case "system_text12":
			set_text("開店時刻16:00~5:00","","no","no");
			break;
		case "system_text13":
			set_text("リゾー専門店　～イタリスタ～","","no","no");
			break;
		case "system_text14":
			set_text("柵の向こうにお墓が見える","","no","no");
			break;
		case "system_text15":
			set_text("封鎖されていて通れない","","no","no");
			break;
		case "system_text16":
			set_text("手配書だ\n綺麗な姿が描かれている","","no","no");
			break;
		case "system_text17":
			set_text("壁の様に獣人が集まっている","","no","no");
			break;
		case "system_text18":
			set_text("道が崩落していて通れない","","no","no");
			break;
		case "system_text19":
			set_text("'何か'があった跡がある","","no","no");
			break;
		case "system_text20":
			set_text("倒木していて通れない","","no","no");
			break;
			
		//会話用コード
		case "talk_1":
			set_text("ここはの統治する島”ゾートネイシ”よ","町人","no","no");
			set_text("更に言うならガラ王国最前線\n兵士の眠る街ゼピュアよ","町人","no","no");
			set_text("観光気分なら帰ったほうがいいわ","町人","no","no");
			set_text("なんかマズいとこ来ちゃったかも…","コハク","no","no");
			break;
		case "talk_2":
			set_text("王国聖騎士団が来てるそうだ","町人","no","no");
			set_text("これから帝国に向かうらしいんだ","町人","no","no");
			set_text("だからしばらく通行止めだぜ","町人","no","no");
			break;
		case "talk_3":
			set_text("お前さんそれは初期型の簡易門(インスタントゲート)か？","町人","no","no");
			set_text("初期型の簡易門？","コハク","no","no");
			set_text("なんだい　量産型宝物(ホウモツ)をしらないのかい？","町人","no","no");
			scr_option("知ってるよ","talk_know");
			scr_option("知らないよ","talk_notknow");
			break;
			case "talk_know":
				set_text("知ってるなら話は早い　俺たちの移動手段である門(ゲート)を\n一人用に改良された最初の門だ","町人","no","no");
				set_text("結構する代物だぜ？大切にしな","町人","no","no");
				set_text("ついでにこいつもやろう","町人","no","no");
				set_text("見たところ旅人だろう？気を付けてな","町人","no","no");
				set_text("コハクは簡易治療薬(インスタントライフ)を手に入れた","","no","no");
				set_text("ありがとう！","コハク","no","no");
				break;
			case "talk_notknow":
				set_text("ならそもそも宝物が何なのかからだな","町人","no","no");
				set_text("簡単に言うと特別な物に宿る意志みたいなものだ。","町人","no","no");
				set_text("例えば言語が違うのに会話できるようになる矛とか攻撃を通さない衣とかだな","町人","no","no");
				set_text("んで、量産型宝物は霊機都市バヨウトウが作った人工宝物さ","町人","no","no");
				set_text("お前さんの持ってる簡易門はその中でも初期のほうに出来たものってわけだ","町人","no","no");
				set_text("なるほど","コハク","no","no");
				set_text("ついでにこいつもやろう","町人","no","no");
				set_text("見たところ旅人だろう？気を付けてな","町人","no","no");
				set_text("コハクは簡易治療薬(インスタントライフ)を手に入れた","","no","no");
				break;
		case "talk_3_after":
			set_text("どうした？何か付いてるか","町人","no","no");
			break;
		case "talk_4":
			set_text("お嬢さんこの時期に外に出るのかい？","門番","no","no");
			set_text("別に止めやしないが気をつけてな","門番","no","no");
			break;
		case "talk_5":
			set_text("これが終わったら報告書の作成と物資運搬と…ブツブツブツ","門番","no","no");
			set_text("話しかけるのはやめておこう","","no","no");
			break;
		case "talk_6":
			set_text("悪いがこの先通行止めだ","警備員","no","no");
			set_text("どうやら対岸で損傷が見つかったみたいでな","警備員","no","no");
			set_text("他の路を通ってくれ","警備員","no","no");
			break;
		case "talk_7":
			set_text("…………","町人","no","no");
			set_text("泣いている","","no","no");
			break;
		case "talk_8":
			set_text("あんたもお花をあげに来たのかい？","町人","no","no");
			set_text("更に上に昇っちまったけどあっちでも楽しんでくれてるさ","町人","no","no");
			set_text("そいつの分もしっかり生きるんだよ","町人","no","no");
			break;
		
		
			
		//イベント用コード
		case "event 1":		
			set_text("珍しいですね\nこんなところに人が来るなんて","安心感のある声","no","no","2");
			set_text("しかも寝ていますね","安心感のある声","no","no","2");
			set_text("あ、起きました？","声の主","no","no","2");
			scr_option("ここはどこ？","talk");
			scr_option("あなたは誰？","talk");
			break;
			case "talk":
				set_text("状況がわからないようですね","声の主","no","eltia","2");
				set_text("それでは話したいことはありますが\n先に操作方法から教えましょうか","声の主","no","eltia","2");
				set_text("まずは移動からですね","声の主","no","eltia","2");
				set_text("進みたい方向を十字キーで押してみてください\nそうするとその方向に進みますよ","声の主","no","eltia","2");
				break;
		case "event 2":
			set_text("上出来ですね","声の主","no","eltia_ki","2");
			set_text("それでは次は身の守り方を知りましょうか","声の主","no","eltia","2");
			set_text("移動方法は変わりませんが攻撃が出来ます\nZキーで攻撃しますよ","声の主","no","eltia","2");
			set_text("貴方の体力は下に表示されています\nこれがゼロになると負けてしまいますのでお気をつけて","声の主","no","eltia","2");
			set_text("相手の攻撃に当たらないように気を付けてくださいね","声の主","no","eltia","2");
			set_text("頑張ってください","声の主","no","eltia","2");
			break;
		case "event 2_1":
			set_text("さすがです","声の主","no","eltia_ki","2");
			set_text("どうですか？記憶の混乱は落ち着きましたか？","声の主","no","eltia_gimon","2");
			scr_option("名前以外思い出せない","event_2_1_1");
			break;
			case "event_2_1_1":
				set_text("おや、それは困りましたね","声の主","no","eltia_gimon","2");
				set_text("それでは辺りを調べてみましょう","声の主","no","eltia_sasayaki","2");
		case "event 3":
			set_text("だいぶ暗いですね","声の主","no","eltia_sasayaki","2");
			set_text("しかも今にも崩れそうです","声の主","no","eltia_sasayaki","2");
			set_text("慎重に進みましょうか","声の主","no","eltia_sasayaki","2");
			break;
		case "event 4":
			set_text("広い場所に出ましたね","声の主","no","eltia_sasayaki","2");
			set_text("でも気を付けてください　\n何が起こるかわかりませんから","声の主","no","eltia","2");
			break;
		case "event 5":
			set_text("そういえば自己紹介がまだでしたね","声の主","no","eltia","2");
			set_text("私はエルティア\n訳あってあなたと喋ることができています","エルティア","no","eltia_ki","2");
			scr_option("私の名前は…","system_talk1");
			break;
			case "system_talk1":
				set_text("あなたの名前はもちろん知っていますよ","エルティア","no","eltia_futeki","2");
				set_text("よろしくお願いしますね\nニマ　コハクさん","エルティア","no","eltia_futeki","2");
				set_text("(なんで知ってるんだろう？)","コハク","kohaku","no","1");
				break;
		case "event 6":
			set_text("おや、ここだけ明るいですね","エルティア","no","eltia_gimon","2");
			set_text("これは…？","コハク","kohaku","eltia_gimon","1");
			set_text("コハクは床に落ちているペンダントを拾った。","","no","no");
			set_text("するとコハクの中に突然記憶があふれてきた","","no","no");
			set_text("崩壊しかけた世界で相対する光景が見えた","","kohaku_ai","no","2");
			set_text("これはいったい…？","コハク","kohaku_ai","no","1");
			set_text("それを首にかけた途端に目の前が白く覆われた!","","no","no");
			set_text("え？なに！？","コハク","gate_odoroki","no","1");
			break;
			//town
		case "event 7":
			set_text("え、何処ここ？","コハク","gate_konwaku_2","no","1");
			set_text("エルティア？","コハク","gate_konwaku_2","no","1");
			set_text("エルティアからの反応はない","","gate_konwaku_2","no","1");
			set_text("もう…","","gate_futekusare","no","1");
			set_text("とりあえず聞き込みね","コハク","gate_interested","no","1");
			break;
		case "event 8":
			set_text("よかった…街から出れたみたい","コハク","gate_tsuujou","no","1");
			set_text("他の街に行ってみましょう","コハク","gate_tsuujou","no","1");
			break;
		case "event 9":
			set_text("道が封鎖されている","コハク","","no");
			set_text("うそでしょ…","コハク","gate_kyoufu_2","no","1");
			set_text("どこかに通れる道はないかな？","コハク","gate_ai","no","1");
			break;
			global.talkwall="0";
		case "event 10":
			set_text("そろそろガラ王国が近くなってきたな","帝国兵","no","no");
			set_text("油断するなよ？聖騎士団の奴らの出鼻を挫くんだ","帝国兵","no","no");
			set_text("…あ？誰だあんた？","帝国兵","no","no");
			set_text("鎧を装備した兵士はコハクに気づいた","","gate_konwaku_1","no");
			set_text("見ない顔だが…王国の方向から来たってことはそういうことだよな？","帝国兵","gate_konwaku_1","no","1");
			set_text("あの～？何か勘違いしてるのでは…","コハク","gate_konwaku_1","no","1");
			set_text("'この状況'で対向からくる理由なんざ一つだろ","帝国兵","gate_kyoufu_1","no","1");
			set_text("'この状況'？　\nあ！ちょっと！？","コハク","gate_odoroki","no","1");
			global.set_destroy=1;
			break;
		case "event 11":
			set_text("あらら\nやっちゃいましたね","エルティア","no","eltia_gimon","2");
			set_text("エルティア！？何で反応してくれなかったのよ！","コハク","gate_do","eltia_gimon","1");
			set_text("すみません\nどうやらそちらから私と会話することができないようですね","エルティア","gate_do","eltia_ai","2");
			set_text("ひとまず逃げましょう\n追手が来ますからね","エルティア","gate_do","eltia","2");
			set_text("どうやら上方向に通れそうな道がありますよ","エルティア","gate_konwaku_1","eltia_ki","2");
			set_text("えぇ…","コハク","gate_konwaku_1","no","1");
			set_text("(上ってどういうことだろ…？)","コハク","gate_konwaku_1","no","1");
			break;
		case "event 12":
			set_text("この森はかなり複雑ですね","エルティア","no","eltia","2");
			set_text("ですが安心してください\n私が導きます","エルティア","no","eltia_ki","2");
			set_text("おい！森に向かって足跡が伸びてるぞ！","帝国兵","gate_kyoufu_1","no","3");
			set_text("走りましょうか","エルティア","gate_magao","eltia_raku","2");
			set_text("何されるかわからないもんね！","コハク","gate_kyoufu_3","eltia_raku","1");
			global.set_destroy=0;
			break;
		case "event 13":
			set_text("貴様監視の目を逃れて近づくとは何者だ","帝国兵","no","no");
			set_text("どういうこと！？先回りされた？","コハク","gate_odoroki","no","1");
			set_text("どうやら逃げているうちに帝国側に来てしまったようですね","エルティア","gate_odoroki","eltia_gimon","2");
			set_text("とにかく逃げなきゃ！","コハク","gate_odoroki","eltia_gimon","1");
			global.talkwall="4";
			break;
		case "event 14":
			global.talkwall="3";
			set_text("う～ん…","コハク","gate_kizetsu_2","no","1");
			set_text("あ、起きたか？","獣の少女","no","guruka_magao","2");
			set_text("ッハ！","コハク","gate_odoroki","guruka_magao","1");
			set_text("ここは！？","コハク","gate_odoroki","guruka_magao","1");
			set_text("バシ帝国の地下牢だぜ","獣の少女","gate_konwaku_1","guruka_magao","2");
			set_text("あんたは何をしてここに連れてこられたんだ？","獣の少女","gate_konwaku_1","guruka_magao","2");
			scr_option("ちょっと事情が…","event_n");
			scr_option("ただ'オハナシアイ'を…","event_g")
			break;
			case "event_n":
				set_text("てことは聖騎士団とかじゃねぇってことか","獣の少女","gate_konwaku_2","guruka_magao","2");
				scr_option("ところで貴方の名前は？","event_14_2");
				break;
			case "event_g":
				Player.set_textoption+=1
				Player.status_g+=1;
				set_text("面白いやつだな","獣の少女","gate_tere_1","guruka_emi","2");
				scr_option("ちなみに貴方の名前は？","event_14_2");
				break;
		case "event_14_2":
			set_text("俺か？俺はグルカだ","獣の少女","gate_tsuujou","guruka_emi","2");
			set_text("しがない傭兵をしている\nよろしくな　え～っと…","グルカ","gate_tsuujou","guruka_emi","2");
			set_text("ニマ　コハクです！よろしく！","コハク","gate_ki","guruka_emi","1");
			break;
		case "event 15":
			set_text("なぁ、ここから出たいと思わないか","グルカ","no","guruka_purasu","2");
			scr_option("もちろん","event_15_1");
			scr_option("ここでもいいかなぁ…","event_15_2");
			break;
			case "event_15_1":
				set_text("それなら話は早い","グルカ","no","guruka_purasu","2");
				set_text("後ろの壁を掘っておいてある","グルカ","no","guruka_purasu","2");
				set_text("新しくあんたが来たってことは手続きやらなんやらでバタバタしてるからな","グルカ","no","guruka_purasu","2");
				set_text("この隙に脱出するぞ","グルカ","no","guruka","2");
				break;
			case "event_15_2":
			Player.status_g+=1;;
			Player.set_textoption+=1;
				set_text("…冗談だろ？","グルカ","no","guruka_odoroki","2");
				set_text("とりあえずここから脱出する\n付いてこい","グルカ","no","guruka_magao","2");
				set_text("付いていきましょう\nあなたの役に立つと思いますよ","エルティア","no","guruka_magao","2");
				break;		
		case "event 16":
			set_text("ところでグルカってさ","コハク","gate_interested","no","1");
			set_text("その服装は趣味なの？","コハク","gate_interested","no","1");
			set_text("俺の基本行動は特殊でな　そのための服さ","グルカ","gate_interested","guruka_purasu","2");
			set_text("なるほど","コハク","gate_ki","guruka_purasu","1");
			break;
		case "event 17":
			set_text("なんだここは","グルカ","no","guruka_magao","1");
			set_text("何かのための広場でしょうかね？","エルティア","no","guruka_magao","2");
			set_text("王国のネズミがコソコソ何をしてるんだ？","？？？","no","isaku_gimon","2");
			set_text("おいおい勘弁してくれや…","グルカ","no","guruka_odoroki","2");
			set_text("なんでお前がここにいるんだ…","グルカ","no","guruka_odoroki","2");
			set_text("口を慎め猫男","？？？","guruka_odoroki","isaku_do","2");
			scr_option("猫男！？","event_17_2");
			scr_option("貴方は誰なの？","event_17_1");
			break;
			case "event_17_1":
				set_text("こいつは帝国７災獣の内の一人…\n怠惰担当の'イサク'だ","グルカ","guruka_magao","isaku","2");
				set_text("気をつけろ　本気を出せばチリどころじゃすまないぞ","グルカ","guruka_magao","isaku","2");
				set_text("シャーシャーやかましいな\nそろそろ消し飛ばすか","イサク","guruka_magao","isaku_warai","2");
				break;
			case "event_17_2":
				Player.set_textoption+=1;
				set_text("そんなの今はどうでもいいだろ！","グルカ","guruka_odoroki","isaku","1");
				set_text("よりにもよって'イサク'だ…","グルカ","guruka_odoroki","isaku_emi","1");
				set_text("さて、フェリスの為の研究材料にしてやろうか","イサク","guruka_odoroki","isaku_emi","2");
				break;
			
		case "event 18":
			set_text("これは…空間転送のための陣ですね","エルティア","no","eltia_gimon","2");
			set_text("しかも使い切りのようです","エルティア","no","eltia_gimon","2");
			set_text("何でこんなところにこいつがあるんだ？","グルカ","guruka_purasu","eltia_gimon","2");
			set_text("まぁいい\n追手が来る前に行くぞ","グルカ","guruka_magao","eltia_gimon","2");
			break;
		case "event 19":
			set_text("よし、上手くいった","グルカ","no","guruka_emi","2");
			set_text("おぬしら何者じゃ！\n突然光ったと思ったら現れおって！","国王","no","no","3");
			set_text("お…？おぬしグルカか","国王","no","no","3");
			set_text("国王陛下\n帝国側からただいま帰還いたしました","グルカ","no","guruka_magao","2");
			set_text("また、帝国７災獣怠惰と交戦、再起不能といたしました","グルカ","no","guruka_magao","2");
			set_text("なるほど\nして、この者は？","国王","no","guruka_magao","2");
			set_text("彼女はコハク\n怠惰撃退の功労者でございます","グルカ","no","guruka_magao","2");
			set_text("ふむ\nその功績をたたえて宝物庫から一つ好きなものを授けよう","国王","no","guruka_magao","2");
			set_text("受け取っておきましょう\nそれにこれから先役立つものがあるかもしれないですし","エルティア","no","eltia_raku","2");
			scr_option("エルティアがそういうなら…","option_3");
			scr_option("光栄であります","option_3");
			break;
				case "option_3":
				set_text("本来は正式にやるのであるがな…","国王","no","no","3");
				set_text("すまないな","国王","no","no","3");
				global.talkwall="1";
				break;
		case "event 20":
			set_text("これは…ブローチ？","コハク","gate_konwaku_1","no","1");
			set_text("だいぶ古い感じがするけど…","コハク","gate_konwaku_1","no","1");
			set_text("っ！？","コハク","gate_kizetsu_1","no","1");
			set_text("ブローチはコハクと同調しだした","","no","no","3");
			set_text("頭にぼんやりと二人の人物が浮かんできた","","no","no","3");
			set_text("これは…私の記憶…？","コハク","gate_ai","no","1");
			set_text("おや、なにか起こりました？","エルティア","gate_ai","eltia_gimon","2");
			set_text("エルティア見れた？","コハク","gate_ai","eltia_gimon","1");
			set_text("いえ、私のほうでは何も…","エルティア","gate_ai","eltia_gimon","2");
			set_text("(ということは私だけ…？でもなんで…)","コハク","gate_ai","no","1");
			set_text("(謎は残るけどとりあえず外に出よう)","コハク","gate_ai","no","1");
			global.talkwall="2";
			break;
		
		case "event 21":
			set_text("…なぁ","グルカ","gate_konwaku_2","guruka_purasu","2");
			set_text("あんたこれからどうするんだ？","グルカ","gate_konwaku_2","guruka_purasu","2");
			set_text("どうするってそりゃ","コハク","gate_konwaku_2","guruka_purasu","1");
			scr_option("他の島に行こうと思うよ","event_21_1");
			scr_option("何も考えてないや","event_21_2");
			if(Player.set_textoption>=3&&Player.status_g>=1){
				scr_option("貴方のこともっと知りたいなぁ","event_21_3");
			}
			break;
			case "event_21_1":
				set_text("そうか…","グルカ","gate_raku","guruka_purasu","2");
				set_text("止めはしないが戦闘慣れしてないだろ","グルカ","gate_raku","guruka_purasu","2");
				set_text("少しだけ慣れるようにしてやるよ","コハク","gate_raku","guruka_purasu","2");
				break;
			case "event_21_2":
				set_text("なら俺と一緒に来ないか？","グルカ","gate_odoroki","guruka_emi","2");
				set_text("即席であのイサクを退けられたんだ\n絶対いいバディになれるさ","グルカ","gate_odoroki","guruka_emi","2");
				set_text("どうしよう…","コハク","gate_konwaku_1","guruka_emi","1");
				set_text("断りましょう","エルティア","gate_odoroki","eltia_raku","2");
				set_text("エルティア？どうして？","コハク","gate_ai","eltia_raku","2");
				set_text("確かにメリットはあります　しかしデメリットが未知数です","コハク","gate_ai","eltia_sasayaki","2");
				set_text("それは今聞けばいいのでは？","コハク","gate_konwaku_1","eltia_sasayaki","1");
				set_text("それに言ってませんでしたがあの神殿で拾ったとき記憶が流れてきたのでしょう？","エルティア","gate_konwaku_1","eltia_gimon","2");
				set_text("貴方の記憶と関係があるかもしれませんし知る必要があると思います","エルティア","gate_konwaku_1","eltia_gimon","2");
				set_text("エルティアの言うことは一理ある","","no","no","3");
				set_text("それならば…","","no","no","3");
				set_text("申し訳ないけど誘いは辞退させてもらうよ","コハク","gate_ai","guruka_purasu","1");
				set_text("そうか…","グルカ","gate_konwaku_1","guruka_purasu","2");
				set_text("なら止めねぇが…\nもう一度あの攻撃を見せてくれ","グルカ","gate_konwaku_2","guruka_purasu","2");
				set_text("あれはどちらかというと舞のための動きに見えた","グルカ","gate_konwaku_2","guruka_purasu","2");
				set_text("あれは今後参考になるかもしれねぇ","グルカ","gate_interested","guruka_purasu","2");
				set_text("…わかった\n手加減はしないよ！","コハク","gate_raku","guruka_emi","1");
				set_text("もちろんこっちこそな！","グルカ","gate_raku","guruka_emi","2");
				break;
			case "event_21_3":
				Player.set_textoption+=1;
				set_text("おいおいいきなり告白とかシビれるなぁ","グルカ","no","guruka_emi","2");
				set_text("だが悪いな　俺は…","グルカ","no","guruka_purasu","2");
				set_text("うぉ！？なにすんだ！","グルカ","no","guruka_odoroki","2");
				set_text("断られちゃったからねぇ…\nならやることは一つでしょう？","コハク","gate_interested","guruka_odoroki","1");
				set_text("おいおいいきなりどうしたんだ？","グルカ","gate_interested","guruka_odoroki","2");
				set_text("コハクは問答無用で攻撃を仕掛ける！","","no","no","3");
				break;
		
		case "event 22":
		if(Player.set_textoption>=4&&Player.status_g>=1)
		{
			set_text("ありゃ　死んじゃった？","コハク","gate_interested","yarare_nirami","1");
			scr_option("生きてる～？","event_22_1");
			break;
		}
			set_text("…ありがとうな","グルカ","no","yarare_understand","2");
			set_text("グルカはこの後どうするの？","グルカ","gate_konwaku_2","yarare_understand","2");
			set_text("俺は傭兵業を続けるさ","グルカ","gate_interested","yarare_nigawarai","2");
			set_text("安心しろ　今生の別れじゃねぇんだ","グルカ","gate_interested","yarare_ki","2");
			set_text("また会うときはもっと強くなってやる\nそして次は勝ってやるかなら","グルカ","gate_raku","guruka_emi","2");
			set_text("うん！またね！","コハク","gate_raku","guruka_usiro","1");
			break;
		case "event_22_1":
			set_text("チッやりやがったな…","グルカ","no","yarare_do","2");
			set_text("俺には他にもできることがあるんだぜ…","グルカ","no","yarare_do","2");
			set_text("地獄に落ちやがれ…クソッタレ…","グルカ","no","yarare_do","2");
			break;
		case "event 23":
			set_text("さて、それでは行きましょうか","エルティア","no","eltia_sasayaki","2");
			set_text("門を起動するには特定の場所に行く必要があります","エルティア","no","eltia_sasayaki","2");
			set_text("城を出てそのまま南下していけば門の起動場所に着くそうですよ","エルティア","no","eltia_sasayaki","2");
			break;
		case "event 24":
			set_text("コハクは首にかけている簡易門(インスタントゲート)を起動した","","","");
			set_text("指定場所は","コハク","gate_interested","no","1");
			scr_option("自然が生い茂る島'ユグドレイス'!","option_4");
			scr_option("霊と機械の楽園'バヨウトウ'!","option_4");
			break;
			case"option_4":
			set_text("辺りが白く輝く","","no","no");
			break;
		//建学祭用
		case "continue":
			set_text("続く…","","","");
			instance_destroy(Player);
			break;
		case "ifevent_1":			
			set_text("いやぁ…よくもやってくれたねぇ？","イサク","guruka_odoroki","isaku_do");
			set_text("この声は！？","コハク","gate_kyoufu_2","isaku_do");
			set_text("転移術は使われるわ牢は壊すわって","イサク","gate_kyoufu_2","isaku_do");
			set_text("おかげで損害はかなりのものだ","イサク","gate_kyoufu_2","isaku_do");
			set_text("へ、残念でした","グルカ","guruka_emi","isaku_do");
			set_text("突進したせいでここが何処かわからないでいやがるぜ","グルカ","guruka_emi","isaku_do");
			set_text("そんなことこの私が分からないと思ったか？","イサク","guruka_purasu","isaku_gimon");
			set_text("10分前にここより上の兵は全滅させたさ","イサク","guruka_odoroki","isaku_warai");
			set_text("この損失は貴様らの首で返済するとしようか！","イサク","guruka_odoroki","isaku_warai");
			break;
		case "ifevent_2":			
			set_text("まだまだやってやろうじゃねぇか！","イサク","guruka_magao","isaku_do");
			set_text("居たぞ！こっちだ！","王国兵","no","no");
			set_text("チッもう援軍が来やがった","イサク","guruka_magao","isaku_do");
			set_text("今聖騎士団とやりあうつもりはない","イサク","guruka_magao","isaku_do");
			set_text("一度引くとしよう","イサク","guruka_magao","isaku_do");
			set_text("…………","グルカ","guruka_magao","");
			set_text("行ったか","グルカ","guruka_magao","no");
			set_text("あんたには二度助けられちまったな","グルカ","guruka_magao","no");
			set_text("いやいやそんな…","コハク","guruka_magao","gate_tere_1");
			set_text("まだ５時間ぐらいしか過ごしてねぇがその実力なら安心だな","グルカ","guruka_magao","gate_tere_1");
			set_text("疑ってたの！？","コハク","guruka_magao","gate_odoroki");
			set_text("一回目はな","グルカ","guruka_magao","gate_futekusare");
			set_text("だが今の動きを見て安心したぜ","グルカ","guruka_magao","gate_konwaku_1");
			set_text("これからもがんばれよ？","グルカ","guruka_magao","gate_raku");
			set_text("うん！また会おうね！","コハク","guruka_purasu","gate_raku");
			set_text("いつか…な","グルカ","guruka_usiro","gate_raku");
			break;
		//アイテム用
		case "brooch":
			set_text("？？のブローチを手に入れた","","","");
			break;
		case "reagel":
			set_text("リーゲルの果実を手に入れた","","","");
			break;
		case "yakusou":
			set_text("薬草を手に入れた","","","");
			break;
		case "candy":
			set_text("飴を手に入れた","","","");
			break;
		case "chest":
			set_text("戦闘テクニックのメモを手に入れた","","","");
			break;
		case "instantlife":
			set_text("簡易治療薬を手に入れた","","","");
			break;
		case "wood":
			set_text("木の枝を手に入れた","","","");
			break;
		case"no":
			set_text("話しかけないでおこう","","","");
			break;
		case "item":
			set_text("所持品がいっぱいで持てない”","","","");
			break;
			/*
		case "npc 1":
		set_text("やあ","ブロリー","chara","test1")
		set_text("息子はかわいいか？","ブロリー","no","left_chara");
		scr_option("はい","npc 1 - yes");
		scr_option("いいえ","npc 1 - no");
		break;
			case "npc 1 - yes":
			set_text("まずお前から血祭りにあげてやる","ブロリー","chara","no");
			set_text("test","テスト用","chara","no");
			break;
			
			case "npc 1 - no":
			set_text("クズめ","chara");
			set_text("test","chara");
			break;
		case "npc 2":
		set_text("ブロリーです","chara","chara","test");
		set_text("いつか帰れるといいなぁ","test","test","test");
		break;
	
		case "npc 3":
		set_text("ここが貴様の墓場だ","no");
		break;
		
		case "test 1":
			set_text("やあ","丹馬　黒白","chara","test1")
			set_text("息子はかわいいか？","ブロリー","no","left_chara");
			break;
		*/
	}
	
}