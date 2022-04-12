import ADS from 0x02

transaction(Acctname: String, luckNum: Int, favoriteFruit: String){
    prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    ADS.addIdentity(name: Acctname, luckyNumber: luckNum, favoriteFruit: favoriteFruit)
  }
}