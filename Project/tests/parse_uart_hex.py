import re

INPUT_FILE = "data.txt"
OUTPUT_FILE = "wyniki.csv"

def parse_and_group(filename):
    groups = []
    current_group = []
    current_freq = None
    group_id = 0

    with open(filename, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            # FREQ = ...
            match_freq = re.match(r"FREQ\s*=\s*([\d.]+)\s*(Hz|kHz|MHz)", line, re.IGNORECASE)
            if match_freq:
                if current_group:
                    groups.append((group_id, current_freq, current_group))
                group_id += 1
                num, unit = match_freq.groups()
                num = float(num)
                if unit.lower() == "hz":
                    current_freq = int(num)
                elif unit.lower() == "khz":
                    current_freq = int(num * 1_000)
                elif unit.lower() == "mhz":
                    current_freq = int(num * 1_000_000)
                current_group = []
                continue

            # HEX value
            if re.fullmatch(r"[0-9A-Fa-f]{8}", line):
                current_group.append(line)

    if current_group:
        groups.append((group_id, current_freq, current_group))

    return groups

def save_to_csv(groups, out_file):
    with open(out_file, "w") as f:
        f.write("Group,FREQ_Hz,HEX,DEC\n")
        for group_id, freq_hz, hex_list in groups:
            for h in hex_list:
                dec = int(h, 16)
                f.write(f"{group_id},{freq_hz},{h},{dec}\n")
    print(f"[✓] Zapisano CSV: {out_file}")

if __name__ == "__main__":
    groups = parse_and_group(INPUT_FILE)
    save_to_csv(groups, OUTPUT_FILE)
