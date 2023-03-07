package com.neonblade.soundspace.ui.util;

import flixel.FlxG;
import haxe.Timer;
import flixel.FlxSprite;

class ImageButton extends FlxSprite {
	public function pressed():Bool {
		if (FlxG.mouse.overlaps(this) && FlxG.mouse.justPressed) {
			return true;
		} else {
			return false;
		}
	}
}
