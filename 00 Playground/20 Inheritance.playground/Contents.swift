// Inheritance

class Heros {
    var name: String = ""
    var gender: String = ""
    var age: Int = 0
    init (Name: String, Gender: String, Age: Int) {
        self.name = Name
        self.gender = Gender
        self.age = Age
    }
}

class Marvel : Heros {}
class DC : Heros {}

let marvelHero = Marvel.init(Name: "Thor", Gender: "Male", Age: 1500)

// Overriding Methods

class AvengerOne {
    func partName () {
        print("The avengers (super class)")
    }
}

class AvengerTwo : AvengerOne {
    override func partName() {
        print("The avengers: Age Of Ultron (sub class)")
    }
}

// Overriding Properties

class AvengerThree {
    var year = 2017
    var movieName: String {
        return "Avenger: Infinity War" // same as getters and setters, this movieName property will always return same thing "Avenger: infinity War"
    }
}

class AvengerFour : AvengerThree {
    var releasedYear = 2019
    override var movieName: String {
        return "Avenger: End Game"
    }
    /*
        override var year: Int = 2018, cannot override with a stored property 'year',
        we should use syntax like above property movieName to override properties of super class
    */
}





