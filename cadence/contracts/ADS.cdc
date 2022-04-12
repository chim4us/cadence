access(all) contract ADS {

  pub var allNames: [String]

  pub var luckyNumbers: {String: Int}

  pub var luckyNumberStruct: {String: identity}

  pub struct identity{
    pub let luckyNumber: Int

    pub var favoriteFruit: String 

    init(_luckyNumber: Int, _favoriteFruit: String){
      self.luckyNumber = _luckyNumber
      self.favoriteFruit = _favoriteFruit
    }

    pub fun changeFavourFruit(newFruit: String){
      self.favoriteFruit = newFruit
    }
  }

  pub var stuff: [AnyStruct]

  // Public function that returns our friendly greeting!
  pub fun addName(name: String) {
       self.allNames.append(name)             ///modifies an array
       //self.allNames.concat(name)           ////Makes a new one
  }

  pub fun addLuckyNumber(name: String, luckyNumber: Int){
    pre{
      self.allNames.contains(name) : "This name is not in allNames"
    }
    self.luckyNumbers[name] = luckyNumber

    //self.luckyNumbers.keys    returns an array of keys
    //self.luckyNumbers.values    returns an array of values
    //self.luckyNumbers.remove(key: name)
  }

  pub fun addIdentity(name: String, luckyNumber: Int, favoriteFruit: String){
    pre{
      self.allNames.contains(name) : "This name is not in allNames"
    }
    self.luckyNumberStruct[name] = identity(_luckyNumber: luckyNumber,_favoriteFruit: favoriteFruit)
  }

  // The init() function is required if the contract contains any fields.
  init() {
      self.allNames = []

      self.luckyNumbers = {}

      self.luckyNumberStruct = {}

      self.stuff = [3, "Hello", 2637.993]

      //self.allNames = ["Frank"]
      //self.luckyNumbers = {"Frank": 14}
  }
}
