// Error Handling

enum UserError: Error {
    case InvalidId
    case InvalidName
}

func userDetails (id: Int, name: String) throws {
    if id == 0 {
        throw UserError.InvalidId
    }
    if name == "" {
        throw UserError.InvalidName
    }

}
/*
    throw keyword is being used inside the function.
 
    throws keyword is being used in function signature itself,
    which indicate now function has special category this means
    function might end up executing as it is like regular function
    but it can also potentially throw an error.
 
    throwed errors from function handled in do-try-catch block shown below.
 
    syntax:
    func <function_name> (<function_parameteres>) throws -> <return_type> {
        
        throw <error_type> // throw error statement (one or more) based on some decisions
        
        // regular function statement
        // more statements
    }
*/

// userDetails(id: 0, name: "")
/*
    above syntax is used call regular function.
    to call or utilize (error) function with throws keyword in signature i.e. functiom capable of
    throw errors for some unexpected cases instead crashing program or app, the below syntax is used.
        
    syntax:
    do {
        try <function_name> (<function_paramters>)
    } catch <error_type> {
        // statements (simply error messages or logic required after particular error thrown)
    }
*/

do {
    // try userDetails(id: 2, name: "")
    try! userDetails(id: 2, name: "")
    /*
        after appending ! exclamation mark after try keyword bad thing happens such that catch block
        is unreachable and if any error occurs, fatal error raised and execution gets interrupted i.e. application crashes.
    */
} catch UserError.InvalidId {
    print("Invalid Id")
} catch UserError.InvalidName {
    print("Invalid Name")
}

