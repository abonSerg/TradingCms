﻿
namespace TradingCms.Data
{
    public class OrdersToProducts
    {
        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
        public virtual decimal Price { get; set; }
    }
}
