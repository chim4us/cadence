import HelloWorld from 0x01

transaction(txGreeting: String) {

  prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    log(HelloWorld.hello())
    HelloWorld.changeGreating(newGreeting: txGreeting)
    log(HelloWorld.hello())
  }
}
