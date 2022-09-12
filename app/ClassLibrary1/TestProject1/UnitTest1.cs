using ClassLibrary1;
using Xunit;

namespace TestProject1;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        var obj = new Class1();

        Assert.NotNull(obj);
    }
}