namespace ClassLibrary1;

public class Class1
{
    public static void Hello()
    {
        Console.WriteLine("World");
    }

    public static void Foo()
    {
        Foo();
    }

    public void DoNothing()
    {
        throw new NotImplementedException();
    }
    
}