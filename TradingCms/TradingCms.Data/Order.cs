using System;

namespace TradingCms.Data
{
    public class Order : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string CreatorId { get; set; }
        public virtual DateTime CreateDate { get; set; }
        public virtual bool IsActive { get; set; }
        public virtual int? PaymentTypeId { get; set; }
        public virtual DateTime? PaymentDate { get; set; }
        public virtual int? DeliveryTypeId { get; set; }
        public virtual int? DeliveryAddressId { get; set; }
        public virtual string ComentsToOrder { get; set; }
    }
}
