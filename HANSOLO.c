#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("HANSOLO.hs", "w");
    if (fp == NULL) {
        printf("Error opening file.");
        return 1;
    }
    for (int i = 0; i < 1000000; i++) {
        fprintf(fp, "HANSOLO\n");
    }
    fclose(fp);
    return 0;
}
