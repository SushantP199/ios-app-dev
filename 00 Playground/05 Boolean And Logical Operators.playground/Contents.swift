var isLoggedIn : Bool = false

isLoggedIn = true // assume logged in via gggogle now

var cardDetails = false

var canPay = isLoggedIn && cardDetails // can pay to access paid course

var canAccessFreeCourse = isLoggedIn || cardDetails
