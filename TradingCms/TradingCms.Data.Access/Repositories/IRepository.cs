using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace TradingCms.Data.Access
{
    public interface IRepository<IEntity> where IEntity : class
    {
        bool Add(IEntity entity);
        bool Add(IEnumerable<IEntity> entities);
        bool Update(IEntity entity);
        bool Delete(IEntity entity);
        bool Delete(IEnumerable<IEntity> entities);
        IQueryable<IEntity> Items { get; }
        IEntity Find(object id);
        IEntity FindBy(Expression<Func<IEntity, bool>> expression);
        IQueryable<IEntity> FilterBy(Expression<Func<IEntity, bool>> expression);
        void Flush();
    }
}
