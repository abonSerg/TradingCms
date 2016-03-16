using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class Category_trMap : ClassMap<Category_tr>
    {
        public Category_trMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Description).Nullable();
            Map(x => x.Languagecode).Not.Nullable();
            References(x => x.Category, "Categories_tr").Cascade.SaveUpdate();
        }
    }
}
