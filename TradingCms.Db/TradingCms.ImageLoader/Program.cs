using System;

namespace TradingCms.ImageLoader
{
    class Program
    {
        static void Main(string[] args)
        {
            string conectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=TradingCms;Integrated Security=True";

            Loader imgLoader = new Loader(conectionString);
            imgLoader.Perform();

            Console.ReadKey();
        }
    }
}
