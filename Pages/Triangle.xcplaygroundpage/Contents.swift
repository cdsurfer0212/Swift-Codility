/**
 * https://app.codility.com/programmers/lessons/6-sorting/triangle/
 */

public func solution(_ A : inout [Int]) -> Int {
    if A.count < 3 {
        return 0
    }
    
    A.sort(by: >)
    
    for i in 0..<A.count - 2 {
        if A[i] < A[i + 1] + A[i + 2] {
            return 1
        }
    }
    
    return 0
}

var array = [10, 2, 5, 1, 8, 20]
solution(&array)
array = [10, 50, 5, 1]
solution(&array)
