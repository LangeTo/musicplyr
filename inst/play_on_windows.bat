@REM Adapted from: 
@REM https://www.triggercmd.com/forum/topic/1393/play-spotify-song-with-cmd-in-a-particular-minute-code-and-help-to-fix

@echo off
taskkill /im spotify.exe /f >nul 2>&1
start "" %1