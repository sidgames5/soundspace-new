package io.github.keystone_games.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import sfr.Cursor;

class MusicPacks extends FlxState {
	public var TITLE:FlxText;

	public static var CURSOR:FlxSprite;

	public static var PACK_SELECTED:String = "others";

	public var PACK_STARTER:FlxSprite = new FlxSprite(0, 0, Assets.PACK_STARTER_LOGO__png);
	public var PACK_OTHERS:FlxSprite = new FlxSprite(0, 0, Assets.PACK_OTHERS_LOGO__png);

	public static var PACKS:Array<String> = ["starter", "ost1", "others"];

	override public function create() {
		super.create();

		TITLE = new FlxText(0, 0, 0, "Pack Selector");
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		CURSOR = Cursor.create();

		PACK_STARTER.x = 260;
		PACK_STARTER.y = 256;
		PACK_OTHERS.x = 660;
		PACK_OTHERS.y = 256;

		add(TITLE);

		add(PACK_OTHERS);
		add(PACK_STARTER);

		add(CURSOR);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		Cursor.update(CURSOR);

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MapListState());
		}

		if (FlxG.mouse.overlaps(PACK_OTHERS) && FlxG.mouse.justPressed) {
			PACK_SELECTED = "others";
			FlxG.switchState(new MapListState());
		} else if (FlxG.mouse.overlaps(PACK_STARTER) && FlxG.mouse.justPressed) {
			PACK_SELECTED = "starter";
			FlxG.switchState(new MapListState());
		}
	}

	public function getContentsOfPack(pack:String = "others") {
		#if (pack == "starter")
		return [DefaultMapList.df_3d3244, DefaultMapList.df_insane_soundspace];
		#elseif (pack == "others")
		return [DefaultMapList.df_tutorial];
		#end
	}
}
