// Tuples

// A comma separated list of types, enclosed in parenthesis

// How to declare a tuple ?
var course : (String, Int, Bool) = ("iOS App Dev Course", 999, true)

// better version of declaring tuple
var courze : (courzeName : String, courzePrice : Int, courzeStatus : Bool) = ("iOS App Dev Course", 999, true)

// Accessing tuple elements
course.0
courze.courzeName

var (courseName, coursePrice, courseStatus) = courze

courseName
coursePrice
courseStatus
