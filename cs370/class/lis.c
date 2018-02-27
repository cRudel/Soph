#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int longestIncreasingSubsequence(int arr_size, int* arr) 
{
    int longest = 0;
    int arrNum[arr_size];
    for(int i=0; i<arr_size; i++)
	arrNum[i] = 0;
    for(int i=0; i<arr_size; i++)
    {
        int smallest = arr[i];
        for(int j=i; j<arr_size; j++)
        {
            if(arr[j]>smallest)
            {
                arrNum[i] +=1;
                smallest = arr[j];
            }
        }
    }
    for(int i=0; i<arr_size; i++)
    {
        if(arrNum[i] > longest)
            longest = arrNum[i];
    }
    return longest;
}

int main() {
    int n; 
    scanf("%i", &n);
    int *arr = malloc(sizeof(int) * n);
    for (int arr_i = 0; arr_i < n; arr_i++) {
       scanf("%i",&arr[arr_i]);
    }
    int result = longestIncreasingSubsequence(n, arr);
    printf("%d\n", result);
    return 0;
}
