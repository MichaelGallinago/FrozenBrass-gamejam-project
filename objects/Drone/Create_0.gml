/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	object_set_unload(FlagReset);
	object_set_depth(Player, 0);
	object_set_hitbox(10, 8);
	
	animation_play(sprite_index, 2, 0);
	
	Reload = 0;
	Timer = 0;
	SoundTimer = 0;