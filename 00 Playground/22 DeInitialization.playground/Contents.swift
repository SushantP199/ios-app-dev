// DeInitialization

class Hero {
    var heroName = "Batman"
    
    init () {
        print("I am \(heroName)")
    }
    
    func toolBelt () {
        print("Here is your cool gadget!")
    }
    
    deinit {
        print("Batman is gone, \(heroName)")
    }
    /*
        deinit only and only works when reference is about to go out.
        
        when is object is not being utilized then it is automatically being cleared
        from the memory by garbage collector.
     
        in case we want to do something special when your object being cleaned up
        we go ahead and write a method for it.
    */
}

for _ in 1...4 {
    let newHero = Hero()
    newHero.toolBelt()
}

/*
    (To know more about memory usage in swift apps)
    Know, What is ARC ?
    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiSmfOq7dX6AhXF2nMBHcEGAdkQFnoECAcQAw&url=https%3A%2F%2Fdocs.swift.org%2Fswift-book%2FLanguageGuide%2FAutomaticReferenceCounting.html&usg=AOvVaw3l7WUs0deEZa8Cq695Qr2G
*/
