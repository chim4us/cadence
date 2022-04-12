import ADS from 0x02

transaction(Acctname: String, luckNum: Int){
    prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    ADS.addLuckyNumber(name: Acctname, luckyNumber: luckNum)
  }
}