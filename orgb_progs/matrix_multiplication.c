#include <stdio.h>
#include <stdlib.h>

main ()
{

//DefiniC'C#o de variaveis
    int i, j, linhaA = 10, colunaA = 10, linhaB = 10, colunaB = 10;



    float matrizA[linhaA][colunaA], matrizB[linhaB][colunaB],
    matrizC[linhaA][colunaB], aux = 0;

    for(i = 0; i < linhaA; i++) {
        for (j = 0; j < colunaA; j++) {
	        matrizA[i][j] = rand() % 50;
	    }
    }

    for(i = 0; i < linhaB; i++) {
        for (j = 0; j < colunaB; j++) {
	        matrizB[i][j] = rand() % 50;
	    }
    }


  // Imprime as matrizes definidas
    printf("---------------------------- 1 - Matriz Gerada A ---------------------------------\n\n");

    for(i = 0; i < linhaA; i++) {
        for(j = 0; j < colunaA; j++) {
            printf("%6.f", matrizA[i][j]);
	    }
        printf("\n\n");
    }
    printf(sizeof(matrizA[0][0]));
    printf("\n\n");

    printf("---------------------------- 2 - Matriz Gerada B ---------------------------------\n\n");
    for(i = 0; i < linhaB; i++) {
        for(j = 0; j < colunaB; j++) {
	        printf ("%6.f", matrizB[i][j]);
	    }
        printf ("\n\n");
    }

//Processamento
    for(i = 0; i < linhaA; i++) {
        for(j = 0; j < colunaB; j++) {
	        matrizC[i][j] = 0;
	        for(int x = 0; x < linhaB; x++) {
	            matrizC[i][j] += matrizA[i][x] * matrizB[x][j];
	        }
	    }
    }

//Saida
    printf("---------------------------- 3 - A x B ---------------------------------\n\n");
    for(i = 0; i < linhaA; i++) {
        for(j = 0; j < colunaB; j++) {
	        printf ("%6.f", matrizC[i][j]);
	    }
        printf ("\n\n");
    }
}				
