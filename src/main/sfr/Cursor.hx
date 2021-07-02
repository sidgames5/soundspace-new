package sfr;

import flixel.FlxG;
import flixel.FlxSprite;
import io.github.basiccorruption.soundspace.Assets;

class Cursor {
	public static var CURSOR:FlxSprite;

	public static function create():FlxSprite {
		CURSOR = new FlxSprite();
		CURSOR.loadGraphic(Assets.CURSOR__png);
		CURSOR.x = FlxG.mouse.x - 16;
		CURSOR.y = FlxG.mouse.y - 16;
		CURSOR.scale.set(0.5, 0.5);

		FlxG.mouse.visible = false;

		return CURSOR;
	}

	public static function update(cursor:FlxSprite) {
		cursor.x = FlxG.mouse.x - 24;
		cursor.y = FlxG.mouse.y - 24;
	}
}
