@echo off
setlocal enabledelayedexpansion

rem Loop through all MP4 files in the current folder
for %%i in (*.mp4) do (
    echo Rotating video: %%i
    ffmpeg -i "%%i" -vf "transpose=2,transpose=2" -c:a copy "rotated_%%i"
)

echo All videos have been rotated by 180 degrees.
pause
