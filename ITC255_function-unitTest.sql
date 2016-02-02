/*Function*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fractions
{
    class Program
    {
        static void Main(string[] args)
        {
            Fraction f1 = new Fraction("1/2");
            Fraction f2 = new Fraction("1/3");
            Fraction f3 = f1 + f2;
            Console.WriteLine(f3.ToString());
            Console.ReadKey();
        }
    }
}


/*Unit Test*/
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Fractions;

namespace UnitTestProject2
{
    [TestClass]
    public class UnitTest1
    {

        Fraction f1 = new Fraction("1/2");
        Fraction f2 = new Fraction("1/3");
        [TestMethod]
        public void TestMethod1()
        {

            Fraction f3 = f1 + f2;
            Assert.AreEqual("5/6", f3.ToString());
        }
	
        [TestMethod]
        public void TestMethod2()
        {

            Fraction f3 = f1 * f2;
            Assert.AreEqual("1/6", f3.ToString());
        }

        [TestMethod]
        public void TestMethod3()
        {
