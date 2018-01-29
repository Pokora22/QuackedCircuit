sprite_index = spr_failSpark;
if(timer == 0){
	audio_play_sound(sfx_failSpark, 1, false);
	scr_scoreUpdate(-2);
}

if(timer < 43){
	timer++;
}
else{
	instance_destroy(self);
	timer = 0;
}

image_xscale = 2;
image_yscale = 2;