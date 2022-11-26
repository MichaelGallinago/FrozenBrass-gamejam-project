/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	Timer++;
	if !(Timer % 5) 
	{
		with instance_create(x, y, DeathExplosion)
		{
			image_xscale = 0.25;
			image_yscale = 0.25;
		}
		if !image_index audio_sfx_play(sfxExplosion, false);
	}
	image_angle += AngleSpeed;