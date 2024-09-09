import Cocoa

enum squarreRootError: Error {
    case outOfBounds, noRoot
}

func squarreRoot(_ number: Int) throws -> Int {
    
    if number < 1 || number > 10_000 {
        throw squarreRootError.outOfBounds
    }
    
    for squarre in 1...number/2 {
        if squarre * squarre == number {
            return squarre
        }
    }

    throw squarreRootError.noRoot
    
}

let number = 64

do {
    let result = try squarreRoot(number)
    print("The squarre root of \(number) is \(result)")
} catch squarreRootError.outOfBounds {
    print("You have to put a number beetween 1 and 10,000")
} catch squarreRootError.noRoot {
    print("I only handle numbers with integer roots")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
