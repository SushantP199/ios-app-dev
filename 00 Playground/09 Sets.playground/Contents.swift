// Sets

// Every value in set is uniue & All values are unordered

// How to delcare a set ?

var challengez : Set<String> = []
// above is more precise version of set

// in recent case people used to like this syntax
var challenges : Set = [
    "get the flag",
    "fold the flag",
    "take stones",
    "fold the flag",
    "get to the home"
]

challenges

challenges.contains("get the flag")
challenges.contains("get the flags")

challenges.sorted()

/*
    All the values in a set needs to hashable ( by default )
    If they are not hashable, then they need to follow protocol of hashable
*/

var challengesVersionTwo : Set = [
    "get the flag",
    "get the guns",
    "fire the guns",
    "get to the home"
]

var intersectionOfChallengesVersions = challenges.intersection(challengesVersionTwo)

var differenceOfChallengesVersions = challenges.symmetricDifference(challengesVersionTwo)

var unionOfChallengesVersions = challenges.union(challengesVersionTwo)

var subtractionOfChallengesVersions = challenges.subtracting(challengesVersionTwo)
