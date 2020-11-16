/* A Naive recursive implementation of MCP(Minimum Cost Path) problem */
#include<stdio.h>
#include<limits.h>
#define R 12
#define C 12

int min(int x, int y, int z);

/* Returns cost of minimum cost path from (0,0) to (m, n) in mat[R][C]*/
int minCost(int cost[R][C], int m, int n)
{
if (n < 0 || m < 0)
	return INT_MAX;
else if (m == 0 && n == 0)
	return cost[m][n];
else
	return cost[m][n] + min( minCost(cost, m-1, n-1),
							minCost(cost, m-1, n),
							minCost(cost, m, n-1) );
}

/* A utility function that returns minimum of 3 integers */
int min(int x, int y, int z)
{
if (x < y)
	return (x < z)? x : z;
else
	return (y < z)? y : z;
}

/* Driver program to test above functions */
int main()
{
    int cost[R][C];
    for(int i = 0; i < R; i++) {
        for (int j = 0; j < C; j++) {
	        cost[i][j] = rand() % 30;
	    }
    }

    // for (int row=0; row<R; row++) {
    //     for(int columns=0; columns<C; columns++) {
    //      printf("%d     ", cost[row][columns]);
    //     }
    // printf("\n");
    // }
// printf(" %d ", minCost(cost, R-1, C-1));
return 0;
}
