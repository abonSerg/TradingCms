using System;

namespace TradingCms.Data
{
    public class Product : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual float Price { get; set; }
        public virtual bool IsAvailable { get; set; }
        public virtual string DescriptionUk { get; set; }
        public virtual string DescriptionRu { get; set; }
        public virtual DateTime CreateDate { get; set; }
        public virtual int CategoryId { get; set; }

        //public virtual Category Category { get; set; }
    }
}
