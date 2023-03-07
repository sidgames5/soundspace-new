package com.neonblade.soundspace;

import com.neonblade.soundspace.util.map.MapManager;
import openfl.display.FPS;
import com.neonblade.soundspace.ui.scene.StateMenu;
import com.neonblade.soundspace.ui.scene.StateLoading;
import flixel.FlxGame;
import openfl.Lib;
import flixel.FlxG;
import openfl.display.Sprite;
import haxe.Json;
import lime.system.System;
import haxe.io.Path;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

class SoundSpace extends Sprite {
	public override function new() {
		super();
		init();
	}

	public static function init() {
		postInit();
		trace("Completed initialization");
	}

	public static function postInit() {
		Lib.current.addChild(new FlxGame(0, 0, #if html5 StateMenu #else StateLoading #end, 1, 15, 15, #if html5 false #else true #end, false));
		#if debug
		Lib.current.addChild(new FPS(10, 10, 0xffffff));
		trace("Playing menu music");
		// FlxG.sound.playMusic(Data.Menu__wav, Reference.VOLUME_MULTIPLIER, true);
		trace("Music now playing: " + Data.Menu__wav);
		#end
		MapManager.temp_init();

		trace("Completed post initialization");
	}

	public static function exit(exitCode:Int) {
		trace("Quitting application...");
		System.exit(exitCode);
	}
}
