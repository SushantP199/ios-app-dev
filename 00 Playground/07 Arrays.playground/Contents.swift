print("lco.dev")

// Arrays

// How to declare array ?
var marvelHeros : [String] = ["Ironman", "Spiderman", "Thor"]

// Another way to declare array
var dcHeros : Array<String> = Array<String>()

// Accessing elements in array
marvelHeros[0]
marvelHeros[0] = "Captain America"
marvelHeros

// Methods on array
marvelHeros.count
marvelHeros.isEmpty
dcHeros.isEmpty

marvelHeros.append("Ironman")
marvelHeros.insert("Deadpool", at: 1)

marvelHeros.sort()
marvelHeros // sort() => sort the original exact array itself

marvelHeros.reverse()
marvelHeros // reverse() => reverse the original exact array itself

marvelHeros.sorted()
marvelHeros // sorted() => sort the same copy of exact array

marvelHeros.reversed()
marvelHeros // reversed() => reverse the same copy of exact array

// past tense methods works on copy of given data of some type and gives back data comes after operation performed on copy
// present tense works or original exact given data of some type and gives back data comes after operation perfomed on original exact data of some type
