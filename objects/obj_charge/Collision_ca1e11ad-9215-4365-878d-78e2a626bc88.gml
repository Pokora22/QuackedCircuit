if(switchTimer > 10){
	path_start(other.id.nextPath, 10, path_action_stop, true);
	switchTimer = 0;
}