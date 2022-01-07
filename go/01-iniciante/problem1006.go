package main

import "fmt"

func main() {
    var A, B, C float64

    fmt.Scanf("%f", &A)
    fmt.Scanf("%f", &B)
    fmt.Scanf("%f", &C)

    MEDIA := (A*2 + B*3 + C*5)/10
    output := fmt.Sprintf("%.1f", MEDIA)

    fmt.Println("MEDIA =", output)
}
