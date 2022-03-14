# SoundSpace

This is the repository for the SoundSpace desktop app.

## Compiling the game

First you need to install Haxe and HaxeFlixel.

Linux users:
```
sudo apt install haxe
haxelib setup
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-ui
haxelib install flixel-addons
haxelib run lime setup flixel
haxelib run lime setup
```
Windows users:
1. [Install Haxe](https://haxe.org/download/)
2. [Install HaxeFlixel](https://haxeflixel.com/documentation/install-haxeflixel/) after downloading Haxe
```
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-ui
haxelib install flixel-addons
haxelib run lime setup flixel
haxelib run lime setup
```

Now to compile the game, go into the folder where Project.xml is and type `lime test cpp -release` in the command prompt.
Run the command on windows to generate a windows executable and run on linux to create a linux executable. If you want to make changes to the code you should probably use `lime test cpp -debug`.

## Credits / shoutouts

### Creator

- [SidGames5](https://github.com/BasicCorruption)

### Programming

- [SidGames5](https://github.com/BasicCorruption)
- [Feralkitty9](https://github.com/Feralkitty9) - Cursor

### Art

- [SidGames5](https://github.com/BasicCorruption) - Sprites
- [Feralkitty9](https://github.com/Feralkitty9) - Cursor sprite
- [LeWolfYT](https://github.com/LeWolfYT) - SoundSpace app and Discord server logo, key and key clicked sprite

### Music & SFX

- [SidGames5](https://github.com/BasicCorruption) - OST1 Song Pack
- [LeWolfYT](https://github.com/LeWolfYT) - OST1 Song Pack
- [Feralkitty9](https://github.com/feralkitty9) - Sound effects
- [GoodnessMC](about:blank) - Menu theme

<iframe src="https://keystone-games.github.io/SoundSpace/CONTRIBUTING.md" title="Contributing guidelines"></iframe>
