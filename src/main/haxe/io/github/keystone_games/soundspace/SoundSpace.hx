package io.github.keystone_games.soundspace;

import io.github.keystone_games.soundspace.ui.scene.StateLoading;
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

class SoundSpace extends Sprite
{
	public override function new()
	{
		super();
		init();
	}
	
	public static function init() {
		postInit();
	}
	
	public static function postInit() {
		Lib.current.addChild(new FlxGame(0, 0, #if html5 StateMenu #else StateLoading #end, 1, 240, 165, false, false));
		trace("Playing menu music");
		FlxG.sound.playMusic(Data.Menu__wav, Reference.VOLUME_MULTIPLIER, true);
		trace("Music now playing: " + Data.Menu__wav);
	}

	public static function exit(exitCode:Int)
	{
		trace("Quitting application...");
		System.exit(exitCode);
	}
}
