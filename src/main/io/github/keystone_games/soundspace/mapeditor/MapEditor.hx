package io.github.keystone_games.soundspace.mapeditor;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import haxe.io.Path;
import sfr.Keybinds;
import sys.io.File;

using sfr.WindowUtils.Exit;
using sfr.WindowUtils.Println;

class MapEditor extends FlxState {
	// Declare variables
	private var SSM:Path;
	private var MAP_CONTENT = File.getContent(SSM);
	private var MP3:Path;

	// Timeline
	public var BORDERS:FlxSprite;

	// Song config
	public var CONFIG_BORDERS:FlxSprite;
	public var CONFIG_TITLE:FlxText;

	override public function create() {
		super.create();

		// Create song configuration

		if (SSM == null) {
			// Create/display song configuration

			CONFIG_BORDERS = new FlxSprite();
			CONFIG_BORDERS.loadGraphic(AssetPaths.CONFIG_BORDER);
			CONFIG_BORDERS.screenCenter();
			CONFIG_BORDERS.visible = true;

			add(CONFIG_BORDERS);
		}

		trace("Create MapEditor");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();
	}

	override public function new(ssm:Path, mp3:Path) {
		super();

		SSM = ssm;
		MP3 = mp3;
	}
}
