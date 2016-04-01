
namespace TradingCms.Data
{
    public class OrdersToProducts : IEntity
    {
        public virtual int Id { get; set; }
        public virtual Order Order { get; set; }
        public virtual int OrderId { get; set; }
        public virtual Product Product { get; set; }
        public virtual int ProductId { get; set; }
        public virtual decimal Price { get; set; }
    }
}
