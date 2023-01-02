import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var inventory = [Int: Int]()

    tangerine.forEach{ inventory[$0, default: 0] += 1 }

    let sortedInventory = inventory.sorted { $0.value > $1.value }

    var tangerineCount = 0
    for i in 0..<sortedInventory.count {
        tangerineCount += sortedInventory[i].value
        if tangerineCount >= k {
            return i + 1
        }
    }

    return 0
}
