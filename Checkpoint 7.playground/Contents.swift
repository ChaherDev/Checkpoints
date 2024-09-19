import Cocoa

// Classe de base Animal
class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

// Sous-classe Dog (Chien)
class Dog: Animal {
    func speak() {
        print("Un chien aboie.")
    }
}

// Sous-classes de Dog
class Corgi: Dog {
    override func speak() {
        print("Le Corgi aboie joyeusement.")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Le Caniche aboie élégamment.")
    }
}

// Sous-classe Cat (Chat)
class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Un chat miaule.")
    }
}

// Sous-classes de Cat
class Persian: Cat {
    override func speak() {
        print("Le Persan miaule doucement.")
    }
}

class Lion: Cat {
    override func speak() {
        print("Le Lion rugit puissamment.")
    }
}

// Test des classes
let corgi = Corgi(legs: 4)
corgi.speak()  // Le Corgi aboie joyeusement.

let poodle = Poodle(legs: 4)
poodle.speak()  // Le Caniche aboie élégamment.

let persian = Persian(legs: 4, isTame: true)
persian.speak()  // Le Persan miaule doucement.

let lion = Lion(legs: 4, isTame: false)
lion.speak()  // Le Lion rugit puissamment.
