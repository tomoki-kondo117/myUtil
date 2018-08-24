@echo off
set vDate=%date: =0%
set vTime=%time: =0%

set vDateStr=%vDate:~0,4%%vDate:~5,2%%vDate:~8,2%
set vTimeStr=%vTime:~0,2%%vTime:~3,2%%vTime:~6,2%

echo %vDateStr%%vTimeStr%

pause
