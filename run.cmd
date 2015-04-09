@echo off
rem extract java runtime engine files if needed
IF EXIST %~dp0\JRE8\NUL GOTO SKIP_EXTRACT_JRE
echo Extracting JAVA JRE ...
%~dp0\JRE8.EXE
:SKIP_EXTRACT_JRE

rem extract library files 
IF EXIST %~dp0\lib\NUL GOTO SKIP_EXTRACT_LIB
echo Extracting application Libraries ...
%~dp0\LIB.EXE
:SKIP_EXTRACT_LIB
set path=%~dp0;%~dp0\lib;%~dp0\jre8\bin;%~dp0\jre8\lib;%~dp0\jre8;%path%
java -jar quranreciter.jar
pause
