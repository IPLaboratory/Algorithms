import Foundation

func solution(_ record: [String]) -> [String] {
    var users = [String: String]()
    var states = ["Enter": "님이 들어왔습니다.", "Leave": "님이 나갔습니다."]
    
    record.filter { !$0.contains("Leave") }.forEach {
        let data = $0.components(separatedBy: " ")
        users[data[1]] = data[2]
    }
    
    return record.filter { !$0.contains("Change") }.map {
        let data = $0.components(separatedBy: " ")
        return "\(users[data[1]]!)\(states[data[0]]!)"
    }
}
