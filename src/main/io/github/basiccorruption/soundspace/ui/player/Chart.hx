package io.github.basiccorruption.soundspace.ui.player;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class Chart extends FlxState {
	public static function createTimeline(keys:Int = 4):Void {
		var BORDER = new FlxSprite(0, 0);
		BORDER.makeGraphic(1270, 360, FlxColor.PURPLE);

		var KEY_1 = new FlxSprite();
		KEY_1.loadGraphic(Assets.KEY__png);
		KEY_1.x = 0;
		KEY_1.y = 64;
		var KEY_2 = new FlxSprite();
		KEY_2.loadGraphic(Assets.KEY__png);
		KEY_2.x = 0;
		KEY_2.y = 128;
		var KEY_3 = new FlxSprite();
		KEY_3.loadGraphic(Assets.KEY__png);
		KEY_3.x = 0;
		KEY_3.y = 192;
		var KEY_4 = new FlxSprite();
		KEY_4.loadGraphic(Assets.KEY__png);
		KEY_4.x = 0;
		KEY_4.y = 256;
		if (keys >= 5) {
			var KEY_5 = new FlxSprite();
			KEY_5.loadGraphic(Assets.KEY__png);
			KEY_5.x = 0;
			KEY_5.y = 320;
		} else if (keys >= 6) {
			var KEY_6 = new FlxSprite();
			KEY_6.loadGraphic(Assets.KEY__png);
			KEY_6.x = 0;
			KEY_6.y = 384;
		} else if (keys >= 7) {
			var KEY_7 = new FlxSprite();
			KEY_7.loadGraphic(Assets.KEY__png);
			KEY_7.x = 0;
			KEY_7.y = 448;
		} else if (keys >= 8) {
			var KEY_8 = new FlxSprite();
			KEY_8.loadGraphic(Assets.KEY__png);
			KEY_8.x = 0;
			KEY_8.y = 512;
		}

		return;
	}
}
