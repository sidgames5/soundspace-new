package io.github.keystone_games.soundspace.ui.util;

import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.FlxState;
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
	public static function createMap(sInfo:{name:String, artist:String, album:String}, file:Path) {}
}

class Timeline extends FlxState
{
	public static var c_xres:Int;
	public static var c_yres:Int;
	public static var c_color:FlxColor;
	public static var c_lanes:Int;

	var box:FlxSprite;

	public override function create()
	{
		super.create();

		box = new FlxSprite();
		box.makeGraphic(c_xres, c_yres, c_color);
		box.screenCenter(X);
	}

	public static function configure(xres:Int = 3840, yres:Int = 1680, color:FlxColor, lanes:Int = 4) {
		c_xres = xres;
		c_yres = yres;
		c_color = color;
		c_lanes = lanes;
	}
}
