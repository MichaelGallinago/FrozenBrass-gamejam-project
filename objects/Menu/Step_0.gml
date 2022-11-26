/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	RoomTimer++;
	var IsFadeNotActive = !fade_check(StateActive);
	Renderer.UpdateAnimations = IsFadeNotActive;
	
	switch Selected
	{
		case 0:
			if IsFadeNotActive && !RoomEnd && (Input.ABCPress || Input.ModePress || Input.StartPress) 
			{
				RoomEnd = true;
				fade_perform(ModeInto, BlendBlack, 0.5);
			}
	
			if RoomEnd && fade_check(StateMax)
			{
				room_goto(Stage_Gamejam);
			}
		break;
		case 1:
			if IsFadeNotActive && !RoomEnd && (Input.ABCPress || Input.ModePress || Input.StartPress) 
			{
				RoomEnd = true;
				fade_perform(ModeInto, BlendBlack, 0.5);
			}
	
			if RoomEnd && fade_check(StateMax)
			{
				room_goto(Stage_Training);
			}
		break;
		case 2:
			if (Input.RightPress || Input.LeftPress)
			{
				global.SoundVolume = loop_value(global.SoundVolume * 10 + (Input.RightPress ? 1 : -1), 0, 10) / 10;
			}
		break;
		case 3:
			if (Input.RightPress || Input.LeftPress)
			{
				global.MusicVolume = loop_value(global.MusicVolume * 10 + (Input.RightPress ? 1 : -1), 0, 10) / 10;
			}
		break;
		case 4:
			if !IsExitDestroyed && IsFadeNotActive && !RoomEnd && (Input.ABCPress || Input.ModePress || Input.StartPress) 
			{
				IsExitDestroyed = true;
				audio_sfx_play(sfxLazer, false);
				with instance_create(global.Width / 2, global.Height + 32, Lazer)
				{
					image_angle = 90;
					direction = 90;
				}
			}
		break;
	}
	
	if !RoomEnd
	{
		if Input.DownPress
		{
			if (++Selected > 4) Selected -= 5;	
		}
		else if Input.UpPress
		{
			if (--Selected < 0) Selected += 5;	
		}
	}