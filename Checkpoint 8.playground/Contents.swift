import Cocoa

// Protocole décrivant un bâtiment
protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var estateAgentName: String { get }
    
    func printSalesSummary()
}

// Struct représentant une Maison
struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var estateAgentName: String
    
    func printSalesSummary() {
        print("Maison à vendre avec \(numberOfRooms) pièces, au prix de \(cost) $. Agent immobilier : \(estateAgentName).")
    }
}

// Struct représentant un Bureau
struct Office: Building {
    var numberOfRooms: Int
    var cost: Int
    var estateAgentName: String
    
    func printSalesSummary() {
        print("Bureau à vendre avec \(numberOfRooms) pièces, au prix de \(cost) $. Agent immobilier : \(estateAgentName).")
    }
}

// Exemple d'utilisation
let maison = House(numberOfRooms: 5, cost: 500_000, estateAgentName: "Sophie Dubois")
let bureau = Office(numberOfRooms: 10, cost: 1_200_000, estateAgentName: "Jean Martin")

maison.printSalesSummary() // Maison à vendre avec 5 pièces, au prix de 500000 $. Agent immobilier : Sophie Dubois.
bureau.printSalesSummary() // Bureau à vendre avec 10 pièces, au prix de 1200000 $. Agent immobilier : Jean Martin.
