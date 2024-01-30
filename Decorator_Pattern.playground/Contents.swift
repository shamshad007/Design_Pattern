import UIKit

protocol Car {
    var upgrades: [String] { get }
    var price: Int { get }
}

protocol CarDecorator: Car {
    var car: Car { get }
}

struct BaseCar: Car {
    var upgrades: [String] = ["Engine"]
    var price: Int = 10000
}

struct BaseWheel: CarDecorator {
    var car: Car
    
    var upgrades: [String] {
        car.upgrades + ["Base Wheels"]
    }

    var price: Int {
        car.price + 1000
    }
}

struct SportsWheel: CarDecorator {
    var car: Car

    var upgrades: [String] {
        car.upgrades + ["Sports Wheels"]
    }

    var price: Int {
        car.price + 3000
    }
}

struct AirConditions: CarDecorator {
    var car: Car

    var upgrades: [String] {
        car.upgrades + ["Air Condition"]
    }

    var price: Int {
        car.price + 2000
    }
}

struct AutoPilot: CarDecorator {
    var car: Car

    var upgrades: [String] {
        car.upgrades + ["Auto Pilot"]
    }

    var price: Int {
        car.price + 5000
    }
}

var baseCar = BaseCar()
baseCar.price
var sportCar = SportsWheel(car: baseCar)
sportCar.price
var acCar = AirConditions(car: sportCar)
acCar.price
var autoPilot = AutoPilot(car: acCar)
autoPilot.price

autoPilot.upgrades.forEach {print($0)}
