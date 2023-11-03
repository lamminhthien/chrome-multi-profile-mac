@echo off
REM Set the maximum number of Chrome profiles
set MAX_PROFILES=10

REM Set the path to the Chrome executable (change if needed)
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"

REM Set the initial URL for the profiles
set INITIAL_URL=https://www.quizne.com/room/h1ebn/multiple-play

REM Create Chrome profiles based on the MAX_PROFILES variable
for /l %%i in (1, 1, %MAX_PROFILES%) do (
    set profile_name=Profile%%i
    start "" %CHROME_PATH% --user-data-dir="C:\Temp\%profile_name%" --no-first-run --no-default-browser-check %INITIAL_URL%
    timeout /t 2 /nobreak  >nul
)
