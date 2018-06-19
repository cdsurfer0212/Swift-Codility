/**
 * https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 */

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if A.count == 0 {
        return A
    }
    
    for _ in 0..<K {
        A.insert(A.removeLast(), at: 0)
    }
    
    return A
}

var array = [3, 8, 9, 7, 6]
solution(&array, 3)
array = [0, 0, 0]
solution(&array, 1)
array = [1, 2, 3, 4]
solution(&array, 4)
