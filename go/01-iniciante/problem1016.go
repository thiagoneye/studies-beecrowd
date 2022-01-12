package main

import "fmt"

func main() {
    const vx, vy int = 60, 90
    var dist int

    fmt.Scanf("%d", &dist)

    time := (float64(dist)/float64(vy - vx))*60.0
    output := fmt.Sprintf("%.f", time)

    fmt.Println(output, "minutos")
}
