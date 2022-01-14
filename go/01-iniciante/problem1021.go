package main

import "fmt"

func main() {
    var value float64
    notes := [6]int {100, 50, 20, 10, 5, 2}
    coins := [6]int {100, 50, 25, 10, 5, 1}

    fmt.Scanf("%f", &value)
    value_int := int(value)
    value_float := value - float64(value_int)

    fmt.Println("NOTAS:")

    for _, i := range notes {
        number := value_int/i
        value_int = value_int % i

        note := fmt.Sprintf("%.2f", float64(i))
        fmt.Println(number, "nota(s) de R$", note)
    }

    rest := int((value_float + float64(value_int))*100.0)

    fmt.Println("MOEDAS:")

    for _, i := range coins {
        number := rest/i
        rest = rest % i

        coin := fmt.Sprintf("%.2f", float64(i)/100.0)
        fmt.Println(number, "moeda(s) de R$", coin)
    }
}
