@echo off
set /p time=Enter time in 24-hour format (HH:MM): 
set /a hour=%time:~0,2%
set /a minute=%time:~3,2%
if %hour% GEQ 12 (
    if %hour% GTR 12 (
        set time=%hour%:%minute% PM
    ) else (
        set time=12:%minute% PM
    )
) else (
    if %hour% EQU 0 (
        set time=12:%minute% AM
    ) else (
        set time=%hour%:%minute% AM
    )
)
echo %time%