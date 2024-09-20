import Cocoa

func randomNumber(from array: [Int]?) -> Int { array?.randomElement() ?? Int.random(in: 1...100) }
