using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp5
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("N\t10*N\t100*N\t1000*N");

            for (int i = 1; i < 6; i++) 
            {
                Console.WriteLine("{0}\t{1}\t{2}\t{3}\t", i, i * 10, i * 100, i * 1000);
            }

            Console.ReadLine();
        }
    }
}
