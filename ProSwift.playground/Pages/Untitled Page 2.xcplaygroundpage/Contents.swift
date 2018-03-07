class Doctor {
    var name: String
    var currentPatient: String

    init(name: String, currentPatient: String) {
        self.name = name
        self.currentPatient = currentPatient
    }
}

class Surgeon: Doctor {
    var title: String

    init(name: String, title: String, currentPatient: String) {
        self.title = title
        super.init(name: name, currentPatient: currentPatient)
        output()
    }

    func output() {
        title = "Mrs."
        print("Called from init")
    }
}

let sergeon = Surgeon(name: "Jones", title: "Mr.", currentPatient: "Brendon")
print(sergeon.title)
