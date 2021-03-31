import HelloResourceContract from 0x01cf0e2f2f715450

transaction
{
    prepare(acct: AuthAccount)
    {
        let resource <- acct.load<@HelloResourceContract.HelloResource>(from: /storage/Hello)
        log(resource?.GetString())

        acct.save(<-resource!, to: /storage/Hello)
    }
}
