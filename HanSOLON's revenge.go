package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Create("hansolo.json")
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	defer file.Close()

	fmt.Fprintf(file, "{\n  \"data\": [ \n")
	for i := 0; i < 100000000; i++ {
		fmt.Fprintf(file, "HANSOLO, \n\"%c", 'A'+i)
	}
	fmt.Fprintf(file, "HANSOLO\n]\n}")
}
