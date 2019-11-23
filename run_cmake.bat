@echo off
set path=%~dp0;D:\nginxstack\cmake\bin;%path%
md build  1>nul 2>nul
cd build
md Debug 1>nul 2>nul
md Release 1>nul 2>nul
cd /d "%~dp0"

cd build\Debug
echo 生成 Debug 版
call cmake_cmd.bat ../.. -G "Visual Studio 11" -DCMAKE_BUILD_TYPE=Debug -DDEBUG_CONSOLE=ON -T v110_xp
cd /d "%~dp0"

echo.

cd build\Release
echo 生成 Release 版
call cmake_cmd.bat ../.. -G "Visual Studio 11" -DCMAKE_BUILD_TYPE=Release -T v110_xp
cd /d "%~dp0"

pause