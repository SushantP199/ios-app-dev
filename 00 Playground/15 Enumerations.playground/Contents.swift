// Enums

/*
    Enum is very very useful in the case, specially we want
    to restrict ourself with a limited options
*/

enum Marvel {
    case Ironman
    case Spiderman
    case CaptainAmerica
    case BlackPanther
    case Thor
}

var hero = Marvel.BlackPanther

if hero == .BlackPanther {
    print("Wakanda's KING")
}

switch hero {
case .BlackPanther:
    print("Wakanda's KING")
case .CaptainAmerica:
    print("The first avenger")
case .Thor:
    print("king of earth")
case .Ironman:
    print("Ironman")
case .Spiderman:
    print("Spiderman")
}

enum MarvelMovies {
    case Name(String)
    case Year(Int)
}

//

var movieName = MarvelMovies.Name("Doctor Strange")
var movieYear = MarvelMovies.Year(2016)

switch movieName {
case .Name(let moviename):
    print("Movie name is \(moviename)")
case .Year(let movieyear):
    print("Movie year is \(movieyear)")
}

switch movieYear {
case .Name(let moviename):
    print("Movie Name is \(moviename)")
case .Year(let movieyear):
    print("Movie year is \(movieyear)")
}

// Recursion Enums

indirect enum ArithmeticExpression {
    case num(Int)
    case add(ArithmeticExpression, ArithmeticExpression)
}
/*
    Calling enum recurvisely as above it might end up in using all the memory that we have,
    so basically we going into infinite loop, so that our memory doesn't crash swfit gives
    us special keyword indirect (need to be added just before enum keyword).
*/

func evalute (_ expression : ArithmeticExpression) -> Int {
    switch expression {
    case .num(let value):
        return value
    case .add(let first, let last):
        return evalute(first) + evalute(last)
    }
}

let a = ArithmeticExpression.num(34)
let b = ArithmeticExpression.num(234)

let addition = ArithmeticExpression.add(a, b)
print(evalute(addition))

/*
    Why we are writing this much of things for just adding of two numbers ?
 
    This is not just adding of two numbers. This example showing us how much safety
    we are able to add, this kind of safety helps so much while bringing back values
    from apis or from the database
*/

// let additionFail = ArithmeticExpression.add(34, 234)
// print(evalute(addition))
