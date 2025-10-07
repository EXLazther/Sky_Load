// アルファを徐々に減らす

if (set_alpha > 0) {show_debug_message(set_alpha)
    set_alpha -= 0.05; 
    if (set_alpha < 0)
	{
		set_alpha = 0;
		instance_destroy(Obj_flash)
	}
}

