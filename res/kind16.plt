unset grid
set terminal pdf
set output 'wykres16.pdf'
set key box top left
set multi
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14"
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14"
set ylabel "multiplication time" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
set size 1,1
set datafile separator ","
plot [10: 1280] "res_kind16.csv" using 1:2 title 'Naive'
replot [10: 1280] "res_kind16.csv" using 1:3 title 'Better'
replot [10: 1280] "res_kind16.csv" using 1:4 title 'Dot'
replot [10: 1280] "res_kind16.csv" using 1:5 title 'Mat'
unset multi