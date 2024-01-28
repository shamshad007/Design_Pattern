import UIKit

protocol Work {
    func sing(song: String) -> String
}

class Boss {
    var delegate: Work?
}

class Employee: Work {

    init() {
        boss.delegate = self
    }

    func sing(song: String) -> String {
        "I am Singing \(song)"
    }
}

var boss = Boss()
let sham = Employee()
boss.delegate?.sing(song: "Hamari Adhuri Kahani")

