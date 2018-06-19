/**
 * https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_double_slice_sum/
 */

public func solution(_ A : inout [Int]) -> Int {
    var tmpMaxSum = 0
    var tmpLeftMaxSumArray = [Int](repeating: 0, count: A.count)
    for i in 1...A.count - 2 {
        tmpLeftMaxSumArray[i - 1] = tmpMaxSum
        tmpMaxSum = max(tmpMaxSum + A[i], 0)
    }
    
    tmpMaxSum = 0
    var tmpRightMaxSumArray = [Int](repeating: 0, count: A.count)
    for i in (1...A.count - 2).reversed() {
        tmpRightMaxSumArray[i + 1] = tmpMaxSum
        tmpMaxSum = max(tmpMaxSum + A[i], 0)
    }
    
    var result = 0
    for i in 1...A.count - 2 {
        result = max(tmpLeftMaxSumArray[i - 1] + tmpRightMaxSumArray[i + 1], result)
    }
    
    return result
}

var array = [3, 2, 6, -1, 4, 5, -1, 2]
solution(&array)
array = [5, 5, 5]
solution(&array)
