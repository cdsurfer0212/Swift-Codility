/**
 * https://app.codility.com/programmers/lessons/7-stacks_and_queues/brackets/
 */

public func solution(_ S : inout String) -> Int {
    if S.count == 0 {
        return 1
    }
    
    let s = S.map { String($0) }
    var stack = [String](repeating: "", count: s.count)
    var stackCount = 0
    for i in 0..<s.count {
        switch s[i] {
        case "(", "[", "{":
            stack[stackCount] = s[i]
            stackCount += 1
        case ")":
            if stackCount > 0 && stack[stackCount - 1] == "(" {
                stackCount -= 1
            } else {
                return 0
            }
        case "]":
            if stackCount > 0 && stack[stackCount - 1] == "[" {
                stackCount -= 1
            } else {
                return 0
            }
        case "}":
            if stackCount > 0 && stack[stackCount - 1] == "{" {
                stackCount -= 1
            } else {
                return 0
            }
        default:
            break
        }
    }
    
    return stackCount == 0 ? 1 : 0
}

public func solution1(_ S : inout String) -> Int {
    if S.count == 0 {
        return 1
    }
    
    let s = S.map { String($0) }
    var stack = [String]()
    for i in 0..<s.count {
        switch s[i] {
        case "(", "[", "{":
            stack.append(s[i])
        case ")":
            if stack.last == "(" {
                stack.removeLast()
            } else {
                return 0
            }
        case "]":
            if stack.last == "[" {
                stack.removeLast()
            } else {
                return 0
            }
        case "}":
            if stack.last == "{" {
                stack.removeLast()
            } else {
                return 0
            }
        default:
            break
        }
    }
    
    return stack.count == 0 ? 1 : 0
}

var string = "{[()()]}"
solution(&string)
string = "([)()]"
solution(&string)
string = ")("
solution(&string)
