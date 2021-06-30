package io.github.basiccorruption.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import io.github.basiccorruption.soundspace.ui.player.PlayState;
import io.github.basiccorruption.soundspace.utils.Cursor;
import io.github.basiccorruption.soundspace.utils.Keybinds;

// import sys.io.File;
class MapListState extends FlxState {
	// Declare variables
	public static var CURSOR:FlxSprite;

	public var BACKGROUND:FlxSprite;
	public var BACKBUTTON:FlxSprite;
	public var TITLE:FlxText;
	public var DESCRIPTION:FlxText;
	public var HINT:FlxText;

	public var MAPINFO_NAME:FlxText;
	public var MAPINFO_ARTIST:FlxText;
	public var MAPINFO_MAPPER:FlxText;
	public var MAPINFO_DIFFICULTY:FlxText;
	public var MAPINFO_CLEAR_RATE:FlxText;

	public var MAP_TUTORIAL:FlxText;
	public var MAP_TUTORIAL_NAME:String = "Tutorial";
	public var MAP_TUTORIAL_ARTIST:String = "BasicCorruption";
	public var MAP_TUTORIAL_MAPPER:String = "BasicCorruption";

	public var MAP_3D3244:FlxText;
	public var MAP_3D3244_NAME:String = "3d3244";
	public var MAP_3D3244_ARTIST:String = "BasicCorruption";
	public var MAP_3D3244_MAPPER:String = "BasicCorruption";

	public var MAP_INSANE_SOUNDSPACE:FlxText;
	public var MAP_INSANE_SOUNDSPACE_NAME:String = "Insane SoundSpace";
	public var MAP_INSANE_SOUNDSPACE_ARTIST:String = "LeWolfYT";
	public var MAP_INSANE_SOUNDSPACE_MAPPER:String = "BasicCorruption";

	public var PLAY_BUTTON:FlxSprite;

	public var MAP_SELECTED:DefaultMapList;

	public var PACK_SELECTOR:FlxText = new FlxText(0, 0, 0, "Pack Selector");
	public var CHALLENGES:FlxText = new FlxText(0, 0, 0, "Challenges");

	override public function create() {
		super.create();

		// Presence.changePresence("In the map list", null);

		// Define variables

		BACKGROUND = new FlxSprite();
		BACKGROUND.loadGraphic(Assets.TEMPORARY_BACKGROUND__png);
		BACKGROUND.screenCenter();
		add(BACKGROUND);

		TITLE = new FlxText(0, 0, 0, "SoundSpace", 32, true);
		TITLE.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;
		DESCRIPTION = new FlxText(0, 0, 0, "Your beatmaps", 16, true);
		DESCRIPTION.setFormat(null, 16, FlxColor.MAGENTA, FlxTextAlign.CENTER);
		DESCRIPTION.screenCenter();
		DESCRIPTION.y = 32;
		HINT = new FlxText(0, 0, 0, "To get more beatmaps, go to https://basiccorruption.github.io/soundspace/packs", 16, true);
		HINT.setFormat(null, 16, FlxColor.MAGENTA, FlxTextAlign.CENTER);
		HINT.screenCenter();
		HINT.y = 48;

		//

		MAP_TUTORIAL = new FlxText(0, 0, 0, MAP_TUTORIAL_NAME + "\nby: " + MAP_TUTORIAL_ARTIST + "\nmapped by: " + MAP_TUTORIAL_MAPPER);
		MAP_3D3244 = new FlxText(0, 0, 0, MAP_3D3244_NAME + "\nby: " + MAP_3D3244_ARTIST + "\nmapped by: " + MAP_3D3244_MAPPER);
		if (MusicPacks.PACK_SELECTED == MusicPacks.PACKS[2]) {
			MAP_TUTORIAL.setFormat(null, 32);
			MAP_TUTORIAL.screenCenter();
			MAP_TUTORIAL.x = 0;
			add(MAP_TUTORIAL);
		} else if (MusicPacks.PACK_SELECTED == MusicPacks.PACKS[0]) {
			MAP_3D3244.setFormat(null, 32);
			MAP_3D3244.screenCenter();
			MAP_3D3244.x = 0;
			add(MAP_3D3244);
		}

		// Map info

		MAPINFO_NAME = new FlxText(0, 0, 0, "temp", 32, true); // The name of the song
		MAPINFO_ARTIST = new FlxText(0, 0, 0, "temp", 24, true); // The artist of the song
		MAPINFO_MAPPER = new FlxText(0, 0, 0, "temp", 24, true); // The creator of the map
		MAPINFO_DIFFICULTY = new FlxText(0, 0, 0, "temp", 24, true); // The difficulty of the map
		MAPINFO_CLEAR_RATE = new FlxText(0, 0, 0, "temp", 24, true); // The clear rate of the map
		MAPINFO_NAME.alignment = FlxTextAlign.CENTER;
		MAPINFO_ARTIST.alignment = FlxTextAlign.CENTER;
		MAPINFO_MAPPER.alignment = FlxTextAlign.CENTER;
		MAPINFO_DIFFICULTY.alignment = FlxTextAlign.CENTER;
		MAPINFO_CLEAR_RATE.alignment = FlxTextAlign.CENTER;
		MAPINFO_NAME.x = 640;
		MAPINFO_ARTIST.x = 640;
		MAPINFO_MAPPER.x = 640;
		MAPINFO_DIFFICULTY.x = 640;
		MAPINFO_CLEAR_RATE.x = 640;
		MAPINFO_NAME.y = 100;
		MAPINFO_ARTIST.y = 140;
		MAPINFO_MAPPER.y = 180;
		MAPINFO_DIFFICULTY.y = 220;
		MAPINFO_CLEAR_RATE.y = 260;

		PLAY_BUTTON = new FlxSprite();
		PLAY_BUTTON.loadGraphic(Assets.PLAY_BUTTON__png);
		PLAY_BUTTON.x = 640;
		PLAY_BUTTON.y = 595;

		PACK_SELECTOR.setFormat(null, 48, FlxColor.PURPLE, FlxTextAlign.RIGHT);
		PACK_SELECTOR.x = 0;
		PACK_SELECTOR.y = 595;
		CHALLENGES.setFormat(null, 48, FlxColor.PURPLE, FlxTextAlign.RIGHT);
		CHALLENGES.x = 50;
		CHALLENGES.y = 595;

		// Add objects (FlxBasic) to state

		// add(BACKGROUND);

		add(TITLE);
		add(DESCRIPTION);
		add(HINT);

		add(PACK_SELECTOR);

		BACKBUTTON = new FlxSprite();
		BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACKBUTTON.x = 973;
		BACKBUTTON.y = 595;
		add(BACKBUTTON);

		//

		add(MAPINFO_ARTIST);
		add(MAPINFO_CLEAR_RATE);
		add(MAPINFO_DIFFICULTY);
		add(MAPINFO_MAPPER);
		add(MAPINFO_NAME);
		MAPINFO_ARTIST.visible = false;
		MAPINFO_CLEAR_RATE.visible = false;
		MAPINFO_DIFFICULTY.visible = false;
		MAPINFO_MAPPER.visible = false;
		MAPINFO_NAME.visible = false;

		add(PLAY_BUTTON);
		PLAY_BUTTON.visible = false;

		CURSOR = Cursor.create();
		add(CURSOR);

		trace("Create MapListState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		Cursor.update(CURSOR);

		// Events
		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}

		if (FlxG.mouse.overlaps(PACK_SELECTOR) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MusicPacks());
		}
		if (FlxG.mouse.overlaps(CHALLENGES) && FlxG.mouse.justPressed) {
			FlxG.switchState(new ChallengeSelector());
		}

