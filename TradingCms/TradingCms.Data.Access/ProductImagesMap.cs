using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class ProductImagesMap : ClassMap<ProductImages>
    {
        public ProductImagesMap()
        {
            Id(x => x.Id);
            Map(x => x.ProductId).Not.Nullable();
            References(x => x.Product, "ProductId").Not.Nullable();
            Map(x => x.Path).Not.Nullable();

            Table("ProductImages");
        }
    }
}
