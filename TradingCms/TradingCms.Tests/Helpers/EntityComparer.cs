using System;
using System.Collections.Generic;
using TradingCms.Data;

namespace TradingCms.Tests.Helpers
{
    public class EntityComparer<T> : IEqualityComparer<T> where T : class, IEntity
    {
        private bool PublicInstancePropertiesEqual<T>(T entity1, T entity2, params string[] ignore) where T : class
        {
            if (entity1 != null && entity2 != null)
            {
                Type type = typeof(T);
                List<string> ignoreList = new List<string>(ignore);
                foreach (System.Reflection.PropertyInfo pi in type.GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance))
                {
                    if (!ignoreList.Contains(pi.Name))
                    {
                        object selfValue = type.GetProperty(pi.Name).GetValue(entity1, null);
                        object toValue = type.GetProperty(pi.Name).GetValue(entity2, null);

                        if (selfValue != toValue && (selfValue == null || !selfValue.Equals(toValue)))
                        {
                            return false;
                        }
                    }
                }
                return true;
            }
            return entity1 == entity2;
        }

        public bool Equals(T x, T y)
        {
            return PublicInstancePropertiesEqual(x, y);
        }

        public int GetHashCode(T obj)
        {
            throw new NotImplementedException();
        }
    }
}
