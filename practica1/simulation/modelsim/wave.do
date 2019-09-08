onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /practica1/clk
add wave -noupdate /practica1/reset
add wave -noupdate /practica1/A
add wave -noupdate /practica1/B
add wave -noupdate /practica1/C
add wave -noupdate /practica1/D
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2092 ps}
