# ex8_9_plots.gnu
# BJT amplifier gain & phase plots

set datafile commentschars "*#"
set datafile separator whitespace

set terminal pngcairo size 900,600 enhanced font "Arial,10"

# ----------------------------
# Load data
# Columns:
# 1 = frequency (Hz)
# 2 = gain (dB)
# 3 = phase (degrees)
# ----------------------------

datafile = "ex8_9_ac.dat"

# ============================
# GAIN MAGNITUDE PLOT
# ============================

# Find max gain
stats datafile using 2 name "GAIN" nooutput
Gmax = GAIN_max

# Find -3 dB cutoff
stats datafile using (abs($2 - (Gmax-3))) name "CUTOFF" nooutput
fc = CUTOFF_pos

set logscale x
set grid
set xlabel "Frequency (Hz)"
set ylabel "Gain (dB)"
set title "BJT Amplifier Gain Magnitude"

set output "ex8_9_gain.png"

plot datafile using 1:2 with lines lw 2 title "Gain", \
     fc, Gmax-3 with points pt 7 ps 1.5 title "-3 dB point"

unset output

# ============================
# PHASE PLOT
# ============================

# Find -45 degree point
stats datafile using (abs($3 + 45)) name "PHASE45" nooutput
fp = PHASE45_pos

set xlabel "Frequency (Hz)"
set ylabel "Phase (degrees)"
set title "BJT Amplifier Phase Response"

set output "ex8_9_phase.png"

plot datafile using 1:3 with lines lw 2 title "Phase", \
     fp, -45 with points pt 7 ps 1.5 title "-45° point"

unset output

