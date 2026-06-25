@echo off
setlocal EnableDelayedExpansion

:: ==========================================================
:: Script Name : rename_month_to_short.bat
:: Purpose     : Rename PDF files by converting full month
::               names to their 3-letter abbreviations.
::
:: Example:
::   MCS-214 December 2024.pdf
::        ↓
::   MCS-214 Dec 2024.pdf
:: ==========================================================

:: Loop through all PDF files in the current folder
for %%f in (*.pdf) do (

    :: Get the filename without extension
    set "name=%%~nf"

    :: Replace full month names with short forms
    ::set "name=!name:January=Jan!"
    ::set "name=!name:February=Feb!"
    ::set "name=!name:March=Mar!"
    ::set "name=!name:April=Apr!"
    ::set "name=!name:May=May!"
    ::set "name=!name:June=Jun!"
    ::set "name=!name:July=Jul!"
    ::set "name=!name:August=Aug!"
    ::set "name=!name:September=Sep!"
    ::set "name=!name:October=Oct!"
    ::set "name=!name:November=Nov!"
    set "name=!name:December=Dec!"

    :: Rename the file while keeping the .pdf extension
    ren "%%f" "!name!%%~xf"
)

echo.
echo ==========================================
echo All PDF files renamed successfully.
echo ==========================================
pause