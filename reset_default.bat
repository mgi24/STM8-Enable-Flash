@echo off
echo Resetting STM8S103F3 Option Bytes to factory defaults...
"%USERPROFILE%\.platformio\packages\tool-stm8flash\stm8flash.exe" -c stlinkv2 -p stm8s103f3 -s opt -w "%~dp0factory_defaults.bin"
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to flash option bytes!
) else (
    echo.
    echo [SUCCESS] Option bytes reset successfully!
)
pause
