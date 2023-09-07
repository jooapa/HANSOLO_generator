#include <iostream>
#include <fstream>
#include <string>

struct Data
{
    std::string name;
    unsigned int amount;
};

int main()
{
    Data data = {
        "\n    HANSOLO,",
        1000000000};

    std::ofstream file("hansolo.json");

    if (!file.is_open())
    {
        std::cerr << "Failed to create file." << std::endl;
        return 1;
    }

    file << "{\n  \"data\": { ";

    for (unsigned int i = 0; i < data.amount; ++i)
    {
        file << data.name;
    }

    file << "\n}  \n}";

    file.close();

    std::cout << "File created" << std::endl;

    return 0;
}
