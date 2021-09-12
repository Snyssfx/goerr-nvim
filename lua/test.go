package main

import "fmt"

func main() {
	var err error
	if err != nil {
		fmt.Print(err)
	}

	if err != nil {
		fmt.Print("1")
		fmt.Print(err)
	}

	for {
		a, b = b, a
	}
}
