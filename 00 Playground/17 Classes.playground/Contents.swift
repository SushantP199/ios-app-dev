// Classes

class DC {
    var series : String
    var aired : Int
    var network : String
    
    init(Series : String, AiredIn : Int, Network : String) {
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
}

var dc = DC(Series: "Wonder Woman", AiredIn: 2017, Network: "Atlas")

print("Movie name is \(dc.series)")
print("Aired in \(dc.aired)")
print("On network \(dc.network)")

// Class is a Reference Type

class Movie {
    var name : String
    
    init(Name : String) {
        self.name = Name
    }
}

var movie = Movie(Name: "Superman")
var anotherMovie = movie

anotherMovie.name = "Batman"

print(movie.name)
print(anotherMovie.name)
/*
    As we can see in print results
    movie.name holds new value Batman (previously holding Superman)
    anotherMovie.name of course hold new value Batman.
 
    But this behavior indicates that,
    changing value of anotherMovie at line no 34 does changes orignal
    value of movie from which anotherMovie getting value at line no 32.
 
    Hence, we can say Class is Reference Type.
*/
