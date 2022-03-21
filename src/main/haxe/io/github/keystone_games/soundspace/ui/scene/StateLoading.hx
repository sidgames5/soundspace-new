package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;

class StateLoading extends FlxState {
	public static var bar:FlxSprite;
  public static var bgLeft:Bool;

	public override function create() {
		super.create();

		bar = new FlxSprite();
		bar.makeGraphic(64, 64);
		bar.screenCenter(Y);
		bar.x = 0;
		add(bar);
	}

	public override function update(dt:Float) {
		super.update(dt);

    switch (bgLeft) {
      case true:
        bar.x -= 1;
      case false:
        bar.x += 1;
    }
    if (bar.x > FlxG.width) bgLeft = true;
    if (bar.x < 0) bgLeft = false;
    trace(bar.x);
	}
}
