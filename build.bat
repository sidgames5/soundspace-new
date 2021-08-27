@echo off
echo Building for windows
lime build windows -release
echo %3>Release\windows\bin\version.txt
echo Building for macOS
lime build mac -release
echo %3>Release\neko\bin\SoundSpace.app\version.txt
echo Building for linux
lime build linux -release
echo %3>Release\neko\bin\version.txt
echo Building for html5
lime build html5 -release
echo %3>Release\html5\bin\version.txt