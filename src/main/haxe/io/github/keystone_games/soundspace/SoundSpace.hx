package io.github.keystone_games.soundspace;

import io.github.keystone_games.soundspace.ui.state.*;
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
		Lib.current.addChild(new FlxGame(0, 0, #if html5 StateMenu #else StateLoading #end, 1, 240, 165, false, false));
		FlxG.sound.playMusic(Data.Menu__wav, Reference.VOLUME_MULTIPLIER, true);
	}

	public static function exit(exitCode:Int)
	{
		trace("Quitting application...");
		saveData();
		lime.system.System.exit(exitCode);
	}

	public static function saveData()
	{
		trace("Saving data");
		// this code only executes if the sys package is available
		#if sys
		trace("Sys package available; loading options file");
		// options file
		var directory = System.applicationStorageDirectory;
		var oFile = "./options.json";
		var oFPath = Path.join([directory, oFile]);
		trace("Saving options data");
		var options = {
			"audio": {
				"volumeM": Reference.VOLUME_MULTIPLIER
			},
			"fullscreen": FlxG.fullscreen,
			"assetGroup": Reference.ASSET_GROUP,
			"keys": ["D", "F", "J", "K"]
		};
		var content = Json.stringify(options);
		File.saveContent(oFPath, content);
		#end
		trace("Finished saving data!");
	}
}
