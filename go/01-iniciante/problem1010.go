package main

import "fmt"

func main() {
    var a, b, d, e  int
    var c, f float64

    fmt.Scanf("%d %d %f \n%d %d %f", &a, &b, &c, &d, &e, &f)

    total := float64(b)*c + float64(e)*f
    output := fmt.Sprintf("%.2f", total)

    fmt.Println("VALOR A PAGAR: R$", output)
}
