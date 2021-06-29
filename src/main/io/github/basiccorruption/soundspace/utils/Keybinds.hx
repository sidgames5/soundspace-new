package io.github.basiccorruption.soundspace.utils;

import flixel.FlxG;

class Keybinds {
	public function new() {
		if (FlxG.keys.justPressed.F11) {
			if (FlxG.fullscreen == true) {
				FlxG.fullscreen = false;
			} else {
				FlxG.fullscreen = true;
			}
		}
	}
}
