package com.neonblade.soundspace.ui.scene;

class StateChartPlayer extends FlxState {
	private static var NoteList:Array<FlxBasic> = [];
	
	private static var background = new FlxSprite();
	
	override public function create() {
		// TODO: initialize background sprite
		background.makeGraphic(1920, 1080, FlxColor.BLACK);
		background.screenCenter(XY);
	}
	
	override public function update(dt:Float) {
		background.width = FlxG.width;
		background.height = FlxG.height;
		add(background);
		
		// this is just testing code
		if (Math.random() < 0.1) {
			var p = new FlxSprite(Assets.NOTE__png);
			p.x = Random.int(0, FlxG.width);
			p.y = Random.int(0, FlxG.height);
			NoteList.push(p);
		}
		
		for (v in NoteList) {
			add(v);
		}
	}
}
