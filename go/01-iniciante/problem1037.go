package main

import "fmt"

func main() {
    var x float64

    fmt.Scanf("%f", &x)

    if ((x >= 0.0) && (x <= 25.0)) {
        fmt.Println("Intervalo [0,25]")
    } else if ((x > 25.0) && (x <= 50.0)) {
        fmt.Println("Intervalo (25,50]")
    } else if ((x > 50.0) && (x <= 75.0)) {
        fmt.Println("Intervalo (50,75]")
    } else if ((x > 75.0) && (x <= 100.0)) {
        fmt.Println("Intervalo (75,100]")
    } else {
        fmt.Println("Fora de intervalo")
    }
}
