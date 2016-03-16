using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class CategoryMap : ClassMap<Category>
    {
        public CategoryMap()
        {
            Id(x => x.Id);
            Map(x => x.TopId).Nullable();
            HasMany(x => x.CategoriesTranslations).Inverse();

            Table("Categories");
        }
    }
}
