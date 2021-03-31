pub contract HelloContract
{
    // Declare Public Fields
    pub let greeting: String

    // Declare Init Function
    init()
    {
        self.greeting = "Hello, World!"
    }

    pub fun Hello(): String 
    {
        return self.greeting
    }
}
 