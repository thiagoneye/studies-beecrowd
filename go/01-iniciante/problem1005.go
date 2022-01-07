package main

import "fmt"

func main() {
    var A, B float64

    fmt.Scanf("%f", &A)
    fmt.Scanf("%f", &B)

    MEDIA := (A*3.5 + B*7.5)/11
    output := fmt.Sprintf("%.5f", MEDIA)

    fmt.Println("MEDIA =", output)
}
