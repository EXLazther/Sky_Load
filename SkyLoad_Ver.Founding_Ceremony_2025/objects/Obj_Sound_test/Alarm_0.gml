if (current_bgm != -1)
{
    audio_stop_sound(current_bgm);
}

current_sound = next_sound;
current_bgm = audio_play_sound(next_sound, 10, true);
audio_sound_gain(current_bgm, 0.3, 0);

is_fading = false;