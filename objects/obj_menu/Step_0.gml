if(!audio_is_playing(music_theme) && !audio_is_playing(music_menu)){
	audio_play_sound(music_menu, 0, true);
}

var move =0;
move-=max(keyboard_check_pressed(vk_up),0)
move+=max(keyboard_check_pressed(vk_down),0);

if(move!=0){
	mpos+=move;
	if(mpos<0){mpos=array_length_1d(menu)-1;}
	if(mpos>array_length_1d(menu)-1){ mpos=0;}
}
	var push;
	push= max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift),keyboard_check_released(vk_space),mouse_check_button_released(mb_left));
	if(push==1){scr_menu();}

if(mouse_y < 610 && mouse_y > 550 && mouse_x < (room_width/2) + 150 && mouse_x > (room_width/2) - 150){
	mpos=3;
}


//2 - 530-450, 1 - 430,350, 0 - 330-250
else if(mouse_y < 550 && mouse_y > 490 && mouse_x < (room_width/2) + 150 && mouse_x > (room_width/2) - 150){
	mpos=2;
}
else if(mouse_y < 490 && mouse_y > 410 && mouse_x < (room_width/2) + 150 && mouse_x > (room_width/2) - 150){
	mpos=1;
}
else if(mouse_y < 410 && mouse_y > 350 && mouse_x < (room_width/2) + 150 && mouse_x > (room_width/2) - 150){
	mpos=0;
}
