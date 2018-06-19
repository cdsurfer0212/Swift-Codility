/**
 * https://app.codility.com/programmers/lessons/7-stacks_and_queues/stone_wall/
 */

public func solution(_ H : inout [Int]) -> Int {
    var result = 0
    var stack = [Int](repeating: 0, count: H.count)
    var stackCount = 0
    for i in 0..<H.count {
        while stackCount > 0 && stack[stackCount - 1] > H[i] {
           stackCount -= 1
        }
        if stackCount == 0 || stack[stackCount - 1] < H[i] {
            result += 1
            stack[stackCount] = H[i];
            stackCount += 1
        }
    }
    return result
}

public func solution1(_ H : inout [Int]) -> Int {
    var result = 0
    var stack = [Int]()
    for i in 0..<H.count {
        while stack.count > 0 && stack.last! > H[i] {
            stack.removeLast()
        }
        if stack.count == 0 || stack.last! < H[i] {
            result += 1
            stack.append(H[i])
        }
    }
    return result
}

var array = [8, 8, 5, 7, 9, 8, 7, 4, 8]
solution(&array)
solution1(&array)
