// Add all the natural numbers below one thousand that are multiples of 3 or 5.

package main

import "fmt"

func main() {
	result := 0
    for i := 1; i < 1000; i++ {
		if i % 3 == 0 || i % 5 == 0 {
			result += i
		}
	}
	fmt.Println(result)
}
