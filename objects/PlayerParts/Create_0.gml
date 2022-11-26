/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	object_set_unload(FlagDelete);
	object_set_depth(Player, true);
	direction = irandom(180);
	speed = 1 + irandom(6);
	gravity = 0.21875;
	AngleSpeed = irandom_range(-6, 6);
	Timer = 0;