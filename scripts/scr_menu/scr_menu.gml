switch(mpos){
	case 0:
	{ 
		instance_create_depth(0, 0, -1000, obj_fadeOut);
		audio_stop_all();
		room_goto(room_game);		
		randomize();
		break;
	}
	
	case 1:
	{
		room_goto(room_help);
		break;
	}
	
	
	case 2:
	{
		room_goto(credits);
		break;
	}
	case 3:
	{
		game_end();
		break;
	}
	default:{
	break;
	}
}