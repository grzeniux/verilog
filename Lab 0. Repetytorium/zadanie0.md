Zadanie służy odświeżeniu podstawowych umiejętności projektowania w języku Verilog w środowisku Vivado.

Czterokanałowy moduł PWM. 

Proszę zaprojektować 4 kanałowy sterownik PWM generujący częstotliwość 50 Hz. 

Sterownik powinien pracować w oparciu o jeden wspólny licznik dla czterech kanałów. 
Moduł sterowany jest za pomocą 4 sygnałów monostabilnych (przycisk) (wymagany debouncer) i 6 sygnałów wejściowych bistabilnych (przełącznik). 
Sterownik pozwala na wybór kanału, a dla każdego z nich wybór wypełniania z krokiem 10% (w zakresie 0-90%), zmianę pomiędzy trybami działania edge-aligned i center-aligned, oraz trybami high-true i low-true pulses. 
Przełączniki - wybór trybu pracy i wypełnienia, przyciski - wybór kanału.
Zadanie należy podzielić i zrealizować według etapów:

1. Zaproponuj i narysuj schemat blokowy zaprojektowanego systemu z uwzględnieniem rejestrów, bloków układów kombinacyjnych i najważniejszych sygnałów cyfrowych łączących te bloki.

2. Napisz kod strukturalny Verilog odpowiadający zaprojektowanej strukturze projektu.

3. Przygotuj plik Testbench, który posłuży do weryfikacji i demonstracji poprawności działania tego systemu. 

4. Po pozytywnym przeprowadzeniu symulacji proszę wgrać sterownik na dowolną platformę z układem FPGA, a jego procę zaprezentować na oscyloskopie.