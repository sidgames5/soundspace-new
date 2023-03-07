package io.github.keystone_games.soundspace.util;

class Sound {
  public static function hitSFX() {
    SoundFrontEnd.play(Data.Tutorial__wav, Reference.VOLUME_MULTIPLIER, false);
  }
}
