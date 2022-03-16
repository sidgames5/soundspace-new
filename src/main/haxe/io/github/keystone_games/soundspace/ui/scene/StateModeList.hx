package io.github.keystone_games.soundspace.ui.scene;

import io.github.keystone_games.soundspace.lists.Modes;
import io.github.keystone_games.soundspace.ui.util.Button;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxSprite;

class StateModeList extends FlxState
{
	public static var titleText:FlxText;

	public static var modeClassicText:FlxText;
	public static var modeClassicImage:FlxSprite;
	public static var modePongText:FlxText;
	public static var modePongImage:FlxSprite;
	public static var modeKeyboardText:FlxText;
	public static var modeKeyboardImage:FlxSprite;
	public static var modeBeatText:FlxText;
	public static var modeBeatImage:FlxSprite;

	public override function create()
	{
		super.create();

		titleText = new FlxText(0, 0, 0, "Select a Mode").setFormat(null, 64, FlxColor.WHITE, CENTER);
		titleText.screenCenter(X);
		add(titleText);

		modeClassicText = new FlxText(0, 0, 0, "Classic").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.RED, CENTER);
		modeClassicText.screenCenter(XY);
		modeClassicText.x -= 1024;
		modeClassicText.y += 256;
		add(modeClassicText);
		modeClassicImage = new FlxSprite(0, 0, Assets.ClassicICN_1__png);
		modeClassicImage.x = modeClassicText.x;
		modeClassicImage.y = modeClassicText.y - 64;
		add(modeClassicText);

		modePongText = new FlxText(0, 0, 0, "Pong").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.RED, CENTER);
		modePongText.screenCenter(XY);
		modePongText.x -= 512;
		modePongText.y += 256;
		add(modePongText);
		modePongImage = new FlxSprite(0, 0, Assets.PongICN_1__png);
		modePongImage.x = modePongText.x;
		modePongImage.y = modePongText.y - 64;
		add(modePongText);

		modeKeyboardText = new FlxText(0, 0, 0, "Keyboard").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.RED, CENTER);
		modeKeyboardText.screenCenter(XY);
		modeKeyboardText.x += 512;
		modeKeyboardText.y += 256;
		add(modeKeyboardText);
		modeKeyboardImage = new FlxSprite(0, 0, Assets.KeyboardICN_1__png);
		modeKeyboardImage.x = modeKeyboardText.x;
		modeKeyboardImage.y = modeKeyboardText.y - 64;
		add(modeKeyboardText);

		modeBeatText = new FlxText(0, 0, 0, "Beat").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.RED, CENTER);
		modeBeatText.screenCenter(XY);
		modeBeatText.x += 1024;
		modeBeatText.y += 256;
		add(modeBeatText);
		modeBeatImage = new FlxSprite(0, 0, Assets.BeatICN_1__png);
		modeBeatImage.x = modeBeatText.x;
		modeBeatImage.y = modeBeatText.y - 64;
		add(modeBeatText);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (Button.pressed(modeClassicText))
			FlxG.switchState(new StateMapSelector(Modes.CLASSIC));
		if (Button.pressed(modePongText))
			FlxG.switchState(new StateMapSelector(Modes.PONG));
		if (Button.pressed(modeKeyboardText))
			FlxG.switchState(new StateMapSelector(Modes.KEYBOARD));
		if (Button.pressed(modeBeatText))
			FlxG.switchState(new StateMapSelector(Modes.BEAT));

		if (Button.pressed(modeClassicImage))
			FlxG.switchState(new StateMapSelector(Modes.CLASSIC));
		if (Button.pressed(modePongImage))
			FlxG.switchState(new StateMapSelector(Modes.PONG));
		if (Button.pressed(modeKeyboardImage))
			FlxG.switchState(new StateMapSelector(Modes.KEYBOARD));
		if (Button.pressed(modeBeatImage))
			FlxG.switchState(new StateMapSelector(Modes.BEAT));
	}
}
