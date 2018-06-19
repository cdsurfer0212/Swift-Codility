/**
 * https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
 */

public func solution(_ A : inout [Int]) -> Int {
    var result = (1 + (A.count + 1)) * (A.count + 1) / 2;
    for element in A {
        result -= element
    }
    return result
}

public func solution1(_ A : inout [Int]) -> Int {
    return ((1 + (A.count + 1)) * (A.count + 1) / 2) - A.reduce(0) { $0 + $1 }
}

var array = [2, 3, 1, 5]
solution(&array)
solution1(&array)
