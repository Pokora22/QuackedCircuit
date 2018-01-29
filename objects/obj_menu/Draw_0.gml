
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_astera_25);
draw_set_color(c_white);

var m;
for(m=0; m<array_length_1d(menu); m+=1){	
	draw_text(room_width/2, (y+50)+(m*space),string(menu[m]));
}

draw_sprite(spr_menuSelector, 0, (room_width/2) - 150, y+mpos*space);
