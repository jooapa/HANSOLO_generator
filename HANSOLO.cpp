#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ofstream outfile("HANSOLO.hs");
    if (outfile.is_open()) {
        for (int i = 0; i < 1000000; i++) {
            outfile << "HANSOLO\n";
        }
        outfile.close();
        std::cout << "Successfully wrote to file HANSOLO.hs\n";
    } else {
        std::cout << "Unable to open file HANSOLO.hs\n";
    }
    return 0;
}
