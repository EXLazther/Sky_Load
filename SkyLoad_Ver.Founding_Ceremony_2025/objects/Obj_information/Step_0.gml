if(keyboard_check(ord("I"))&!set_visible)
{
	show_debug_message(12)
	set_visible=true;
}
if(keyboard_check(ord("I"))&&set_visible)
{
	set_visible=false;
}

