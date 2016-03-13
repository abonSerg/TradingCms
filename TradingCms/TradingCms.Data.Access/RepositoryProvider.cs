using NHibernate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate.Linq;

namespace TradingCms.Data.SqlServer
{
    public abstract class RepositoryProvider
    {
        protected T GetEntityById<T>(int id, ISession session) where T : IEntity
        {
            return  session.Get<T>(id);
        } 

        protected IList<T> GetEntities<T>(ISession session) where T : IEntity
        {
            return session.Query<T>().ToList<T>();
        } 

    }
}
