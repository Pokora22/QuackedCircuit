if(other.acceptedCharge != image_blend){
	sprite_index = spr_failSpark;
	if(timer == 0){
		scr_scoreUpdate(-2);
		audio_play_sound(sfx_failSpark, 1, false);
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
}

if(other.acceptedCharge == image_blend){
	instance_destroy(self);
	scr_scoreUpdate(1);
}