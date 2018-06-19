/**
 * https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
 */

public func solution(_ N : Int) -> Int {
    var n = N
    while n > 0 && n % 2 == 0 {
        n /= 2
    }
    
    var gap = 0
    var maxGap = 0
    while n > 0 {
        if n % 2 == 0 {
            gap += 1
        } else {
            maxGap = max(gap, maxGap)
            gap = 0
        }
        n /= 2
    }
    
    return maxGap
}

solution(9)
solution(529)
solution(20)
solution(15)
