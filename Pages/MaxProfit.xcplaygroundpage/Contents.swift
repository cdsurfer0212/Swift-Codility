/**
 * https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_profit/
 */

public func solution(_ A : inout [Int]) -> Int {
    var result = 0
    var tmpMinPrice = A.first ?? 0
    for a in A {
        tmpMinPrice = min(a, tmpMinPrice)
        result = max(a - tmpMinPrice, result)
    }
    return result
}

var array = [23171, 21011, 21123, 21366, 21013, 21367]
solution(&array)
