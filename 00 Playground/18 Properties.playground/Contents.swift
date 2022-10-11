// Properties

class Comic {
    var production: String = ""
    var name: String = ""
    /*
        Any variables or constants described inside the class are termed as properties.
    */
}

var comic = Comic()
comic.production = "Marvel"
comic.name = "Black Widow"

print("Name is : \(comic.name)\nProduction is : \(comic.production)")


// Lazy stored property

class ComicStore {
    var name: String
    
    /* This lazy variables (loosely calling) are defined */
    lazy var comicInfo: String = {
        return "Welcometo \(self.name)"
    }()
    /*
        The goal of lazy variable is that they are very lazy, they don't define themselves immediately.
        They are defined when they are actually called.
        So when we call or use this lazy variable comicInfo first time, then only memory allocated for it and its value computed at that point of time.
    */
    
    init(Name: String){
        self.name = Name
    }
}

let store = ComicStore(Name: "Marvel Production")
print(store.comicInfo)
/*
    When we call .comicInfo lazy property on store object,
    at that exact time memory consumed (i.e. allocated) and its value calculated (i.e. {}() evaluated)
*/


// Computed Properties

class Circle {
    var radius: Double?
    var cval: Double?
    var Area: Double {
        get {
            return radius! * radius!
        }
        set (newArea) {
            cval = Double(newArea) * 3.14
        }
    }
}

let result = Circle()
result.Area = 20
print(result.cval!)

// Read Only

class Multiplication {
    var num1: Int = 5
    var num2: Int = 5
    
    var multiply: Int {
        get {
            return num1 * num2
        }
    }
}

var multiplication = Multiplication()
// multiplication.multiply = 40 gives error, cannot assign to property as multiply is get only property
print(multiplication.multiply)


// Swift Property Observer

class Changes {
    var num1: Int =  10 {
        willSet (newValue) {
            print("value of \(newValue)")
        }
        didSet { // this line also can be written as, didSet (oldValue) {
            if num1 > oldValue {
                print("added \(num1 - oldValue)")
            }
        }
    }
}

let answer = Changes()
answer.num1 = 56
answer.num1 = 345

// Observer just observe the values, in case we want Observer do something they can certainly
// Property Observers (willSet & didSet), observe changes to property values and respond to them
