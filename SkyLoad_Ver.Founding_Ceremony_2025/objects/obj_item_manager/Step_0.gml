//選ばれたアイテムを収得

selected_item=-1;
accept_key=keyboard_check_pressed(ord("Z"));
cancel_key=keyboard_check_pressed(ord("X"));
if (global.itemstatus==1)
{
	result=1
	up_key=keyboard_check_pressed(vk_up);
	down_key=keyboard_check_pressed(vk_down);
	left_key=keyboard_check_pressed(vk_left);
	right_key=keyboard_check_pressed(vk_right);
	op_length=array_length(inv);
	pos+=down_key-up_key;
	if pos>=op_length{pos=0};
	if pos<0{pos=op_length-1}
	if cancel_key{pos=op_length-1};
	if(inv>[6])
	{
		pos+=(right_key-left_key)*6;
		if pos>=op_length{pos=op_length-1};
		if pos<0{pos=0}
		if cancel_key{pos=op_length-1};
	}
	for(var i=0;i<op_length;i++)
	{
		selected_item=pos;
	}

	if (selected_item != -1)
	{
		if (accept_key)
		{
        var _item = inv[selected_item];
		var _data=global.item_list[_item]
		    if (is_struct(_data) && is_callable(_data.effect))
			{
				_data.effect();
				array_delete(inv,selected_item,1);
				selected_item=-1;
				pos=0;
			}
		}
	}
	if(cancel_key) { global.itemstatus=0; result=0; } 
}