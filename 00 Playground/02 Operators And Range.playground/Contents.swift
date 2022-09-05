// Operators

var result = 2 + 3;
print(result)

/*
    Assignment : =
    Arithmetic : +, -, *, /
    Remainder : %
    Compound Assignment : +=, -=, *=, /=
    Comparision : ==, !=, > , <, >=, <=
     
    more, hint : https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
*/

// Range Operators : ... (this 3 dots indicates range operator)
// ... Closed Range Operator
// ..< Half Open Range Operator

var myRange = 1...5 // Closed Range

print(myRange)

print(myRange.contains(5))

var newRange = 3..<7 // Range

print(newRange)

print(myRange.contains(7))
