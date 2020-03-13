using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace Session3Barebone.DataModels
{
    public partial class ProductCategory
    {
        public ProductCategory()
        {
            Product = new HashSet<Product>();
        }

        public int ProductCategoryId { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Product> Product { get; set; }
    }
}
