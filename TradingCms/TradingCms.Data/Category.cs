

using System.Collections.Generic;

namespace TradingCms.Data
{
    public class Category : IEntity
    {
        public virtual int Id { get; set; }
        public virtual int TopId { get; set; }
        private IList<CategoryTranslation> _categoryTranslations;
        public virtual IList<CategoryTranslation> CategoryTranslations
        {
            get
            {
                return _categoryTranslations ?? (_categoryTranslations = new List<CategoryTranslation>());
            }
            set { _categoryTranslations = value; }
        }
    }
}
