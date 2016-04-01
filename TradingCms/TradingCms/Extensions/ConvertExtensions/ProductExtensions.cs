using System.Collections.Generic;
using System.Linq;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class ProductExtensions
    {
        public static IEnumerable<ProductDTO> ToProductDto(this IQueryable<Product> products)
        {
            return products.Select(p => new ProductDTO()
            {
                Id = p.Id,
                Price = p.Price,
                Name = p.ProductTranslations.FirstOrDefault(t => t.ProductId == p.Id).Name,
                Description = p.ProductTranslations.FirstOrDefault(t => t.ProductId == p.Id).Description,
                Image = p.ProductImages.FirstOrDefault(i => i.ProductId == p.Id).Path
            }).ToList();
        }
    }
}