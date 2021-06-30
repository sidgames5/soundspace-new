@echo off

if %1 == test (
    lime test neko -debug
)

if %1 == create (
    if %2 == release (
        lime build windows
        echo %3>Release\windows\bin\version.txt
        lime build mac
        echo %3>Release\neko\bin\SoundSpace.app\version.txt
        lime build linux
        echo %3>Release\neko\bin\version.txt
    )
    if %2 == browsergame (
        lime build html5
        echo %3>Release\html5\bin\version.txt
    )
)