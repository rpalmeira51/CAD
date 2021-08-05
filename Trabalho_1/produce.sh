#!/bin/bash
for (( i=2500; i<= 30000; i = i+2500)) do
	./ccad "$i" "$i" >> c_results 
done

for (( i=2500; i<= 30000; i = i+2500)) do
	./fcad "$i" "$i" >> f_results 
done
