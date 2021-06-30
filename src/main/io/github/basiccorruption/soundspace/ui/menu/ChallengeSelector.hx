package io.github.basiccorruption.soundspace.ui.menu;

import io.github.basiccorruption.soundspace.utils.Cursor;
import io.github.basiccorruption.soundspace.utils.Keybinds;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class ChallengeSelector extends FlxState {

	public var TITLE = new FlxText(0, 0, 0, "", 64);
	public var LEVEL_1:FlxSprite = new FlxSprite(0, 0/*, Assets.LEVELBASE__png*/);

	public var CURSOR = Cursor.create();

	public var ABOUT:FlxText = new FlxText(0, 0, 0,
		"What are challenges?\nYou can complete challenges to gain XP and unlock special maps.\nCompleting 2 challenges every day can get you a lot of XP!");

	override public function create() {
		super.create();

		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.text = "Challenge Selector";

		ABOUT.setFormat(null, 64, FlxColor.WHITE, FlxTextAlign.CENTER);

		LEVEL_1.screenCenter();
		add(LEVEL_1);

		add(ABOUT);

		add(TITLE);

		add(CURSOR);
	}

	override public function update(dt:Float) {
		super.update(dt);

		new Keybinds();

		Cursor.update(CURSOR);

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MapListState());
		}
	}
}
