//Solution function
#include <stdlib.h>
int Task(const int A[], int size, int B[], int X) {
    int counter = 0;
    for (int i = 0; i < size; ++i) {
        if (abs(A[i] % X) == 0) {
            B[counter++] = A[i];
        }
    }
    return counter;
}
