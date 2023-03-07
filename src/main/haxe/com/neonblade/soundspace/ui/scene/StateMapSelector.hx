package com.neonblade.soundspace.ui.scene;

import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxG;
import com.neonblade.soundspace.lists.Modes;
import flixel.FlxState;

class StateMapSelector extends FlxState {
	public static var mapList:Modes;

	public static var modeIndicator:FlxText;

	public function new(list:Modes) {
		super();

		mapList = list;
	}

	public override function create() {
		super.create();

		FlxG.updateFramerate = 60;
		FlxG.drawFramerate = 60;

		modeIndicator = new FlxText(0, 0, 0, "X Mode").setFormat(null, 32, FlxColor.WHITE, CENTER);
		modeIndicator.screenCenter(X);
		add(modeIndicator);

		switch (mapList) {
			case CLASSIC:
				createClassic();
			case PONG:
				createPong();
			case KEYBOARD:
				createKeyboard();
			case BEAT:
				createBeat();
		}
	}

	public static function createClassic() {}

	public static function createPong() {}

	public static function createKeyboard() {}

	public static function createBeat() {}

	public override function update(dt:Float) {
		super.update(dt);

		switch (mapList) {
			case CLASSIC:
				modeIndicator.text = "Classic Mode";
			case PONG:
				modeIndicator.text = "Pong Mode";
			case KEYBOARD:
				modeIndicator.text = "Keyboard Mode";
			case BEAT:
				modeIndicator.text = "Beat Mode";
		}
	}
}
