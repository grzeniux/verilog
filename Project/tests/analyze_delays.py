import csv
import numpy as np
import matplotlib.pyplot as plt
from collections import defaultdict

CLOCK_FREQ = 100_000_000  # 100 MHz
CSV_FILE = "wyniki.csv"

def format_time_us(us):
    if us < 1:
        return f"{us * 1000:.2f} ns"
    elif us < 1000:
        return f"{us:.2f} µs"
    elif us < 1_000_000:
        return f"{us / 1000:.2f} ms"
    else:
        return f"{us / 1_000_000:.2f} s"

def format_freq_hz(hz):
    if hz < 1_000:
        return f"{hz:.2f} Hz"
    elif hz < 1_000_000:
        return f"{hz / 1_000:.2f} kHz"
    else:
        return f"{hz / 1_000_000:.2f} MHz"

def load_groups(filename):
    groups = defaultdict(lambda: {"freq": None, "values": []})

    with open(filename, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            group_id = int(row["Group"])
            freq = int(row["FREQ_Hz"])
            dec = int(row["DEC"])
            groups[group_id]["freq"] = freq
            groups[group_id]["values"].append(dec)
    return groups

def analyze_group(group_id, freq_hz, values):
    print(f"\n📂 Grupa {group_id} – Oczekiwana FREQ: {format_freq_hz(freq_hz)}")

    delays = np.array(values)
    delays_us = delays / 100.0
    freqs = CLOCK_FREQ / delays

    avg_freq = np.mean(freqs)
    avg_delay_us = np.mean(delays_us)

    print(f"  🔢 Próbki: {len(delays)}")
    print(f"  ⏱️  Średni czas: {format_time_us(avg_delay_us)}")
    print(f"  🔁 Średnia częstotliwość: {format_freq_hz(avg_freq)}")
    print(f"  📉 Odchylenie std: {format_time_us(np.std(delays_us))}")
    print(f"  📍 Min: {format_time_us(np.min(delays_us))} | Max: {format_time_us(np.max(delays_us))} | Mediana: {format_time_us(np.median(delays_us))}")
    print(f"  📏 Odchylenie od oczekiwanej: {format_freq_hz(abs(avg_freq - freq_hz))} ({(abs(avg_freq - freq_hz)/freq_hz)*100:.2f}%)")

    # Wykres
    plt.figure(figsize=(10, 4))
    plt.plot(delays_us, marker='o', label="Opóźnienie [µs]")
    plt.axhline(avg_delay_us, color='green', linestyle='--', label="Średnia")
    plt.fill_between(range(len(delays_us)),
                     avg_delay_us - np.std(delays_us),
                     avg_delay_us + np.std(delays_us),
                     color='orange', alpha=0.2, label="±1σ")
    plt.title(f"Grupa {group_id}: LVDS – {format_freq_hz(freq_hz)}")
    plt.xlabel("Numer próbki")
    plt.ylabel("Opóźnienie [µs]")
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    groups = load_groups(CSV_FILE)
    for group_id in sorted(groups):
        g = groups[group_id]
        analyze_group(group_id, g["freq"], g["values"])
