package main

import "fmt"

func main() {
    var a, b, c, d float64
    fmt.Scanf("%f %f %f %f", &a, &b, &c, &d)

    mean := (a*2.0 + b*3.0 + c*4.0 + d*1.0)/10.0
    output := fmt.Sprintf("%.1f", mean)

    fmt.Println("Media:", output)

    if mean >= 7.0 {
        fmt.Println("Aluno aprovado.")
    } else if mean < 5.0 {
        fmt.Println("Aluno reprovado.")
    } else {
        fmt.Println("Aluno em exame.")

        var e float64
        fmt.Scanf("%f", &e)

        output = fmt.Sprintf("%.1f", e)

        fmt.Println("Nota do exame:", output)

        mean = (mean + e)/2.0
        output = fmt.Sprintf("%.1f", mean)

        if mean >= 5.0 {
            fmt.Println("Aluno aprovado.")
        } else {
            fmt.Println("Aluno reprovado.")
        }

        fmt.Println("Media final:", output)
    }
}
