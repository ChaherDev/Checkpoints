import Cocoa

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    mutating func changeGear(to newGear: Int) {
        if newGear >= 0 && newGear <= 6 {
            currentGear = newGear
        } else {
            print("Gear \(newGear) is out of range. Please choose a gear between 0 and 6.")
        }
    }
}

var myCar = Car(model: "Toyota Corolla", numberOfSeats: 5, currentGear: 1)
print("Current gear: \(myCar.currentGear)")

myCar.changeGear(to: 3)
print("Gear after changing: \(myCar.currentGear)")

myCar.changeGear(to: 7)  // Rapport de vitesse invalide
print("Gear after invalid change: \(myCar.currentGear)")
