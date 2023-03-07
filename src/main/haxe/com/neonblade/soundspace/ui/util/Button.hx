package com.neonblade.soundspace.ui.util;

import flixel.FlxG;
import flixel.FlxObject;

class Button {
	public static function pressed(object:FlxObject):Bool {
		if (FlxG.mouse.overlaps(object) && FlxG.mouse.justPressed) {
			return true;
		} else {
			return false;
		}
	}
}
