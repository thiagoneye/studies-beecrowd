package main

import (
    "fmt"
)

func main() {
    var t int   // Time in days

    fmt.Scanf("%d", &t)

    y := t/365   // Years
    r := t % 365 // Rest in days
    m := r/30    // Months
    d := r % 30   // Days

    fmt.Print(y, " ano(s)\n", m, " mes(es)\n", d, " dia(s)")
}
