// Dictionaries

// How to declare dictionary ?
var youtubeVideos : [String : Int] = [
    "react course" : 2346,
    "angular course" : 3344,
    "nodejs course" : 5566
];

// Accessing value of dictionary using key
var angularVideo = youtubeVideos["angular course"]

// Methods, Properties and some Operations on Dictionary

youtubeVideos.keys
youtubeVideos.values
// above properties giving some kind of objects instead of direct values

// hence we unchaining those objects by casting results to arrays of string and int like we did for float to int in type conversion section
[String](youtubeVideos.keys)
[Int](youtubeVideos.values)

var nodejsId = youtubeVideos.updateValue(6666, forKey: "nodejs course")
// updateValue() return old value of key of which value to be updated on successful updation

youtubeVideos

// way to remove pair of key value from dictionary
youtubeVideos["nodejs course"] = nil
youtubeVideos

// another way to remove pair of key value from dictionary
youtubeVideos.removeValue(forKey: "angular course")
youtubeVideos


// Another example of dictionary

var faq = [
    "faq 1" : [
        "question" : "what's the start date of course",
        "answer" : "tommorow"
    ],
    "faq 2" : [
        "question" : "what's the price",
        "answer" : "Rs 499"
    ],
]

var questionTwo = faq["faq 2"]?["question"]
/*
    The hack used in above ? is knows as Optional Chaining similar to Forced Unwrapping ! But
    If things before ? is non nil, then only futher things after ? is called
    If things before ? is nil, then things after ? is not called at all (i.e. operation after ? will not happened)
    Optional Chaining Returns Optional Type When ? Is Used On Anything
*/

// empty dictionary can be defined as ( but here strict type is must)
var dictionary : [Int : String] = [:] 
