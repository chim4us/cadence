pub contract ResourceStuff{

  pub resource HelloBucket{
    pub var hellos: @{UInt64: Hello}

    pub fun depositeHello(hello: @Hello){
      ///1st way
      self.hellos[hello.uuid] <-! hello

      ///2nd way
      //var oldHello <- self.hellos[hello.uuid] <- hello
      //destroy oldHello
    }

    init(){
      self.hellos <- {}
    }

    destroy(){
      destroy self.hellos
    }
  }

  pub resource Pet{
    pub(set) var name: String

    init(_name: String){
      self.name = _name
    }
  }

  pub fun createPet(name: String):@Pet{
    return <- create Pet(_name: name)
  }

  pub fun changePetName(pet: &Pet){
    pet.name = "Alice"
  }

  pub resource Hello{
    pub let greeting: String

    init(_greeting: String){
      self.greeting = _greeting
    }
  }

  pub fun CreateHelloBucket(): @HelloBucket {
    var testHelloBucket: @HelloBucket <- create HelloBucket()

    return <- testHelloBucket
  }

  pub fun CreateHello(greeting: String): @Hello {
    var testResource: @Hello <- create Hello(_greeting: greeting)

    return <- testResource

    //destroy testResource
  }

  init(){
  
  }
}