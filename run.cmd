@echo off
rem delete these conflicting files
rem del desktop.ini /s /a >nul 2>&1
rem del thumb.db /s /a >nul 2>&1
rem path=d:\reciter\reciter_lib;%path%
rem copy /y d:\reciter\update\reciter.jar d:\reciter\reciter.jar
rem sleep 5
java -jar quranreciter.jar
rem pause
