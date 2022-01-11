package main

import (
    "fmt"
    "math"
)

func main() {
    var a, b, c int

    fmt.Scanf("%d %d %d", &a, &b, &c)

    maiorab := (float64(a)+float64(b) + math.Abs(float64(a)-float64(b)))/2
    maiorabc := (float64(maiorab)+float64(c) + math.Abs(float64(maiorab) - float64(c)))/2
    output := fmt.Sprintf("%.f", maiorabc)

    fmt.Println(output, "eh o maior")

}
