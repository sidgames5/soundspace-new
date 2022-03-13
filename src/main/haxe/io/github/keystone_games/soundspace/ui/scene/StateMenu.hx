package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import io.github.keystone_games.soundspace.ui.util.Button;

class StateMenu extends FlxState {
	public static var titleText:FlxText;
	public static var playButton:FlxSprite;

	public override function create() {
		super.create();

		titleText = new FlxText(0, 0, 0, "SoundSpace").setFormat(null, 64, FlxColor.WHITE);
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxSprite();
		playButton.screenCenter(XY);
		add(playButton);
	}

	public override function update(dt:Float) {
		super.update(dt);

		if (Button.pressed(playButton)) {
			FlxG.switchState(new StateModeList());
		}
	}
}
