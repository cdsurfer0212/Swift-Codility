/**
 * https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
 */

public func solution(_ A : inout [Int]) -> Int {
    var result = 0
    for a in A {
        result ^= a
    }
    return result
}

var array = [9, 3, 9, 3, 9, 7, 9]
solution(&array)
