
switch(set_type)
{
	case 1:
		if (set_alpha > 0) {show_debug_message(set_alpha)
			
		    set_alpha -= set_flash; 
		    if (set_alpha < 0)
			{
				set_alpha = 0;
				instance_destroy(Obj_flash)
			}
		}
	break;

	case 2:
		if (set_alpha < 1) {show_debug_message(set_alpha)
		    set_alpha += set_flash; 
		    if (set_alpha > 1)
			{
				set_alpha = 1;
				
			}
		}
		break;
}
if(instance_exists(Obj_anyevent))
{
	if(Obj_anyevent.set_text_type==0)
	{
		set_timer(instance_destroy,[Obj_flash],90,1);
	}
}