

namespace TradingCms.Data
{
    public class CategoryTranslation : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string Languagecode { get; set; }
        public virtual string Name { get; set; }
        public virtual string Description { get; set; }

        public virtual Category Category { get; set; }
    }
}
