import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var answer = 0
    var startIndex = t.startIndex
    var endIndex = t.index(t.startIndex, offsetBy: p.count - 1)
    
    for _ in 0...t.count - p.count {
        if Int(t[startIndex...endIndex])! <= Int(p)! {
            answer += 1
        }
        startIndex = t.index(after: startIndex)
        endIndex = t.index(after: endIndex)
    }
    
    return answer
}
