/// @description Add description here
function PlayerPat()
{
	if (Animation == AnimPat) MethalHealth = min(100, MethalHealth + 1);
	if Input.Mode
	{
		if instance_exists(Manul)
		{
			var NearestManul = instance_nearest(PosX, PosY, Manul);
			if NearestManul != noone && NearestManul.Timer <= 300
			&& (Facing == FlipLeft && NearestManul.x < PosX || Facing == FlipRight && NearestManul.x > PosX)
			{
				var Distance = point_distance(PosX, PosY, NearestManul.x, NearestManul.y);
				if Distance < 16 && Distance > 8 
				{
					Animation = AnimPat;
					return true;
				}
			}
		}
	}
	return false;
}