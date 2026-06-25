@echo off
setlocal EnableDelayedExpansion

echo ==========================================
echo PDF Rename Process Started
echo ==========================================
echo.

for /r %%f in (*.pdf) do (

    set "oldname=%%~nxf"
    set "name=%%~nf"

    set "name=!name:Jan 2021=2021 Jan!"
    set "name=!name:Feb 2021=2021 Feb!"
    set "name=!name:Mar 2021=2021 Mar!"
    set "name=!name:Apr 2021=2021 Apr!"
    set "name=!name:May 2021=2021 May!"
    set "name=!name:Jun 2021=2021 Jun!"
    set "name=!name:Jul 2021=2021 Jul!"
    set "name=!name:Aug 2021=2021 Aug!"
    set "name=!name:Sep 2021=2021 Sep!"
    set "name=!name:Oct 2021=2021 Oct!"
    set "name=!name:Nov 2021=2021 Nov!"
    set "name=!name:Dec 2021=2021 Dec!"

    set "name=!name:Jan 2022=2022 Jan!"
    set "name=!name:Feb 2022=2022 Feb!"
    set "name=!name:Mar 2022=2022 Mar!"
    set "name=!name:Apr 2022=2022 Apr!"
    set "name=!name:May 2022=2022 May!"
    set "name=!name:Jun 2022=2022 Jun!"
    set "name=!name:June 2022=2022 June!"
    set "name=!name:Jul 2022=2022 Jul!"
    set "name=!name:Aug 2022=2022 Aug!"
    set "name=!name:Sep 2022=2022 Sep!"
    set "name=!name:Oct 2022=2022 Oct!"
    set "name=!name:Nov 2022=2022 Nov!"
    set "name=!name:Dec 2022=2022 Dec!"

    set "name=!name:Dec 2023=2023 Dec!"
    set "name=!name:June 2023=2023 June!"
    set "name=!name:Dec 2024=2024 Dec!"
    set "name=!name:June 2024=2024 June!"
    set "name=!name:Dec 2025=2025 Dec!"
    set "name=!name:June 2025=2025 June!"
    set "name=!name:june 2025=2025 June!"

    if /i not "!oldname!"=="!name!%%~xf" (
        echo RENAME:
        echo   From: %%~nxf
        echo   To  : !name!%%~xf
        echo.
        ren "%%f" "!name!%%~xf"
    ) else (
        echo SKIP: %%~nxf
    )
)

echo.
echo ==========================================
echo Done!
echo ==========================================
pause