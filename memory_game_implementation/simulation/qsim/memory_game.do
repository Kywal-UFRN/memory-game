onerror {exit -code 1}
vlib work
vcom -work work memory_game.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.memory_game_vhd_vec_tst
vcd file -direction memory_game.msim.vcd
vcd add -internal memory_game_vhd_vec_tst/*
vcd add -internal memory_game_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f



