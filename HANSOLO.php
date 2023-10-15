$file = fopen("HANSOLO.hs", "w"); // open file for writing

for ($i = 0; $i < 1000000; $i++) {
    fwrite($file, "HANSOLO\n"); // write "HANSOLO" to file followed by a newline character
}

fclose($file); // close file
