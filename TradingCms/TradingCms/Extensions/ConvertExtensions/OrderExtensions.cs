using System;
using System.Web;
using TradingCms.Data;
using TradingCms.DTOs;

namespace TradingCms.Extensions.ConvertExtensions
{
    public static class OrderExtensions
    {
        public static Order ToOrder(this CreateOrderDto dto)
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
    }
}