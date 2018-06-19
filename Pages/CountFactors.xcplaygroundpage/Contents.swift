/**
 * https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/count_factors/
 */

public func solution(_ N : Int) -> Int {
    var i = 1
    var result = 0
    while i * i < N  {
        if N % i == 0 {
            result += 2
        }
        i += 1
    }
    if i * i == N {
        result += 1
    }
    return result
}

solution(24)
