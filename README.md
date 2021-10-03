# CAD
Trabalho para disciplina de Computação de Alto Desempenho 
## Trabalho 1 
Para rodar os programas:
### C 
```
gcc main.c -o ccad
```
```
./ccad 2500 2500
```
### Fortran 
```
gfortran main.f90 -o fcad
```
```
./fcad 2500 2500
```
Também pode, depois dos programas terem sido compilados, ser utilizado o script de shell que rodará os programas feitos em c e fortran para matrizes de 2500 até 30000 elementos

## Trabalho 2
Para reproduzir os resultados do laborátorio qualquer versão pode ser compilada como: 
```
g++ -g -pg laplace<Version>.cpp
```
Assim depois de rodar o programa podemos ter o relatório de perfilagem:
```
gprof a.out gmon.out
```
Também pode ser usado o scrpit bash para gerar o relatório para alguma versão:
```
./run.sh <Version>
```

## Trabalho 3
Para produzir os resultados do trabalho 3, só é necessário utilizar o script disponível no diretório

Produz os resultados para a versão serial
```
./run.sh serial 
```
Produz os resultados para a versão com vetorização
```
./run.sh otim
```
Produz os resultados para a versão com OpenMP
```
./run.sh omp
```
Produz os resultados para a versão com OpenMP e vetorização
```
./run.sh otimomp
```
