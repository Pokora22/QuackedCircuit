if(active){
	
	if(!audio_is_playing(music_theme) && !audio_is_playing(music_game)){
		audio_play_sound(music_game, 0, true);
	}

	generatorTimer++;
	
	if((generatorTimer + 40)%cycle == 0){
		nextColor = choose(c_red, c_fuchsia, c_blue);
	
		switch (nextColor) {
		    case c_red:
		        sprite_index = spr_cpu_red;
		        break;	    
			case c_fuchsia:
		        sprite_index = spr_cpu_pink;
		        break;
			case c_blue:
		        sprite_index = spr_cpu_blue;
		        break;
			default:
		        sprite_index = spr_cpu;
		        break;
		}		
	}

	if((generatorTimer + 10)%cycle == 0){
		sprite_index = spr_cpu;
	}

	if(generatorTimer%cycle == 0){
		instance_create_layer(x, y, "Charges", obj_charge);
		if(cycle - 5 >= 60){
			cycle -= 5;
		}
	}

	//Process switches
	//Swith 1
	if(inst_41C51FC0.image_index == 0){
		inst_3E0C496.image_index = 1;
		inst_3C9A0DAD.image_index = 0;
		inst_7EE6A3BE.image_index = 0;
	}
	else if(inst_41C51FC0.image_index == 1){
		if(inst_4D7D4DE7.image_index == 1 && inst_7ED516D8){
			inst_3E0C496.image_index = 1;
		}
		else{
			inst_3E0C496.image_index = 0;
		}
		inst_3C9A0DAD.image_index = 1;
		inst_7EE6A3BE.image_index = 1;
	}


	//Switch 2
	if(inst_3E0C496.image_index == 1 || inst_4D7D4DE7.image_index == 1){
		if(inst_7ED516D8.image_index == 0){
			inst_7941B250.image_index = 1;
			inst_31321607.image_index = 1;
			inst_2B1ED960.image_index = 1;
		}
		else if(inst_7ED516D8.image_index == 1){
			inst_7941B250.image_index = 0;
			inst_31321607.image_index = 0;
			inst_2B1ED960.image_index = 0;
			inst_3E0C496.image_index = 1;
		}
	}
	else if(inst_3E0C496.image_index == 0 && inst_4D7D4DE7.image_index == 0){
		if(inst_7ED516D8.image_index == 0){
			inst_7941B250.image_index = 0;
			inst_31321607.image_index = 0;
			inst_2B1ED960.image_index = 0;
		}
		else if(inst_7ED516D8.image_index == 1){
			inst_7941B250.image_index = 0;
			inst_31321607.image_index = 0;
			inst_2B1ED960.image_index = 0;		
		}
	}


	//Switch 3
	if(inst_2B1ED960.image_index == 1){
		if(inst_611A450F.image_index == 0){
			inst_868D835.image_index = 1;
			inst_75689974.image_index = 1;
			inst_59ADC860.image_index = 1;
			inst_48AB0924.image_index = 1;
		
			inst_53FA78ED.image_index = 0;
			inst_5BA19365.image_index = 0;
			inst_1C7710FA.image_index = 0;
			inst_18AF1C30.image_index = 0;
			inst_2F684E3C.image_index = 0;
		
		}
		else if(inst_611A450F.image_index == 1){
			inst_868D835.image_index = 0;
			inst_75689974.image_index = 0;
			inst_59ADC860.image_index = 0;
			inst_48AB0924.image_index = 0;
		
			inst_53FA78ED.image_index = 1;
			inst_5BA19365.image_index = 1;
			inst_1C7710FA.image_index = 1;
			inst_18AF1C30.image_index = 1;
			inst_2F684E3C.image_index = 1;
		}
	}
	else if(inst_2B1ED960.image_index == 0){
		inst_868D835.image_index = 0;
		inst_75689974.image_index = 0;
		inst_59ADC860.image_index = 0;
		inst_48AB0924.image_index = 0;
		
		inst_53FA78ED.image_index = 0;
		inst_5BA19365.image_index = 0;
		inst_1C7710FA.image_index = 0;
		inst_18AF1C30.image_index = 0;
		inst_2F684E3C.image_index = 0;
	}

	///////
	if(inst_2F684E3C.image_index == 1){
		if(inst_41A0E99A.image_index == 0){
			inst_7714E293.image_index = 1;
			inst_22745FC.image_index = 1;
			inst_403CF316.image_index = 1;
			inst_82F32.image_index = 1;
		
			inst_702DF87.image_index = 0;
		}
		else if(inst_41A0E99A.image_index == 1){
			inst_7714E293.image_index = 0;
			inst_22745FC.image_index = 0;
			inst_403CF316.image_index = 0;
			inst_82F32.image_index = 0;
		
			inst_702DF87.image_index = 1;
		}
	}

	else if(inst_2F684E3C.image_index == 0){
		inst_7714E293.image_index = 0;
		inst_22745FC.image_index = 0;
		inst_403CF316.image_index = 0;
		inst_82F32.image_index = 0;
		
		inst_702DF87.image_index = 0;
	}


	//////
	if(inst_702DF87.image_index == 1){
		if(inst_48D766AF.image_index == 0){
			inst_485AAD77.image_index = 1;
			inst_1C4E9D1.image_index = 1;
		
			inst_14C7908A.image_index = 0;
			inst_440AA462.image_index = 0;
			inst_45094CB7.image_index = 0;
		}
		else if(inst_48D766AF.image_index == 1){
			inst_485AAD77.image_index = 0;
			inst_1C4E9D1.image_index = 0;
		
			inst_14C7908A.image_index = 1;
			inst_440AA462.image_index = 1;
			inst_45094CB7.image_index = 1;
		}
	}
	else if(inst_702DF87.image_index == 0){
		inst_485AAD77.image_index = 0;
		inst_1C4E9D1.image_index = 0;
		
		inst_14C7908A.image_index = 0;
		inst_440AA462.image_index = 0;
		inst_45094CB7.image_index = 0;
	}

	//////
	if(inst_440AA462.image_index == 1){
		if(inst_3F619B5C.image_index == 0){
			inst_2D305270.image_index = 1;
		
			inst_5B7C07A0.image_index = 0;
			inst_637518B0.image_index = 0;
		}
		else if(inst_3F619B5C.image_index == 1){
			inst_2D305270.image_index = 0;
		
			inst_5B7C07A0.image_index = 1;
			inst_637518B0.image_index = 1;
		}
	}
	else if(inst_440AA462.image_index == 0){
		inst_2D305270.image_index = 0;
		
		inst_5B7C07A0.image_index = 0;
		inst_637518B0.image_index = 0;
	}


	///////
	if(inst_451D3B32.image_index == 1){
		if(inst_47B19013.image_index == 0){
			inst_636949FD.image_index = 1;
			inst_61BB4274.image_index = 1;
		
			inst_67C88CB6.image_index = 0;
			inst_5810B78C.image_index = 0;
			inst_ED054CB.image_index = 0;
			inst_619338F9.image_index = 0;
			inst_4D7D4DE7.image_index = 0;
		}
		else if(inst_47B19013.image_index == 1){
			inst_636949FD.image_index = 0;
			inst_61BB4274.image_index = 0;
		
			inst_67C88CB6.image_index = 1;
			inst_5810B78C.image_index = 1;
			inst_ED054CB.image_index = 1;
			inst_619338F9.image_index = 1;
			inst_4D7D4DE7.image_index = 1;
		}
	}
	else{
		inst_636949FD.image_index = 0;
		inst_61BB4274.image_index = 0;
		
		inst_67C88CB6.image_index = 0;
		inst_5810B78C.image_index = 0;
		inst_ED054CB.image_index = 0;
		inst_619338F9.image_index = 0;
		inst_4D7D4DE7.image_index = 0;
	}

	//One-way switch
	if(inst_7EE6A3BE.image_index == 1 || inst_61BB4274.image_index == 1){
		inst_240A5630.image_index = 1;
		inst_497D02D.image_index = 1;
	}
	else{
		inst_240A5630.image_index = 0;
		inst_497D02D.image_index = 0;
	}

	if(inst_82F32.image_index == 1 || inst_2D305270.image_index == 1){
		inst_451D3B32.image_index = 1;
	}
	else{
		inst_451D3B32.image_index = 0;
	}
}