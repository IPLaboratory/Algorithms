import Foundation

func solution(_ enroll: [String], _ referral: [String], _ seller: [String], _ amount: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: enroll.count)
    let enroll = Dictionary(uniqueKeysWithValues: enroll.enumerated().map { ($0.element, $0.offset) })
    
    for i in 0..<seller.count {
        var revenue = amount[i] * 100
        var index = enroll[seller[i]]
        while index != nil {
            let safeIndex = index!
            
            let fee = revenue / 10
            result[safeIndex] += revenue - fee
            revenue = fee
            if 1 > fee { break }
            
            index = enroll[referral[safeIndex]]
        }
    }
    
    return result
}
