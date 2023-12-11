#include <stdio.h>

const char* hsData = "{\"data\":[";
const char* hansoloData = "\"HANSOLO\"";

void generatehs(FILE* file, int repetitions) {
    fprintf(file, "%s", hsData);

    for (int i = 0; i < repetitions; i++) {
        fprintf(file, "%s", hansoloData);
        if (i < repetitions - 1) {
            fprintf(file, ",");
        }
    }

    fprintf(file, "]}");
}

int main() {
    int repetitions = 1000000;
    FILE* file = fopen("HANSOLO.hs", "w");

    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    generatehs(file, repetitions);

    fclose(file);
    printf("HANSOLO.hs created successfully with %d repetitions.\n", repetitions);

    return 0;
}