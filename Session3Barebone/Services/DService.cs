using Dapper;
using Microsoft.Data.SqlClient;
using Session3Barebone.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Session3Barebone.Services
{
    //11. Create service for dapper
        public class DService : IDService
        {
            private string connectionString;

            public DService(string connectionString)
            {
                this.connectionString = connectionString;
            }
            public IEnumerable<DProduct> GetAllProducts()
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    return connection.Query<DProduct>("SELECT * FROM Product");
                }
            }

    }
}
