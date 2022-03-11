package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxState;

class StateLoading extends FlxState {
  public static var bar:FlxSprite;
  
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
    
    if (bar.x < 3840) {
      bar.x += 1;
    } else { bar.x -= 1; }
  }
}
