﻿using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class ProductTranslationMap : ClassMap<ProductTranslation>
    {
        public ProductTranslationMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Description).Nullable();
            Map(x => x.LanguageId).Not.Nullable();
            Map(x => x.ProductId).Not.Nullable();
            
            Table("ProductTranslations");
        }
    }
}
