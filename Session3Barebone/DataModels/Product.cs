using System;
using System.Collections.Generic;

namespace Session3Barebone.DataModels
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public int ProductCategory { get; set; }
        public decimal ListPrice { get; set; }

        public virtual ProductCategory ProductCategoryNavigation { get; set; }
    }
}
