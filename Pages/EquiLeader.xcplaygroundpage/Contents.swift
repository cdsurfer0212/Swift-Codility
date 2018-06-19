/**
 * https://app.codility.com/programmers/lessons/8-leader/equi_leader/
 */

public func solution(_ A : inout [Int]) -> Int {
    var candidateCount = 0
    var leaderIndex = -1
    for i in 0..<A.count {
        if candidateCount == 0 {
            leaderIndex = i
        }
        if A[i] == A[leaderIndex] {
            candidateCount += 1
        } else {
            candidateCount -= 1
        }
    }
    
    var result = 0
    if leaderIndex != -1 {
        var count = 0
        for i in 0..<A.count {
            if A[i] == A[leaderIndex] {
                count += 1
            }
        }
        
        var currentCount = 0
        for i in 0..<A.count {
            if A[i] == A[leaderIndex] {
                currentCount += 1
            }
            if currentCount > (i + 1) / 2 && (count - currentCount) > (A.count - i - 1) / 2 {
                result += 1
            }
        }
    }
    return result
}

var array = [4, 3, 4, 4, 4, 2]
solution(&array)
array = [1, 2]
solution(&array)
array = [1, 2, 1, 1, 2, 1]
solution(&array)
