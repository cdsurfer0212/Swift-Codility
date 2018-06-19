/**
 * https://app.codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/
 */

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    let M = P.count
    let N = S.count

    var a = [Int](repeating: 0, count: N + 1)
    var c = [Int](repeating: 0, count: N + 1)
    var g = [Int](repeating: 0, count: N + 1)
    var t = [Int](repeating: 0, count: N + 1)
    
    let s = S.map { String($0) }
    for i in 0..<N {
        switch s[i] {
        case "A":
            a[i + 1] = 1
        case "C":
            c[i + 1] = 1
        case "G":
            g[i + 1] = 1
        case "T":
            t[i + 1] = 1
        default:
            break
        }
    }
    
    for i in 1..<N + 1 {
        a[i] += a[i - 1]
        c[i] += c[i - 1]
        g[i] += g[i - 1]
        t[i] += t[i - 1]
    }
    
    var result = [Int](repeating: 0, count: M)
    for i in 0..<M {
        if P[i] < 0 || P[i] >= N || Q[i] < 0 || Q[i] >= N {
            continue
        }

        if a[Q[i] + 1] - a[P[i]] > 0 {
            result[i] = 1
        } else if c[Q[i] + 1] - c[P[i]] > 0 {
            result[i] = 2
        } else if g[Q[i] + 1] - g[P[i]] > 0 {
            result[i] = 3
        } else if t[Q[i] + 1] - t[P[i]] > 0 {
            result[i] = 4
        }
    }
    
    return result
}

var s = "CAGCCTA"
var p = [2, 5, 0]
var q = [4, 5, 6]
solution(&s, &p, &q)
s = "A"
p = [0]
q = [0]
solution(&s, &p, &q)
