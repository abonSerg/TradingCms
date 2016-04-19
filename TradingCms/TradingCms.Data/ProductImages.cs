namespace TradingCms.Data
{
    public class ProductImages : IEntity
    {
        public virtual int Id { get; set; }
        public virtual byte[] Img { get; set; }
        public virtual string ImgMimeType { get; set; }
        public virtual int ProductId { get; set; }
        public virtual Product Product { get; set; }
    }
}