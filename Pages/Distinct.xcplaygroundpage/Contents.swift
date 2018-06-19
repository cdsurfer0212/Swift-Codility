/**
 * https://app.codility.com/programmers/lessons/6-sorting/distinct/
 */

public func solution(_ A : inout [Int]) -> Int {
    A.sort()
    
    var result = 0
    var tmp = 0
    for i in 0..<A.count {
        if i == 0 || A[i] != tmp {
            result += 1
            tmp = A[i]
        }
    }
    
    return result
}

public func solution1(_ A : inout [Int]) -> Int {
    return Set(A).count
}

var array = [2, 1, 1, 2, 3, 1]
solution(&array)
solution1(&array)
