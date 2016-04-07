using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace TradingCms.Data.Access.Repositories
{
    public interface IRepository<TEntity> where TEntity : IEntity
    {
        bool Add(TEntity entity);
        bool Add(IEnumerable<TEntity> entities);
        bool Update(TEntity entity);
        bool Delete(TEntity entity);
        bool Delete(IEnumerable<TEntity> entities);
        IQueryable<TEntity> Items { get; }
        TEntity Find(object id);
        TEntity FindBy(Expression<Func<TEntity, bool>> expression);
        IQueryable<TEntity> FilterBy(Expression<Func<TEntity, bool>> expression);
        void Flush();
    }
}
