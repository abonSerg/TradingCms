using System;

namespace TradingCms.ImageLoader
{
    class Program
    {
        static void Main(string[] args)
        {
            const string conectionString = @"Data Source=.;Initial Catalog=TradingCms;Integrated Security=True";

            var imgLoader = new Loader(conectionString);
            var categoryImgLoader = new CategoryImageLoader(conectionString);

            Console.WriteLine("=== Product images loading ===");
            imgLoader.Perform();

            Console.WriteLine("=== Category images loading ===");
            categoryImgLoader.Perform();

            Console.ReadKey();
        }
    }
}
