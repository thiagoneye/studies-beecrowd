package main

import "fmt"

func main() {
    const cons float64 = 12.0
    var time, speed int

    fmt.Scanf("%d \n%d", &time, &speed)

    lit := float64(time)*float64(speed)/cons
    output := fmt.Sprintf("%.3f", lit)

    fmt.Println(output)
}
