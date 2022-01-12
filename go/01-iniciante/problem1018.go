package main

import "fmt"

func main() {
    var value int
    notes := [7]int {100, 50, 20, 10, 5, 2, 1}

    fmt.Scanf("%d", &value)

    for _, i := range notes {
        number := value/i
        value = value % i

        note := fmt.Sprintf("%.2f", float64(i))
        fmt.Println(number, " nota(s) de R$", note)
    }
}
