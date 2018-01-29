alpha = clamp(alpha + (fadeMod  * 0.05), 0, 1);

if(alpha == 0){
	instance_destroy();
	alpha = 1;
}

draw_set_color(c_black);
image_alpha = alpha;