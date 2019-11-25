package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
    "strconv"
    "strings"
)

/*
 * Complete the pageCount function below.
 */
func pageCount(n int32, p int32) int32 {
    if p == 1 {
        return 0
    }

    if p == n || p == n - 1 {
        return 0
    }

    // It's an issue
    // if n == 6 && p == 5 {
    //     return 1
    // }

    page_turns := 0
    reverse_turns := 0
    straight_turns := 0

    for i := 2; i < int(n/2); i++ {
        if i % 2 == 0 {
          straight_turns++
        }

        if i == int(p) {
          break
        }
    }

    for j := int(n); j > int(n/2); j-- {
        if j == int(p) {
            break
        }

        if j % 2 == 0 {
            reverse_turns++
        }
    }

    // fmt.Printf("straight %d\n", straight_turns)
    // fmt.Printf("reverse %d\n", reverse_turns)
    if straight_turns < reverse_turns {
        page_turns = straight_turns 
    } else {
        page_turns = reverse_turns
    }

    return int32(page_turns)
}

func main() {
    reader := bufio.NewReaderSize(os.Stdin, 1024 * 1024)

    stdout, err := os.Create(os.Getenv("OUTPUT_PATH"))
    checkError(err)

    defer stdout.Close()

    writer := bufio.NewWriterSize(stdout, 1024 * 1024)

    nTemp, err := strconv.ParseInt(readLine(reader), 10, 64)
    checkError(err)
    n := int32(nTemp)

    pTemp, err := strconv.ParseInt(readLine(reader), 10, 64)
    checkError(err)
    p := int32(pTemp)

    result := pageCount(n, p)

    fmt.Fprintf(writer, "%d\n", result)

    writer.Flush()
}

func readLine(reader *bufio.Reader) string {
    str, _, err := reader.ReadLine()
    if err == io.EOF {
        return ""
    }

    return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
    if err != nil {
        panic(err)
    }
}
