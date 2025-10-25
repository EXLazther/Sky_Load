function m_set_default_for_text() {
    line_break_pos[0, page_number] = 999;
    line_break_num[0, page_number] = 0;
    line_break_offset[0, page_number] = 0;
    txtb_spr = Spr_textbox;
    speaker_sprite[page_number] = noone;
	speaker_sprite1[page_number] = noone;
	color_left[page_number]=c_white;
 	color_right[page_number]=c_white;
    portrait_x_offset[page_number] = argument[1];  // キャラクターの位置を設定するための引数
    speaker_side[page_number] = 1;
	flip[page_number]=false;
	flip1[page_number]=false;
}

function m_set_text(_text,_name,_alpha){
    m_set_default_for_text();
    text[page_number] = _text;
	name[page_number] = _name;
	alpha[page_number]=_alpha;
    // キャラクター情報収得
    if argument_count > 3
    {
        switch(argument[2])
        {//コハク
            case "kohaku":
            speaker_sprite[page_number] = Spr_kohaku_tsuujou;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_ki":
            speaker_sprite[page_number] = Spr_Spr_kohaku_ki;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_do":
            speaker_sprite[page_number] = Spr_kohaku_do;
            txtb_spr = Spr_textbox;
			break;
			case "kohaku_ai":
            speaker_sprite[page_number] = Spr_kohaku_ai;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_raku":
            speaker_sprite[page_number] = Spr_kohaku_raku;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_futekusare":
            speaker_sprite[page_number] = Spr_kohaku_futekusare;
            txtb_spr = Spr_textbox;
			break;
			case "kohaku_interested":
            speaker_sprite[page_number] = Spr_kohaku_interested;
            txtb_spr = Spr_textbox;
            break;
			//気絶
            case "kohaku_kizetsu_1":
            speaker_sprite[page_number] = Spr_kohaku_kizetsu_1;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_kizetsu_2":
            speaker_sprite[page_number] = Spr_kohaku_kizetsu_2;
            txtb_spr = Spr_textbox;
			break;
			//困惑
			case "kohaku_konwaku_1":
            speaker_sprite[page_number] = Spr_kohaku_konwaku_1;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_konwaku_2":
            speaker_sprite[page_number] = Spr_kohaku_konwaku_2;
            txtb_spr = Spr_textbox;
            break;
			//恐怖
            case "kohaku_kyoufu_1":
            speaker_sprite[page_number] = Spr_kohaku_kyoufu_1;
            txtb_spr = Spr_textbox;
			break;
			case "kohaku_kyoufu_2":
            speaker_sprite[page_number] = Spr_kohaku_kyoufu_2;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_kyoufu_3":
            speaker_sprite[page_number] = Spr_kohaku_kyoufu_3;
            txtb_spr = Spr_textbox;
            break;
			//真顔
            case "kohaku_magao":
            speaker_sprite[page_number] = Spr_kohaku_magao;
            txtb_spr = Spr_textbox;
			break;
			case "kohaku_odoroki":
            speaker_sprite[page_number] = Spr_kohaku_odoroki;
            txtb_spr = Spr_textbox;
            break;
            case "kohaku_tere_1":
            speaker_sprite[page_number] = Spr_kohaku_tere_1;
            txtb_spr = Spr_textbox;
			break;
			case "kohaku_tere_2":
            speaker_sprite[page_number] = Spr_kohaku_tere_2;
            txtb_spr = Spr_textbox;
            break;
			//コハク　ゲートあり差分
			case "gate_tsuujou":
            speaker_sprite[page_number] = Spr_gate_tsuujou;
            txtb_spr = Spr_textbox;
            break;
			case "gate_ki":
            speaker_sprite[page_number] = Spr_gate_ki;
            txtb_spr = Spr_textbox;
            break;
            case "gate_do":
            speaker_sprite[page_number] = Spr_gate_do;
            txtb_spr = Spr_textbox;
			break;
			case "gate_ai":
            speaker_sprite[page_number] = Spr_gate_ai;
            txtb_spr = Spr_textbox;
            break;
            case "gate_raku":
            speaker_sprite[page_number] = Spr_gate_raku;
            txtb_spr = Spr_textbox;
            break;
            case "gate_futekusare":
            speaker_sprite[page_number] = Spr_gate_futekusare;
            txtb_spr = Spr_textbox;
			break;
			case "gate_interested":
            speaker_sprite[page_number] =Spr_gate_wakuwaku;
            txtb_spr = Spr_textbox;
            break;
			//気絶
            case "gate_kizetsu_1":
            speaker_sprite[page_number] = Spr_gate_kizetsu_1;
            txtb_spr = Spr_textbox;
            break;
            case "gate_kizetsu_2":
            speaker_sprite[page_number] = Spr_gate_kizetsu_2;
            txtb_spr = Spr_textbox;
			break;
			//困惑
			case "gate_konwaku_1":
            speaker_sprite[page_number] = Spr_gate_konwaku_1;
            txtb_spr = Spr_textbox;
            break;
            case "gate_konwaku_2":
            speaker_sprite[page_number] = Spr_gate_konwaku_2;
            txtb_spr = Spr_textbox;
            break;
			//恐怖
            case "gate_kyoufu_1":
            speaker_sprite[page_number] = Spr_gate_kyoufu_1;
            txtb_spr = Spr_textbox;
			break;
			case "gate_kyoufu_2":
            speaker_sprite[page_number] = Spr_gate_kyoufu_2;
            txtb_spr = Spr_textbox;
            break;
            case "gate_kyoufu_3":
            speaker_sprite[page_number] = Spr_gate_kyoufu_3;
            txtb_spr = Spr_textbox;
            break;
			//真顔
            case "gate_magao":
            speaker_sprite[page_number] = Spr_gate_magao;
            txtb_spr = Spr_textbox;
			break;
			case "gate_odoroki":
            speaker_sprite[page_number] = Spr_gate_odoroki;
            txtb_spr = Spr_textbox;
            break;
            case "gate_tere_1":
            speaker_sprite[page_number] = Spr_gate_tere_1;
            txtb_spr = Spr_textbox;
			break;
			case "gate_tere_2":
            speaker_sprite[page_number] = Spr_gate_tere_2;
            txtb_spr = Spr_textbox;
            break;
			//new
			case "new_kohaku":
            speaker_sprite[page_number] = Spr_kohaku_new;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_angry":
            speaker_sprite[page_number] = Spr_kohaku_new_angry;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_annoy":
            speaker_sprite[page_number] = Spr_kohaku_new_annoy;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_boo":
            speaker_sprite[page_number] = Spr_kohaku_new_boo;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_break1":
            speaker_sprite[page_number] = Spr_kohaku_new_break_1;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_break2":
            speaker_sprite[page_number] = Spr_kohaku_new_break_2;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_confused":
            speaker_sprite[page_number] = Spr_kohaku_new_confused;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_happy":
            speaker_sprite[page_number] = Spr_kohaku_new_happy;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_interested":
            speaker_sprite[page_number] = Spr_kohaku_new_interested;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_litleangry":
            speaker_sprite[page_number] = Spr_kohaku_new_litleangry;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_normal":
            speaker_sprite[page_number] = Spr_kohaku_new_normal;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_scary1":
            speaker_sprite[page_number] = Spr_kohaku_new_scary_1;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_scary2":
            speaker_sprite[page_number] = spr_kohaku_new_scary_2;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_scarysmile":
            speaker_sprite[page_number] = Spr_kohaku_new_scarysmile;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_shout":
            speaker_sprite[page_number] = Spr_kohaku_new_shout;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_shy1":
            speaker_sprite[page_number] = Spr_kohaku_new_shy_1;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_shy2":
            speaker_sprite[page_number] = Spr_kohaku_new_shy_2;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_smile":
            speaker_sprite[page_number] = Spr_kohaku_new_smile;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_suprise":
            speaker_sprite[page_number] = Spr_kohaku_new_suprise;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_what1":
            speaker_sprite[page_number] = Spr_kohaku_new_what_1;
            txtb_spr = Spr_textbox;
            break;
			case "new_kohaku_what2":
            speaker_sprite[page_number] = Spr_kohaku_new_what_2;
            txtb_spr = Spr_textbox;
			break;

			//グルカ
			case "guruka":
			speaker_sprite[page_number]=Spr_guruka;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "guruka_emi":
			speaker_sprite[page_number]=Spr_guruka_emi;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "guruka_magao":
			speaker_sprite[page_number]=Spr_guruka_magao;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "guruka_odoroki":
			speaker_sprite[page_number]=Spr_guruka_odoroki;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "guruka_purasu":
			speaker_sprite[page_number]=Spr_guruka_purasu;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "guruka_usiro":
			speaker_sprite[page_number]=Spr_guruka_usiro;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			
			//リアン
			case "rian_left":
			speaker_sprite[page_number]=Spr_rian;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "rian_angry_left":
			speaker_sprite[page_number]=Spr_rian_angry;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "rian_interest_left":
			speaker_sprite[page_number]=Spr_rian_interest;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "rian_question_left":
			speaker_sprite[page_number]=Spr_rian_question;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "rian_smile_left":
			speaker_sprite[page_number]=Spr_rian_smile;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "rian_thinking_left":
			speaker_sprite[page_number]=Spr_rian_thinkingsmile;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			//天遊教リアン
			case "religion_rian_left":
			speaker_sprite[page_number]=Spr_rian_religion;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "religion_rian_angry_left":
			speaker_sprite[page_number]=Spr_rian_religion_angry;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "religion_rian_pathetic_left":
			speaker_sprite[page_number]=Spr_rian_religion_pathetic;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "religion_rian_question_left":
			speaker_sprite[page_number]=Spr_rian_religion_question;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			case "religion_rian_smile_left":
			speaker_sprite[page_number]=Spr_rian_religion_smile;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			//レアン
			case "rean_smile_left":
			speaker_sprite[page_number]=Spr_rean_smile;
			txtb_spr=Spr_textbox;
			flip[page_number]=true;
			break;
			//エルティア操作
			
			case "in_eltia":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_angry":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_angry;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_badsmile":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_badsmile;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_interest":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_interest;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_normal":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_normal;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_sad":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_sad;
			txtb_spr=Spr_textbox;
			break;
			case "in_eltia_smile":
			speaker_sprite[page_number]=Spr_kohaku_in_eltia_smile;
			txtb_spr=Spr_textbox;
			break;
			 
			case "no":
			speaker_sprite[page_number]=noone;
			txtb_spr=Spr_textbox;
			break;
			
			
        }
		switch(argument[3])
		
		{//エルティア
			//コハク　ゲートあり差分
			case "gate_tsuujou":
            speaker_sprite1[page_number] = Spr_gate_tsuujou;
            txtb_spr = Spr_textbox;
            break;
			case "gate_ki":
            speaker_sprite1[page_number] = Spr_gate_ki;
            txtb_spr = Spr_textbox;
            break;
            case "gate_do":
            speaker_sprite1[page_number] = Spr_gate_do;
            txtb_spr = Spr_textbox;
			break;
			case "gate_ai":
            speaker_sprite1[page_number] = Spr_gate_ai;
            txtb_spr = Spr_textbox;
            break;
            case "gate_raku":
            speaker_sprite1[page_number] = Spr_gate_raku;
            txtb_spr = Spr_textbox;
            break;
            case "gate_futekusare":
            speaker_sprite1[page_number] = Spr_gate_futekusare;
            txtb_spr = Spr_textbox;
			break;
			case "gate_interested":
            speaker_sprite1[page_number] =Spr_gate_wakuwaku;
            txtb_spr = Spr_textbox;
            break;
			//気絶
            case "gate_kizetsu_1":
            speaker_sprite1[page_number] = Spr_gate_kizetsu_1;
            txtb_spr = Spr_textbox;
            break;
            case "gate_kizetsu_2":
            speaker_sprite1[page_number] = Spr_gate_kizetsu_2;
            txtb_spr = Spr_textbox;
			break;
			//困惑
			case "gate_konwaku_1":
            speaker_sprite1[page_number] = Spr_gate_konwaku_1;
            txtb_spr = Spr_textbox;
            break;
            case "gate_konwaku_2":
            speaker_sprite1[page_number] = Spr_gate_konwaku_2;
            txtb_spr = Spr_textbox;
            break;
			//恐怖
            case "gate_kyoufu_1":
            speaker_sprite1[page_number] = Spr_gate_kyoufu_1;
            txtb_spr = Spr_textbox;
			break;
			case "gate_kyoufu_2":
            speaker_sprite1[page_number] = Spr_gate_kyoufu_2;
            txtb_spr = Spr_textbox;
            break;
            case "gate_kyoufu_3":
            speaker_sprite1[page_number] = Spr_gate_kyoufu_3;
            txtb_spr = Spr_textbox;
            break;
			//真顔
            case "gate_magao":
            speaker_sprite1[page_number] = Spr_gate_magao;
            txtb_spr = Spr_textbox;
			break;
			case "gate_odoroki":
            speaker_sprite1[page_number] = Spr_gate_odoroki;
            txtb_spr = Spr_textbox;
            break;
            case "gate_tere_1":
            speaker_sprite1[page_number] = Spr_gate_tere_1;
            txtb_spr = Spr_textbox;
			break;
			case "gate_tere_2":
            speaker_sprite1[page_number] = Spr_gate_tere_2;
            txtb_spr = Spr_textbox;
            break;
			
			//エルティア
			case "eltia":
			speaker_sprite1[page_number]=Spr_eltia_fusime;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_ai":
			speaker_sprite1[page_number]=Spr_eltia_ai;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_futeki":
			speaker_sprite1[page_number]=Spr_eltia_futeki;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_gimon":
			speaker_sprite1[page_number]=Spr_eltia_gimon;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_ki":
			speaker_sprite1[page_number]=Spr_eltia_ki;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_raku":
			speaker_sprite1[page_number]=Spr_eltia_raku;
			txtb_spr=Spr_textbox;
			break;
			case "eltia_sasayaki":
			speaker_sprite1[page_number]=Spr_eltia_sasayaki;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_breaksmile1":
			speaker_sprite1[page_number]=Spr_eltia_new_breaksmile;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_breaksmile2":
			speaker_sprite1[page_number]=Spr_eltia_new_breaksmile_2;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_question":
			speaker_sprite1[page_number]=Spr_eltia_new_question;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_smile1":
			speaker_sprite1[page_number]=Spr_eltia_new_smile;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_smile2":
			speaker_sprite1[page_number]=Spr_eltia_new_smile_1;
			txtb_spr=Spr_textbox;
			break;
			case "new_eltia_suprise":
			speaker_sprite1[page_number]=Spr_eltia_new_suprise;
			txtb_spr=Spr_textbox;
			break;
			
			//グルカ
			case "guruka":
			speaker_sprite1[page_number]=Spr_guruka;
			txtb_spr=Spr_textbox;
			break;
			case "guruka_emi":
			speaker_sprite1[page_number]=Spr_guruka_emi;
			txtb_spr=Spr_textbox;
			break;
			case "guruka_magao":
			speaker_sprite1[page_number]=Spr_guruka_magao;
			txtb_spr=Spr_textbox;
			break;
			case "guruka_odoroki":
			speaker_sprite1[page_number]=Spr_guruka_odoroki;
			txtb_spr=Spr_textbox;
			break;
			case "guruka_purasu":
			speaker_sprite1[page_number]=Spr_guruka_purasu;
			txtb_spr=Spr_textbox;
			break;
			case "guruka_usiro":
			speaker_sprite1[page_number]=Spr_guruka_usiro;
			txtb_spr=Spr_textbox;
			break;
			case "yarare_do":
			speaker_sprite1[page_number]=Spr_yarare_do;
			txtb_spr=Spr_textbox;
			break;
			case "yarare_ki":
			speaker_sprite1[page_number]=Spr_yarare_ki;
			txtb_spr=Spr_textbox;
			break;
			case "yarare_nigawarai":
			speaker_sprite1[page_number]=Spr_yarare_nigawarai;
			txtb_spr=Spr_textbox;
			break;
			case "yarare_nirami":
			speaker_sprite1[page_number]=Spr_yarare_nirami;
			txtb_spr=Spr_textbox;
			break;
			case "yarare_understand":
			speaker_sprite1[page_number]=Spr_yarare_understand;
			txtb_spr=Spr_textbox;
			break;
			//イサク
			case "isaku":
			speaker_sprite1[page_number]=Spr_isaku;
			txtb_spr=Spr_textbox;
			break;
			case "isaku_do":
			speaker_sprite1[page_number]=Spr_isaku_do;
			txtb_spr=Spr_textbox;
			break;
			case "isaku_gimon":
			speaker_sprite1[page_number]=Spr_isaku_gimon;
			txtb_spr=Spr_textbox;
			break;	
			case "isaku_warai":
			speaker_sprite1[page_number]=Spr_isaku_warai;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku":
			speaker_sprite1[page_number]=Spr_isaku_miner;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku_angry":
			speaker_sprite1[page_number]=Spr_isaku_miner_angry;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku_moreangry":
			speaker_sprite1[page_number]=Spr_isaku_miner_moreangry;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku_smile":
			speaker_sprite1[page_number]=Spr_isaku_miner_smile;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku_suprise":
			speaker_sprite1[page_number]=Spr_isaku_miner_suprise;
			txtb_spr=Spr_textbox;
			break;
			case "miner_isaku_tsk":
			speaker_sprite1[page_number]=Spr_isaku_miner_tsk;
			txtb_spr=Spr_textbox;
			break;
			
			//国王
			case "king":
			speaker_sprite1[page_number]=Spr_king;
			txtb_spr=Spr_textbox;
			break;
			case "king_openmouth":
			speaker_sprite1[page_number]=Spr_king_mouth_wide_open;
			txtb_spr=Spr_textbox;
			break;
			case "king_question":
			speaker_sprite1[page_number]=Spr_king_question;
			txtb_spr=Spr_textbox;
			break;
			case "king_smile":
			speaker_sprite1[page_number]=Spr_king_smile;
			txtb_spr=Spr_textbox;
			break;
			case "king_suprised":
			speaker_sprite1[page_number]=Spr_king_suprised;
			txtb_spr=Spr_textbox;
			break;
			
			//レアン
			case "rean":
			speaker_sprite1[page_number]=Spr_rean;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "rean_amaze":
			speaker_sprite1[page_number]=Spr_rean_amaze;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "rean_blunt":
			speaker_sprite1[page_number]=Spr_rean_blunt;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "rean_relucatantry":
			speaker_sprite1[page_number]=Spr_rean_reluctantry;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "rean_smile":
			speaker_sprite1[page_number]=Spr_rean_smile;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "rean_thinking":
			speaker_sprite1[page_number]=Spr_rean_thinkingsmile;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			//天遊教レアン
			case "religion_rean":
			speaker_sprite1[page_number]=Spr_rean_religion;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "religion_rean_pathetic":
			speaker_sprite1[page_number]=Spr_rean_religion_pathetic;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			case "religion_rean_suprise":
			speaker_sprite1[page_number]=Spr_rean_religion_suprise;
			txtb_spr=Spr_textbox;
			flip1[page_number]=true;
			break;
			//リアン
			case "rian":
			speaker_sprite1[page_number]=Spr_rian;
			txtb_spr=Spr_textbox;
			break;
			case "rian_angry":
			speaker_sprite1[page_number]=Spr_rian_angry;
			txtb_spr=Spr_textbox;
			break;
			case "rian_interest":
			speaker_sprite1[page_number]=Spr_rian_interest;
			txtb_spr=Spr_textbox;
			break;
			case "rian_question":
			speaker_sprite1[page_number]=Spr_rian_question;
			txtb_spr=Spr_textbox;
			break;
			case "rian_smile":
			speaker_sprite1[page_number]=Spr_rian_smile;
			txtb_spr=Spr_textbox;
			break;
			case "rian_thinking":
			speaker_sprite1[page_number]=Spr_rian_thinkingsmile;
			txtb_spr=Spr_textbox;
			break;
			//天遊教リアン
			case "religion_rian":
			speaker_sprite1[page_number]=Spr_rian_religion;
			txtb_spr=Spr_textbox;
			break;
			case "religion_rian_angry":
			speaker_sprite1[page_number]=Spr_rian_religion_angry;
			txtb_spr=Spr_textbox;
			break;
			case "religion_rian_pathetic":
			speaker_sprite1[page_number]=Spr_rian_religion_pathetic;
			txtb_spr=Spr_textbox;
			break;
			case "religion_rian_question":
			speaker_sprite1[page_number]=Spr_rian_religion_question;
			txtb_spr=Spr_textbox;
			break;
			case "religion_rian_smile":
			speaker_sprite1[page_number]=Spr_rian_religion_smile;
			txtb_spr=Spr_textbox;
			break;
			
			case "joji":
			speaker_sprite1[page_number]=Spr_joji;
			txtb_spr=Spr_textbox;
			break;
			case "joji_angry1":
			speaker_sprite1[page_number]=Spr_joji_angry_1;
			txtb_spr=Spr_textbox;
			break;
			case "joji_angry2":
			speaker_sprite1[page_number]=Spr_joji_angry_2;
			txtb_spr=Spr_textbox;
			break;
			case "joji_concentration":
			speaker_sprite1[page_number]=Spr_joji_concentration;
			txtb_spr=Spr_textbox;
			break;
			case "joji_disgusted":
			speaker_sprite1[page_number]=Spr_joji_disgusted;
			txtb_spr=Spr_textbox;
			break;
			case "joji_question":
			speaker_sprite1[page_number]=Spr_joji_question;
			txtb_spr=Spr_textbox;
			break;
			case "joji_suprised":
			speaker_sprite1[page_number]=Spr_joji_suprised;
			txtb_spr=Spr_textbox;
			break;
			
			//ルリ
			case "ruri":
			speaker_sprite1[page_number]=Spr_ruri;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_annoy":
			speaker_sprite1[page_number]=Spr_ruri_annoy;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_gocrazy1":
			speaker_sprite1[page_number]=Spr_ruri_gocrazy_1;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_gocrazy2":
			speaker_sprite1[page_number]=Spr_ruri_gocrazy_2;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_litlesmile":
			speaker_sprite1[page_number]=Spr_ruri_litlesmaile;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_question":
			speaker_sprite1[page_number]=Spr_ruri_question;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_scare":
			speaker_sprite1[page_number]=Spr_ruri_scare;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_serious":
			speaker_sprite1[page_number]=Spr_ruri_serious;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_suprise":
			speaker_sprite1[page_number]=Spr_ruri_suprise;
			txtb_spr=Spr_textbox;
			break;
			case "ruri_thin":
			speaker_sprite1[page_number]=Spr_ruri_thin;
			txtb_spr=Spr_textbox;
			break;
			
			//シンラ
			case "shinra":
			speaker_sprite1[page_number]=Spr_shinra;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_barbie":
			speaker_sprite1[page_number]=Spr_shinra_barbie;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_closeeye":
			speaker_sprite1[page_number]=Spr_shinra_closeeye;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_coolsmile":
			speaker_sprite1[page_number]=Spr_shinra_coolsmile;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_fire":
			speaker_sprite1[page_number]=Spr_shinra_fire;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_hurts":
			speaker_sprite1[page_number]=Spr_shinra_hurts;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_morefire":
			speaker_sprite1[page_number]=Spr_shinra_morefire;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_normal":
			speaker_sprite1[page_number]=Spr_shinra_normal;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_pushup":
			speaker_sprite1[page_number]=Spr_shinra_pushup;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_search":
			speaker_sprite1[page_number]=Spr_shinra_search;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_serious":
			speaker_sprite1[page_number]=Spr_shinra_serious;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_smile":
			speaker_sprite1[page_number]=Spr_shinra_smile;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_sob":
			speaker_sprite1[page_number]=Spr_shinra_sob;
			txtb_spr=Spr_textbox;
			break;
			case "shinra_suprise":
			speaker_sprite1[page_number]=Spr_shinra_suprise;
			txtb_spr=Spr_textbox;
			break;
			
			//カコ
			case "kako":
			speaker_sprite1[page_number]=Spr_kako;
			txtb_spr=Spr_textbox;
			break;
			case "kako_angry":
			speaker_sprite1[page_number]=Spr_kako_angry;
			txtb_spr=Spr_textbox;
			break;
			case "kako_question":
			speaker_sprite1[page_number]=Spr_kako_question;
			txtb_spr=Spr_textbox;
			break;
			case "kako_smile":
			speaker_sprite1[page_number]=Spr_kako_smile;
			txtb_spr=Spr_textbox;
			break;
			case "kako_suprise":
			speaker_sprite1[page_number]=Spr_kako_suprise;
			txtb_spr=Spr_textbox;
			break;
			
			//エルトリア
			case "eltoria":
			speaker_sprite1[page_number]=Spr_eltoria;
			txtb_spr=Spr_textbox;
			break;
			case "eltoria_having":
			speaker_sprite1[page_number]=Spr_eltoria_having;
			txtb_spr=Spr_textbox;
			break;
			
			
			case "no":
			speaker_sprite1[page_number]=noone;
			txtb_spr=Spr_textbox;
			break;
			
			//
		}
    }
	if(argument_count>4)
	{
		switch(argument[4])
		{
			case "1":
			color_left[page_number]=c_white;
			color_right[page_number]=c_gray;
			break;
			case "2":
			color_left[page_number]=c_gray;
			color_right[page_number]=c_white;
			break;
			case "3":
			color_left[page_number]=c_gray;
			color_right[page_number]=c_gray;
			break;
			case "4":
			color_left[page_number]=c_white;
			color_right[page_number]=c_white;
			break;
			case "5":
			color_left[page_number]=c_white;
			color_right[page_number]=c_black;
			break;
			case "6":
			color_left[page_number]=c_black;
			color_right[page_number]=c_white;
			break;
			case "7":
			color_left[page_number]=c_black;
			color_right[page_number]=c_black;
			break;
		}
	}
    if argument_count > 5
    {
        speaker_side[page_number] = argument[5];
    }
    portrait_x_offset[page_number] = argument[6];  // キャラクターの位置を設定するための引数
    page_number++;
}




