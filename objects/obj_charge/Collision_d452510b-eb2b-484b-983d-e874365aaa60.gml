if(other.acceptedCharge != image_blend){
	scr_scoreUpdate(-2);
	instance_destroy(self);
	instance_create_layer(x, y, "Charges", obj_failSpark);
}

if(other.acceptedCharge == image_blend){
	instance_destroy(self);
	scr_scoreUpdate(1);
}