package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
    "strconv"
    "strings"
)

var regular_year = make(map[int32]int32)
var leap_year = make(map[int32]int32)

// Complete the dayOfProgrammer function below.
func dayOfProgrammer(year int32) string {

    if year == 1918 {
      return "26.09.1918"
    } 

    regular_year[0] = 31
    regular_year[1] = 28
    regular_year[2] = 31
    regular_year[3] = 30
    regular_year[4] = 31
    regular_year[5] = 30
    regular_year[6] = 31
    regular_year[7] = 31
    regular_year[8] = 30
    regular_year[9] = 31
    regular_year[10] = 30
    regular_year[11] = 31


    leap_year = regular_year
    leap_year[1] = 29

    if year < 1918 {
        if isLeapYear(year, false) {
            return calculateTheDay(year, true)
        } else {
            return calculateTheDay(year, false)
        }        
    } else {
        if isLeapYear(year, true) {
            return calculateTheDay(year, true)
        } else {
            return calculateTheDay(year, false)
        }
    }

    return "no money no honey"
}

func calculateTheDay(year int32, leap bool) string {

    var calendar = make(map[int32]int32)

    if leap {
        calendar = leap_year
    } else {
        calendar = regular_year
    }

    day := 0
    days := 0
    month := 0

    for i := 0; i < 12; i++ {
        month = i
        for j := 1; j <= int(calendar[int32(month)]); j++ {
            day = j
            if days == 256 {
                month++
                if leap {
                    day--
                } 
                goto exit
            } else {
                days++
            }
        }
    }

    exit: 
    return fmt.Sprintf("%02d.%02d.%02d", day, month, year)
}

func isLeapYear(year int32, gregorian bool) bool {
    var result bool = false

    if gregorian {
        if year % 400 == 0 {
            result = true
        } 

        if year % 4 == 0 && year % 100 != 0 {
            result = true
        }
    } else {
        if year % 4 == 0 {
            result = true
        }
    }

    return result
}

func main() {
    reader := bufio.NewReaderSize(os.Stdin, 16 * 1024 * 1024)

    stdout, err := os.Create(os.Getenv("OUTPUT_PATH"))
    checkError(err)

    defer stdout.Close()

    writer := bufio.NewWriterSize(stdout, 16 * 1024 * 1024)

    yearTemp, err := strconv.ParseInt(strings.TrimSpace(readLine(reader)), 10, 64)
    checkError(err)
    year := int32(yearTemp)

    result := dayOfProgrammer(year)

    fmt.Fprintf(writer, "%s\n", result)

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
