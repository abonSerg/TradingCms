
namespace TradingCms.Data
{
    public class ProductImages
    {
        public virtual int Id { get; set; }
        public virtual string Path { get; set; }
        public virtual int ProductId { get; set; }
        public virtual Product Product { get; set; }
    }
}
