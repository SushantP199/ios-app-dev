// rawValue

enum PaperSize: String {
    case a4
    case a5
    case legal = "a7"
}

let myPaper = PaperSize.legal
print(myPaper)

/*
    enum PaperSize: Int {
        case a4
        case a5
        case legal
    }
 
    print(myPaper.rawValue) <- while calling this enum doesn't follow any type of Int

    Error occurs here is, Value of type 'PaperSize' has no member 'rawValue'.
 
    So it means, by default enum doesn't have this raw value feature.
 
    rawValue feature is enabled when we follow a protocol of type Int or
    enum of type Int.
*/
 
/*
    enum PaperSize: Int {
        case a4
        case a5
        case legal
    }
 
    print(myPaper.rawValue)
    
    output: 2
*/

/*
   enum PaperSize: Int {
       case a4 = 2
       case a5
       case legal
   }

   print(myPaper.rawValue)
   
   output: 4
*/

print(myPaper.rawValue)
