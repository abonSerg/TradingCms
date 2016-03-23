﻿using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class CategoryTranslationMap : ClassMap<CategoryTranslation>
    {
        public CategoryTranslationMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.CategoryId).Not.Nullable();
            Map(x => x.LanguageId).Not.Nullable();
            
            Table("CategoryTranslations");
        }
    }
}
