import Foundation

func solution(_ topping: [Int]) -> Int {
    var answer = 0
    var leftSide = Dictionary(grouping: topping) { $0 }
    var rightSide = Set<Int>()
    
    for t in topping {
        if leftSide[t]?.count == 1 {
            leftSide.removeValue(forKey: t)
        } else {
            leftSide[t]?.popLast()
        }
        
        rightSide.insert(t)
        
        if leftSide.count == rightSide.count {
            answer += 1
        }
    }
    return answer
}