// Strings

/*
    String is a data structure
 
    Any thing that organize our data or give a structure to our data that is a data strcture
 
    Not only Arrays does that but also Strings does that
*/

var greeting = "Hello!"
var username : String = "Sushant"
var age = 44

var myFinalNotice = "users's age \(age) and he lives in Canada"
/*
    The syntax \() inside any string , is the syntax of String Interpolation
    which indicating expression inside parethesis evalauted and replace expression
    inside parenthesis with syntax \() as a string valu i.e. \(expression) replaced
    with string value of result of expression inside any given string
*/
print(myFinalNotice)

var result = greeting + " " + username
print(result)


// Methods in Strings

greeting.count
greeting.contains("p")
greeting.contains("l")
greeting.isEmpty
greeting.uppercased()

myFinalNotice.split(separator: " ")

username.distance(from: username.startIndex, to: username.endIndex)
username.append("!")
username.removeLast()
greeting.append(" " + username)
username.suffix(from: username.index(before: username.endIndex))
username.insert(contentsOf: " Pagam", at: username.endIndex)

username.firstIndex(of: "t") == username.endIndex
/*
    The below code proves that, if last element of is at index n then
    endIndex property is pointing at index n + 1 (i.e. one extra index after last element)
*/
username.firstIndex(of: "t") == username.index(before: username.endIndex)

username[username.index(before: username.endIndex)]
// username[username.endIndex] this line produce error string index out of bound whic proves
// that endIndex prooperty points extra index just next to last elemnet index with above hypothesis
