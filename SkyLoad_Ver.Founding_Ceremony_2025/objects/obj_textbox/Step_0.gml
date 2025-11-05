autokey=keyboard_check_pressed(vk_shift);
switch(name_length[page])
{
	case 1:
	variability_textbox=200;
	break;
	case 2:
	variability_textbox=152;
	break;
	case 3:
	variability_textbox=124;
	break;
	case 4:
	variability_textbox=105;
	break;
	case 5:
	variability_textbox=85;
	break;
	case 6:
	variability_textbox=73;
	break;
	case 7:
	variability_textbox=64;
	break;
	case 8:
	variability_textbox=58;
	break;
	case 9:
	variability_textbox=50;
	break;
	case 10:
	variability_textbox=46;
	break;
	
}
 

//テキストの入力
if (draw_char < text_length[page]) {
    draw_char += text_spd;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

if (name_char < name_length[page]) {
    name_char += text_spd; 
    name_char = clamp(name_char, 0, name_length[page]);
}

if(text_length[page]<=10)
{
	auto_frame=210;
}
else if(text_length[page]>=10&&text_length[page]<=20)
{
	auto_frame=240;
}
else if(text_length[page]>=20&&text_length[page]<=30)
{
	auto_frame=270;
}
else if(text_length[page]>=30&&text_length[page]<=40)
{
	auto_frame=300;
}
else if(option_number>0)
{
	auto_frame=99999;
}
else
{
	auto_frame=330;
}

if(autokey&&set_auto_text==false)
{
	auto_timer=0;
	set_auto_text=true;
}
else if(autokey&&set_auto_text==true)
{
	set_auto_text=false;
}
//ページをめくる
// カウンターが存在しなければ初期化
if (!variable_instance_exists(id, "auto_timer")) {
    auto_timer = 0;
}
if(set_auto_text==true)
{
	// フレームごとにカウント
	auto_timer++;
}
// キー入力 または 180フレーム経過で進む
if (accept_key || auto_timer >= auto_frame)
{
    auto_timer = 0; // 次の待ち時間に備えてリセット

    // タイピング後に次ページに進む
    if (draw_char == text_length[page])
    {
        // 次ページ
        if (page < page_number - 1)
        {
            page++;
            draw_char = 0;
			name_char=0;
        }
        // テキストボックスの破壊
        else
        {
            if (option_number > 0) {
                m_create_textbox(option_link_id[option_pos]);
            }
            global.show_box = false;
            instance_destroy();
        }
    }
    // タイピングが完了してない場合 → 一気に全部表示
    else
    {
        name_char = name_length[page];
        draw_char = text_length[page];
    }
}