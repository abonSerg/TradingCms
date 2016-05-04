using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class CategoryMap : ClassMap<Category>
    {
        public CategoryMap()
        {
            Id(x => x.Id);
            Map(x => x.TopId).Nullable();
            Map(x => x.Img).Nullable();
            Map(x => x.ImgMimeType).Nullable();
            HasMany(x => x.CategoryTranslations).Inverse();

            Table("Categories");
        }
    }
}
