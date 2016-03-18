using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingCms.Data
{
    public class ProductTranslation : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string Languagecode { get; set; }
        public virtual string Name { get; set; }
        public virtual string Description { get; set; }

        public virtual Product Product { get; set; }
    }
}
