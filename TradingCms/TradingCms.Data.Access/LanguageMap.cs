using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class LanguageMap : ClassMap<Language>
    {
        public LanguageMap()
        {
            Id(x => x.Id);
            Map(x => x.LanguageName).Not.Nullable();

            Table("Languages");
        }
    }
}
