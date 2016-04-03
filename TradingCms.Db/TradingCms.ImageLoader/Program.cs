using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
