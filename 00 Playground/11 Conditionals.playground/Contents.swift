// Conditional Statement : If Else

import Darwin

var accountBalance = 199
var alertTrigger = 100
var offerTrigger = 150

// <, >, <=, >=, !=, ==

if accountBalance <= alertTrigger {
    print("Please recharge your account")
} else if accountBalance >= offerTrigger {
    print("We are offering you a credit card")
}


var googleCred = true
var paymentInfo = false

// &&, ||, !

if googleCred && paymentInfo {
    print("Make purchase")
} else {
    print("Not allowed to make purchase")
}


// Optional Binding : Proper way to unwrap Optional Type uisng if let statement
// i.e. conditional statement here is used for fulfilling purpose optional binding

var courseName : String?
var isLoggedIn : Bool? = true

if let getCourseName = courseName {
    print(getCourseName)
}
/*
    Above code simply means, If value of variable at R.H.S of equal to i.e. courseName is non nil actual value then only allocate memory for declared variable at L.H.S of equal to i.e. getCourseName, then assign that non nil actual value to declared variable and execute the if let block. Else for nil values code don't even bother to allocate memory for declared variable hence don't nil values hence eventually no execution of if let block i.e. for nil value code does nothing. Therefore, with the use of optional binding our program does not crash for nil (if any occured) values, which we used to see in force unwraaping.
    
    for more hint :
     https://stackoverflow.com/questions/25828301/how-is-swift-if-let-evaluated
     https://cocoacasts.com/swift-fundamentals-working-with-optionals
 */

var courseWithPrice : [String : Int] = [
    "ReactJs" : 199,
    "AngularJs" : 299
]

if let user = isLoggedIn, let reactPrice = courseWithPrice["ReactJs"] {
    print("user is \(user) and react price is \(reactPrice)")
}
