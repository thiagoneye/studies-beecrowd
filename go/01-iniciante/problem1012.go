package main

import (
    "fmt"
    "math"
)

func main() {
    const pi float64 = 3.14159
    var a, b, c float64

    fmt.Scanf("%f %f %f", &a, &b, &c)

    triangle := a*c/2.0
    circle := pi*math.Pow(c,2)
    trapeze := (a+b)*c/2
    square := math.Pow(b,2)
    rectangle := a*b

    out1 := fmt.Sprintf("%.3f", triangle)
    out2 := fmt.Sprintf("%.3f", circle)
    out3 := fmt.Sprintf("%.3f", trapeze)
    out4 := fmt.Sprintf("%.3f", square)
    out5 := fmt.Sprintf("%.3f", rectangle)

    fmt.Println("TRIANGULO:", out1)
    fmt.Println("CIRCULO:", out2)
    fmt.Println("TRAPEZIO:", out3)
    fmt.Println("QUADRADO:", out4)
    fmt.Println("RETANGULO:", out5)

}
