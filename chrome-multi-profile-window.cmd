@echo off
REM Set the maximum number of Chrome profiles
set FROM_PROFILES=1
set TO_PROFILES=9

REM Set the path to the Chrome executable (change if needed)
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"

REM Set the initial URL for the profiles
set INITIAL_URL=https://www.quizne.com/room/h1ebn/multiple-play

REM Create Chrome profiles based on the MAX_PROFILES variable
for /L %%i in (%FROM_PROFILES%, 1, %TO_PROFILES%) do (
    set profile_name=Profile%%i
    start "" %CHROME_PATH% --user-data-dir="C:\Temp\%profile_name%" --no-first-run --no-default-browser-check %INITIAL_URL%
    timeout /t 2 >nul  REM Add a delay to avoid opening all profiles at once
)
