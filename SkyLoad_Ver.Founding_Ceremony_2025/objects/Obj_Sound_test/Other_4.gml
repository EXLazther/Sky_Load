/*if(room!=set_room||room!=Room_Title)
{
	if(set_bgm!=set_changer)
	{
		set_changer=set_bgm
		set_changer=global.bgm_changer;
		var bgm_sound=audio_play_sound(set_bgm,10,true);
		audio_sound_gain(bgm_sound,0.5,0);
		show_debug_message("play");
	}
	else if(audio_is_paused(set_bgm))
	{
		var bgm_sound=audio_play_sound(set_bgm,10,true);
		audio_sound_gain(bgm_sound,0.5,0);
		//show_debug_message(bgm_changer);
	}
}
if(room==set_room||room==Room_Title)
{
	audio_stop_sound(set_bgm);
}