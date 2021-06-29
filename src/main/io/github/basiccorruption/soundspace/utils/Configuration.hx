package io.github.basiccorruption.soundspace.utils;

import flixel.FlxG;

class Configuration {
	public static var VOLUME:Int = 100;
	public static var FULLSCREEN:Bool = true;
	public static var AUTO_PAUSE:Bool = true;

	public static var VERSION = "0.0.10.1";
	public static var TOKEN:String;

	// Mouse
	public static var MOUSE_VISIBLE:Bool = true;

	public function new(defaultSettings:Bool, settings:Array<Bool>) {
		if (defaultSettings == true) {
			FlxG.fullscreen = Configuration.FULLSCREEN;
			FlxG.autoPause = Configuration.AUTO_PAUSE;
		} else {
			FlxG.fullscreen = settings[0];
			FlxG.autoPause = settings[1];
		}
	}
}
