package main

import "fmt"

func main() {
    data := make(map[int]float64)
    data[1] = 4.0
    data[2] = 4.5
    data[3] = 5.0
    data[4] = 2.0
    data[5] = 1.5

    var id, amount int
    fmt.Scanf("%d %d", &id, &amount)

    total := float64(amount)*data[id]
    output := fmt.Sprintf("%.2f", total)

    fmt.Println("Total: R$", output)
}
