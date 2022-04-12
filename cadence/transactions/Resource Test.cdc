import ResourceStuff from 0x03

transaction{
    prepare(acct: AuthAccount) {

    }

  execute {
    var bucket: @ResourceStuff.HelloBucket <- ResourceStuff.CreateHelloBucket()

    bucket.depositeHello(hello: <- ResourceStuff.CreateHello(greeting: "Hello"))

    log(bucket.hellos.keys)

    destroy bucket
    log("Done")
  }
}