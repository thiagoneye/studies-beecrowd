package main

import "fmt"

func main() {
    var t int

    fmt.Scanf("%d", &t)

    hou := t/(60*60)
    rest := t % (60*60)
    min := rest/60
    sec := rest % 60

    output := fmt.Sprintf("%d:%d:%d", hou, min, sec)
    fmt.Println(output)
}
