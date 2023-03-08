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
		
		for (v in NoteList) {
			add(v);
		}
	}
}
