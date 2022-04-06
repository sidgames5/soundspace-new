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
haxelib install flixel-addons
haxelib run lime setup flixel
haxelib run lime setup
haxelib run flixel-tools setup
```
Next you need to run the compilation command
Windows:
Type `lime build cs -Drelease` in the command prompt. You might need to install the .net SDK in order to compile it.
Linux:
Type `lime build cpp -Drelease` in the terminal. You might need to install g++ in order to compile it.
Cross-platform:
Type `lime build hl -Drelease` in your preferred command executor. To run the compiled game, you need to install [hashlink](https://hashlink.haxe.org/). In your preferred command executor, type `hl ` and then drag the hashlink bytecode executable into the terminal.

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

### Other

- [My awesome supporters on youtube](https://youtube.com/sidgames5) - Reporting bugs and testing
