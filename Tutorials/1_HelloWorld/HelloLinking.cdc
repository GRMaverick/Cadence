import HelloResourceContract from 0x01cf0e2f2f715450

transaction
{
    prepare(account: AuthAccount)
    {
        let capability = account.link<&HelloResourceContract.HelloResource>(/public/Hello, target:/storage/Hello)
        let reference = capability!.borrow() ?? panic("Could not borrow a reference to the hello capability")
        log(reference.GetString())
    }
}