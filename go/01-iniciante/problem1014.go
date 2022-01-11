package main

import (
    "fmt"
)

func main() {
    var a int
    var b float64

    fmt.Scanf("%d \n%f", &a, &b)

    c := float64(a)/b
    output := fmt.Sprintf("%.3f", c)

    fmt.Println(output, "km/l")
}
