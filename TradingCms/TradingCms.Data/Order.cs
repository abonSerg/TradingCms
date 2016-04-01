using System;
using System.Collections.Generic;

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
        public virtual string CommentsToOrder { get; set; }

        private IList<Product> _products;
        public virtual IList<Product> Products
        {
            get
            {
                return _products ?? (_products = new List<Product>());
            }
            set { _products = value; }
        }
    }
}
