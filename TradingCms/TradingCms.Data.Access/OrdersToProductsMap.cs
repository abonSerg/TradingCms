using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class OrdersToProductsMap : ClassMap<OrdersToProducts>
    {
        public OrdersToProductsMap()
        {
            Id(x => x.Id);
            Map(x => x.OrderId).Not.Nullable();
            References(x => x.Order, "OrderId").Not.Nullable();
            Map(x => x.ProductId).Not.Nullable();
            References(x => x.Product, "ProductId").Not.Nullable();
            Map(x => x.ProductCost).Not.Nullable();

            Table("OrdersToProducts");
        }
    }
}
