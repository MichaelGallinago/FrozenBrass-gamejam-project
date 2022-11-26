/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if object_check_object(Lazer)
	{
		instance_destroy();
		audio_sfx_play(sfxExplosion, false);
		for (var i = -6; i < 12; i += 6)
		{
			instance_create(x + i, y, DustExplosion);
		}
		instance_destroy(Lazer);
	}