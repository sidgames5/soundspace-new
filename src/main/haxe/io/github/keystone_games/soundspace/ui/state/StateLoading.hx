package io.github.keystone_games.soundspace.ui.state;

import haxe.Json;
import haxe.io.Path;
import lime.system.System;
import flixel.FlxG;
import haxe.Timer;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

using io.github.keystone_games.soundspace.ui.util.TextUtil;

class StateLoading extends FlxState
{
	@:noCompletion public static var title:FlxText;
	@:noCompletion public static var loadingText:FlxText;

	@:noCompletion private var very_secret:Bool = true;

	public override function create()
	{
		title = SimpleText.make("SoundSpace").setFormat(null, 96, FlxColor.PURPLE, CENTER);
		title.screenCenter(XY);
		add(title);
		loadingText = SimpleText.make("Loading.").setFormat(null, 64, FlxColor.PURPLE, CENTER);
		loadingText.screenCenter(X);
		loadingText.y = title.y + 96;
		add(loadingText);

        load();
	}

    public static function load() {
        #if sys
        // options file
        var directory = System.applicationStorageDirectory;
        var oFile = "./options.json";
        var oFPath = Path.join([directory, oFile]);
        if (!FileSystem.exists(oFPath)) {
            var options = {
                "audio": {
                    "volumeM": 1
                },
                "fullscreen": false
            };
            var content = Json.stringify(options);
            File.saveContent(oFPath, content);
        }
        #end
    }

	public override function update(dt:Float)
	{
		super.update(dt);

		if (loadingText.text == "Loading." && very_secret)
		{
			loadingText.text = "Loading..";
			very_secret = false;
			Timer.delay(function()
			{
				if (loadingText.text == "Loading..")
					loadingText.text = "Loading...";
				Timer.delay(function()
				{
					if (loadingText.text == "Loading...")
						loadingText.text = "Loading.";
					very_secret = true;
				}, 500);
			}, 500);
		}

        
	}
}
