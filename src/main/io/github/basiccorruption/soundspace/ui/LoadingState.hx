package io.github.basiccorruption.soundspace.ui;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.Timer;
import io.github.basiccorruption.soundspace.modloader.ModLoader;
import io.github.basiccorruption.soundspace.ui.menu.MenuState;
import io.github.basiccorruption.soundspace.utils.Configuration;
import lime.system.System;
import lime.ui.Window;

class LoadingState extends FlxState {
	public var TITLE:FlxText;
	public var PROGRESS_BAR:FlxText;

	public var PROGRESS:Int = 0;

	public static var MAPS_LOADED:Int = 0;
	public static var MAPS_DETECTED:Int = 0;
	public static var ALL_MAPS_LOADED:Bool = false;

	public static var DYN_TEXTS:Array<String> = [
		"Did you know This game was developed by only 3 people",
		"You can press ESCAPE to go back to the menu",
		"This game is heavily inspired by FNF!",
		"Try Friday Night Funkin'!",
		"Try Super Mario Bros",
		"This game had a budget of $0",
		"'number 15! Burger King foot lettuce'",
		"Most of the art was made by the developers!", /*"Try to make your own level! (when thats in the game)"*/
	];

	public static var DYN_TEXT_NUM:Int = Random.int(0, 7);

	public var DYN:FlxText = new FlxText(0, 0, 0, /*"Did you know: " + */ DYN_TEXTS[DYN_TEXT_NUM]);

	override public function create() {
		super.create();

		new ModLoader();

		FlxG.mouse.visible = Configuration.MOUSE_VISIBLE;
		FlxG.fullscreen = Configuration.FULLSCREEN;

		FlxG.fullscreen = false;
		FlxG.autoPause = false;

		TITLE = new FlxText(0, 0, 0, "SoundSpace is loading!");
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;
		PROGRESS_BAR = new FlxText(0, 0, 0, PROGRESS + "%");
		PROGRESS_BAR.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		PROGRESS_BAR.screenCenter();

		DYN.setFormat(null, 24, FlxColor.WHITE, FlxTextAlign.CENTER);
		DYN.screenCenter();
		DYN.y = 480;

		add(TITLE);
		add(PROGRESS_BAR);

		add(DYN);

		if (MAPS_DETECTED == MAPS_LOADED) {
			ALL_MAPS_LOADED = true;
		}

		trace("Create LoadingState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		if (ModLoader.allModsLoaded == true && ALL_MAPS_LOADED == true) {
			Timer.delay(function() {
				PROGRESS = 100;
				FlxG.switchState(new MenuState());
			}, 1500);
		}

		PROGRESS = PROGRESS + ModLoader.modsLoaded;
		PROGRESS = PROGRESS + MAPS_LOADED;
	}
}
