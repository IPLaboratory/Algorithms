func solution(_ s: String) -> [Int] {
    var result = [Int]()
    var indices = [String: Int]()
    
    for (i, c) in s.enumerated() {
        let character = String(c)
        let isFirst = !indices.keys.contains(character)
        result.append(isFirst ? -1 : i - indices[character]!)
        indices[character] = i
    }
    
    return result
}
