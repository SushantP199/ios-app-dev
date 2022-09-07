let googleStocks = 12.5

let userStockBuy : Int =  Int(googleStocks)

let userAge = "55a"

let userAgeInSystem = Int(userAge)
// while using Int(userAge)! the force nunwrap using ! operator after type entity
// if we get expected result value (non nil) then its okay value is used & operation is performed
// if we don't get expected result value  (nil) then program execution aborted at that point

let storedValue = (userAgeInSystem ?? 0) + 5
// while using userAgeInSystem ?? 0 if userAgeInSystem non nil value then its value is useed
// else value on R.H.S of ?? nil-coalescing operator is used
