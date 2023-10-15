package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Create("HANSOLO.hs")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer file.Close()

	for i := 0; i < 1000000; i++ {
		file.WriteString("HANSOLO\n")
	}
	fmt.Println("HANSOLO.hs file created successfully.")
}
