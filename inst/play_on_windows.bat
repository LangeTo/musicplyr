@echo off
taskkill /im spotify.exe /f >nul 2>&1
start "" spotify:track:%1