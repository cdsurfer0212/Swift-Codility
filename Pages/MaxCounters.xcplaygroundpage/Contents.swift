/**
 * https://app.codility.com/programmers/lessons/4-counting_elements/max_counters/
 */

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counters = [Int](repeating: 0, count: N)

    var lastMaxCounter = 0
    var maxCounter = 0
    for a in A {
        if a >= 1 && a <= N {
            counters[a - 1] = max(counters[a - 1], lastMaxCounter) + 1
            maxCounter = max(counters[a - 1], maxCounter)
        } else if a == N + 1 {
            lastMaxCounter = maxCounter
        }
    }

    return counters.map({ (counter) -> Int in
        return max(counter, lastMaxCounter)
    })
}

var array = [3, 4, 4, 6, 1, 4, 4]
solution(5, &array)
