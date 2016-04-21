using System.Linq;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class CategoryExtensions
    {
        public static CategoryDTO ToCategoryDto(this Category category, string lang = "Ru")
        {
            var categoryTranslation = category.CategoryTranslations.FirstOrDefault(t => t.Language.Code == lang);
            return categoryTranslation != null
            ? new CategoryDTO()
                {
                    Id = category.Id,
                    TopId = category.TopId,
                    Name = categoryTranslation.Name
                }
            : null;
        }
    }
}