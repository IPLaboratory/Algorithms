import Foundation

func distance(_ src: Int, _ dst: Int) -> Int {
    var srcPos = ((src - 1) / 3, (src + 2) % 3)
    var dstPos = ((dst - 1) / 3, (dst + 2) % 3)
    if src == 0 { srcPos = (3, 1) }
    if dst == 0 { dstPos = (3, 1) }
    return abs(srcPos.0 - dstPos.0) + abs(srcPos.1 - dstPos.1)
}

func solution(_ numbers: [Int], _ hand: String) -> String {
    var leftHand = 10
    var rightHand = 12
    
    return numbers.map {
        if [1, 4, 7].contains($0) {
            leftHand = $0
            return "L"
        }
        if [3, 6, 9].contains($0) {
            rightHand = $0
            return "R"
        }
        if distance($0, leftHand) < distance($0, rightHand) {
            leftHand = $0
            return "L"
        }
        if distance($0, leftHand) > distance($0, rightHand) {
            rightHand = $0
            return "R"
        }
        
        if hand == "left" {
            leftHand = $0
        } else {
            rightHand = $0
        }
        return hand == "left" ? "L" : "R"
    }.joined()
}
