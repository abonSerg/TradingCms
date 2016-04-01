using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingCms.Data
{
    public class Language : IEntity
    {
        public virtual int Id { get; set; }
        public virtual string LanguageName { get; set; }
    }
}
