// vim:foldlevel=1 foldnestmax=8 foldlevelstart=1
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

	err = lol()
	if err != nil {
		fmt.Print("1")
		fmt.Print(err)
	}

	if err != nil {
		fmt.Printf("%s", "long long long long long string")
	}

	for {
		a, b := 10, 20
		a, b = b, a
	}
}

func lol() error {
	var err error
	if err != nil {
		return errors.New("lol")
	}

	v := false
	if v {
		switch v {
		case true:
			err = nil
			if err != nil {
				return errors.New("test tabs")
			}

			if err != nil {
				return fmt.Errorf("abc", err)
			}
		}
	}
	return nil
}
