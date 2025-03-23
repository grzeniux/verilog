
## ▶️ Uruchamianie projektu w Vivado

1. Upewnij się, że masz **Vivado 2018.3** i dodaną ścieżke w `PATH`.
    ```bash
    C:\Xilinx\Vivado\2018.3\bin
    ```

2. Do katalogu `_src` wrzucamy pliki źródłowe `.v` oraz `.sv`

# 📄 Opis plików pomocniczych

| Plik                     | Opis                                                                 |
|--------------------------|----------------------------------------------------------------------|
| `_create_project.tcl`     | Skrypt TCL dla Vivado – tworzy projekt, dodaje pliki z `_src/`, ustawia top. |
| `_generated_files.txt`    | Lista plików/folderów wygenerowanych przez Vivado, tworzona automatycznie. |
| `_run_create_project.bat` | Skrypt `.bat`, który uruchamia Vivado w trybie batch i wykonuje skrypt `.tcl`. |
| `_clean_vivado.bat`       | Skrypt czyszczący – usuwa wszystko, co zostało zapisane w `_generated_files.txt`. |


2. Przejdź do katalogu gdzie folderu repo:
   ```bash
   cd Lab_1_Algorytm_CORDIC
---

## ▶️ Jak używać

### 1. Utworzenie projektu
W katalogu głównym uruchom: `run_vivado.bat`

To automatycznie:
- utworzy projekt `cordic/`
- doda wszystkie pliki z `_src/`
- ustawi testbench jako top do symulacji
---

---

### 2. Czyszczenie projektu
Aby usunąć wygenerowane pliki, uruchom: `clean_vivado.bat`

Skrypt usunie wszystko zgodnie z listą w `_generated_files.txt`.

---

## ℹ️ Uwagi

- Projekt nie wymaga plików `.xdc` – wszystko działa w trybie symulacyjnym.
- Obsługa top-modułu testbench odbywa się automatycznie (jeśli plik zawiera `_TB` w nazwie).
- Skrypt jest kompatybilny z Vivado 2018.3+
