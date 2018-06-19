/**
 * https://app.codility.com/programmers/lessons/5-prefix_sums/passing_cars/
 */

public func solution(_ A : inout [Int]) -> Int {
    var count = 0
    var east = 0
    for a in A {
        if a == 0 {
            east += 1
        } else if a == 1 {
            count += east
        }
    }
    return count <= 1000000000 ? count : -1
}

var array = [0, 1, 0, 1, 1]
solution(&array)
