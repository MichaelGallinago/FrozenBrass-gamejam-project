/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	y += dsin(Stage.Time);

	if !(Reload--) && Timer >= 180 
	{	
		var  NewObject  = instance_create(x, y, Projectile);
		with NewObject
		{					
			Grv			 = 0;
			direction = point_direction(x, y, Player.x, Player.y) + 90;
			Ysp          = dcos(direction) * 4;
			Xsp          = dsin(direction) * 4;
			image_xscale = other.image_xscale;
			sprite_index = spr_obj_projectile_buzzbomber;
				
			// Set object depth
			object_set_depth(other, 0);
		}
		Timer = 0;
		Reload = 300;
	}
	
	if object_check_object(Lazer)
	{
		instance_create(x, y, DustExplosion);
		audio_sfx_play(sfxDestroy, false);
		instance_destroy();
		Player.MethalHealth = max(0, Player.MethalHealth - 10);
		return;
	}
			
	if point_distance(x, y, Player.x, Player.y) <= 196
	{
		move_towards_point(Player.x, Player.y, 1);
		image_xscale = Player.x >= x ? 1 : -1;
	}
	
	if point_distance(x, y, Player.x, Player.y) <= 128
	{
		Timer++;
		SoundTimer += 2 + Timer div 15;
		if SoundTimer >= 100
		{
			SoundTimer -= 50;
			audio_sfx_play(sfxSlide, false);
		}
	}
	else
	{
		Timer = 0;
		SoundTimer = 0;
	}