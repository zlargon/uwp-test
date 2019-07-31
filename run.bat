@echo off
setlocal

rmdir /s /q build
mkdir build
cd build

cmake .. -Ax64                          ^
    -DCMAKE_SYSTEM_NAME="WindowsStore"  ^
    -DCMAKE_SYSTEM_VERSION="10.0"

cmake --build . --config Release
REM cmake --build .

cd Release

REM
call vc x64
call dumpbin /dependents uwp-test.exe

REM
call uwp-test.exe
