using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class LanguageMap : ClassMap<Language>
    {
        public LanguageMap()
        {
            Id(x => x.Id);
            Map(x => x.Code).Not.Nullable();
            Map(x => x.Name).Not.Nullable();

            Table("Languages");
        }
    }
}
