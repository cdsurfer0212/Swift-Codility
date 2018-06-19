/**
 * https://app.codility.com/programmers/lessons/6-sorting/max_product_of_three/
 */

public func solution(_ A : inout [Int]) -> Int {
    if A.count < 3 {
        return 0
    }
    
    A.sort(by: >)

    if A[0] < 0 {
        return A[0] * A[1] * A[2]
    } else if A[1] < 0 {
        return A[0] * A[A.count - 1] * A[A.count - 2]
    } else {
        var maximum = max(A[0] * A[1] * A[A.count - 1], A[0] * A[A.count - 1] * A[A.count - 2])
        return max(A[0] * A[1] * A[2], A[A.count - 1] * A[A.count - 2] * A[A.count - 3], maximum)
    }
}

var array = [-3, 1, 2, -2, 5, 6]
solution(&array)
array = [-5, 5, -5, 4]
solution(&array)
array = [-4, -6, 3, 4, 5]
solution(&array)
array = [-5, -6, -4, -7, -10]
solution(&array)
