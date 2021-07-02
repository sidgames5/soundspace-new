package sfr;

import io.github.basiccorruption.soundspace.VFX;
import io.github.basiccorruption.soundspace.Assets;
import flixel.FlxSprite;

class VisualEffects {
	public static var TEMP_OBJECT:FlxSprite;

	public static function createVFX(type:VFX):FlxSprite {
		TEMP_OBJECT = new FlxSprite();
		TEMP_OBJECT.x = 0;
		TEMP_OBJECT.y = 0;

		switch (type) {
			case SMOKE_TOP:
				TEMP_OBJECT.loadGraphic(Assets.SMOKE_TOP__png);
			case SMOKE_BOTTOM:
				TEMP_OBJECT.loadGraphic(Assets.SMOKE_BOTTOM__png);
			case SMOKE_LEFT:
				TEMP_OBJECT.loadGraphic(Assets.SMOKE_LEFT__png);
			case SMOKE_RIGHT:
				TEMP_OBJECT.loadGraphic(Assets.SMOKE_RIGHT__png);
			case FIRE_DOWN_UP:
				trace("not finished yet");
			case FIRE_LEFT_RIGHT:
				trace("not finished yet");
			case FIRE_RIGHT_LEFT:
				trace("not finished yet");
			case FIRE_UP_DOWN:
				trace("not finished yet");
		}

		return TEMP_OBJECT;
	}
}
