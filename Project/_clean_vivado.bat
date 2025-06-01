@echo off
echo Usuwam pliki wygenerowane przez Vivado...

REM Sprawdz, czy istnieje plik z lista
if not exist _generated_files.txt (
    echo Brak pliku _generated_files.txt – nie wiem co usunac.
    pause
    exit /b
)

REM Przejdz przez kazdy wpis w pliku
for /f "usebackq delims=" %%I in ("_generated_files.txt") do (
    if exist "%%I\" (
        echo Usuwam katalog: %%I
        rmdir /s /q "%%I"
    ) else if exist "%%I" (
        echo Usuwam plik: %%I
        del /f /q "%%I"
    ) else (
        echo Nie znaleziono: %%I
    )
)

echo Czyszczenie zakonczone.
