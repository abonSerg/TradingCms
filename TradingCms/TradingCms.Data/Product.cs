using System;
using System.Collections.Generic;

namespace TradingCms.Data
{
    public class Product : IEntity
    {
        public virtual int Id { get; set; }
        public virtual decimal Price { get; set; }
        public virtual bool IsAvailable { get; set; }
        public virtual DateTime CreateDate { get; set; }
        public virtual int CategoryId { get; set; }

        public virtual Category Category { get; set; }

        private IList<ProductTranslation> _productTranslations;
        public virtual IList<ProductTranslation> ProductTranslations
        {
            get
            {
                return _productTranslations ?? (_productTranslations = new List<ProductTranslation>());
            }
            set { _productTranslations = value; }
        }

        private IList<ProductImages> _productImages;
        public virtual IList<ProductImages> ProductImages
        {
            get
            {
                return _productImages ?? (_productImages = new List<ProductImages>());
            }
            set { _productImages = value; }
        }

        private IList<Order> _orders;
        public virtual IList<Order> Orders
        {
            get
            {
                return _orders ?? (_orders = new List<Order>());
            }
            set { _orders = value; }
        }
    }
}
