/**
 * https://app.codility.com/programmers/lessons/5-prefix_sums/min_avg_two_slice/
 */

public func solution(_ A : inout [Int]) -> Int {
    var minAvg = Float.greatestFiniteMagnitude
    var result = 0
    for i in 0..<A.count {
        if i < A.count - 1 {
            let tmpAvg = Float(A[i] + A[i + 1]) / 2.0
            if tmpAvg < minAvg {
                minAvg = tmpAvg
                result = i
            }
        }
        
        if i < A.count - 2 {
            let tmpAvg = Float(A[i] + A[i + 1] + A[i + 2]) / 3.0
            if tmpAvg < minAvg {
                minAvg = tmpAvg
                result = i
            }
        }
    }
    return result
}

var array = [4, 2, 2, 5, 1, 5, 8]
solution(&array)
