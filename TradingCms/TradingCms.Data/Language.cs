
namespace TradingCms.Data
{
    public class Language : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string Code { get; set; }
        public virtual string Name { get; set; }
    }
}
