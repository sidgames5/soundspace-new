@echo off

if %1 == test (
    lime test neko -debug
)

if %1 == release (
    lime build windows
    echo %2>Release\windows\bin\version.txt
    lime build mac
    echo %2>Release\neko\bin\SoundSpace.app\version.txt
    lime build linux
    echo %2>Release\neko\bin\version.txt
)