/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	PosY = y;
	PosX = x;
	Ysp = 0;
	Xsp = 0;
	HP = 10;
	JumpReset = 220;
	JumpTimer = 0;
	InvincibilityTime = 0;
	Defeated = false;
	
	instance_create(x, y, DustExplosion).depth = depth - 1;
	object_set_unload(FlagPause);
	object_set_depth(Player, 0);
	object_set_hitbox(16, 16);