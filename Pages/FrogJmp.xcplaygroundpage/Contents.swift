/**
 * https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/
 */

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    return Int((Double(abs(Y - X)) / Double(D)).rounded(.up))
}

solution(10, 85, 30)
