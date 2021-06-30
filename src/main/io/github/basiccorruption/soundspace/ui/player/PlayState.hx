package io.github.basiccorruption.soundspace.ui.player;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.Timer;
import haxe.io.Path;
import io.github.basiccorruption.soundspace.ui.menu.MapListState;
import io.github.basiccorruption.soundspace.ui.player.CompletedState;
import io.github.basiccorruption.soundspace.utils.*;

// import sys.io.File;
class PlayState extends FlxState {
	// Declare variables
	private var SSM:DefaultMapList;
	// private var MAP_CONTENT = File.getContent(SSM);
	private var TUTORIAL_MP3:Path = new Path("assets/data/Tutorial.mp3");
	private var TUTORIAL_WAV:Path = new Path("assets/data/Tutorial.wav");
	private var IS_TUTORIAL:Bool = false;

	// Timeline
	public var BORDERS:FlxSprite;
	public var KEY_1:FlxSprite;
	public var KEY_2:FlxSprite;
	public var KEY_3:FlxSprite;
	public var KEY_4:FlxSprite;
	public var KEY_5:FlxSprite;
	public var KEY_6:FlxSprite;
	public var KEY_7:FlxSprite;
	public var KEY_8:FlxSprite;
	public var STATS:FlxText;

	// Stats
	public static var ACCURACY:Float = 1;
	public static var CURREENT_COMBO:Int = 0;
	public static var MAX_COMBO:Int = 0;
	public static var XP_GAINED:Float = 0;
	public static var TOTAL_NOTES:Int = 0;
	public static var TOTAL_MISSES:Int = 0;
	public static var TOTAL_HITS:Int = 0;
	public static var HP:Float = 100;

	public var L1_TEMP_NOTE:FlxSprite;
	public var L2_TEMP_NOTE:FlxSprite;
	public var L3_TEMP_NOTE:FlxSprite;
	public var L4_TEMP_NOTE:FlxSprite;
	public var TN_READY:Bool = false;

	public var TEMP_VFX:FlxSprite;

	public var DIFFICULTYY:Int = 0;

	override public function create() {
		super.create();

		FlxG.mouse.visible = false;

		ACCURACY = 1;

		// Define variables

		STATS = new FlxText(0, 0, 0, "Accuracy: " + ACCURACY + " HP: " + HP, 16, true);
		STATS.setFormat(null, 16, FlxColor.PURPLE, FlxTextAlign.CENTER);
		STATS.screenCenter();
		STATS.y = 0;

		// Add objects (FlxBasic) to state

		add(STATS);

		L1_TEMP_NOTE = new FlxSprite();
		L2_TEMP_NOTE = new FlxSprite();
		L3_TEMP_NOTE = new FlxSprite();
		L4_TEMP_NOTE = new FlxSprite();

		// Tutorial is hardcoded
		// This code detects if it should chart the tutorial
		if (IS_TUTORIAL == true) {
			// Creates the keys
			KEY_1 = new FlxSprite();
			KEY_1.loadGraphic(Assets.KEY__png);
			KEY_1.x = 0;
			KEY_1.y = 64;
			add(KEY_1);
			KEY_2 = new FlxSprite();
			KEY_2.loadGraphic(Assets.KEY__png);
			KEY_2.x = 0;
			KEY_2.y = 128;
			add(KEY_2);
			KEY_3 = new FlxSprite();
			KEY_3.loadGraphic(Assets.KEY__png);
			KEY_3.x = 0;
			KEY_3.y = 192;
			add(KEY_3);
			KEY_4 = new FlxSprite();
			KEY_4.loadGraphic(Assets.KEY__png);
			KEY_4.x = 0;
			KEY_4.y = 256;
			add(KEY_4);

			// Charts the tutorial
			// The tempo of the tutorial is 110 beats per minute
			FlxG.sound.playMusic(Assets.Tutorial__wav, Configuration.VOLUME / 100, false);

			// TEMP_VFX = VisualEffects.createVFX(VFX.SMOKE_BOTTOM);
			add(TEMP_VFX);

			// Wait 7.09 seconds
			Timer.delay(function() {
				TEMP_VFX = VisualEffects.createVFX(VFX.SMOKE_BOTTOM);
				L2_TEMP_NOTE = ChartUtils.createNote(4, 2, 1, 0, 1);
				TN_READY = true;
				add(L2_TEMP_NOTE);
				Timer.delay(function() {
					remove(TEMP_VFX);
				}, 500);
				Timer.delay(function() {
					L2_TEMP_NOTE = ChartUtils.createNote(4, 2, 1, 1, 1);
					add(L2_TEMP_NOTE);
					Timer.delay(function() {
						L2_TEMP_NOTE = ChartUtils.createNote(4, 2, 1, 0, 1);
						add(L2_TEMP_NOTE);
						Timer.delay(function() {
							L1_TEMP_NOTE = ChartUtils.createNote(4, 1, 1, 0, 27);
							add(L1_TEMP_NOTE);
							Timer.delay(function() {
								L2_TEMP_NOTE = ChartUtils.createNote(4, 2, 1, 0, 1);
								add(L2_TEMP_NOTE);
								Timer.delay(function() {
									FlxG.switchState(new CompletedState("Tutorial - BasicCorruption", ACCURACY, MAX_COMBO, TOTAL_MISSES, "Easy"));
								}, 22000);
							}, 27000);
						}, 8000);
					}, 9000);
				}, 8000);
			}, 26000);
		} else if (SSM == DefaultMapList.df_3d3244 && DIFFICULTYY == 0) {
			// Creates the keys
			KEY_1 = new FlxSprite();
			KEY_1.loadGraphic(Assets.KEY__png);
			KEY_1.x = 0;
			KEY_1.y = 64;
			add(KEY_1);
			KEY_2 = new FlxSprite();
			KEY_2.loadGraphic(Assets.KEY__png);
			KEY_2.x = 0;
			KEY_2.y = 128;
			add(KEY_2);
			KEY_3 = new FlxSprite();
			KEY_3.loadGraphic(Assets.KEY__png);
			KEY_3.x = 0;
			KEY_3.y = 192;
			add(KEY_3);
			KEY_4 = new FlxSprite();
			KEY_4.loadGraphic(Assets.KEY__png);
			KEY_4.x = 0;
			KEY_4.y = 256;
			add(KEY_4);

			// Charts the map
			// The tempo of the song is 128 beats per minute
			FlxG.sound.playMusic(Maps.id_1__mp3, Configuration.VOLUME / 100, false);

			// TEMP_VFX = VisualEffects.createVFX(VFX.SMOKE_BOTTOM);
			add(TEMP_VFX);
		}

		trace("Create PlayState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		HP = HP - 0.01;

		// Events
		if (HP == 0) {
			if (IS_TUTORIAL == true) {
				FlxG.switchState(new FailedState(null, true));
			} else {
				FlxG.switchState(new FailedState(SSM, false));
			}
		}

		STATS.text = "Accuracy: " + ACCURACY * 100 + "%";
		if (TOTAL_NOTES >= 1) {
			ACCURACY = TOTAL_HITS / TOTAL_NOTES;
		}

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MapListState());
			FlxG.sound.pause();
		}

