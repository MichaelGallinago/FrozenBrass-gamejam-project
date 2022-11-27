/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if object_check_object(Lazer)
	{
		instance_create(x, y, DustExplosion);
		audio_sfx_play(sfxDestroy, false);
		instance_destroy();
		Player.MethalHealth = max(0, Player.MethalHealth - 10);
		return;
	}
	
	if Fly
	{
		move_towards_point(SavedX, SavedY, 4);
		if point_distance(x, y, SavedX, SavedY) < 4
		{
			instance_destroy();
			with instance_create(x, y, FireExplosion)
			{
				image_xscale = 2;
				image_yscale = 2;
			}
			audio_sfx_play(sfxExplosion, false);
			Camera.ShakeTime = 5;
			if point_distance(SavedX, SavedY, Player.x, Player.y) < 16
			{
				player_damage(false, false, false);
			}
			return;
		}
	}
	else if point_distance(x, y, Player.x, Player.y) <= 128
	{
		image_xscale = Player.x >= x ? 1 : -1;
		Fly = true;
		SavedX = Player.x;
		SavedY = Player.y;
	}