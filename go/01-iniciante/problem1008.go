package main

import "fmt"

func main() {
    var a, b int
    var c float64

    fmt.Scanf("%d \n%d \n%f", &a, &b, &c)

    salary := float64(b)*c
    output := fmt.Sprintf("%.2f", salary)

    fmt.Println("NUMBER =", a)
    fmt.Println("SALARY = U$", output)

}
