function set_default_for_text() {
    line_break_pos[0, page_number] = 999;
    line_break_num[0, page_number] = 0;
    line_break_offset[0, page_number] = 0;
    txtb_spr = box;
    speaker_sprite[page_number] = noone;
	speaker_sprite1[page_number] = noone;
	color_left[page_number]=c_white;
 	color_right[page_number]=c_white;
    portrait_x_offset[page_number] = argument[1];  // キャラクターの位置を設定するための引数
    speaker_side[page_number] = 1;
}

function set_text(_text,_name,_alpha){
    set_default_for_text();
    text[page_number] = _text;
	name[page_number] = _name;
	alpha[page_number]=_alpha;
    // キャラクター情報収得
    if argument_count > 3
    {
        switch(argument[2])
        {//コハク
            case "kohaku":
            speaker_sprite[page_number] = kohaku_tsuujou;
            txtb_spr = box;
            break;
            case "kohaku_ki":
            speaker_sprite[page_number] = kohaku_ki;
            txtb_spr = box;
            break;
            case "kohaku_do":
            speaker_sprite[page_number] = kohaku_do;
            txtb_spr = box;
			break;
			case "kohaku_ai":
            speaker_sprite[page_number] = kohaku_ai;
            txtb_spr = box;
            break;
            case "kohaku_raku":
            speaker_sprite[page_number] = kohaku_raku;
            txtb_spr = box;
            break;
            case "kohaku_futekusare":
            speaker_sprite[page_number] = kohaku_futekusare;
            txtb_spr = box;
			break;
			case "kohaku_interested":
            speaker_sprite[page_number] = kohaku_interested;
            txtb_spr = box;
            break;
			//気絶
            case "kohaku_kizetsu_1":
            speaker_sprite[page_number] = kohaku_kizetsu_1;
            txtb_spr = box;
            break;
            case "kohaku_kizetsu_2":
            speaker_sprite[page_number] = kohaku_kizetsu_2;
            txtb_spr = box;
			break;
			//困惑
			case "kohaku_konwaku_1":
            speaker_sprite[page_number] = kohaku_konwaku_1;
            txtb_spr = box;
            break;
            case "kohaku_konwaku_2":
            speaker_sprite[page_number] = kohaku_konwaku_2;
            txtb_spr = box;
            break;
			//恐怖
            case "kohaku_kyoufu_1":
            speaker_sprite[page_number] = kohaku_kyoufu_1;
            txtb_spr = box;
			break;
			case "kohaku_kyoufu_2":
            speaker_sprite[page_number] = kohaku_kyoufu_2;
            txtb_spr = box;
            break;
            case "kohaku_kyoufu_3":
            speaker_sprite[page_number] = kohaku_kyoufu_3;
            txtb_spr = box;
            break;
			//真顔
            case "kohaku_magao":
            speaker_sprite[page_number] = kohaku_magao;
            txtb_spr = box;
			break;
			case "kohaku_odoroki":
            speaker_sprite[page_number] = kohaku_odoroki;
            txtb_spr = box;
            break;
            case "kohaku_tere_1":
            speaker_sprite[page_number] = kohaku_tere_1;
            txtb_spr = box;
			break;
			case "kohaku_tere_2":
            speaker_sprite[page_number] = kohaku_tere_2;
            txtb_spr = box;
            break;
			//コハク　ゲートあり差分
			case "gate_tsuujou":
            speaker_sprite[page_number] = gate_tsuujou;
            txtb_spr = box;
            break;
			case "gate_ki":
            speaker_sprite[page_number] = gate_ki;
            txtb_spr = box;
            break;
            case "gate_do":
            speaker_sprite[page_number] = gate_do;
            txtb_spr = box;
			break;
			case "gate_ai":
            speaker_sprite[page_number] = gate_ai;
            txtb_spr = box;
            break;
            case "gate_raku":
            speaker_sprite[page_number] = gate_raku;
            txtb_spr = box;
            break;
            case "gate_futekusare":
            speaker_sprite[page_number] = gate_futekusare;
            txtb_spr = box;
			break;
			case "gate_interested":
            speaker_sprite[page_number] =gate_wakuwaku;
            txtb_spr = box;
            break;
			//気絶
            case "gate_kizetsu_1":
            speaker_sprite[page_number] = gate_kizetsu_1;
            txtb_spr = box;
            break;
            case "gate_kizetsu_2":
            speaker_sprite[page_number] = gate_kizetsu_2;
            txtb_spr = box;
			break;
			//困惑
			case "gate_konwaku_1":
            speaker_sprite[page_number] = gate_konwaku_1;
            txtb_spr = box;
            break;
            case "gate_konwaku_2":
            speaker_sprite[page_number] = gate_konwaku_2;
            txtb_spr = box;
            break;
			//恐怖
            case "gate_kyoufu_1":
            speaker_sprite[page_number] = gate_kyoufu_1;
            txtb_spr = box;
			break;
			case "gate_kyoufu_2":
            speaker_sprite[page_number] = gate_kyoufu_2;
            txtb_spr = box;
            break;
            case "gate_kyoufu_3":
            speaker_sprite[page_number] = gate_kyoufu_3;
            txtb_spr = box;
            break;
			//真顔
            case "gate_magao":
            speaker_sprite[page_number] = gate_magao;
            txtb_spr = box;
			break;
			case "gate_odoroki":
            speaker_sprite[page_number] = gate_odoroki;
            txtb_spr = box;
            break;
            case "gate_tere_1":
            speaker_sprite[page_number] = gate_tere_1;
            txtb_spr = box;
			break;
			case "gate_tere_2":
            speaker_sprite[page_number] = gate_tere_2;
            txtb_spr = box;
            break;
			case "guruka":
			speaker_sprite[page_number]=guruka;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "guruka_emi":
			speaker_sprite[page_number]=guruka_emi;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "guruka_magao":
			speaker_sprite[page_number]=guruka_magao;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "guruka_odoroki":
			speaker_sprite[page_number]=guruka_odoroki;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "guruka_purasu":
			speaker_sprite[page_number]=guruka_purasu;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "guruka_usiro":
			speaker_sprite[page_number]=guruka_usiro;
			txtb_spr=box;
			image_xscale=-1;
			break;
			case "no":
			speaker_sprite[page_number]=noone;
			txtb_spr=box;
			break;
        }
		switch(argument[3])
		
		{//エルティア
			//コハク　ゲートあり差分
			case "gate_tsuujou":
            speaker_sprite1[page_number] = gate_tsuujou;
            txtb_spr = box;
            break;
			case "gate_ki":
            speaker_sprite1[page_number] = gate_ki;
            txtb_spr = box;
            break;
            case "gate_do":
            speaker_sprite1[page_number] = gate_do;
            txtb_spr = box;
			break;
			case "gate_ai":
            speaker_sprite1[page_number] = gate_ai;
            txtb_spr = box;
            break;
            case "gate_raku":
            speaker_sprite1[page_number] = gate_raku;
            txtb_spr = box;
            break;
            case "gate_futekusare":
            speaker_sprite1[page_number] = gate_futekusare;
            txtb_spr = box;
			break;
			case "gate_interested":
            speaker_sprite1[page_number] =gate_wakuwaku;
            txtb_spr = box;
            break;
			//気絶
            case "gate_kizetsu_1":
            speaker_sprite1[page_number] = gate_kizetsu_1;
            txtb_spr = box;
            break;
            case "gate_kizetsu_2":
            speaker_sprite1[page_number] = gate_kizetsu_2;
            txtb_spr = box;
			break;
			//困惑
			case "gate_konwaku_1":
            speaker_sprite1[page_number] = gate_konwaku_1;
            txtb_spr = box;
            break;
            case "gate_konwaku_2":
            speaker_sprite1[page_number] = gate_konwaku_2;
            txtb_spr = box;
            break;
			//恐怖
            case "gate_kyoufu_1":
            speaker_sprite1[page_number] = gate_kyoufu_1;
            txtb_spr = box;
			break;
			case "gate_kyoufu_2":
            speaker_sprite1[page_number] = gate_kyoufu_2;
            txtb_spr = box;
            break;
            case "gate_kyoufu_3":
            speaker_sprite1[page_number] = gate_kyoufu_3;
            txtb_spr = box;
            break;
			//真顔
            case "gate_magao":
            speaker_sprite1[page_number] = gate_magao;
            txtb_spr = box;
			break;
			case "gate_odoroki":
            speaker_sprite1[page_number] = gate_odoroki;
            txtb_spr = box;
            break;
            case "gate_tere_1":
            speaker_sprite1[page_number] = gate_tere_1;
            txtb_spr = box;
			break;
			case "gate_tere_2":
            speaker_sprite1[page_number] = gate_tere_2;
            txtb_spr = box;
            break;
			case "eltia":
			speaker_sprite1[page_number]=eltia_fusime;
			txtb_spr=box;
			break;
			case "eltia_ai":
			speaker_sprite1[page_number]=eltia_ai;
			txtb_spr=box;
			break;
			case "eltia_futeki":
			speaker_sprite1[page_number]=eltia_futeki;
			txtb_spr=box;
			break;
			case "eltia_gimon":
			speaker_sprite1[page_number]=eltia_gimon;
			txtb_spr=box;
			break;
			case "eltia_ki":
			speaker_sprite1[page_number]=eltia_ki;
			txtb_spr=box;
			break;
			case "eltia_raku":
			speaker_sprite1[page_number]=eltia_raku;
			txtb_spr=box;
			break;
			case "eltia_sasayaki":
			speaker_sprite1[page_number]=eltia_sasayaki;
			txtb_spr=box;
			break;
			case "guruka":
			speaker_sprite1[page_number]=guruka;
			txtb_spr=box;
			break;
			case "guruka_emi":
			speaker_sprite1[page_number]=guruka_emi;
			txtb_spr=box;
			break;
			case "guruka_magao":
			speaker_sprite1[page_number]=guruka_magao;
			txtb_spr=box;
			break;
			case "guruka_odoroki":
			speaker_sprite1[page_number]=guruka_odoroki;
			txtb_spr=box;
			break;
			case "guruka_purasu":
			speaker_sprite1[page_number]=guruka_purasu;
			txtb_spr=box;
			break;
			case "guruka_usiro":
			speaker_sprite1[page_number]=guruka_usiro;
			txtb_spr=box;
			break;
			case "yarare_do":
			speaker_sprite1[page_number]=yarare_do;
			txtb_spr=box;
			break;
			case "yarare_ki":
			speaker_sprite1[page_number]=yarare_ki;
			txtb_spr=box;
			break;
			case "yarare_nigawarai":
			speaker_sprite1[page_number]=yarare_nigawarai;
			txtb_spr=box;
			break;
			case "yarare_nirami":
			speaker_sprite1[page_number]=yarare_nirami;
			txtb_spr=box;
			break;
			case "yarare_understand":
			speaker_sprite1[page_number]=yarare_understand;
			txtb_spr=box;
			break;
			case "isaku":
			speaker_sprite1[page_number]=isaku;
			txtb_spr=box;
			break;
			case "isaku_do":
			speaker_sprite1[page_number]=isaku_do;
			txtb_spr=box;
			break;
			case "isaku_gimon":
			speaker_sprite1[page_number]=isaku_gimon;
			txtb_spr=box;
			break;	
			case "isaku_warai":
			speaker_sprite1[page_number]=isaku_warai;
			txtb_spr=box;
			break;
			case "no":
			speaker_sprite1[page_number]=noone;
			txtb_spr=box;
			break;
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
function scr_option(_option,_link_id){
	option[option_number]=_option;
	option_link_id[option_number]=_link_id;
	option_number++;
}

function set_mob_index(_index)
{
	spr=_index;
	switch(spr)
	{
		case "mob_1_tathi":
		sprite_index=mob_1_tathi;
		break;
		case "mob_1_left":
		sprite_index=mob_1_left;
		break;
		case "mob_1_right":
		sprite_index=mob_1_right;
		break;
		case "mob_2_tathi":
		sprite_index=mob_2_tathi;
		break;
		case "mob_2_left":
		sprite_index=mob_2_left;
		break;
		case "mob_2_right":
		sprite_index=mob_2_right;
		break;
		case"heishi_tathi":
		sprite_index=heishi_taiki;
		image_xscale=0.5;
		image_yscale=0.5;
		break;
		case "guruka":
		sprite_index=map_guruka;
		break;
		case "jji":
		sprite_index=jji;
		break;
		case "jji_left":
		sprite_index=jji_left;
		break;
		case "bba":
		sprite_index=bba;
		break;
	}
		
}
function create_textbox(_text_id){
	with instance_create_depth(0,0,-9999,obj_textbox)
	{
		scr_game_text(_text_id);
	}
}