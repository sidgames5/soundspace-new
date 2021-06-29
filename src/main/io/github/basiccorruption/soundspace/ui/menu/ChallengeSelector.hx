package io.github.basiccorruption.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class ChallengeSelector extends MapListState {
	public var LEVEL_1:FlxSprite = new FlxSprite(0, 0, Assets.LEVELBASE__png);

	public var ABOUT:FlxText = new FlxText(0, 0, 0,
		"What are challenges?\nYou can complete challenges to gain XP and unlock special maps.\nCompleting 2 challenges every day can get you a lot of XP!");

	override public function create() {
		super.create();

		TITLE.text = "Challenge Selector";

		ABOUT.setFormat(null, 32, FlxColor.WHITE, FlxTextAlign.CENTER);

		LEVEL_1.screenCenter();
		add(LEVEL_1);

		add(ABOUT);

		add(TITLE);
	}

	override public function update(dt:Float) {
		super.update(dt);
	}
}
