@echo off

if %1 == test (
    lime test neko -debug
)

if %1 == release (
    lime build windows
    lime build mac
    lime build linux
)