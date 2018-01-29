menu[0]="Start";
menu[1]="help";
menu[2]="credits";
menu[3]="exit";

space=75;
mpos=0;
if(!audio_is_playing(music_theme)){
	audio_play_sound(music_theme, 0, false);
}