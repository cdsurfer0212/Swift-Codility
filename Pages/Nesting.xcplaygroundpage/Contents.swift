/**
 * https://app.codility.com/programmers/lessons/7-stacks_and_queues/nesting/
 */

public func solution(_ S : inout String) -> Int {
    if S.count == 0 {
        return 1
    }
    
    let s = S.map { String($0) }
    var stack = [String](repeating: "", count: s.count)
    var stackCount = 0
    for i in 0..<s.count {
        if s[i] == "(" {
            stack[stackCount] = s[i]
            stackCount += 1
        } else if s[i] == ")" {
            if stackCount > 0 && stack[stackCount - 1] == "(" {
                stackCount -= 1
            } else {
                return 0
            }
        }
    }
    
    return stackCount == 0 ? 1 : 0
}

var string = "(()(())())"
solution(&string)
string = "())"
solution(&string)
