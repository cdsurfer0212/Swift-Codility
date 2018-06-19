/**
 * https://app.codility.com/programmers/lessons/7-stacks_and_queues/fish/
 */

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    if A.count == 0 {
        return 0
    }
    
    var result = A.count
    var stack = [Int](repeating: 0, count: A.count)
    var stackCount = 0
    for i in 0..<A.count {
        if B[i] == 0 && stackCount > 0 {
            let tmpStackCount = stackCount
            while stackCount > 0 && A[i] > stack[stackCount - 1] {
                stackCount -= 1
            }
            result -= (tmpStackCount - stackCount) + (stackCount == 0 ? 0 : 1)
            
        } else if B[i] == 1 {
            stack[stackCount] = A[i]
            stackCount += 1
        }
    }
    return result
}

var a = [4, 3, 2, 1, 5]
var b = [0, 1, 0, 0, 0]
solution(&a, &b)
a = [1, 7, 5, 6, 5]
b = [1, 1, 1, 0, 1]
solution(&a, &b)
