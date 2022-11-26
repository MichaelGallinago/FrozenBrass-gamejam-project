/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	PosY += 0.5;
	PosX += dsin(Stage.Time + Offset) * Amplitude;

	y = floor(PosY);
	x = floor(PosX);
	if y > Camera.ViewY + global.Height + 64
	{
		instance_destroy();
	}
	
	var Width = global.Width + 192;
	if x < Camera.ViewX - 96
	{
		x += Width;
	}
	else if x > Camera.ViewX + Width
	{
		x -= Width;
	}