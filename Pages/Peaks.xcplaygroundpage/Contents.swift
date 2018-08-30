/**
 * https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/peaks/
 */

public func solution(_ A : inout [Int]) -> Int {
    if A.count < 2 {
        return 0
    }
    
    var peaks = [Int]()
    for i in 1..<A.count - 1 {
        if A[i] > A[i - 1] && A[i] > A[i + 1] {
            peaks.append(i)
        }
    }
    
    if peaks.count <= 1 {
        return peaks.count
    }
    
    let maxBlocks = peaks.count
    for i in (1...maxBlocks).reversed() {
        if A.count % i != 0 {
            continue
        }
        let count = Int((Double(A.count) / Double(i)).rounded(.up))
        var left = 0
        var right = peaks.count - 1
        for j in 0..<Int((Double(i) / 2).rounded(.up)) {
            var isLeftValid = false
            var isRightValid = false
            while left < peaks.count && peaks[left] >= count * j && peaks[left] < count * (j + 1) {
                left += 1
                isLeftValid = true
            }
            while right >= 0 && peaks[right] >= count * (i - j - 1) && peaks[right] < count * (i - j) {
                right -= 1
                isRightValid = true
            }
            if !isLeftValid || !isRightValid {
                break
            }
            if j == Int((Double(i) / 2).rounded(.up)) - 1 {
                return i
            }
        }
    }
    
    return maxBlocks
}

var array = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
solution(&array)
array = [5]
solution(&array)
array = [0, 1, 0, 0, 1, 0, 0, 1, 0]
solution(&array)
