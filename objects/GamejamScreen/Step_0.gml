/// @description Main
// You can write your code in this editor

	var CentreX = global.Width / 2;
	var CentreY = global.Height / 2;
	
	if (RoomTimer < 560 && RoomTimer % 10) instance_create(CentreX, CentreY, GamejamSphere);
	
	if RoomTimer < 560
	{
		var SizeSing = clamp((RoomTimer - 160) / 200, 0, 1);
		var SizeJam = clamp((RoomTimer - 10) / 200, 0, 1) * 3;
		var AngleJam = dsin(RoomTimer * 2) * 10;
		with GamejamJam
		{
			image_xscale = SizeJam;
			image_yscale = SizeJam;
			image_angle = AngleJam;
		}
		with GamejamSign
		{
			image_xscale = SizeSing;
			image_yscale = SizeSing;
		}
	}
	
	switch (++RoomTimer)
	{
		case 10:
			audio_sfx_play(sfxRoll, false);
			instance_create(CentreX, CentreY, GamejamJam);
			fade_perform(ModeFrom, BlendBlack, 1);
		break;
		case 160:
			instance_create(CentreX, CentreY, GamejamSign);
		break;
		case 340:
			audio_sfx_play(sfxSlide, false);
		break;
		case 500:
			fade_perform(ModeInto, BlendBlack, 0.5);
		break;
		case 560:
			instance_destroy(GamejamSign);
			instance_destroy(GamejamJam);
			instance_destroy(GamejamSphere);
			instance_destroy(GamejamAfterimage);
		break;
		case 600:
			fade_perform(ModeFrom, BlendBlack, 1);
		break;
		case 900:
			fade_perform(ModeInto, BlendWhite, 0.5);
		break;
		case 980:
			room_goto(Screen_Menu);
		break;
	}