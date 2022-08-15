import Foundation

func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
    if s1 == s2 { return true }
    
    var arrayOfDirfferentChars: [Int] = []
    
    for (index, (charFromString1, charFromString2)) in zip(s1, s2).enumerated() {
        if charFromString1 != charFromString2 {
            arrayOfDirfferentChars.append(index)
        }
    }
    guard arrayOfDirfferentChars.count == 2 else { return false }
    
    let firstDifferentChar = arrayOfDirfferentChars[0]
    let secondDifferentChar = arrayOfDirfferentChars[1]
    
    var arrayFromString1 = Array(s1)
    
    arrayFromString1.swapAt(firstDifferentChar, secondDifferentChar)
    
    return arrayFromString1 == Array(s2)
}
