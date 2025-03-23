# create_project.tcl
# Vivado script – automatyczne tworzenie projektu z plikow w ./_src

set proj_name "cordic"
set proj_dir "./cordic"
set part "xc7z020clg484-1"
set src_dir "./_src"

create_project $proj_name $proj_dir -part $part

set source_files [glob -nocomplain -directory $src_dir *.v *.sv]

if {[llength $source_files] == 0} {
    puts "Brak plikow zrodlowych w katalogu $src_dir"
    exit 1
}

puts "Dodano pliki zrodlowe:"
foreach file $source_files {
    puts " - $file"
    add_files $file

    if {[string match "*.sv" $file]} {
        set_property FILE_TYPE SystemVerilog [get_files $file]
    } else {
        set_property FILE_TYPE Verilog [get_files $file]
    }
}

set sim_top ""
foreach file $source_files {
    if {[string match "*_TB*" $file] || [string match "*tb*" $file]} {
        set fname [file rootname [file tail $file]]
        set sim_top $fname
        break
    }
}

if {$sim_top ne ""} {
    puts "Top modul symulacyjny: $sim_top"
    set_property top $sim_top [get_filesets sim_1]
} else {
    puts "Nie ustawiono top modulu do symulacji (brak *_TB* w nazwie)"
}

update_compile_order -fileset sources_1

puts "Projekt Vivado '$proj_name' zostal poprawnie utworzony."


# Zapisz listę wygenerowanych plików do cleanera
set f [open "_generated_files.txt" "w"]
puts $f ".Xil"
puts $f "$proj_dir"
puts $f "vivado.jou"
puts $f "vivado.log"
close $f

