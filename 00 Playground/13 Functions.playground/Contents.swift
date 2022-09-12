// Functions

/*
    syntax for function definition:
    func <function_name> (<parameter(s)>) -> <return_type> {
        
        // statements
        // more statements
 
        return <paramter(s)>
    }
 
    syntax for function call :
    <function_name>(<paramter(s)>)
*/

// basic function with no paramters and no return type
func avengers () {
    print("Hello Avengers!")
}
avengers()

// function with parameters
func avenger (year : Int) {
    print("Avengers was released in \(year)")
}
avenger(year: 2019)

func Avengers (x : String , y : String) {
    print(x + " " + y)
}
Avengers(x: "Avenger", y: "Age of Ultron")

// function with return type
func avengerMovie () -> (String, String) {
    let movieName = "Avenger"
    let series = "Infinity War"
    
    return (movieName, series)
}
var val = avengerMovie()
print(val.1)

func add (a: Int, b: Int) -> Int {
    return a + b
}

var addition : (Int, Int) -> Int = add
// above line of code is way to store a function (i.e. using function as type)
// it is also very clear precise definition than just writing var addition = add

print("10 + 90 = \(addition(10, 90))")
