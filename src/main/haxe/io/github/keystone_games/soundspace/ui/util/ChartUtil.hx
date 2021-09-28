package io.github.keystone_games.soundspace.ui.util;

import haxe.Json;
import haxe.io.Path;
#if sys
import sys.io.File;
import sys.FileSystem;
#end

class ChartParser
{
	#if sys
	public static function getNotesAtTime(json:Path, diff:String, time:String)
	{
		var content = File.getContent(json);
		var level = Json.parse(content);

		var info = json.level.diffs[diff].objects[time].notes;
		return info;
	}
	#end
}

class ChartUtil
{
	public static function createMap(sInfo:{name:String, artist:String, album:String}, file:Path) { }
}

class Timeline extends FlxState {
	public override function create() { super.create(); }
}
