﻿using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class ProductMap : ClassMap<Product>
    {
        public ProductMap()
        {
            Id(x => x.Id);
            Map(x => x.Price).Not.Nullable();
            Map(x => x.IsAvailable).Not.Nullable();
            Map(x => x.CreateDate).Not.Nullable();

            Map(x => x.CategoryId).Not.Nullable();
            References(x => x.Category, "Categories").Not.Nullable();

            HasMany(x => x.ProductTranslations).Inverse();

            Table("Products");
        }
    }
}