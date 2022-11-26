/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	var CentreX = global.Width / 2;
	var ScrollY = global.Height - min(RoomTimer, 1300) div 2;
	
	var Len = array_length(Text);
	for (var i = 0; i < Len; i++)
	{
		draw_text(CentreX, ScrollY + i * 16, Text[i]);
	}