
namespace TradingCms.Data
{
    public class ProductImages
    {
        public virtual int Id { get; set; }
        public virtual byte[] Img { get; set; }
        public virtual int ProductId { get; set; }
        public virtual Product Product { get; set; }
    }
}
