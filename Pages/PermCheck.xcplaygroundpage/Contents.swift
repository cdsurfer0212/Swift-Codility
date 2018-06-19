/**
 * https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/
 */

public func solution(_ A : inout [Int]) -> Int {
    var set = Set<Int>()
    for a in A {
        if a > A.count {
            return 0
        } else {
            set.insert(a)
        }
    }
    return set.count == A.count ? 1 : 0
}

public func xsolution(_ A : inout [Int]) -> Int {
    // incorrect case: [1, 4, 1]
    var tmp = 0
    for (index, element) in A.enumerated() {
        tmp += (index + 1) - element
    }
    return tmp == 0 ? 1 : 0
}

var array = [4, 1, 3, 2]
solution(&array)
xsolution(&array)
array = [4, 1, 3]
solution(&array)
xsolution(&array)
array = [1, 4, 1]
solution(&array)
xsolution(&array)
