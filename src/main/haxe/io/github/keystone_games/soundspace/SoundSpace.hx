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
		trace("Playing menu music");
		FlxG.sound.playMusic(Data.Menu__wav, Reference.VOLUME_MULTIPLIER, true);
		trace("Music now playing: " + Data.Menu__wav);
		init();
	}

	public static function exit(exitCode:Int)
	{
		trace("Quitting application...");
		#if sys
		saveData();
		#end
		lime.system.System.exit(exitCode);
	}

	#if sys
	public static function saveData()
	{
		trace("Saving data");
		// this code only executes if the sys package is available

		trace("Sys package available; saving options file");
		// options file
		var directory = System.applicationStorageDirectory;
		var oFile = "./options.json";
		var oFPath = Path.join([directory, oFile]);
		trace("Saving options data");
		var options = {
			"fullscreen": FlxG.fullscreen,
			"audio": {
				"volumeM": Reference.VOLUME_MULTIPLIER
			},
			"assetGroup": null,
			"keys": ["S", "D", "F", "G", "SPACE", "H", "J", "K", "L"],
			"theme": "basiccorruption/default",
			"debugMode": false,
			"touchscreenmode": false,
			"pauseOnLostFocus": FlxG.autoPause,
			"lastMap": Reference.LAST_MAP
		};
		var content = Json.stringify(options);
		File.saveContent(oFPath, content);

		trace("Finished saving data!");
	}
	#end

	public static function init()
	{
		#if sys
		var mapTemp = {
			id_0: {
				"song": {
					"name": "Tutorial",
					"artist": "BasicCorruption",
					"mapper": "BasicCorruption",
					"album": "",
					"pack": "others"
				},
				"level": {
					"bpm": 120,
					"diffs": [
						{
							"name": "Tutorial",
							"lanes": 4,
							"objects": {
								"1.1.1": {
									"notes": [0, 0, 0, 0]
								}
							}
						}
					]
				}
			}
		};
		var mID_0 = Json.stringify(mapTemp.id_0);
		File.saveContent(Path.join([System.applicationStorageDirectory + "maps\\id_0\\", "./level.json"]), mID_0);
		#end
	}
}
