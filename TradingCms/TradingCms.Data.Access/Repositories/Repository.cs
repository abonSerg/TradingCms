using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using NHibernate;
using NHibernate.Linq;

namespace TradingCms.Data.Access.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : IEntity 
    {
        public ISession Session { get; set; }

        public bool Add(TEntity entity)
        {
            Session.Save(entity);
            return true;
        }

        public bool Add(IEnumerable<TEntity> entities)
        {
            foreach (TEntity entity in entities)
            {
                Session.Save(entity);
            }
            return true;
        }

        public bool Update(TEntity entity)
        {
            Session.Save(entity);
            return true;
        }

        public bool Delete(TEntity entity)
        {
            Session.Delete(entity);
            return true;
        }

        public bool Delete(IEnumerable<TEntity> entities)
        {
            foreach (TEntity entity in entities)
            {
                Session.Delete(entity);
            }
            return true;
        }

        public IQueryable<TEntity> Items
        {
            get
            {
                return Session.Query<TEntity>();
            }
        }

        public TEntity Find(object id)
        {
            return Session.Get<TEntity>(id);
        }

        public TEntity FindBy(Expression<Func<TEntity, bool>> expression)
        {
            return FilterBy(expression).FirstOrDefault();
        }

        public IQueryable<TEntity> FilterBy(Expression<Func<TEntity, bool>> expression)
        {
            return Items.Where(expression).AsQueryable();
        }

        public void Flush()
        {
            Session.Flush();
        }
    }

}