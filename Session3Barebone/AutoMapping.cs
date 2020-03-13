using AutoMapper;
using Session3Barebone.DataModels;
using Session3Barebone.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Session3Barebone
{
    //5. Create AutoMapping class
    public class AutoMapping : Profile
    {
        public AutoMapping()
        {
            CreateMap<Product, ProductResponse>();
            //14. automap response
            CreateMap<DProduct, ProductResponse>();

        }
    }
}
