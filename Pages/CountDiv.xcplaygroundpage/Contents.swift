/**
 * https://app.codility.com/programmers/lessons/5-prefix_sums/count_div/
 */

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    if K == 0 || A > B || (B < K && B != 0) {
        return 0
    }
    
    let gap = (B - B % K) - (A + (A < K ? min(K - A, A % K) : A % K))
    if gap < 0 {
        return 0
    }
    
    return (gap / K) + 1
}

public func solution1(_ A : Int, _ B : Int, _ K : Int) -> Int {
    if K == 0 {
        return 0
    }
    
    return A == 0 ? B / K + 1 : B / K - (A - 1) / K
}

solution(6, 11, 2)
solution(1, 1, 11)
solution(0, 0, 11)
solution(10, 10, 7)
solution(11, 345, 17)
solution(1, 1, 0)

solution1(6, 11, 2)
solution1(1, 1, 11)
solution1(0, 0, 11)
solution1(10, 10, 7)
solution1(11, 345, 17)
solution1(1, 1, 0)
