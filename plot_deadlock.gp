set grid
set key font "13"
set xtics font "Verdana,11" 
set ytics font "Verdana,11" 
set yrange [1:2000]
set ylabel 'Time to create PFC deadlock (ms)' font "Verdana,13"
set xlabel 'Input rate r (Gbps)' font "Verdana,13"
set log y
set style line 1 lc rgb 'blue' lt 1 lw 3 pt 1 ps 1.5
set style line 2 lc rgb 'red' lt 1 lw 3 pt 2 ps 1.5
set style line 3 lc rgb 'cyan' lt 1 lw 3 pt 3 ps 1.5
set style line 4 lc rgb 'black' lt 1 lw 3 pt 4 ps 1.5


plot 'alpha=1_128.csv' with linespoints ls 1 title '{/Symbol a}=1/128',\
     'alpha=1_64.csv' with linespoints ls 2 title '{/Symbol a}=1/64',\
     'alpha=1_4.csv' with linespoints ls 3 title '{/Symbol a}=1/8',\
     'alpha=1_2.csv' with linespoints ls 4 title '{/Symbol a}=1/4',\