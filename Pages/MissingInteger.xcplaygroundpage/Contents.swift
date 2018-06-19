/**
 * https://app.codility.com/programmers/lessons/4-counting_elements/missing_integer/
 */

public func solution(_ A : inout [Int]) -> Int {
    var array: [Int:Bool] = [:]
    for a in A {
        array[a] = true
    }
    var i = 1
    while true {
        if array[i] == nil {
            return i
        }
        i += 1
    }
    return i
}

var array = [1, 3, 6, 4, 1, 2]
solution(&array)
array = [1, 2, 3]
solution(&array)
array = [-1, -3]
solution(&array)
array = [4, 5, 6, 2]
solution(&array)
