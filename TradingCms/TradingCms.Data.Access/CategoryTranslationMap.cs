using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class CategoryTranslationMap : ClassMap<CategoryTranslation>
    {
        public CategoryTranslationMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Description).Nullable();
            Map(x => x.Languagecode).Not.Nullable();
            References(x => x.Category, "Categories").Cascade.SaveUpdate();

            Table("Categories_tr");
        }
    }
}
