// Structures

struct Marvel {
    var series : String = ""
    var aired : Int = 0
    var network : String = ""
}

var movieOne = Marvel(series: "Wanda Vision", aired: 2021, network: "Disney")

print("Series \(movieOne.series)")

var movieTwo = Marvel()
movieTwo.series = "Loki"
movieTwo.aired = 2021
movieTwo.network = "Disney"

print("Series \(movieTwo.series)")


struct MarvelSeries {
    var series : String = ""
    var aired : Int = 0
    var network : String = ""
    
    func details() -> String {
        return ("\nSeries : \(series)\nAired In : \(aired)\nOn Network : \(network)\n")
    }
}

var marvelSeries = MarvelSeries()
marvelSeries.series = "Ms. Marvel"
marvelSeries.aired = 2022
marvelSeries.network = "Disney"

print(marvelSeries.details())


struct MarvelProduction {
    var series : String
    var aired : Int
    var network : String
    
    init(Series: String, AiredIn: Int, Network: String){
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
    /*
        When we don't initialize structure variable with any (default) values, we use
        instance like method initializer i.e. init to initialize structure variable
        with some values given bu user as shown in above code.
     
        init is invoked as soon as we create object (make use) of structure.
    */
}

var marvelProduction = MarvelProduction(Series: "Hawkeye", AiredIn: 2021, Network: "Disney")

print("Series is \(marvelProduction.series)")
print("Aired in \(marvelProduction.aired)")
print("On network \(marvelProduction.network)")


// Struct v/s Class

struct Movie {
    var name : String = ""
}

var movie = Movie(name: "Ironman")
var anotherMovie = movie

anotherMovie.name = "Avengers"

print()
print(movie.name)
print(anotherMovie.name)
/*
    As we can see in print results
    movie.name holds old value Ironman
    anotherMovie.name of course hold new value Avengers.
 
    But this behavior indicates that,
    changing value of anotherMovie doesn't changing orignal value
    of movie from which anotherMovie getting value on line no 74.
 
    Hence, we can say Struct is Value Type.
 
    When we don't want change to happen in original place (like above) too we use Structure,
    When we want change to happen in original place too then we use Class.
*/
