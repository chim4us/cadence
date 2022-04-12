import ADS from 0x02

transaction(Acctname: String, favoriteFruit: String){
    prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    log(ADS.luckyNumberStruct[Acctname])

    ADS.luckyNumberStruct[Acctname]!.changeFavourFruit(newFruit: favoriteFruit)

    log(ADS.luckyNumberStruct[Acctname])
  }
}