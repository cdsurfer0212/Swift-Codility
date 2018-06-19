/**
 * https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/min_perimeter_rectangle/
 */

public func solution(_ N : Int) -> Int {
    var i = 1
    var result = Int.max
    while i * i <= N {
        if N % i == 0 {
            result = min((i + (N / i)) * 2, result)
        }
        i += 1
    }
    return result
}

solution(30)
