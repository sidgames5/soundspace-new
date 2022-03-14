package io.github.keystone_games.soundspace.util.map;

import lime.system.System;
import haxe.io.Path;
import io.github.keystone_games.kglog.Logger;
import haxe.Http;
#if sys
import sys.FileSystem;
#end

class MapManager {
  public static var mapFolder:String = Path.join([System.applicationStorageDirectory, "maps/"]);

	public static function download(id:Int) {
		#if debug
		Logger.debug("Checking for sys package");
		#end
		#if sys
		var http = new Http('https://keystone-games.github.io/db/soundspace/maps/map_${id}.json');
		var r;

		http.onData = function(data:String) {
			var result = haxe.Json.parse(data);
			r = result;
		}

		http.onError = function(error) {
			trace('error: $error');
		}

		http.request();

		return r;
		#else
		Logger.warn("Unable to download map " + id + ": sys package unavailable");
		#end
	}

  public static function listDownloadedMaps():Int {
    #if sys
    var x = FileSystem.readDirectory(mapFolder);
    return x.length;
    #else
    return 0;
    #end
  }
}
