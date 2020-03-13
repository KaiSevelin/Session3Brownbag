using Session3Barebone.DataModels;
using System.Collections.Generic;

namespace Session3Barebone.Services
{
    public interface IDService
    {
        IEnumerable<DProduct> GetAllProducts();
    }
}