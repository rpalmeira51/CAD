#!/bin/bash


if [ -z $1 ]
then
    echo "No program file provided\n"
else 
    g++ -g -pg "laplace$1.cpp" -o "$1"
    mkdir "results/$1"
    echo "500 100 1e-16" | ./"$1" > "results/$1/result"
    gprof "$1" gmon.out > "results/$1/profiler"
    for (( i=0; i<9; i++ )) do  
        echo "500 100 1e-16" | ./"$1" >> "results/$1/result"
    done
    rm $1 
    rm gmon.out
fi
