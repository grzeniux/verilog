@echo off
echo Sprawdzam, czy w katalogu _src/ sa pliki .v lub .sv...

set SRC_DIR=_src
set FOUND=0

for %%F in (%SRC_DIR%\*.v %SRC_DIR%\*.sv) do (
    set FOUND=1
    goto :run
)

echo Brak plikow .v/.sv w folderze %SRC_DIR%
echo Projekt NIE zostanie utworzony.
pause
exit /b

:run
echo Pliki znalezione. Tworze projekt Vivado...
vivado -mode batch -source _create_project.tcl
pause
