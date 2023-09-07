#include <stdio.h>

int main()
{
    FILE *file = fopen("hansolo.json", "w");

    fprintf(file, "{\n  \"data\": [ \n");
    for (unsigned int i = 0; i < 10; ++i)
    {
        fprintf(file, "HANSOLO, \n\"%c");
    }
    fprintf(file, "HANSOLO\n]\n}");

    fclose(file);
    return 0;
}