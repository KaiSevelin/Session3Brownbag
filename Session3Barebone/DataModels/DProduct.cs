﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Session3Barebone.DataModels
{
    //10. Create data model for dapper
    public class DProduct
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public int ProductCategory { get; set; }
        public decimal ListPrice { get; set; }
    }
}