		if (FlxG.keys.pressed.D) {
			KEY_1.loadGraphic(Assets.KEY_CLICKED__png);
			if (KEY_1.overlaps(L1_TEMP_NOTE) && FlxG.keys.justPressed.D && TN_READY == true) {
				TOTAL_HITS++;
				L1_TEMP_NOTE.x = 1280;
			} else if (L1_TEMP_NOTE.x <= 1279) {
				TOTAL_MISSES++;
				TOTAL_NOTES++;
				L1_TEMP_NOTE.x = 1280;
			}
		} else {
			KEY_1.loadGraphic(Assets.KEY__png);
		}
		if (FlxG.keys.pressed.F) {
			KEY_2.loadGraphic(Assets.KEY_CLICKED__png);
			if (KEY_2.overlaps(L2_TEMP_NOTE) && FlxG.keys.justPressed.F && TN_READY == true) {
				TOTAL_HITS++;
				L2_TEMP_NOTE.x = 1280;
			} else if (L2_TEMP_NOTE.x <= 1279) {
				TOTAL_MISSES++;
				TOTAL_NOTES++;
				L2_TEMP_NOTE.x = 1280;
			}
		} else {
			KEY_2.loadGraphic(Assets.KEY__png);
		}
		if (FlxG.keys.pressed.J) {
			KEY_3.loadGraphic(Assets.KEY_CLICKED__png);
			if (KEY_3.overlaps(L3_TEMP_NOTE) && FlxG.keys.justPressed.J && TN_READY == true) {
				TOTAL_HITS++;
				L3_TEMP_NOTE.x = 1280;
			} else if (L3_TEMP_NOTE.x <= 1279) {
				TOTAL_MISSES++;
				TOTAL_NOTES++;
				L3_TEMP_NOTE.x = 1280;
			}
		} else {
			KEY_3.loadGraphic(Assets.KEY__png);
		}
		if (FlxG.keys.pressed.K) {
			KEY_4.loadGraphic(Assets.KEY_CLICKED__png);
			if (KEY_4.overlaps(L4_TEMP_NOTE) && FlxG.keys.justPressed.K && TN_READY == true) {
				TOTAL_HITS++;
				L4_TEMP_NOTE.x = 1280;
			} else if (L4_TEMP_NOTE.x <= 1279) {
				TOTAL_MISSES++;
				TOTAL_NOTES++;
				L4_TEMP_NOTE.x = 1280;
			}
		} else {
			KEY_4.loadGraphic(Assets.KEY__png);
		}
	}

	override public function new(song:DefaultMapList, ?diff:Int = 0) {
		super();

		SSM = song;
		DIFFICULTYY = diff;
		if (song == DefaultMapList.df_tutorial) {
			IS_TUTORIAL = true;
		}
	}
}
