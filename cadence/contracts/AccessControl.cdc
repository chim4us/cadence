access(all) contract AccessControl {

  pub let testStruct: SampleStruct 

  pub struct SampleStruct{
    pub(set)  var a: String
    access(all) var b: String
    access(contract) var c: String
    access(self) var d: String

    access(all) fun accessAllFun(){
      log("access All Function")
    }

    access(contract) fun accessContractFun(){
      log("access Contract Function")
    }

    access(self) fun accessSelfFun(){
      log("access Self Function")
    }

    init(){
      self.a = "a"
      self.b = "b"
      self.c = "c"
      self.d = "d"
    }
  }

  init (){
    self.testStruct = SampleStruct()
  }
}
