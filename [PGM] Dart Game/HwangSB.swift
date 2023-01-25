import Foundation

func solution(_ dartResult: String) -> Int {
    var scores = Array(repeating: 0, count: 3)
    
    var index = 0
    for result in dartResult {
        switch result {
        case "S":
            index += 1
        case "D":
            scores[index] *= scores[index]
            index += 1
        case "T":
            scores[index] *= scores[index] * scores[index]
            index += 1
        case "*":
            scores[index - 1] *= 2
            if index >= 2 {
                scores[index - 2] *= 2
            }
        case "#":
            scores[index - 1] *= -1
        default:
            if scores[index] != 0 {
                scores[index] = 10
                continue
            }
            scores[index] = result.wholeNumberValue!
        }
    }
    
    return scores.reduce(0) { $0 + $1 }
}
