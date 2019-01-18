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
            double nA = 239.99;
            double nB = 129.75;
            double nC = 99.95;
            double nD = 350.89;
            int KomisyonO = 9;
            int Maaş = 200;
            Console.Write("Kaç adet A ürünü sattıldı ? :");
            int A = Convert.ToInt32(Console.ReadLine());

            Console.Write("Kaç adet B ürünü sattıldı ? :");
            int B = Convert.ToInt32(Console.ReadLine());

            Console.Write("Kaç adet C ürünü sattıldı ? :");
            int C = Convert.ToInt32(Console.ReadLine());

            Console.Write("Kaç adet D ürünü sattıldı ? :");
            int D = Convert.ToInt32(Console.ReadLine());

            double ToplamSatış = nA * A + nB * B + nC * C + nD * D;

            double Komisyon = (ToplamSatış * KomisyonO/100) + Maaş;

            if (ToplamSatış > 5000)
            {
                Console.WriteLine("{0} Komisyonlu maaşınız!:", Komisyon);
            }    
            else
            {
                Console.WriteLine("{0} Komisyon yok.", Maaş);
            }

        }
    }
}
