/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if (Time % 10 || Time < 60) return;
	
	if room == Stage_Gamejam
	{
		with instance_create(Camera.ViewX - 96 + irandom(global.Width + 192 ), Camera.ViewY - 32, Snowflake)
		{
			Offset = irandom(360);
			Amplitude = irandom(10) / 7;
		}
	}