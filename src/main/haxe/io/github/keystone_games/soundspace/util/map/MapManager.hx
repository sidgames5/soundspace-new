package io.github.keystone_games.soundspace.util.map;

import haxe.Http;

class MapManager {
  public static function download(id:Int) {
    #if debug
      Logger.debug("Checking for sys package");
    #end
    #if sys
    var http = new Http('https://keystone-games.github.io/db/soundspace/mapdump/map_${id}.json');
    var r;

    http.onData = function (data:String) {
      var result = haxe.Json.parse(data);
      r = result;
    }

    http.onError = function (error) {
      trace('error: $error');
    }

    http.request();
    
    return r;
    #else
      Logger.warn("Unable to download map " + id + ": sys package unavailable");
    #end
  }
}
