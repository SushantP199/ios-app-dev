// Methods

class SuperHero {
    var name = ""
    func heroName (str: String) {
        name += str
        print(name)
    }
}

var detail = SuperHero()
detail.heroName(str: "Captain America ")
detail.heroName(str: "Iron Man ")

// init Method

class AreaOfRect {
    let n1: Int
    let n2: Int
    let area: Int
    
    init (No1: Int, No2: Int) {
        self.n1 = No1
        self.n2 = No2
        area = (No1 * No2)
    }
}

let area = AreaOfRect(No1: 34, No2: 45)
print("Area Of Rectangle is : \(area.area)")

// mutating Method

struct Modify {
    var side = 45
    
    mutating func areaOfSqaure () -> Int { // Mark method 'mutating' to make 'self' mutable
        side *= side // Left side of mutating operator isn't mutable: 'self' is immutable
        return side
    }
}

enum Heros {
    case Marvel, Avengers, CaptainAmerica

    mutating func Types () { // Mark method 'mutating' to make 'self' mutable
        switch self {
        case .Marvel:
            self = .Avengers // Cannot assign to value: 'self' is immutable
        case .Avengers:
            self = .CaptainAmerica // Cannot assign to value: 'self' is immutable
        case .CaptainAmerica:
            self = .Marvel // Cannot assign to value: 'self' is immutable
        }
    }
}

var hero = Heros.Marvel
hero.Types()
print(hero)


// Swift nested class method access
// more hint : https://stackoverflow.com/questions/26806932/swift-nested-class-properties

class AreaOfSquare {
    class func areaSq (num: Int) -> Int {
        return num * num
    }
}

let squareArea = AreaOfSquare.areaSq(num: 30)

