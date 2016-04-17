using System;
using System.Linq;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class OrderExtensions
    {
        public static Order ToOrder(this OrderCreatedDto dto)
        {
            var order = new Order()
            {
                CreateDate = DateTime.Now,
                Comments = dto.Comments,
                DeliveryAddressId = dto.DeliveryAddressId,
                DeliveryTypeId = dto.DeliveryTypeId,
                IsActive = true,
                PaymentTypeId = dto.PaymentTypeId,
                UserId = "1"//HttpContext.Current.User.Identity.Name
            };

            return order;
        }

        public static OrderCreatedDto ToCreatedOrderDto(this Order order)
        {
            var createdOrderDto = new OrderCreatedDto()
            {
                Comments = order.Comments,
                DeliveryAddressId = order.DeliveryAddressId,
                DeliveryTypeId = order.DeliveryTypeId,
                PaymentTypeId = order.PaymentTypeId,
                ProductIdList = order.Products.Select(product => product.Id).ToList()
            };

            return createdOrderDto;
        }
    }
}