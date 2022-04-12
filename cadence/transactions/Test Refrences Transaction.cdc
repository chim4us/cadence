import ResourceStuff from 0x03

transaction{
    prepare(acct: AuthAccount) {

    }

  execute {
    var pet: @ResourceStuff.Pet <- ResourceStuff.createPet(name: "Bob")

    var petRef: &ResourceStuff.Pet = &pet as &ResourceStuff.Pet
    log(pet.name)
    ResourceStuff.changePetName(pet: petRef)
    log(pet.name)
    
    destroy pet
  }
}