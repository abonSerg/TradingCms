﻿using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class OrderMap : ClassMap<Order>
    {
        public OrderMap()
        {
            Id(x => x.Id);
            Map(x => x.CreatorId).Not.Nullable();
            Map(x => x.CreateDate).Not.Nullable();
            Map(x => x.IsActive).Not.Nullable();
            Map(x => x.PaymentTypeId).Nullable();
            Map(x => x.PaymentDate).Nullable();
            Map(x => x.DeliveryTypeId).Nullable();
            Map(x => x.DeliveryAddressId).Nullable();
            Map(x => x.ComentsToOrder).Nullable();

            Table("Orders");
        }
    }
}
