@echo off
set /p choice=Select a utility: ipconfig, tasklist/taskkill, chkdsk, format, defrag, find, or attrib.
if %choice%==ipconfig ipconfig /all
if %choice%==tasklist tasklist > output.txt
if %choice%==taskkill taskkill /pid > output.txt
if %choice%==chkdsk chkdsk C: > output.txt
if %choice%==format format C: > output.txt
if %choice%==defrag defrag C: > output.txt
if %choice%==find find "your_search_string" > output.txt
if %choice%==attrib attrib *.* > output.txt
pause