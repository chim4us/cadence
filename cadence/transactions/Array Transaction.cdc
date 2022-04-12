import ADS from 0x02

transaction(acctName: String){
    prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    ADS.addName(name: acctName)
  }
}