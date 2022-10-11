// Protocols

/*
    Protocol is similar to interface in java or other oops languages.
 
    Protocol defines a blue print of methods, properties or other requiremnts,
    then protocol can be adopted by a class, structure or enumeration which
    provides actual implementation of those requirements.
*/

protocol AirCommand {
    func checkPlane ()
    func checkFeul ()
    var some: Int  { get set }
}

class Cadet : AirCommand {
    var some: Int = 24
    
    func checkPlane() {
        print("Plane checked")
    }
    
    func checkFeul() {
        print("Fuel checked 3 times")
    }
}

// Protocol is the standard coming from the military

/*
    When we follow i.e. use protocol we avoid so much of trouble while writing the code,
    specially while writing the test cases and protocol becomes such a good thing to us, devlopers.
 
    Ex. like in above code if write var some: Double = 24 will produce, it should be strictly
    following Int type, such small scenario represents how protocol in big apps help us out.
*/

