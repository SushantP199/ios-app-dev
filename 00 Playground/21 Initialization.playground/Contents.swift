// Initialization

class concatenate {
    var fname: String = "Captain"
    var lname: String = "America"
    
    var fullName: String
    
    init () {
        fullName = fname + " " + lname
    }
}

var name = concatenate()
print("Full name is \(name.fullName)")


class Marvel {
    var name: String
    
    init (movie: String, date: String) {
        print("\(movie)\n\(date)")
        self.name = movie
    }
    
    init (hero: String) {
        self.name = hero
    }
}

var hero = Marvel(hero: "Doctor Strange")
print(hero.name)

var marvel = Marvel(movie: "End Game", date: "11-05-2019")
print(marvel.name)


class Hero {
    var heroName: String
    
    init (firstname fname: String, lastname lname: String) {
        heroName = fname + " " + lname
    }
    
    init (_ fname: String, _ lname: String) {
        heroName = fname + " " + lname
    }
}

var heroName =  Hero(firstname: "Black", lastname: "Panther")
print(heroName.heroName)

var anotherHeroName = Hero("Captain", "America")
print(anotherHeroName.heroName)


// No init class

class DC {
    var heroName: String?
    var movie = "Aquaman"
}

var dc = DC()


// Failable init (works with both struct and class)

struct User {
    var uuid: String
    
    init? (uuid: String) { // Optional Type init
        if uuid.count == 5 {
            self.uuid = uuid
        } else {
            return nil
        }
    }
}

var user = User(uuid: "abc")
print(user ?? "no (user) object created")
