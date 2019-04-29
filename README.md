# Wyniki

## KIND4
![kind4](https://github.com/matiusz/fortran-zad1/blob/master/res/wykres4.jpg)
---
## KIND8
![kind8](https://github.com/matiusz/fortran-zad1/blob/master/res/wykres8.jpg)
---
### KIND16
![kind16](https://github.com/matiusz/fortran-zad1/blob/master/res/wykres16.jpg)
---

## Wnioski

Czasy działania programu są zgodne z oczekiwaniami, dając coraz krótsze wyniki dla kolejnych poprawionych wersji algorymtu. Dla kind 4 i 8 mnożenie wbudowane w Fortrana jest znacznie wydajniejsze, jednak w przypadku kind 16 różnice te są minimalne, prawdopodobnie dlatego iż większość czasu działania zajmują same operacje na liczbach.
Wyniki zaczynają się od N=100 ponieważ czas działania funkcji zmierzony przez cpu_time był równy 0, a zatem wyniki te nie zostały uwzględnione na wykresie gnuplot.
