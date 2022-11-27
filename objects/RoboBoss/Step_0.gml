/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе		
	
	if HP
	{
		if !(--InvincibilityTime) && object_check_object(Lazer)
		{
			instance_create(x, y, DustExplosion);
			audio_sfx_play(sfxDestroy, false);
			HP -= 1;
			InvincibilityTime = 60;
			Xsp = (abs(Xsp) + 1) * sign(Xsp);
			JumpReset -= 20;
		}
		
		if !InvincibilityTime && object_check_player(ColHitbox2)
		{
			player_damage(false, false, false);
		}
		
		if (++JumpTimer) >= JumpReset
		{
			JumpTimer = 0;
			Ysp -= 12;
		}
		
		// Fall to the ground
		PosY += Ysp;
		Ysp  += 0.5;
		
		// Check for floor
		var FindFloor = tile_find_v(PosX, PosY + 15, true, LayerA)[0];
		if  FindFloor < 0
		{
			if !Xsp Xsp = 0.5;
			PosY += FindFloor;
			Ysp  = 0;
		}
		
		if x < BossTrigger.x - BossTrigger.ArenaWidth / 2
		{
			image_xscale = 1;
		}
		else if x > BossTrigger.x + BossTrigger.ArenaWidth / 2
		{
			image_xscale = -1;
		}
		Xsp = image_xscale * abs(Xsp);
		PosX += Xsp;
		
		y = floor(PosY);
		x = floor(PosX);
	}
	else if !Defeated
	{
		Defeated = true;
		BossTrigger.BossDefeated = true;
		instance_create(x, y, DustExplosion);
		audio_sfx_play(sfxDestroy, false);
		direction = 90 - image_xscale * 15;
		speed = 10;
		gravity = 0.21875;
		Player.MethalHealth = max(0, Player.MethalHealth - 10);
	}
	else
	{
		if y >= Camera.ViewY + global.Height + 64 instance_destroy();
	}