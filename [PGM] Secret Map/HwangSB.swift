import Foundation

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    return zip(arr1, arr2).map {
        var result = ""
        var map = $0.0 | $0.1
        while map > 0 {
            result += map & 1 == 1 ? "#" : " "
            map >>= 1
        }
        return String(result.padding(toLength: n, withPad: " ", startingAt: 0).reversed())
    }
}