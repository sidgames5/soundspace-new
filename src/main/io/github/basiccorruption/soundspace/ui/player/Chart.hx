package io.github.basiccorruption.soundspace.ui.player;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class Chart extends FlxState {
	public static function createTimeline():Void {
		var BORDER = new FlxSprite(0, 0);
		BORDER.makeGraphic(1270, 360, FlxColor.PURPLE);

		return;
	}
}
