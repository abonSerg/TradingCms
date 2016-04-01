using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class OrdersToProductsMap : ClassMap<OrdersToProducts>
    {
        public OrdersToProductsMap()
        {
            CompositeId()
            .KeyReference(x => x.Product, "ProductId")
            .KeyReference(x => x.Order, "OrderId");

            Map(x => x.ProductCost).Not.Nullable();

            Table("OrdersToProducts");
        }
    }
}
