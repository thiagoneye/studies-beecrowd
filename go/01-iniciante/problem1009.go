package main

import "fmt"

func main() {
    var name string
    var a, b float64

    fmt.Scanf("%s \n%f \n%f", &name, &a, &b)

    total := a + (b*0.15)
    output := fmt.Sprintf("%.2f", total)

    fmt.Println("TOTAL = R$", output)

}
