import UIKit

class Vehicle {
    let name: String
    let color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }

    func makeHonk() {
    print("Honk")
    }
}
let vehicle = Vehicle(name: "Dodge", color: "Blue")
print(vehicle.name)
vehicle.makeHonk()

