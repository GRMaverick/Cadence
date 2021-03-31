import HelloContract from 0x01cf0e2f2f715450

transaction
{    
    // No need to do anything in prepare because we are not working with
    // account storage.
    prepare(acct: AuthAccount)
    {
        log("HelloTx.prepare");
    }

    // Execute, calling Hello on the Contract which will log the string
    execute
    {
        log("HelloTx.execute");
        log(HelloContract.Hello())
    }
}
 