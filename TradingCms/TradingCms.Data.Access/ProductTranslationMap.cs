using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class ProductTranslationMap : ClassMap<ProductTranslation>
    {
        public ProductTranslationMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Description).Nullable();
            Map(x => x.Languagecode).Not.Nullable();
            References(x => x.Product, "Products").Cascade.SaveUpdate();

            Table("Products_tr");
        }
    }
}
