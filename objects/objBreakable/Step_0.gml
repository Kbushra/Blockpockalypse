//-1 = Vertical, 1 = Horizontal
if breakId != -1 && global.broken[breakId] { audio = -1; }

if global.reset && breakId == -1 { uses = maxUses; broken = false; }
if breakId != -1 && uses <= 0 { global.broken[breakId] = true; }

if global.jump { hit = false; }

if hit
{
	if regenDash { objPlayer.canDash = true; }
	broken = uses <= 0;
}

solid = !broken;

var nukeable = breakId == -1 && !infUses;
if instance_exists(objNuke) && objNuke.exploded && nukeable { uses = 0; broken = true; }

if !broken
{
	if sprite_index != normSprite { sprite_index = normSprite; }
	exit;
}

if sprite_index != breakSprite
{
	sprite_index = breakSprite;
	if audio != -1 && !instance_exists(objNuke) { audio_play_sound(audio, 10, false); }
}
if image_index >= image_number - 1 { image_index = image_number - 1; }