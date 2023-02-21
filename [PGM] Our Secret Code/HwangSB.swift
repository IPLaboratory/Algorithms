import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let codes = (97...122).map { Character(UnicodeScalar($0)) }.filter { !skip.contains($0) }
    let indices = s.map { codes.firstIndex(of: $0)! + index }
    
    return String(indices.map { codes[$0 % codes.count] })
}
