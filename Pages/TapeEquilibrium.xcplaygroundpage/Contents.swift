/**
 * https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
 */

public func solution(_ A : inout [Int]) -> Int {
    var lsum = 0
    var rsum = A.reduce(0) { $0 + $1 }
    var p = 0
    var result = Int.max
    
    repeat {
        lsum += A[p]
        rsum -= A[p]
        result = min(abs(lsum - rsum), result)
        p += 1
    } while p < A.count - 1
    
    return result
}

var array = [3, 1, 2, 4, 3]
solution(&array)
