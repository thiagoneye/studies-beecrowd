package main

import (
    "fmt"
    "math"
)

func main() {
    const pi float64 = 3.14159
    var r float64

    fmt.Scanf("%f", &r)

    volume := (4.0/3.0)*pi*math.Pow(r,3)
    output := fmt.Sprintf("%.3f", volume)

    fmt.Println("VOLUME =", output)

}
