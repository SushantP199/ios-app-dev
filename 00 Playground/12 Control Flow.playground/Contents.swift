// Control Flow Statements


// For In loop

let marvelHeros = [
    "Ironman",
    "The_incredible_hulk",
    "Thor",
    "The_Avengers"
]

for hero in marvelHeros {
    print(hero)
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
// _ underscore is used instead of variable namee when we don't have to use that name in the block but we need that block structure to perform some task

print("\(base) to the power of \(power) is \(answer)")


// While loop

var i = 1, n = 6

while (i <= n) {
    print(i)
    i += 1
}


// Repeat While loop (analogous to a do while loop in other languages)

var start = 5
var end = 0

repeat {
    print(start)
    start = start - 1
} while (start >= end)


// If conditional

var age : Int = 80
var age2 : Int = 40

if age > 70 {
    print("Hero is gettinbg is old!")
}


// Ternary Operator condtional

let young = (age > age2) ? ("Hero is old") : ("Hero is young")


// If Else conditional

var dcMovies = ["Suicide Squad", "Justice League"]

for movie in dcMovies {
    
    if (movie == "Suicide Squad") {
        print("Produced by DC")
    } else {
        print("Not produced by DC")
    }
}

var avengers = [
        "Captain America",
        "Ironman"
]

for avenger in avengers {
    
    if avenger == "Captian America" {
        print("Top Avenger")
    } else if avenger == "Ironman" {
        print("Stylish Avenger")
    } else {
        print("Not An Avenger")
    }
}


// Switch Case conditional

let year = 2019

var movie : String

switch year {

case 2018 :
    movie = "Aquaman"
case 2019 :
    movie = "Shazam"
    fallthrough // Control Transfer statement
case 2020 :
    movie = "Birds of Prey"
default :
    movie = ""
    print("The movie for year you asked is out of cases. Year must be ranges 2018...2020")
}

movie

/*
    year = 2019 matching to case 2019 and was movie = "Shazam"
    but deu to control transfer statement fallthrough, case fall through just to next case
    where movie becomes movie = "Birds of Prey"
*/

// for more hint : https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
