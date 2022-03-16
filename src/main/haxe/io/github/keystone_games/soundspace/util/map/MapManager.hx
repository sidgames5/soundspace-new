package io.github.keystone_games.soundspace.util.map;

import haxe.Json;
import lime.system.System;
import haxe.io.Path;
import io.github.keystone_games.kglog.Logger;
import haxe.Http;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

typedef MD =
{
	lm:Int
}

class MapManager
{
	public static var mapFolder:String = Path.join([System.applicationStorageDirectory, "maps/"]);

	public static function download(id:Int)
	{
		#if debug
		Logger.debug("Checking for sys package");
		#end
		#if sys
		var http = new Http('https://keystone-games.github.io/db/soundspace/maps/map_${id}.json');
		var r;

		http.onData = function(data:String)
		{
			var result = haxe.Json.parse(data);
			r = result;
		}

		http.onError = function(error)
		{
			trace('error: $error');
		}

		http.request();

		return r;
		#else
		Logger.warn("Unable to download map " + id + ": sys package unavailable");
		#end
	}

	public static function listDownloadedMaps():Int
	{
		#if sys
		var x = FileSystem.readDirectory(mapFolder);
		return x.length;
		#else
		return 0;
		#end
	}

	public static function temp_init():Int
	{
		#if sys
		File.saveContent(Path.join([System.applicationStorageDirectory, "md.json"]), Json.stringify({lm: 0}));
		return 0;
		#else
		return 126;
		#end
	}

	public static function temp_getMD():MD
	{
		#if sys
		var x:MD = Json.parse(File.getContent(Path.join([System.applicationStorageDirectory, "md.json"])));
		return x;
		#end
		return {lm: 0};
	}
}
