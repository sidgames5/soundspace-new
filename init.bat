@echo off
@echo You must have haxe installed to run this
pause
haxelib install openfl
haxelib install lime
haxelib install flixel
haxelib install flixel-tools
haxelib run lime setup flixel
haxelib run lime setup
haxelib run flixel-tools setup
pause
