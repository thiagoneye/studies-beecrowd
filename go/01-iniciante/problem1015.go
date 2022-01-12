package main

import (
    "fmt"
    "math"
)

func main() {
    var a, b, c, d float64

    fmt.Scanf("%f %f \n%f %f", &a, &b, &c, &d)

    distance := math.Sqrt(math.Pow(c-a, 2) + math.Pow(d-b, 2))
    output := fmt.Sprintf("%.4f", distance)

    fmt.Println(output)
}
