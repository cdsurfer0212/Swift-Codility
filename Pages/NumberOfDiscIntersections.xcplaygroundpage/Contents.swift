/**
 * https://app.codility.com/programmers/lessons/6-sorting/number_of_disc_intersections/
 */

public func solution(_ A : inout [Int]) -> Int {
    var e = [Int](repeating: 0, count: A.count)
    var s = [Int](repeating: 0, count: A.count)
    for i in 0..<A.count {
        s[max(i - A[i], 0)] += 1
        e[min(i + A[i], A.count - 1)] += 1
    }

    var activeDiscs = 0
    var result = 0
    for i in 0..<A.count {
        if s[i] > 0 {
            result += s[i] * activeDiscs
            result += s[i] * (s[i] - 1) / 2 // C(N, 2)
            
            if result > 10000000 {
                return -1
            }
            
            activeDiscs += s[i]
        }
        activeDiscs -= e[i]
    }
    
    return result
}

var array = [1, 5, 2, 1, 4, 0]
solution(&array)
array = [1, 1, 1]
solution(&array)
