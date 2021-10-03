#!/bin/bash

nx_values=(512 1024 2048)

if [ $1 == "omp" ]
then
    g++ -fopenmp "laplacev2.cpp" -o "comp"
    mkdir "results/$1"
    for nx in ${nx_values[@]}; do 
        echo "++++++++++++++++++++++++++++" >> "results/$1/result"
        echo "Nx value :$nx" >> "results/$1/result"
        for (( i=1; i<9; i++ )) do  
            export OMP_NUM_THREADS=$i
            echo "Using $i threads" >> "results/$1/result"
            echo "$nx 1000 1e-16" | ./"comp" >> "results/$1/result"
            echo "================================"  >> "results/$1/result"
        done
    done
elif [ $1 == "serial" ]
then 
    g++ "laplacev2.cpp" -o "comp"
    mkdir "results/$1"
    for nx in ${nx_values[@]}; do 
        echo "Nx value :$nx" >> "results/$1/result"
        echo "$nx 1000 1e-16" | ./"comp" >> "results/$1/result"
        echo "================================"  >> "results/$1/result"
    done
elif [ $1 == "otim" ]
then 
    g++ -O3 "laplacev2.cpp" -o "comp"
    mkdir "results/$1"
    for nx in ${nx_values[@]}; do 
        echo "Nx value :$nx" >> "results/$1/result"
        echo "$nx 1000 1e-16" | ./"comp" >> "results/$1/result"
        echo "================================"  >> "results/$1/result"
    done
elif [ $1 == "otimomp" ]
then
    g++ -fopenmp -O3 "laplacev2.cpp" -o "comp"
    mkdir "results/$1"
    for nx in ${nx_values[@]}; do 
        echo "++++++++++++++++++++++++++++" >> "results/$1/result"
        echo "Nx value :$nx" >> "results/$1/result"
        for (( i=1; i<9; i++ )) do  
            export OMP_NUM_THREADS=$i
            echo "Using $i threads" >> "results/$1/result"
            echo "$nx 1000 1e-16" | ./"comp" >> "results/$1/result"
            echo "================================"  >> "results/$1/result"
        done
    done
else 
    echo "Incorrect input"
fi 