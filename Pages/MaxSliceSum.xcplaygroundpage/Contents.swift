/**
 * https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_slice_sum/
 */

public func solution(_ A : inout [Int]) -> Int {
    var maxNumber: Int?
    var result = 0
    var tmpMaxSum = 0
    for a in A {
        maxNumber = maxNumber == nil ? a : max(a, maxNumber!)
        tmpMaxSum = max(tmpMaxSum + a, 0)
        result = max(tmpMaxSum, result)
    }
    return result == 0 ? maxNumber! : result
}

var array = [3, 2, -6, 4, 0]
solution(&array)
array = [-10]
solution(&array)
