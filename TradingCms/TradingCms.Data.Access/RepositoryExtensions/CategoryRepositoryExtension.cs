using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class CategoryRepositoryExtension 
    {
        public static IQueryable<Category> GetSubcategories(this IRepository<Category> repository, int topCategoryId)
        {
            return repository.Items.Where(category => category.TopId == topCategoryId).Select(category => category);
        }
    }
}
