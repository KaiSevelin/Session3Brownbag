using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Session3Barebone.Models
{
    public class ProductResponse
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public int ProductCategory { get; set; }
        public decimal ListPrice { get; set; }
    }
}