		if (MusicPacks.PACK_SELECTED == "others") {
			if (FlxG.mouse.overlaps(MAP_TUTORIAL) && FlxG.mouse.justPressed) {
				MAPINFO_NAME.text = "Tutorial";
				MAPINFO_ARTIST.text = "by: BasicCorruption";
				MAPINFO_MAPPER.text = "Mapped by: BasicCorruption";
				MAPINFO_DIFFICULTY.text = "Difficulty: 1.5";
				MAPINFO_CLEAR_RATE.text = "Clear rate is not available for this map";
				MAPINFO_ARTIST.visible = true;
				MAPINFO_CLEAR_RATE.visible = true;
				MAPINFO_DIFFICULTY.visible = true;
				MAPINFO_MAPPER.visible = true;
				MAPINFO_NAME.visible = true;
				PLAY_BUTTON.visible = true;
				MAP_SELECTED = DefaultMapList.df_tutorial;
			}
		} else if (MusicPacks.PACK_SELECTED == "starter") {
			if (FlxG.mouse.overlaps(MAP_3D3244) && FlxG.mouse.justPressed) {
				MAPINFO_NAME.text = "3d3244";
				MAPINFO_ARTIST.text = "by: BasicCorruption";
				MAPINFO_MAPPER.text = "Mapped by: BasicCorruption";
				MAPINFO_DIFFICULTY.text = "Difficulty: 0";
				MAPINFO_CLEAR_RATE.text = "Clear rate is not available for this map";
				MAPINFO_ARTIST.visible = true;
				MAPINFO_CLEAR_RATE.visible = true;
				MAPINFO_DIFFICULTY.visible = true;
				MAPINFO_MAPPER.visible = true;
				MAPINFO_NAME.visible = true;
				PLAY_BUTTON.visible = true;
				MAP_SELECTED = DefaultMapList.df_3d3244;
			}
		}

		if (FlxG.mouse.overlaps(PLAY_BUTTON) && FlxG.mouse.justPressed) {
			if (MAP_SELECTED == DefaultMapList.df_tutorial) {
				FlxG.switchState(new PlayState(DefaultMapList.df_tutorial));
			} else if (MAP_SELECTED == DefaultMapList.df_3d3244) {
				FlxG.switchState(new PlayState(DefaultMapList.df_3d3244, 0));
			}
		}

		if (FlxG.mouse.overlaps(BACKBUTTON)) {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON_HOVER__png);
		} else {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		}

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}
		if (FlxG.mouse.overlaps(BACKBUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}
	}
}
