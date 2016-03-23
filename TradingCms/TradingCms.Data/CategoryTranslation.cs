namespace TradingCms.Data
{
    public class CategoryTranslation : IEntity
    {
        public virtual int Id { get; set; }
        public virtual int CategoryId { get; set; }
        public virtual int LanguageId { get; set; }
        public virtual string Name { get; set; }
        
        public virtual Category Category { get; set; }
        public virtual Language Language { get; set; }
    }
}
