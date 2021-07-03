package io.github.keystone_games.soundspace.modloader;

class ModLoader {
	// Define variables
	public static var allModsLoaded:Bool = false;
	public static var modsLoaded:Int = 0;
	public static var modsDetected:Int = 0;

	public static var MODS = Mods;

	public function new() {
		trace("Mods are not supported yet");
		if (modsLoaded == modsDetected) {
			allModsLoaded = true;
		}
	}
}
