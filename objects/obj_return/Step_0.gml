if(keyboard_check_released(vk_space)){
	room_goto(room_menu);
}

if(keyboard_check_released(vk_right)){
	room_goto(room_help2);
}
if(keyboard_check_released(vk_left)){
	room_goto(room_help1);
}