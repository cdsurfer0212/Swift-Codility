/**
 * https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/
 */

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var set = Set<Int>()
    for (i, a) in A.enumerated() {
        if a <= X {
            set.insert(a)
        }
        if set.count == X {
            return i
        }
    }
    return -1
}

var array = [1, 3, 1, 4, 2, 3, 5, 4]
solution(5, &array)
array = [2, 2, 2, 2, 2]
solution(2, &array)
