su = argument0;


if(score + su < 0 ){
	if(lives > 0){
		lives--;
		audio_play_sound(sfx_fuseBlow, 5, false);
		obj_fuses.image_index++;		
	}
	
	else{
		audio_stop_sound(music_game);
		audio_stop_sound(music_theme);
		audio_play_sound(sfx_lose, 15, false);
		obj_screen.image_index = 1;
		instance_destroy(obj_duck);
		instance_destroy(obj_loadingBar);
		obj_cpu.active = false;		
		
		with(obj_charge){
			instance_destroy();
		}				
		
		instance_create_layer(room_width-10, room_height - 20, "Instances", obj_return);
	}	
	
	score = 0;
}


else if (score + su < 20){
	score += su;
	audio_play_sound(sfx_bootStep, 5, false);
	image_index = score;
}

else if (score + su >= 20){
	audio_stop_sound(music_game);
	audio_stop_sound(music_theme);
	audio_play_sound(sfx_win, 15, false);
	obj_screen.image_index = 2;
	instance_destroy(obj_duck);
		instance_destroy(obj_loadingBar);
	obj_cpu.active = false;	
	
	with(obj_charge){
			instance_destroy();
		}
		
		instance_create_layer(room_width-10, room_height - 20, "Instances", obj_return);
}

if(instance_exists(obj_loadingBar)){
	obj_loadingBar.image_index = clamp(score, 0, 20);
}