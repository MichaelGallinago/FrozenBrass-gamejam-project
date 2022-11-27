/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if object_check_player(ColHitbox2)
	{
		player_damage(false, false, false);
	}
		
	if object_check_object(Lazer)
	{
		instance_create(x, y, DustExplosion);
		audio_sfx_play(sfxDestroy, false);
		instance_destroy();
		Player.MethalHealth = max(0, Player.MethalHealth - 10);
		return;
	}
	
	if !(--Timer) 
	{
		if Xsp != 0
		{
			Xsp = 0;
			Timer = 100;
		}
		else
		{
			image_xscale *= -1;
			Xsp = image_xscale;
			Timer = 180;
		}
	}
	
	if Xsp != 0
	{
		animation_play(sprite_index, 15, 0);
	}
	else
	{
		animation_set(sprite_index, 0);
	}
	
	x += Xsp;