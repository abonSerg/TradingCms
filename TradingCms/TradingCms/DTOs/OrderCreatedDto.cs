using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TradingCms.DTOs
{
    public class OrderCreatedDto
    {
        public int? PaymentTypeId { get; set; }
        public int? DeliveryTypeId { get; set; }
        public int? DeliveryAddressId { get; set; }
        public string Comments { get; set; }

        [Required]
        public List<int> ProductIdList { get; set; }
    }
}