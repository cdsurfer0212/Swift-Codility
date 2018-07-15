/**
 * https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/flags/
 */

public func solution(_ A : inout [Int]) -> Int {
    if A.count < 2 {
        return 0
    }
    
    var peaks: [Int] = []
    for i in 1..<A.count - 1 {
        if A[i] > A[i - 1] && A[i] > A[i + 1] {
            peaks.append(i)
        }
    }
    
    if peaks.count <= 2 {
        return peaks.count
    }
    
    let maxFlags = Int(Double(peaks[peaks.count - 1] - peaks[0]).squareRoot().rounded(.up))
    if (maxFlags >= 2) {
        for i in (1...maxFlags).reversed() {
            var flags = 1
            var tmpPeaks = peaks
            for j in (1..<peaks.count).reversed() {
                if tmpPeaks[j] - tmpPeaks[j - 1] >= i {
                    flags += 1
                } else {
                    tmpPeaks[j - 1] = tmpPeaks[j]
                }
                if flags >= i {
                    return i
                }
            }
        }
    }
    
    return maxFlags
}


var array = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
solution(&array)
array = [5]
solution(&array)
array = [1, 3, 2]
solution(&array)
