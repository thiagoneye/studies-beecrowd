package main

import "fmt"
import "math"

func main() {
    const pi float64 = 3.14159
    var raio, area float64

    fmt.Scanf("%f", &raio)

    area = pi*(math.Pow(raio,2))
    output := fmt.Sprintf("%.4f", area)

    fmt.Println("A=" + output)
}
