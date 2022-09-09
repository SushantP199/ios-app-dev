// Tuples

// A comma separated list of types, enclosed in parenthesis

// How to declare a tuple ?
var course : (String, Int, Bool) = ("iOS App Dev Course", 999, true)

// better version of declaring tuple
var courze : (courzeName : String, courzePrice : Int, courzeStatus : Bool) = ("iOS App Dev Course", 999, true)

// direct assignment of tuple without strict type mention
var covrse = ("iOS App Dev Course", 999, true)

// better version of direct assignemnt of tuple without strict type mention
var covrze = (covrzeName : "iOS App Dev Course", covrzePrice : 999, covrzeStatus : true)

// Accessing tuple elements
course.0
courze.courzeName
covrse.0
covrze.covrzeName

var (courseName, coursePrice, courseStatus) = covrze

courseName
coursePrice
courseStatus
