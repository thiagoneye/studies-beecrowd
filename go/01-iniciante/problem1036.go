package main

import (
    "fmt"
    "math"
)

func main() {
    var a, b, c float64

    fmt.Scanf("%f %f %f", &a, &b, &c)

    delta := math.Pow(b,2) - 4.0*a*c

    if ((delta >= 0.0) && (a != 0.0)) {
        R1 := (-b + math.Sqrt(delta))/(2.0*a)
        R2 := (-b - math.Sqrt(delta))/(2.0*a)

        r1 := fmt.Sprintf("%.5f", R1)
        r2 := fmt.Sprintf("%.5f", R2)

        fmt.Println("R1 =", r1)
        fmt.Println("R2 =", r2)
    } else {
        fmt.Println("Impossivel calcular")
    }
}
