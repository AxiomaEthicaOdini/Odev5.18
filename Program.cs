using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Bir sayı giriniz:");
            int Sayi = Convert.ToInt32(Console.ReadLine());

            int MaxInt = 1000000000;
            int Basamak = 0;

            for (int BasamakDeğer = MaxInt; BasamakDeğer > 10; BasamakDeğer = BasamakDeğer / 10)
            {
                if (Sayi / BasamakDeğer > 0)
                {
                    Basamak = (int)Math.Log10(BasamakDeğer) + 1;
                    break;
                }
            }
            if (Basamak % 2 == 1)
            {
                int[] RakamDizi = new int[Basamak];
                for (int BasamakDeğer = (int)Math.Pow(10, Basamak - 1); BasamakDeğer >= 1; BasamakDeğer = BasamakDeğer / 10) 
                {
                    RakamDizi[Basamak - (int)Math.Log10(BasamakDeğer) - 1] = Sayi / BasamakDeğer;
                    Sayi = Sayi - RakamDizi[Basamak - (int)Math.Log10(BasamakDeğer) - 1] * BasamakDeğer;
                }

                bool PolindromDeğil = false;

                for (int Bas = 0; Bas < Basamak / 2; Bas++)
                {
                    if(RakamDizi[Bas] != RakamDizi[(Basamak -1) - Bas])
                        {
                            Console.WriteLine("Palindrome değil.");
                            PolindromDeğil = true;
                            break; 
                        }

                }
                if(!PolindromDeğil)
                {
                    Console.WriteLine("Polindromdur.");
                }
            }

            else
            {
                Console.WriteLine("Sayının çift sayıda basamağı var.");
            }

            ////hgfjhfvjhfjkhfyrtku
        }
    }
}
