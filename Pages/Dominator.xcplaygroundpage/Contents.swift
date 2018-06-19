/**
 * https://app.codility.com/programmers/lessons/8-leader/dominator/
 */

public func solution(_ A : inout [Int]) -> Int {
    var candidateCount = 0
    var result = -1
    for i in 0..<A.count {
        if candidateCount == 0 {
            result = i
        }
        if A[i] == A[result] {
            candidateCount += 1
        } else {
            candidateCount -= 1
        }
    }
    if result != -1 {
        var count = 0
        for i in 0..<A.count {
            if A[i] == A[result] {
                count += 1
            }
        }
        
        if count <= A.count / 2 {
            result = -1
        }
    }
    return result
}

var array = [3, 4, 3, 2, 3, -1, 3, 3]
solution(&array)
array = []
solution(&array)
array = [1, 2, 1]
solution(&array)
array = [2, 1, 1, 3, 4]
solution(&array)
array = [2, 1, 1, 1, 3]
solution(&array)
array = [2, 1, 1, 3]
solution(&array)
array = [1, 2, 1, 1, 2, 1]
solution(&array)
