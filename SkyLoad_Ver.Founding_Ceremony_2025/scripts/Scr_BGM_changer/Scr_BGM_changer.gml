function play_bgm(_sound,_Vol)
{
    if (current_sound != _sound)
    {
        if (current_bgm != -1)
        {
            audio_stop_sound(current_bgm);
        }

        current_sound = _sound;
        current_bgm = audio_play_sound(_sound, 10, true);
        audio_sound_gain(current_bgm, _Vol, 0);
    }
}
function stop_bgm()
{
    if (current_bgm != -1)
    {
        audio_stop_sound(current_bgm);
        current_bgm = -1;
        current_sound = -1;
    }
}
//room毎のBGM変更
function change_bgm_by_room(_room)
{
    switch (_room)
    {
        case Room_Title:
            stop_bgm();
        break;

        case RoomBattle:
            stop_bgm();
        break;
		
        case Room_startStage3:
        case Room_startStage4:
        case Room_startStage5:
            play_bgm(Snd_ruins,0.5);
        break;
		
        case Room_stage1Town:
        case Room_stage1Town2:
        case Room_stage1Town3:
        case Room_stage1Town3_1:
        case Room_stage1Town4:
        case Room_stage1Town5:
			play_bgm(Snd_Rain_Words,0.1);
			break;
		case Room_townOut1:
		case Room_townOut2:
			play_bgm(Snd_running,0.1);
			break;
        default:
            play_bgm(Snd_sea_2,0.5);
        break;
    }
}
//フェードアウトさせる
function fade_change_bgm(_new_sound, _fade_time,_Vol)
{
    // 同じ曲なら何もしない
    if (current_sound == _new_sound) return;

    // フェード中なら無視
    if (is_fading) return;

    is_fading = true;
    next_sound = _new_sound;

    // 今曲が流れているならフェードアウト
    if (current_bgm != -1 && audio_is_playing(current_bgm))
    {
        audio_sound_gain(current_bgm, 0, _fade_time);
        alarm[0] = _fade_time;
    }
    else
    {
        // 何も流れてないなら即再生
        current_sound = _new_sound;
        current_bgm = audio_play_sound(_new_sound, 1, true);
        audio_sound_gain(current_bgm, _Vol, 0);
        is_fading = false;
    }
}
//ストーリー中のBGM任意変更
function request_bgm_change(_type)
{
    // 🔽 必ず最初に存在確認
    if (!variable_global_exists("bgm_mode"))
    {
        global.bgm_mode = BGM_TYPE.NONE;
    }

    // 🔽 ここで初めて比較する
    if (global.bgm_mode == _type) return;

    global.bgm_mode = _type;

    switch (_type)
    {
        case BGM_TYPE.RUN:
            fade_change_bgm(Snd_running, 60,0.1);
        break;

        case BGM_TYPE.ROOM:
            change_bgm_by_room(room);
        break;
    }
}
//リセット
function bgm_reset()
{
	if (!variable_instance_exists(id, "current_bgm_instance")) current_bgm_instance = -1;
	if (!variable_instance_exists(id, "current_sound")) current_sound = -1;
    if (current_bgm_instance != -1)
    {
        audio_stop_sound(current_bgm_instance);
    }

    current_bgm_instance = -1;
    current_sound = -1;
    global.bgm_mode = BGM_TYPE.NONE;
    last_room = -1;
}
