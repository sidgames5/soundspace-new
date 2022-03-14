package io.github.keystone_games.soundspace.ui.scene;

import io.github.keystone_games.kglog.Logger;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;

class StateLoading extends FlxState {
	public static var bar:FlxSprite;
	public static var bgLeft:Bool;
	public static var titleText:FlxText;
	public static var lpc:Int = 1;
	public static var lpcTimer:Float;

	public static var loaded:Bool = false;

	public override function create() {
		super.create();

		bar = new FlxSprite();
		bar.makeGraphic(64, 64);
		bar.screenCenter(Y);
		bar.x = 0;
		add(bar);

		titleText = new FlxText(0, 0, 0, "Loading.").setFormat(null, 32, FlxColor.WHITE, CENTER);
		titleText.screenCenter(X);
		titleText.y = FlxG.height / 8;
		add(titleText);

		loaded = true;
	}

	public override function update(dt:Float) {
		super.update(dt);

		if (loaded) FlxG.switchState(new StateMenu());

		switch (bgLeft) {
			case true:
				bar.x -= 5;
			case false:
				bar.x += 5;
		}
		if (bar.x > FlxG.width - bar.width)
			bgLeft = true;
		if (bar.x < 0)
			bgLeft = false;
		#if debug
		Logger.debug(bar.x);
		#end

		lpcTimer += dt;
		#if debug
		Logger.debug(lpcTimer);
		#end
		if (lpcTimer >= (1/3)) {
			if (lpc == 3) {
				lpc = 1;
			} else {
				lpc++;
			}
			lpcTimer = 0;
			switch (lpc) {
				case 1:
					titleText.text = "Loading.";
				case 2:
					titleText.text = "Loading..";
				case 3:
					titleText.text = "Loading...";
			}
		}
	}
}
