reset

# Set terminal
set terminal x11 enhanced

set log y 
set grid
set xlabel "Iterations"
set ylabel "Residual"
set key top right
#set key box

# Plot 
plot './Log/residuals.txt' u 1 w l lw 2 lc rgb "blue" t "{/Symbol r}", \
     './Log/residuals.txt' u 2 w l lw 2 lc rgb "red" t "m", \
     './Log/residuals.txt' u 3 w l lw 2 lc rgb "green" t "E^{t}"       

# Pause
print "Press return to export current image into convergence.eps file...";
pause -1

# Eps printer
set term post eps enh "Times-Italic" 14 color solid
set output "./Fig/convergence.eps";
replot
