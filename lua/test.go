package main

import (
	"errors"
	"fmt"
)

func main() {
	var err error

	if err != nil {
		fmt.Print(err)
	}

	err := lol()
	if err != nil {
		fmt.Print("1")
		fmt.Print(err)
	}

	if err != nil {
		fmt.Printf("%s", "long long long long long string")
	}

	for {
		a, b = 10, 20
		a, b = b, a
	}
}

func lol() error {
	var err error
	if err != nil {
		return errors.New("lol")
	}
	return nil
}
