using System.Collections.Generic;
using System.Linq;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class ProductExtensions
    {
        public static IEnumerable<ProductDTO> ToProductDto(this IEnumerable<Product> products, string lang = "Ru")
        {
            return products.Select(p =>
            {
                var productTranslation = p.ProductTranslations.FirstOrDefault(t => t.Language.Code == lang);
                return productTranslation != null ? new ProductDTO()
                {
                    Id = p.Id,
                    Price = p.Price,
                    Name = productTranslation.Name,
                    Description = productTranslation.Description,
                    //Image = p.ProductImages.FirstOrDefault(i => i.ProductId == p.Id).Path
                } : null;
            });
        }
    }
}