
## ▶️ Uruchamianie projektu w Vivado

### 1. Upewnij się, że masz **Vivado 2018.3** i dodaną ścieżke w `PATH`.
```bash
C:\Xilinx\Vivado\2018.3\bin
```

### 2. Do katalogu `_src` wrzucamy TYLKO pliki źródłowe `.v` oraz `.sv`



## 📢 Jak używać

### 1. Utworzenie projektu
1. Do katalogu `_src` wrzuć pliki źródłowe
2. Uruchom: `_run_create_project.bat`
3. Przejdź do nowo utworzonego katalogu i otwórz plik `.xpr`

### 2. Czyszczenie projektu
Aby usunąć wygenerowane pliki, uruchom: `clean_vivado.bat`
Skrypt usunie wszystko zgodnie z listą w `_generated_files.txt`.



## ℹ️ Uwagi

- Projekt nie wymaga plików `.xdc` – wszystko działa w trybie symulacyjnym.
- Obsługa top-modułu testbench odbywa się automatycznie (jeśli plik zawiera `_TB` w nazwie).
- Skrypt jest kompatybilny z Vivado 2018.3+
- Projekt rozwijany z użyciem **Visual Studio Code (VS Code)** z dodatkiem **Git Graph** – do wygodnego zarządzania repozytorium i wersjami.


## 📄 Opis plików pomocniczych

| Plik                     | Opis                                                                 |
|--------------------------|----------------------------------------------------------------------|
| `_create_project.tcl`     | Skrypt TCL dla Vivado – tworzy projekt, dodaje pliki z `_src/`, ustawia top do symulacji |
| `_generated_files.txt`    | Lista plików/folderów wygenerowanych przez Vivado, tworzona automatycznie. |
| `_run_create_project.bat` | Skrypt `.bat`, który uruchamia Vivado w trybie batch i wykonuje skrypt `.tcl`. |
| `_clean_vivado.bat`       | Skrypt czyszczący – usuwa wszystko, co zostało zapisane w `_generated_files.txt`. |

