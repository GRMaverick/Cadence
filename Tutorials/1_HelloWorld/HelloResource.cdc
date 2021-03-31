pub contract HelloResourceContract
{
    pub resource HelloResource
    {
        pub fun GetString(): String
        {
            return "Hello, ResourceWorld!"
        }
    }

    init()
    {
        let newResource <- create HelloResource()
        self.account.save(<-newResource, to: /storage/Hello)

        log("HelloResource: Created and Stored")
    }
}