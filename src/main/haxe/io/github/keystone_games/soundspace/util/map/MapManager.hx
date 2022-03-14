package io.github.keystone_games.soundspace.util.map;

class MapManager {
  public static function download(id:Int) {
    #if debug
      Logger.debug("Checking for sys package");
    #end
    #if sys
    #else
      Logger.warn("Unable to download map " + id + ": sys package unavailable");
    #end
  }
}
