alpha = clamp(alpha + (fadeMod  * 0.05), 0, 1);

if (alpha == 1){	
	//room_goto(room_game);
	//audio_stop_all();
	//audio_play_sound(music_game, 0, true)
	instance_destroy();
}

draw_set_color(c_black);
image_alpha = alpha;

