

using System.Collections.Generic;

namespace TradingCms.Data
{
    public class Category : IEntity
    {
        public virtual int Id { get; set; }
        public virtual int TopId { get; set; }
        private IList<Category_tr> _categories_tr;
        public virtual IList<Category_tr> Categories_tr
        {
            get
            {
                return _categories_tr ?? (_categories_tr = new List<Category_tr>());
            }
            set { _categories_tr = value; }
        }
    }
}
