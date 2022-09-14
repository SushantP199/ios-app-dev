// Closures

/*
    closure syntax:
 
    {
        (<parameter(s)>) -> <return_type> in
 
        // statements
        // more statements
    }
*/

var dcWorld = {
    print("Welcome to DC")
}
// simplest form of closure without strict type mention

var myClosure : () -> () = {}
// simplest form of closure with strict type mention

var numClosure : (Int) -> (Int) = {
    (myNum : Int) -> Int in
    
    return myNum + 2
}
numClosure(2)
// closure with strict type mention example

var anotherNumClosure = {
    myNum in
    
    return myNum + 4
}
// closure without strict type mention example

var anotherNumClosureMostUsedSyntax = { myNum in
    return myNum + 4
}
// clossure without strict type mention example for most common use case

/* Different types of closure */

// closure with only return type

var founded = { () -> Int in
    return 2022
}

// closure with only parameter(s)

var founder = { (name : String) in
    print(name)
}
founder("Sushant")

// closure with paramter(s) and return type

var anotherFounder = { (name : String) -> String in
    return name
}

var anotherFounderFullName = { (firstName : String, lastName : String) -> String in
    return firstName + lastName
}

/* when closure actually comes in the picture */

let movieNmae = [ "SuicideSquad", "WonderWoman", "JusticeLeague", "Joker", "TheFlash"]

var sortedMovieName = movieNmae.sorted { (movieOne : String, movieTwo : String) -> Bool in
    return movieOne > movieTwo
}
print(sortedMovieName)

// closure as a part of function

func calculate (num : Int) -> Int { num * 2 }

func sum (num1 : Int, num2 : Int, closureparam : (Int) -> (Int)) -> Int {
    var sum = 0
    for num in num1...num2 {
        sum += closureparam(num)
    }
    return sum
}

print(sum(num1: 0, num2: 5, closureparam: calculate))

/* closure execute when we want it to execute after some moment and when it is being called */

import Foundation

func dataTask (with url : URL, completionHandler : @escaping (Data?, URLResponse?, Error?) -> Void) -> Void {
    // URLSesssionDataTask the actual return type of closure completionHandler just than type
    
    /*
        we have perform some data task in this function and we want to do something with the url,
        
        we don't wnat to call completionHandler in between when some request is being going through
        the url, we have call completionHandler when the things are complete, when we have talk to some database,
        when we have talk to some image which suppose to be downloaded or we have talk to some json response thats come around, once we do all of these then only we execute completionHandler closure, this is done by using @escaping keyword as shown in code
     
        i.e simply means, once entire function done its job, then executes completionHandler or (any) closure (provided with @escaping keyword after colon and before type mention in strict type mention syntax)
    */
}

/* auto closure */

func printNumbers (result : () -> Void) {
    print("One")
    result()
    print("Two")
}

printNumbers {
    print("Between One & Two")
}
// printNumbers jsut above is following similar syntax of sorted method used somewhere above
// where () pair of parenthesis of function call syntax is converted to {} pair of curly braces and
// passed closure (from { at line no 116 to } at line 118 after printNumbers at line 116 ) as argument to paramter
// funtion printNumber executes print fuction, then result closure, finally print function again

printNumbers(result : { print("Between One & Two") })
// above line of code is precise form of code from line 116 to line 118

// using autoclosure keyword
// if we just passed closure as it is without wrapping that closure with curly braces { } as argument
// to paramter in function call, then that closure content automatically wrapped implicitly
// when we use @autoclosure keyword to that paramter after colon and before type mention in strict type mention syntax
func printNumberz (result : @autoclosure () -> Void) {
    print("One")
    result()
    print("Two")
}

printNumberz(result : print("Between One & Two"))

// using _ underscore operator
// which will not bother about closure paramter name or label mention while argument assignment in function call
func printNumbetz (_ result : @autoclosure () -> Void) {
    print("One")
    result()
    print("Two")
}

printNumbetz(print("Between One & Two"))
