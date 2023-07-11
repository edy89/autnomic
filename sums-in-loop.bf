using System;

namespace Hello
{
    class World
    {
        static void Main()
        {
            int sum = 0;
            int  m = Convert.ToInt32(Console.ReadLine());
            int[,] mas = new int[m, 2];

            for (int i = 0; i < m; i++)
            {
                string enterString = Console.ReadLine();
                string[] massiveString = enterString.Split(' ');
                for (int j = 0; j < 2; j++)
                {
                    mas[i, j] = int.Parse(massiveString[j]);
                }
            }

            for (int i = 0; i < m; i++)
            {
                for (int j = 0; j < 2; j++)
                {
                    sum = sum + mas[i, j];
                }
                Console.Write(sum + " ");
                sum = 0;
            }
        }
    }
}
