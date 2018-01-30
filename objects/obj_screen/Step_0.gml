if(image_index == 3){
	logonTime++;
}

if(logonTime > 60){
	logonTime = 0;
	image_index = 2;
	
	audio_stop_sound(music_game);
	audio_stop_sound(music_theme);
	audio_play_sound(sfx_win, 15, false);	
	
	instance_create_layer(room_width-10, room_height - 20, "Instances", obj_return);
}
