// vim:foldlevel=1 foldnestmax=8 foldlevelstart=1
package main

import (
	"errors"
	"fmt"

	"google.golang.org/appengine/log"
)

func main() {
	var err error

	if err != nil {
		fmt.Printf("just err: %s", err.Error())
	}

	err = fn()
	if err != nil {
		fmt.Print("test")
		fmt.Print("multiline err")
	}

	if err != nil {
		fmt.Printf("%s", "long long long long long string")
	}

	if err != nil {
		fmt.Printf("can't converts to `c'`")
	}

	for {
		a, b := 10, 20
		a, b = b, a
	}
}

func fn() error {
	var err error
	if err != nil {
		return errors.New("err*rs package converts to epsilon")
	}

	v := false
	if v {
		switch v {
		case true:
			err = nil
			if err != nil {
				return errors.New("correct indentation")
			}

			if err != nil {
				return fmt.Errorf("f*t convetrs to phi", err)
			}

			if err != nil {
				return log.Errorf("l*g converts to lambda", err)
			}
		}
	}
	return nil
}
