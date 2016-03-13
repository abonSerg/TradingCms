using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data.Access;

namespace TradingCms.Data
{
    public class Repository<T> : IRepository<T> where T:IEntity
    {
        private readonly ISession session;

        public Repository()
     {
          // you may want to use dependency injection instead
          session = NHibernateHelper.GetCurrentSession();
      }

    public IQueryable<T> GetAll()
        {
            return session.Query<T>();
        }

        public IQueryable<T> Get(Expression<Func<T, bool>> predicate)
        {
            return GetAll().Where(predicate);
        }

        public IEnumerable<T> SaveOrUpdateAll(params T[] entities)
        {
            foreach (var entity in entities)
            {
                session.SaveOrUpdate(entity);
            }

            return entities;
        }

        public T SaveOrUpdate(T entity)
        {
            session.SaveOrUpdate(entity);

            return entity;
        }
    }

}