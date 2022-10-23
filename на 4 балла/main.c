#include <stdio.h>
#include <stdlib.h>
#define max_size 10
//Solution function
extern int Task(const int A[], int size, int B[], int X);

int main(int argc, char *argv[]) {
    //A length
    int length;
    //number to what elements of an original array should be multiples
    int X;
    if (argc == 3) {
        X = atoi(argv[1]);
        length = atoi(argv[2]);
        FILE *input = fopen("input.txt", "r");

        int A[length];
        int B[length];

        for (int i = 0; i < length; ++i) {
            fscanf(input, "%d", &A[i]);
        }
        fclose(input);

        int size_b = Task(A, length, B,X);

        FILE *output = fopen("output.txt", "w");
        for (int i = 0; i < size_b; ++i) {
            fprintf(output, "%d ", B[i]);
        }
        fclose(output);
        return 0;
    }
    //Array A
    int A[max_size];
    //Array B
    int B[max_size];
    printf(" Enter X:");
    scanf("%d", &X);
    printf("Input length (0 < length <= %d): ", max_size);
    scanf("%d", &length);
    if (length < 1 || length > max_size) {
        printf("Incorrect length = %d\n", length);
        return 1;
    }
    for (int i = 0; i < length; ++i) {
        printf("A[%d] =  ", i);
        scanf("%d", &A[i]);
    }
    int b_size = Task(A, length,  B, X);
    for (int i = 0; i < b_size; ++i) {
        printf("%d ", B[i]);
    }
    return 0;
}
