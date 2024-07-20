@echo off
set /p num=Enter a number: 
set table=
for /l %%i in (1,1,%num%) do (
    for /l %%j in (%%i,1,%num%) do (
        set /a result=%%i*%%j
        set table=!table!%%i x %%j = %%result%%
    )
)
echo %table%