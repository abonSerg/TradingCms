using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data.Access;

namespace TradingCms.Data
{
    public class Repository<T> : IRepository<T> where T:class 
    {
        public ISession Session { get; set; }

        public bool Add(T entity)
        {
            Session.Save(entity);
            return true;
        }

        public bool Add(IEnumerable<T> entities)
        {
            foreach (T entity in entities)
            {
                Session.Save(entity);
            }
            return true;
        }

        public bool Update(T entity)
        {
            Session.Save(entity);
            return true;
        }

        public bool Delete(T entity)
        {
            Session.Delete(entity);
            return true;
        }

        public bool Delete(IEnumerable<T> entities)
        {
            foreach (T entity in entities)
            {
                Session.Delete(entity);
            }
            return true;
        }

        public IQueryable<T> Items
        {
            get
            {
                return Session.Linq<T>();
            }
        }

        public T Find(object id)
        {
            return Session.Get<T>(id);
        }

        public T FindBy(Expression<Func<T, bool>> expression)
        {
            return FilterBy(expression).FirstOrDefault();
        }

        public IQueryable<T> FilterBy(Expression<Func<T, bool>> expression)
        {
            return Items.Where(expression).AsQueryable();
        }

        public void Flush()
        {
            Session.Flush();
        }
    }

}