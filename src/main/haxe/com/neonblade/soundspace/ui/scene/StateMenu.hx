package com.neonblade.soundspace.ui.scene;

import com.neonblade.soundspace.lists.Modes;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import com.neonblade.soundspace.ui.util.Button;

class StateMenu extends FlxState {
	public static var titleText:FlxText;
	public static var playButton:FlxSprite;

	public override function create() {
		super.create();

		FlxG.updateFramerate = 15;
		FlxG.drawFramerate = 15;

		titleText = new FlxText(0, 0, 0, "SoundSpace").setFormat(null, 64, FlxColor.WHITE);
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxSprite(0, 0, Assets.PlaySND_1__png);
		playButton.screenCenter(XY);
		add(playButton);
	}

	public override function update(dt:Float) {
		super.update(dt);

		if (FlxG.mouse.justMoved) {
			FlxG.updateFramerate = 30;
			FlxG.drawFramerate = 30;
		}

		if (Button.pressed(playButton)) {
			FlxG.switchState(new StateMapSelector(Modes.CLASSIC));
		}
	}
}
