import Foundation

/// - Parameters:
///     - cap: 트럭에 실을 수 있는 재활용 택배 상자의 최대 개수
///     - n: 배달할 집의 개수
///     - deliveries: 배달할 재활용 택배 상자의 수
///     - pickups: 수거할 재활용 택배 상자의 수
///
/// - Returns: 배달과 수거를 마치고 물류창고까지 돌아올 수 있는 최소 이동거리
func solution(_ cap: Int, _ n: Int, _ deliveries: [Int], _ pickups: [Int]) -> Int64 {
    var answer = 0
    var deliveryCount = 0
    var pickupCount = 0
    
    for i in stride(from: n - 1, through: 0, by: -1) {
        if deliveries[i] == 0 && pickups[i] == 0 {
            continue
        }
        
        var times = 0
        while deliveryCount < deliveries[i] || pickupCount < pickups[i] {
            times += 1
            deliveryCount += cap
            pickupCount += cap
        }
        
        deliveryCount -= deliveries[i]
        pickupCount -= pickups[i]
        answer += (i + 1) * times
    }
    
    return Int64(answer) * 2
}
