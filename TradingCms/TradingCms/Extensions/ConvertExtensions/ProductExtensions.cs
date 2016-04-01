using System.Collections.Generic;
using System.Linq;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class ProductExtensions
    {
        public static IEnumerable<ProductDTO> ToProductDto(this IQueryable<Product> products, string lang = "RU")
        {
            return products.Select(p => new ProductDTO()
            {
                Id = p.Id,
                Price = p.Price,
                Name = p.ProductTranslations.FirstOrDefault(t => (t.ProductId == p.Id && t.Language.Code.Equals(lang))).Name,
                Description = p.ProductTranslations.FirstOrDefault(t => (t.ProductId == p.Id && t.Language.Code.Equals(lang))).Description,
                Image = p.ProductImages.FirstOrDefault(i => i.ProductId == p.Id).Path
            }).ToList();
        }
    }
}