//オプションID,パラメータ
function m_scr_option(_option,_link_id){
	option[option_number]=_option;
	option_link_id[option_number]=_link_id;
	option_number++;
}

function m_set_symbolindex(_index)
{
	spr=_index;
	switch(spr)
	{
		case "mob_1_tathi":
		sprite_index=Spr_mob_1_down_anime;
		break;
		case "mob_1_left":
		sprite_index=Spr_mob_1_left_anime;
		break;
		case "mob_1_right":
		sprite_index=Spr_mob_1_right_anime;
		break;
		case "mob_2_tathi":
		sprite_index=Spr_mob_2_tathi;
		break;
		case "mob_2_left":
		sprite_index=Spr_mob_2_left;
		break;
		case "mob_2_right":
		sprite_index=Spr_mob_2_right;
		break;
		case"heishi_tathi":
		sprite_index=Spr_heishi_taiki;
		image_xscale=0.5;
		image_yscale=0.5;
		break;
		case "guruka":
		sprite_index=Spr_map_guruka;
		break;
		case "jji":
		sprite_index=Spr_jji;
		break;
		case "jji_left":
		sprite_index=Spr_jji_right;
		break;
		case "bba":
		sprite_index=Spr_bba;
		break;
	}
		
}
function m_create_textbox(_text_id){
	with instance_create_depth(0,0,-9999,Obj_textbox)
	{
		m_scr_game_text(_text_id);
	}
}

function m_set_moving_idle(_frame)
{
	var _obj=instance_create_layer(0,0,"Instances",Obj_text_wait)
	_obj.frame_wait=_frame;
	
}